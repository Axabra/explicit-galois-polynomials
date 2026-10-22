# Explicit Galois polynomials

**Axel Abdel Rahamane Meghezzi** · Axabra · Independent researcher, Montréal

A polynomial has roots. Galois theory describes the permutations of those roots that preserve their algebraic relations over the rational numbers. This repository presents exact polynomial models and records of their mathematical checks.

The *degree* counts all roots over `C`; the *real roots* column counts those on the real number line. The signature `(r₁,r₂)` records `r₁` real roots and `r₂` pairs of nonreal roots.

| Polynomial | Degree | Splitting-field group | Group order | Real roots | Signature | Recorded checks |
| --- | ---: | --- | ---: | ---: | --- | --- |
| [`17T8`](polynomials/17T8_degree17.txt) | 17 | `17T8` | 16,320 | 17 | `(17,0)` | [Magma group record](certificates/17T8_Magma.txt), [exact root intervals](certificates/17T8_real_intervals.json) |
| [`f₁₇`](polynomials/PSL2_F17_degree18.txt) | 18 | `PSL₂(F₁₇)` = `18T377` | 2,448 | 2 | `(2,8)` | [Exact arithmetic and Magma record](certificates/PSL2_F17.json) |
| [`f₁₉,real`](polynomials/PSL2_F19_real_degree20.txt) | 20 | `PSL₂(F₁₉)` | 3,420 | 20 | `(20,0)` | [Specialization record](certificates/PSL2_F19_real.json), [comparison](certificates/PSL2_F19_comparison.json) |
| [`f₁₉,nonreal`](polynomials/PSL2_F19_nonreal_degree20.txt) | 20 | `PSL₂(F₁₉)` | 3,420 | 0 | `(0,10)` | [Modular and finite-field record](certificates/PSL2_F19_nonreal.json) |
| [`f₂₃`, reconstructed](polynomials/PSL2_F23_reconstructed_degree24.txt) | 24 | `PSL₂(F₂₃)` = `24T7817` | 6,072 | 24 | `(24,0)` | [Reconstruction and exact checks](certificates/PSL2_F23_reconstructed.json) |
| [`P*`](Pstar_degree48.txt) | 48 | `SL₂(F₂₃)` | 12,144 | 48 | `(48,0)` | [Construction and exact checks](certificates/SL2_F23.json) |
| [`f₃₁`](polynomials/PSL2_F31_degree32.txt) | 32 | `PSL₂(F₃₁)` | 14,880 | 0 | `(0,16)` | [Group record](certificates/PSL2_F31.json), [modular identity](certificates/PSL2_F31_modular_identity.json) |

All seven displayed polynomials are irreducible over `Q`. The two degree-20 models have the same abstract Galois group, with different real-root counts and distinct number fields.

## Totally real PSL₂(F₂₃) and SL₂(F₂₃)

**PSL₂(F₂₃), degree 24:** my reconstructed polynomial model of a previously known totally real field. Its largest coefficient has **63 decimal digits**. Exact arithmetic verifies that it defines the same field as the source model.

**SL₂(F₂₃), degree 48:** the explicit central lift constructed in this work from that degree-24 source field. The polynomial `P*` has **48 real roots**; its largest coefficient has **1,712 decimal digits**.

The degree-24 reconstruction and the degree-48 lift are separate contributions. The original degree-24 field was already known. The original source polynomial is retained as auxiliary input for the verification script.

## Polynomial data

Every polynomial file contains exact integer coefficients. Ascending coefficient lists are provided for [`17T8`](polynomials/17T8_degree17_ascending.csv), [`PSL₂(F₁₇)`](polynomials/PSL2_F17_degree18_ascending.csv), the [reconstructed `PSL₂(F₂₃)` model](polynomials/PSL2_F23_reconstructed_degree24_ascending.csv), and [`P*`](Pstar_ascending.csv).

The totally real degree-20 polynomial is my specialization of a published family, in primitive nonmonic form. The nonreal degree-20 and degree-32 models were computed using a published modular construction. Their technical records document the checks and mathematical dependencies.

## Verification

Run `gp -q verify.gp` from the repository root with PARI/GP to check the degree-24 and degree-48 polynomial data: modular irreducibility witnesses, the exact norm identity, and real-root counts.

The group identifications also use the recorded group arguments. For `PSL₂(F₂₃)` and `SL₂(F₂₃)`, these rely on the known source-field group and the central-lift construction. The JSON files distinguish those arguments from the arithmetic checks performed by the script.

Further construction details are available from the author for focused technical discussion.
