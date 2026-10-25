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

## Ejemplos

| Regla | Consulta | Resultado |
|---|---|---|
| Variable | `derivada(x, x, Y).` | `Y = 1` |
| Constante | `derivada(7, x, Y).` | `Y = 0` |
| Suma | `derivada(x^2 + 3*x, x, Y).` | `Y = 2*x^1+3*1` |
| Resta | `derivada(x^3 - x, x, Y).` | `Y = 3*x^2-1` |
| Signo negativo | `derivada(-(x^2), x, Y).` | `Y = - (2*x^1)` |
| Multiplicación por constante | `derivada(5*x^3, x, Y).` | `Y = 5*(3*x^2)` |
| Multiplicación | `derivada((x^2 + 1)*(x - 3), x, Y).` | `Y = (2*x^1+0)*(x-3)+(x^2+1)*(1-0)` |
| División | `derivada((x^2 + 1)/(x + 1), x, Y).` | `Y = ((2*x^1+0)*(x+1)-(x^2+1)*(1+0))/(x+1)^2` |
| Potencia | `derivada(x^5, x, Y).` | `Y = 5*x^4` |
| Potencia con regla de la cadena | `derivada((x^2 + 1)^4, x, Y).` | `Y = 4*(x^2+1)^3*(2*x^1+0)` |
| Función seno | `derivada(sen(x^2 + 1), x, Y).` | `Y = cos(x^2+1)*(2*x^1+0)` |
| Función coseno | `derivada(cos(x^2 + 1), x, Y).` | `Y = -sen(x^2+1)*(2*x^1+0)` |
| Función tangente | `derivada(tan(x^2), x, Y).` | `Y = (1+tan(x^2)^2)*(2*x^1)` |
| Función arcotangente | `derivada(arctan(x^2 + 1), x, Y).` | `Y = (2*x^1+0)/(1+(x^2+1)^2)` |
| Función exponencial | `derivada(exp(3*x), x, Y).` | `Y = exp(3*x)*(3*1)` |
| Función logaritmo natural | `derivada(ln(x^2 + 1), x, Y).` | `Y = (2*x^1+0)/(x^2+1)` |
| Regla de la cadena con seno y exponencial | `derivada(sen(exp(3*x)), x, Y).` | `Y = cos(exp(3*x))*(exp(3*x)*(3*1))` |
| Regla de la cadena con logaritmo, seno y división | `derivada(ln(sen((x+1)/x)), x, Y).` | `Y = cos((x+1)/x)*(((1+0)*x-(x+1)*1)/x^2)/sen((x+1)/x)` |
| Regla de la cadena con arcotangente y potencia | `derivada(arctan((x^2+1)^10), x, Y).` | `Y = 10*(x^2+1)^9*(2*x^1+0)/(1+((x^2+1)^10)^2)` |

## Notas de escritura

- Usar `*` para multiplicar: `3*x`, no `3x`.
- Usar `sen` para seno, `arctan` para arcotangente y `ln` para logaritmo natural.
- Terminar cada consulta con un punto `.`
- Para salir de Prolog: `halt.`

## Referencias

- http://www.nivaria.net/blog/index.php/prolog/383-derivada-de-una-funcion-entera
- https://gist.github.com/tokkenno/8038482
- http://turing.iimas.unam.mx/~pedroG/al-2008-II/Lab_05.pdf
