# Printf kdb-x installation

[`printf.q`](../printf.q) is written as a module, under kdb-x's module framework. Though modules can be loaded from anywhere if added to your `$QPATH`, we recommend installing to the `$HOME/.kx/mod/kx` folder. This is to avoid name clashes with other user defined modules, as well as providing a location for other KX modules to cross reference eachother (e.g. the logging module references `..printf`)

```bash 
export QPATH="$QPATH:$HOME/.kx/mod"
mkdir -p ~/.kx/mod/kx/
cp printf.q ~/.kx/mod/kx/
```

Now from anywhere you can import the printf library.

```q
q)([printf]):use`kx.printf;
q)printf ("This is a printf formatted float %8.4f"; 3.14159265)
"This is a printf formatted float   3.1416"
```

Add the export to your bashrc or equivalent to persist across sessions. 
