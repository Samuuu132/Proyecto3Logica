# Proyecto 3 – Lógica Matemática

## Calculadora de Derivadas Simbólicas

Programa en Prolog que calcula derivadas de sumas, restas, multiplicaciones y divisiones de funciones polinomiales, seno, coseno, tangente, arcotangente, exponencial y logaritmo natural, aplicando la regla de la cadena. El resultado no se simplifica, solo queda indicado.

## Realizado por

- Adriana Martínez
- Daniel Sandoval
- Diego Sandoval
- Saúl Castillo
- Diego Gudiel
- Luis Alejandro Hernández

## Requisitos

- [SWI-Prolog](https://www.swi-prolog.org/download/stable)

## Cómo iniciar

Desde la carpeta del proyecto:

```
swipl derivadas.pl
```

Luego escribe las consultas con el formato:

```prolog
?- derivada(Funcion, x, Y).
```

## Cómo se escribe en Prolog

| Notación normal | En Prolog |
|---|---|
| 3x | `3*x` |
| x² | `x^2` |
| (x² + 1)⁴ | `(x^2 + 1)^4` |
| (x² + 1) / (x + 1) | `(x^2 + 1)/(x + 1)` |
| sen(x) | `sen(x)` |
| cos(x) | `cos(x)` |
| tan(x) | `tan(x)` |
| arctan(x) | `arctan(x)` |
| e³ˣ | `exp(3*x)` |
| ln(x) | `ln(x)` |

## Ejemplos

| Regla | Expresión normal | Consulta en Prolog | Resultado |
|---|---|---|---|
| Variable | x | `derivada(x, x, Y).` | `Y = 1` |
| Constante | 7 | `derivada(7, x, Y).` | `Y = 0` |
| Suma | x² + 3x | `derivada(x^2 + 3*x, x, Y).` | `Y = 2*x^1+3*1` |
| Resta | x³ − x | `derivada(x^3 - x, x, Y).` | `Y = 3*x^2-1` |
| Signo negativo | −x² | `derivada(-(x^2), x, Y).` | `Y = - (2*x^1)` |
| Multiplicación por constante | 5x³ | `derivada(5*x^3, x, Y).` | `Y = 5*(3*x^2)` |
| Multiplicación | (x² + 1)(x − 3) | `derivada((x^2 + 1)*(x - 3), x, Y).` | `Y = (2*x^1+0)*(x-3)+(x^2+1)*(1-0)` |
| División | (x² + 1) / (x + 1) | `derivada((x^2 + 1)/(x + 1), x, Y).` | `Y = ((2*x^1+0)*(x+1)-(x^2+1)*(1+0))/(x+1)^2` |
| Potencia | x⁵ | `derivada(x^5, x, Y).` | `Y = 5*x^4` |
| Potencia con regla de la cadena | (x² + 1)⁴ | `derivada((x^2 + 1)^4, x, Y).` | `Y = 4*(x^2+1)^3*(2*x^1+0)` |
| Función seno | sen(x² + 1) | `derivada(sen(x^2 + 1), x, Y).` | `Y = cos(x^2+1)*(2*x^1+0)` |
| Función coseno | cos(x² + 1) | `derivada(cos(x^2 + 1), x, Y).` | `Y = -sen(x^2+1)*(2*x^1+0)` |
| Función tangente | tan(x²) | `derivada(tan(x^2), x, Y).` | `Y = (1+tan(x^2)^2)*(2*x^1)` |
| Función arcotangente | arctan(x² + 1) | `derivada(arctan(x^2 + 1), x, Y).` | `Y = (2*x^1+0)/(1+(x^2+1)^2)` |
| Función exponencial | e³ˣ | `derivada(exp(3*x), x, Y).` | `Y = exp(3*x)*(3*1)` |
| Función logaritmo natural | ln(x² + 1) | `derivada(ln(x^2 + 1), x, Y).` | `Y = (2*x^1+0)/(x^2+1)` |
| Regla de la cadena con seno y exponencial | sen(e³ˣ) | `derivada(sen(exp(3*x)), x, Y).` | `Y = cos(exp(3*x))*(exp(3*x)*(3*1))` |
| Regla de la cadena con logaritmo, seno y división | ln(sen((x + 1) / x)) | `derivada(ln(sen((x+1)/x)), x, Y).` | `Y = cos((x+1)/x)*(((1+0)*x-(x+1)*1)/x^2)/sen((x+1)/x)` |
| Regla de la cadena con arcotangente y potencia | arctan((x² + 1)¹⁰) | `derivada(arctan((x^2+1)^10), x, Y).` | `Y = 10*(x^2+1)^9*(2*x^1+0)/(1+((x^2+1)^10)^2)` |

## Notas

- Terminar cada consulta con un punto `.`
- Para salir de Prolog: `halt.`

## Referencias

- http://www.nivaria.net/blog/index.php/prolog/383-derivada-de-una-funcion-entera
- https://gist.github.com/tokkenno/8038482
- http://turing.iimas.unam.mx/~pedroG/al-2008-II/Lab_05.pdf
