# A totally real degree-48 Galois polynomial over Q

**Axel Abdel Rahamane Meghezzi**

This repository presents two explicit polynomials connected by a central Galois lift from PSL₂(F₂₃) to SL₂(F₂₃).

| Polynomial | Degree | Role |
| --- | ---: | --- |
| [`f24(z)`](f24_source.txt) | 24 | Source field, already recorded in LMFDB |
| [`P*(x)`](Pstar_degree48.txt) | 48 | Explicit totally real SL₂(F₂₃) model constructed from that source |

The degree-24 source is the [LMFDB number field 24.24.112512124088966110749451341353877125075876519162632651056627413464462540232743755253993122150528868116497835159656450811435311428939945814574907834966213868448535754081415725056.1](https://www.lmfdb.org/NumberField/24.24.112512124088966110749451341353877125075876519162632651056627413464462540232743755253993122150528868116497835159656450811435311428939945814574907834966213868448535754081415725056.1), whose transitive group label is **24T7817 = PSL₂(F₂₃)**. Its polynomial and 24 real roots precede this construction. The degree-48 model is the contribution presented here.

`P*` is monic and even. Its largest coefficient has **1,712 decimal digits**. It is irreducible over Q and has **48 distinct real roots**. The splitting-field group is **SL₂(F₂₃)** (order 12,144) under the recorded LMFDB identification of the source group. This repository does not independently recompute that source-group identification.

## Exact construction

Let `K = Q(theta)` with `f24(theta) = 0`, and let `R*(z)` be the [compact numerator](Rstar_degree23.txt). Define

```text
a* = R*(theta) / f24'(theta)
P*(x) = Norm_{K/Q}(x^2 - a*) = Q*(x^2).
```

The [degree-24 `Q*`](Qstar_degree24.txt) is included to make the even structure and real-root check direct. The two main polynomials also have ascending coefficient lists ([`f24`](f24_ascending.csv), [`P*`](Pstar_ascending.csv)) for computer algebra systems.

## Recheck

From the repository root, run `gp -q verify.gp` with PARI/GP. The script checks both modular factor-degree witnesses for irreducibility, the exact norm identity, `P*(x) = Q*(x²)`, and the real-root counts. It checks the polynomial data; the SL₂ group conclusion also uses the LMFDB source-group identification and the central-lift construction.

The polynomial and coefficient files were copied byte-for-byte from the exact AXABRA polynomial bundle dated 25 September 2026. No coefficients are rounded or abbreviated.
