\\ Run from the repository root with: gp -q verify.gp
z; x;
f = read("f24_source.txt");
P = read("Pstar_degree48.txt");
Q = read("Qstar_degree24.txt");
R = read("Rstar_degree23.txt");

need(ok, message) = if (!ok, print("FAIL: ", message); quit(1));
pattern(g, p) = {
  my(F = factormod(g, p));
  need(F[, 2] == vector(matsize(F)[1], i, 1)~, "Non-squarefree reduction");
  vecsort(vector(matsize(F)[1], i, poldegree(F[i, 1])));
};

need(poldegree(f) == 24 && poldegree(P) == 48 && poldegree(Q) == 24, "Unexpected polynomial degree");
need(pattern(f, 3) == [12, 12] && pattern(f, 17) == [1, 23], "Source modular factor patterns differ");
need(pattern(P, 3) == [24, 24] && pattern(P, 17) == [2, 46], "Degree-48 modular factor patterns differ");
need(P == subst(Q, z, x^2), "P is not Q(x^2)");

a = Mod(R, f) / Mod(deriv(f), f);
need(charpoly(a, x) == subst(Q, z, x), "Norm identity differs");
need(polsturm(f) == 24 && polsturm(Q) == 24, "Real-root counts differ");
need(vector(25, i, sign(polcoef(Q, i-1))) == vector(25, i, (-1)^(i-1)), "Q coefficients do not alternate in sign");

print("PASS: degrees, irreducibility witnesses, norm identity, 48 real roots");
quit(0);
