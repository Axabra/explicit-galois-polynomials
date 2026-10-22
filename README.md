# Explicit Galois polynomials

**Axel Abdel Rahamane Meghezzi** · Independent researcher, Montréal

A polynomial has roots. Galois theory asks which permutations of those roots preserve every algebraic relation with rational coefficients. For `x² − 2`, exchanging `√2` and `−√2` is one such symmetry. The polynomials below are harder examples: each was constructed to have a specified symmetry group for its splitting field.

All seven polynomials below are irreducible over `Q`. The *degree* is the number of roots over `C`; the *real roots* column counts those on the ordinary number line. The signature `(r₁,r₂)` means `r₁` real roots and `r₂` pairs of nonreal roots, so `degree = r₁ + 2r₂`.

| Polynomial | Degree | Splitting-field group | Group order | Real roots | Signature | Recorded checks |
| --- | ---: | --- | ---: | ---: | --- | --- |
| [`17T8`](polynomials/17T8_degree17.txt) | 17 | `17T8` | 16,320 | 17 | `(17,0)` | [Magma group record](certificates/17T8_Magma.txt), [exact root intervals](certificates/17T8_real_intervals.json) |
| [`f₁₇`](polynomials/PSL2_F17_degree18.txt) | 18 | `PSL₂(F₁₇)` = `18T377` | 2,448 | 2 | `(2,8)` | [Exact arithmetic and Magma record](certificates/PSL2_F17.json) |
| [`f₁₉,real`](polynomials/PSL2_F19_real_degree20.txt) | 20 | `PSL₂(F₁₉)` | 3,420 | 20 | `(20,0)` | [Specialization record](certificates/PSL2_F19_real.json), [real/nonreal comparison](certificates/PSL2_F19_comparison.json) |
| [`f₁₉,nonreal`](polynomials/PSL2_F19_nonreal_degree20.txt) | 20 | `PSL₂(F₁₉)` | 3,420 | 0 | `(0,10)` | [Modular and finite-field certificate](certificates/PSL2_F19_nonreal.json) |
| [`f₂₃`](f24_source.txt) | 24 | `PSL₂(F₂₃)` = `24T7817` | 6,072 | 24 | `(24,0)` | Exact polynomial included |
| [`P*`](Pstar_degree48.txt) | 48 | `SL₂(F₂₃)` | 12,144 | 48 | `(48,0)` | Exact polynomial included |
| [`f₃₁`](polynomials/PSL2_F31_degree32.txt) | 32 | `PSL₂(F₃₁)` | 14,880 | 0 | `(0,16)` | [Group certificate](certificates/PSL2_F31.json), [modular identity record](certificates/PSL2_F31_modular_identity.json) |

The two degree-20 polynomials make a useful comparison: their splitting fields have the same abstract Galois group, but one polynomial has 20 real roots and the other has none. Their signatures also show that these are distinct number fields.

## Provenance and scope

- The degree-17 `17T8` polynomial is a totally real model. The records include 17 disjoint rational intervals with sign changes and a Magma `GaloisProof` result.
- The degree-18 `PSL₂(F₁₇)` model has two real roots and includes a documented Magma group check.
- The totally real `PSL₂(F₁₉)` polynomial is my specialization at `Y = −7546608813573` of [Emir Eray Karabiyik's published degree-20 cover](https://arxiv.org/html/2609.03946v1#S4.SS3). His paper uses `Y = −7546608500347`. The parameter and polynomial here are different; whether the two resulting fields are isomorphic was not established.
- The nonreal `PSL₂(F₁₉)` and `PSL₂(F₃₁)` polynomials were calculated as explicit specializations using [Shih's modular construction](https://www.numdam.org/item/CM_1978__36_2_113_0.pdf). Their coefficients were computed for these examples, not copied from a table. Their group arguments use the modular upper bound, a square discriminant, and finite-field witnesses; the certificate JSON files record the checks.

The five polynomial files contain exact coefficients, without rounding. Ascending coefficient lists are also supplied for [`17T8`](polynomials/17T8_degree17_ascending.csv) and [`PSL₂(F₁₇)`](polynomials/PSL2_F17_degree18_ascending.csv). The degree-20 totally real polynomial is intentionally left in its primitive, nonmonic form; its coefficients are large.

## Totally real PSL₂(F₂₃) and SL₂(F₂₃) models

This repository includes two related explicit results:

| Polynomial | Degree | Galois group | Group order | Real roots |
| --- | ---: | --- | ---: | ---: |
| `f₂₃` | 24 | `PSL₂(F₂₃)` | 6,072 | 24 |
| `P*` | 48 | `SL₂(F₂₃)` | 12,144 | 48 |

Both polynomial files contain exact integer coefficients.

Construction details and intermediate derivations are reserved for direct technical discussion with the author.

## Verification

The repository provides exact polynomial data and reproducible certificate files for the publicly documented checks. Further construction material is available from the author for focused technical collaboration.
