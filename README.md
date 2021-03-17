# MfaDemo

Seems to show that the built-in `mfa()` type is incorrect.

Instead of `{module(), atom(), arity()}`, it should be `{module(), atom(), list()}`

## Demo

This works:

```bash
mix deps.get
mix dialyzer
```

In `MfaDemo`, if `@spec apply?(mfa :: actual_mfa()) :: boolean()` is changed to use `mfa()`, `mix dialyzer` will fail with:


```
lib/mfa_demo.ex:13:invalid_contract
The @spec for the function does not match the success typing of the function.

Function:
MfaDemo.apply?/1

Success typing:
@spec apply?({atom() | tuple(), atom(), [any()]}) :: boolean()
 ```
