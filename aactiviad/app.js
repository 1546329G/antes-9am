  const expenseForm = document.getElementById('expense-form');
        const expenseTable = document.getElementById('expense-table').getElementsByTagName('tbody')[0];
        const totalDisplay = document.querySelector('.total');

        let totalExpenses = 0;

        expenseForm.addEventListener('submit', addExpense);

        function addExpense(e) {
            e.preventDefault();

            const description = document.getElementById('description').value;
            const amount = parseFloat(document.getElementById('amount').value);
            const category = document.getElementById('category').value;

            if (isNaN(amount) || amount <= 0 || description.trim() === '') {
                alert('Por favor, ingrese una descripción y un monto válido.');
                return;
            }

            const newRow = expenseTable.insertRow();

            const descriptionCell = newRow.insertCell(0);
            const amountCell = newRow.insertCell(1);
            const categoryCell = newRow.insertCell(2);
            const actionsCell = newRow.insertCell(3);

            descriptionCell.textContent = description;
            amountCell.textContent = '$' + amount.toFixed(2);
            categoryCell.textContent = category;

            const deleteButton = document.createElement('button');
            deleteButton.textContent = 'Eliminar';
            deleteButton.classList.add('delete-btn');

            // ✅ Evento para eliminar fila
            deleteButton.addEventListener('click', function () {
                const row = this.closest('tr');
                const amountToDelete = parseFloat(row.cells[1].textContent.replace('$', ''));
                totalExpenses -= amountToDelete;
                totalDisplay.textContent = 'Total: $' + totalExpenses.toFixed(2);
                row.remove();
            });

            actionsCell.appendChild(deleteButton);

            totalExpenses += amount;
            totalDisplay.textContent = 'Total: $' + totalExpenses.toFixed(2);

            expenseForm.reset();
        }