---
description: Una lista de todas las características de mastercomfig.
...

# Características

## Personalización

* Totalmente compatible con scripts y configs personalizadas
* Comentario extensivo de las diferentes opciones
* Opciones preestablecidas que se adecúan a su caso de uso
* Configuraciones de personalización opcional adicionales
* Sistema de config modular que permite una rápida actualización
* Sistema de complementos integrado extensivo, el cual provee soporte para la no cancelación de movimiento/*null-canceling movement */, modelos de vista transparentes y más

## Correcciones de errores

* Se corrigió que el HUD de partida no desapareciera al ser desactivado
* Se corrigió que las configuraciones de torneo se mantuvieran en servidores locales

## Renderizado/* RAE (Royal Spanish Academy doesn't have an official translation for "rendering" yet */

* Gráficos por procesos
* Optimizaciones para sistemas modernos
* LOD (nivel de detalle) optimizado
* Iluminación optimizada
* Sombras optimizadas
* Partículas optimizadas
* Agua optimizada
* Efectos de posprocesamiento optimizados
* Filtro de texturas y suavizado optimizados
* Personajes optimizados
* Calcos optimizados
* Cachos optimizados
* Props optimizados
* Sogas/cuerdas optimizadas
* OpenGL optimizado
* Contornos optimizados

## Inicio

* Limpieza de lista de precarga de texturas
* Limpieza de precaché del cliente
* Limpieza de la salida de la consola
* Se aumentó la memoria para el caché de sombreado de OpenGL
* Se optimizó el precaché de sombreado de OpenGL
* Se optimizó el tiempo de inicio

## Memoria/ES

* Búfer de LZMA persistente
* Optimizaciones del sistema de archivos
* ES completamente asíncrona
* Se optimizó el uso de la memoria

## Red

* Se redujo la latencia de comandos del cliente (abrir el menú de clases, cambiar a espectador, morir, reapariciones en MvM ¡y más!)
* Se aumentó la velocidad de datos
* Se redujo el ahogamient/*ahogamiento de la memoria destinada a la ejecución del juego*/
* Se redujo la pérdida de paquetes y se mejoró la confiabilidad
* Se optimizó el sistema de predicción e interpolación para un mejor registro de impacto
* Se afinó el suavizado de la vista del cliente
* Se aumentó el tiempo de espera del cliente
* Se aumentó el tamaño de archivo máximo para contenido adicional
* Personalización de configuración de red por clase en plantillas
* Se redujo la sobrecarga general del sistema de red

## Sonido

* Reproducción de sonido asíncrono
* Se ajustó la sincronización labial
* Se minimizó el retraso de sonido
* Se mejoró el rendimiento del sonido
* Se mejoró la calidad y la espacialización del sonido
* Se mejoró la característica desactivable chat de voz, el cual actúa al instante en un servidor y reduce el uso ancho de banda

## Entrada

* Sensibilidad pareja al acercar la mira opcional y otras mejoras del ratón para una entrada consistente 

## Seguridad

* Evita que aimbots se unan a servidores locales
* Evita que jugadores entren a su grupo sin su autorización, haciendo spam en el chat de grupo, causando lag/* oficialmente "retardo" */ y spam de sonido
* Mitigación opcional de que la información de juego de Steam filtre su dirección IP al estar en un servidor local
