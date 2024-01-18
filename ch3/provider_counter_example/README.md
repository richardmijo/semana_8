# provider_counter_example

## Descripción general de la sección – Provider

1.	Provider es un contenedor alrededor de InheritedWidget.
2.	Provider es un paquete de Dart que proporciona toda la funcionalidad necesaria y mantiene el código repetitivo dentro de sí mismo.
3.	El Provider reduce el código reutilizable que debe escribirse al implementar InheritedWidget.
4.	Envolver  Provider alrededor de la aplicación hace que el estado sea accesible en todos los widgets.
5.	`Provider.of<YourClass>(context)` tiene un parámetro llamado listen, que se puede usar para detener la reconstrucción de widgets que no leen valores de la clase.
6.	`Provider.of<Counter>(context)._count`  es similar a context.watch<Counter>()._count. 
7.	`Provider.of<Counter>(context, listen: false).increment()`  es similar a context.read<Counter>().increment().

