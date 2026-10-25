/* =====================================================================
   Proyecto Lógica
   Calculadora de Derivadas Simbólicas
   ===================================================================== */

% --- Casos base -------------------------------------------------------

% d/dx (x) = 1
derivada(X, X, 1) :- !.

% d/dx (c) = 0, para cualquier constante (número o átomo distinto de x)
derivada(C, _, 0) :- atomic(C), !.

% --- Suma, resta y signo ----------------------------------------------

% d(U + V) = dU + dV
derivada(U + V, X, DU + DV) :- !,
    derivada(U, X, DU),
    derivada(V, X, DV).

% d(U - V) = dU - dV
derivada(U - V, X, DU - DV) :- !,
    derivada(U, X, DU),
    derivada(V, X, DV).

% d(-U) = -dU
derivada(-U, X, -DU) :- !,
    derivada(U, X, DU).

% --- Multiplicación ---------------------------------------------------

% d(c * U) = c * dU, con c constante numérica
derivada(C * U, X, C * DU) :- number(C), !,
    derivada(U, X, DU).

% d(U * V) = dU * V + U * dV
derivada(U * V, X, DU * V + U * DV) :- !,
    derivada(U, X, DU),
    derivada(V, X, DV).

% --- División ---------------------------------------------------------

% d(U / V) = (dU * V - U * dV) / V^2
derivada(U / V, X, (DU * V - U * DV) / V^2) :- !,
    derivada(U, X, DU),
    derivada(V, X, DV).

% --- Potencia (exponente numérico) ------------------------------------

% d(U^0) = 0, ya que U^0 = 1 es constante
derivada(_ ^ N, _, 0) :- number(N), N =:= 0, !.

% d(x^n) = n * x^(n-1)
derivada(X ^ N, X, N * X ^ N1) :- number(N), !,
    N1 is N - 1.

% d(U^n) = n * U^(n-1) * dU      (regla de la cadena)
derivada(U ^ N, X, N * U ^ N1 * DU) :- number(N), !,
    N1 is N - 1,
    derivada(U, X, DU).

% --- Funciones trigonométricas (regla de la cadena) -------------------

% d(sen(U)) = cos(U) * dU
derivada(sen(U), X, cos(U) * DU) :- !,
    derivada(U, X, DU).

% d(cos(U)) = -sen(U) * dU
derivada(cos(U), X, -sen(U) * DU) :- !,
    derivada(U, X, DU).

% d(tan(U)) = (1 + tan(U)^2) * dU
derivada(tan(U), X, (1 + tan(U)^2) * DU) :- !,
    derivada(U, X, DU).

% d(arctan(U)) = dU / (1 + U^2)
derivada(arctan(U), X, DU / (1 + U^2)) :- !,
    derivada(U, X, DU).

% --- Exponencial y logaritmo natural (regla de la cadena) -------------

% d(exp(U)) = exp(U) * dU
derivada(exp(U), X, exp(U) * DU) :- !,
    derivada(U, X, DU).

% d(ln(U)) = dU / U
derivada(ln(U), X, DU / U) :- !,
    derivada(U, X, DU).
