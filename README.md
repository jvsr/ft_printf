# ft_printf
An all new, recoded, printf. A Codam school project

## Description
A recoded, modified version of the stdio library function, printf.

## Features
```
Handled datatypes:  iI dD fF uU oO xX p sS cC %
Handled flags:      - + [space] 0 #
Handled lengths:    h hh l ll L
Extra features:     *, width, precision, inf, nan, -0, ANSI colors (format "{red} this is now in red {eoc}"

To be added:        b (binary) datatype
```

## How to test ?
Run `make`.

A library called libftprint.a will be compiled. You can then compile a main.c file with this library to test the `ft_print(char *format, ...)` function.
