# Printf kdb-x installation

[`printf.q`](../printf.q) is written as a module, under KDB-X's module framework. Though modules can be loaded from anywhere if added to your `$QPATH`, we recommend installing under a `kx` folder within your `$QPATH`. This is to avoid name clashes with other user defined modules, as well as providing a name for other KX modules to cross reference each other.

## Installing a Release

It is recommended that a user install this module through a release. 

[Download a release](https://github.com/KxSystems/printf/releases) and then unzip to your module directory. The following example assumes the default install location for KDB-X.

```
unzip printf.zip -d ~/.kx/mod
```

## Installing from Source

```bash
git clone https://github.com/KxSystems/printf.git
cd printf
```

Move `printf.q` into your module directory, under `kx`. The following example assumes the default install location for KDB-X.

```bash
mkdir -p ~/.kx/mod/kx
cp printf.q ~/.kx/mod/kx/
```


## Next Steps

Now from anywhere you can import the printf library.

```q
q)([printf]):use`kx.printf;
q)printf ("This is a printf formatted float %8.4f"; 3.14159265)
"This is a printf formatted float   3.1416"
```

You're ready to check out some of the tests we've provided [here](../t.q) and the [reference](reference.md) to get started
