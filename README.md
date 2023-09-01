# medusa-crash

Run with medusa

```
medusa fuzz
```

Run with echidna

```
echidna Echidna.sol --contract EchidnaTester --crytic-args "--solc-remaps  @crytic/properties/=lib/properties/" --test-mode assertion
```
