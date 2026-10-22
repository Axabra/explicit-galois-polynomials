\\ Run from the repository root with: gp -q verify.gp
z; x;

need(ok, message) = if (!ok, error(message));
pattern(g, p) = {
  my(F = factormod(g, p));
  need(F[, 2] == vector(matsize(F)[1], i, 1)~, "Non-squarefree reduction");
  vecsort(vector(matsize(F)[1], i, poldegree(F[i, 1])));
};

main() = {
  my(f = read("f24_source.txt"));
  my(g = read("polynomials/PSL2_F23_reconstructed_degree24.txt"));
  my(P = read("Pstar_degree48.txt"));
  my(Q = read("Qstar_degree24.txt"));
  my(R = read("Rstar_degree23.txt"));
  my(a);
  need(poldegree(f) == 24 && poldegree(g) == 24 && poldegree(P) == 48 && poldegree(Q) == 24, "Unexpected polynomial degree");
  need(pattern(f, 3) == [12, 12] && pattern(f, 17) == [1, 23], "Source modular factor patterns differ");
  need(pattern(g, 3) == [12, 12] && pattern(g, 17) == [1, 23], "Reconstructed model modular factor patterns differ");
  need(pattern(P, 3) == [24, 24] && pattern(P, 17) == [2, 46], "Degree-48 modular factor patterns differ");
  need(P == subst(Q, z, x^2), "P is not Q(x^2)");
  a = Mod(R, f) / Mod(deriv(f), f);
  need(charpoly(a, x) == subst(Q, z, x), "Norm identity differs");
  need(polsturm(f) == 24 && polsturm(g) == 24 && polsturm(Q) == 24, "Real-root counts differ");
  need(vector(25, i, sign(polcoef(Q, i-1))) == vector(25, i, (-1)^(i-1)), "Q coefficients do not alternate in sign");
  print("PASS: original and reconstructed degree-24 models, irreducibility witnesses, norm identity, 48 real roots");
};
iferr(main(), E, print("FAIL: ", E); quit(1));
quit(0);
