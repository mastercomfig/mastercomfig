---
description: Aprende como hacer una prueba de rendimiento de TF2 y medir FPS científicamente.
...

# Pruebas de rendimiento

Una prueba de rendimiento (benchmarking, en inglés) es el proceso por el cual se puede medir científicamente el impacto de cambios en su sistema.

Una gran cantidad de información de pruebas de rendimiento es crucial para asegurar que mastercomfig funciona en una gran variedad de sistemas.

Entonces, se aprecia muchísimo que se haga una prueba de rendimiento de mastercomfig y cualquier cambio que le haga o a su sistema, para que podamos entender su impacto.

## Cómo hacer una prueba de rendimiento

1. Descargue el [archivo de prueba de rendimiento](https://mega.nz/file/f8tlhDhR#nYgghqybOK15ObUykEczewB3242XHb_bJ4JP0rv1q6k).
2. Muévalo a la carpeta `tf/`.
3. Ejecute el juego.
4. Ingrese `timedemo benchmark_test`
5. Guarde la salida de timedemo que aparezca en la consola `X frames X seconds X fps (X ms/f) X fps variability`.
6. Repita `timedemo benchmark_test` tantas veces como desee para reducir los efectos de la varianza sistemática.

## Información de prueba de rendimiento

mastercomfig provee un servicio para registrar la información de prueba de rendimiento para que podamos mejorarlo con base a la información.

[**Formulario de envío**](https://airtable.com/shrckjh0jqeZdeIYN)

[**Resultados**](https://airtable.com/shrxpulcQulOi16Wm)