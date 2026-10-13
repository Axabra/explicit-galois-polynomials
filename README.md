# 48 real roots. Galois group SL₂(F₂₃).

**Axel Abdel Rahamane Meghezzi**

[`P*(x)`](Pstar_degree48.txt) is an explicit degree-48 polynomial in `Z[x]`. It is irreducible, and all 48 roots are real. Its splitting field has Galois group `SL₂(F₂₃)`, of order 12,144. The largest coefficient has 1,712 digits.

The starting field is [`K = Q(θ)`](f24_source.txt), already in [LMFDB](https://www.lmfdb.org/NumberField/24.24.112512124088966110749451341353877125075876519162632651056627413464462540232743755253993122150528868116497835159656450811435311428939945814574907834966213868448535754081415725056.1) with transitive group `24T7817 = PSL₂(F₂₃)`. The result here is the degree-48 lift to `SL₂(F₂₃)`, with total reality retained.

The polynomial is large; its construction is short. If `f24(θ) = 0`, then, using the [degree-23 numerator `R*(z)`](Rstar_degree23.txt),

```text
a*    = R*(θ) / f24'(θ)
P*(x) = Norm_{K/Q}(x² - a*) = Q*(x²).
```

The [polynomial `Q*`](Qstar_degree24.txt) and ascending coefficient lists for [`f24`](f24_ascending.csv) and [`P*`](Pstar_ascending.csv) are also provided.

## Check

Run `gp -q verify.gp` from the repository root. The script checks the exact norm identity, modular irreducibility witnesses, and the real-root counts. The `SL₂(F₂₃)` identification uses the LMFDB identification of the source group and the central-lift construction; `verify.gp` does not independently compute a Galois group.
