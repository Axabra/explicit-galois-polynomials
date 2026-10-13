# Explicit Galois polynomials

**Axel Abdel Rahamane Meghezzi** · Independent researcher, Montréal

A polynomial has roots. Galois theory asks which permutations of those roots preserve every algebraic relation with rational coefficients. For `x² − 2`, exchanging `√2` and `−√2` is one such symmetry. The polynomials below are harder examples: each was constructed to have a specified symmetry group for its splitting field.

All five polynomials below are irreducible over `Q`. The *degree* is the number of roots over `C`; the *real roots* column counts those on the ordinary number line. The signature `(r₁,r₂)` means `r₁` real roots and `r₂` pairs of nonreal roots, so `degree = r₁ + 2r₂`.

| Polynomial | Degree | Splitting-field group | Group order | Real roots | Signature | Recorded checks |
| --- | ---: | --- | ---: | ---: | --- | --- |
| [`17T8`](polynomials/17T8_degree17.txt) | 17 | `17T8` | 16,320 | 17 | `(17,0)` | [Magma group record](certificates/17T8_Magma.txt), [exact root intervals](certificates/17T8_real_intervals.json) |
| [`f₁₇`](polynomials/PSL2_F17_degree18.txt) | 18 | `PSL₂(F₁₇)` = `18T377` | 2,448 | 2 | `(2,8)` | [Exact arithmetic and Magma record](certificates/PSL2_F17.json) |
| [`f₁₉,real`](polynomials/PSL2_F19_real_degree20.txt) | 20 | `PSL₂(F₁₉)` | 3,420 | 20 | `(20,0)` | [Specialization record](certificates/PSL2_F19_real.json), [real/nonreal comparison](certificates/PSL2_F19_comparison.json) |
| [`f₁₉,nonreal`](polynomials/PSL2_F19_nonreal_degree20.txt) | 20 | `PSL₂(F₁₉)` | 3,420 | 0 | `(0,10)` | [Modular and finite-field certificate](certificates/PSL2_F19_nonreal.json) |
| [`f₃₁`](polynomials/PSL2_F31_degree32.txt) | 32 | `PSL₂(F₃₁)` | 14,880 | 0 | `(0,16)` | [Group certificate](certificates/PSL2_F31.json), [modular identity record](certificates/PSL2_F31_modular_identity.json) |

The two degree-20 polynomials make a useful comparison: their splitting fields have the same abstract Galois group, but one polynomial has 20 real roots and the other has none. Their signatures also show that these are distinct number fields.

## Provenance and scope

- The degree-17 `17T8` polynomial is a totally real model. The records include 17 disjoint rational intervals with sign changes and a Magma `GaloisProof` result.
- The degree-18 `PSL₂(F₁₇)` model has two real roots. It comes from an exact level-17 Hecke-cover reconstruction in discriminant 10, followed by a specialization and a Magma group check. It is a different field from the specific earlier LMFDB model compared in the certificate; no broader literature-first claim is made.
- The totally real `PSL₂(F₁₉)` polynomial is my specialization at `Y = −7546608813573` of [Emir Eray Karabiyik's published degree-20 cover](https://arxiv.org/html/2609.03946v1#S4.SS3). His paper uses `Y = −7546608500347`. The parameter and polynomial here are different; whether the two resulting fields are isomorphic was not established.
- The nonreal `PSL₂(F₁₉)` and `PSL₂(F₃₁)` polynomials were calculated as explicit specializations using [Shih's modular construction](https://www.numdam.org/item/CM_1978__36_2_113_0.pdf). Their coefficients were computed for these examples, not copied from a table. Their group arguments use the modular upper bound, a square discriminant, and finite-field witnesses; the certificate JSON files record the checks.

The five polynomial files contain exact coefficients, without rounding. Ascending coefficient lists are also supplied for [`17T8`](polynomials/17T8_degree17_ascending.csv) and [`PSL₂(F₁₇)`](polynomials/PSL2_F17_degree18_ascending.csv). The degree-20 totally real polynomial is intentionally left in its primitive, nonmonic form; its coefficients are large.

## Earlier degree-48 construction

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
