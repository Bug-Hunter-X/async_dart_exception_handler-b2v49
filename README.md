# Unhandled Exception Type in Asynchronous Dart Code

This repository demonstrates a common issue in Dart: insufficiently informative exception handling in asynchronous functions. The `fetchData` function attempts to fetch data from a remote source.  While it includes a `try-catch` block, the catch block simply prints the exception without providing enough context for effective debugging. This can make identifying the true source of errors much harder.

## How to Reproduce

1. Clone this repository.
2. Run `bug.dart`.
3. Observe the output.  The output is unhelpful, only printing "Error fetching data: Instance of 'Exception'".  More detailed information is needed to track down the error.

## Solution

The solution file (`bugSolution.dart`) provides an improved approach to exception handling. It demonstrates how to use `catchError` with a more specific error-handling strategy to provide better debugging information.
