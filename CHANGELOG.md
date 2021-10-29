### 0.1.13 - 2021-07-28

- Bootstrap utility added to framework
- Update `flow-cadut` dependency and fixed support for complex types
- Fixed issue with emulator throwing an error with `logging` flag set to `true`

### FlipFest entry 29/10/21

 *BREAKING CHANGES*

- sendTransaction and exectureScript functions now return a tuple of [result, error]

- **Any code that relies upon checking the result and expects only the result will need to be refactored.**

- For examples of new usage see the [script](/docs/exeute-scripts.md) and [transaction](/docs/send-transactions.md) documentation.

```javascript
    // Scripts

    // Old usage
    const result = await executeScript({ code, args });
    const result = await executeScript("log-message", args);

    // New usage
    const [result,error] = await executeScript({ code, args });
    const [result,error] = await executeScript("log-message", args);
    
    
    // Transactions
  
    // Old usage
    const tx = await sendTransaction({ code, args, signers });
    const tx = await sendTransaction("log-message", [], args);    

    // New usage
    const [tx, error] = await sendTransaction({ code, args, signers });
    const [tx, error] = await sendTransaction("log-message", [], args);

```