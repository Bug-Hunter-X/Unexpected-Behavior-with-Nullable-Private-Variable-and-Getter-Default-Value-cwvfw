# Unexpected Behavior with Nullable Private Variable and Getter Default Value

This repository demonstrates an uncommon bug in Dart related to the interaction between nullable private variables, getters providing default values, and how they behave after updating the variable's value.  The issue manifests when a private variable is nullable and its getter provides a default value if null; setting the variable to a non-null value can produce unexpected results.

The `bug.dart` file contains the buggy code. The `bugSolution.dart` file contains a corrected version.

## Bug Description
The getter `myVariable` returns a default value of 0 if the private variable `_myVariable` is null. Although we update `_myVariable` to 10, the getter continues to return 0 unexpectedly.  This indicates that there's a misunderstanding of how Dart handles null-aware operators and variable updates within a class context.