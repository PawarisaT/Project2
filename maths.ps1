# Script: maths.ps1
# Author: Your Name
# Description: Simple calculator with a menu for basic arithmetic operations.

while ($true) {
    # Display menu
    Write-Output "Select an operation:"
    Write-Output "1) Addition"
    Write-Output "2) Subtraction"
    Write-Output "3) Multiplication"
    Write-Output "4) Division"
    Write-Output "5) Exit"
    
    # Get user choice
    $choice = Read-Host "Enter your choice"

    # Exit if choice is 5
    if ($choice -eq 5) {
        Write-Output "Exiting program."
        break
    }

    # Get numbers from the user
    $num1 = [double](Read-Host "Enter the first number")
    $num2 = [double](Read-Host "Enter the second number")

    # Perform the calculation based on the user's choice
    switch ($choice) {
        1 {
            # Addition
            $result = $num1 + $num2
            Write-Output "Result: $num1 + $num2 = $result"
        }
        2 {
            # Subtraction
            $result = $num1 - $num2
            Write-Output "Result: $num1 - $num2 = $result"
        }
        3 {
            # Multiplication
            $result = $num1 * $num2
            Write-Output "Result: $num1 * $num2 = $result"
        }
        4 {
            # Division with check for division by zero
            if ($num2 -ne 0) {
                $result = $num1 / $num2
                Write-Output "Result: $num1 / $num2 = $result"
            } else {
                Write-Output "Error: Division by zero is not allowed."
            }
        }
        default {
            # Invalid choice
            Write-Output "Invalid choice. Please select a valid option."
        }
    }
}
