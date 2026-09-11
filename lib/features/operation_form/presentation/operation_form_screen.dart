import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_study/domain/entities/operation.dart';
import 'package:flutter_study/features/operations/presentation/operations_providers.dart';
import 'package:intl/intl.dart';

class _OperationFormScreenState extends ConsumerState<OperationFormScreen> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _amountController;
  late final TextEditingController _descriptionController;
  late final TextEditingController _dateController;

  String _type = OperationType.income.name;
  DateTime? _date = DateTime.now();
  bool _isSaving = false;

  @override
  void initState() {
    super.initState();
    _amountController = TextEditingController();
    _descriptionController = TextEditingController();
    _dateController = TextEditingController(
      text: DateFormat('dd.MM.yyyy').format(_date ?? DateTime.now()),
    );
  }

  @override
  void dispose() {
    _amountController.dispose();
    _descriptionController.dispose();
    _dateController.dispose();
    super.dispose();
  }

  Future<void> saveNewOperation(int amount, String? description) async {
    await ref
        .read(operationsProvider.notifier)
        .createOperation(
          NewOperation(
            amount: amount,
            description: description,
            type: _type,
            date: _date ?? DateTime.now(),
          ),
        );
  }

  Future<void> saveExistingOperation(int amount, String? description) async {
    await ref
        .read(operationsProvider.notifier)
        .updateOperation(
          Operation(
            id: widget.id!,
            type: _type,
            date: _date ?? DateTime.now(),
            amount: amount,
            description: description,
          ),
        );
  }

  Future<void> onSave() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      _isSaving = true;
    });

    try {
      final amount = _amountController.text.isEmpty
          ? 0
          : (int.tryParse(_amountController.text.trim()) ?? 0);

      final description = _descriptionController.text.trim().isEmpty
          ? null
          : _descriptionController.text.trim();

      if (widget.id != null) {
        await saveExistingOperation(amount, description);
      } else {
        await saveNewOperation(amount, description);
      }

      Navigator.of(context).pop();
    } catch (e) {
      print(e);

      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(e.toString())));
      }
    } finally {
      if (mounted) {
        setState(() {
          _isSaving = false;
        });
      }
    }
  }

  bool _didPrefill = false;

  void _prefillOperation(Operation operation) {
    setState(() {
      _amountController.text = operation.amount.toString();
      _descriptionController.text = operation.description ?? '';
      _dateController.text = DateFormat('dd.MM.yyyy').format(operation.date);
      _date = operation.date;
      _type = operation.type;
    });
  }

  Widget _buildForm(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.id == null ? 'New Operation' : 'Edit Operation'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          spacing: 16,
          children: [
            SegmentedButton(
              segments: [
                ButtonSegment(
                  value: OperationType.income.name,
                  label: Text('Income'),
                ),
                ButtonSegment(
                  value: OperationType.expense.name,
                  label: Text('Expense'),
                ),
              ],
              selected: {_type},
              onSelectionChanged: (value) {
                setState(() {
                  _type = value.firstOrNull ?? OperationType.income.name;
                });
              },
            ),

            TextFormField(
              decoration: InputDecoration(labelText: 'Amount'),
              keyboardType: TextInputType.number,
              controller: _amountController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Amount is required';
                }

                final amount = int.tryParse(value);
                return amount != null && amount > 0
                    ? null
                    : 'Amount must be greater than 0';
              },
            ),

            TextField(
              decoration: InputDecoration(labelText: 'Description'),
              controller: _descriptionController,
            ),

            TextField(
              decoration: InputDecoration(labelText: 'Date'),
              controller: _dateController,
              readOnly: true,
              onTap: () async {
                final date = await showDatePicker(
                  context: context,
                  firstDate: DateTime.now().subtract(const Duration(days: 365)),
                  lastDate: DateTime.now().add(const Duration(days: 1)),
                  initialDate: _date ?? DateTime.now(),
                );

                if (date != null) {
                  setState(() {
                    _date = date;
                  });
                  _dateController.text = DateFormat('dd.MM.yyyy').format(date);
                }
              },
            ),

            ElevatedButton(
              onPressed: _isSaving ? null : onSave,
              child: Text(_isSaving ? 'Сохранение...' : 'Сохранить'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (widget.id == null) return _buildForm(context);

    final asyncOperation = ref.watch(operationProvider(widget.id!));

    return asyncOperation.when(
      loading: () => Scaffold(
        appBar: AppBar(title: const Text('Loading editing operation...')),
        body: const Center(child: CircularProgressIndicator()),
      ),
      error: (error, stackTrace) => Scaffold(
        appBar: AppBar(title: Text('Error while getting editing operation')),
        body: Center(child: Text(error.toString())),
      ),
      data: (operation) {
        if (operation == null) {
          return Scaffold(
            appBar: AppBar(title: Text('Operation not found')),
            body: Center(child: Text('Operation not found')),
          );
        }

        if (!_didPrefill) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (!mounted || _didPrefill) return;
            _didPrefill = true;
            _prefillOperation(operation);
          });
        }

        return _buildForm(context);
      },
    );
  }
}

final class OperationFormScreen extends ConsumerStatefulWidget {
  const OperationFormScreen({super.key, this.id});

  final String? id;

  @override
  ConsumerState<OperationFormScreen> createState() =>
      _OperationFormScreenState();
}
