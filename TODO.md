# TODO

## Clean-up?

- [ ] Pass to modern C, like WTF `// comments` are not allowed?
- [ ] `DT_DIR`, `DT_REG` are errors?

## Software

- [x] Improve output, to display a nicer message, with similarity percentage in front, so output of `sherlock` can be piped to `sort` for instance.

```
058% : ./file1 ./file2
079% : ./file2 ./file3
092% : ./file1 ./file3
```
instead of
```
./file1;./file2 58%
./file2;./file3 79%
./file1;./file3 92%
```

- [x] This way, it is easy to review the most similar files, with something similar to

```bash
sherlock -r -e java -t 50% -z 2 -n 5 . | sort -r | tee /tmp/sherlock.log
code -n
while IFS= read -r line; do
    echo "$line"
    file12=$(echo "$line" | awk '{print $3 " " $4}')
    code $file12
    read
done < /tmp/sherlock.log
```

- [ ] Allow to pass files as input:

```bash
$ ./sherlock *.java
```
is much more intuitive (and allows for finer control) than
```bash
$ ./sherlock -e java .
```
also, the README is wrong, this syntax does NOT work! (yet)

## Benchmark/tests

- [ ] check if it works well if the files were just alpha-renamed (ie all variables were renamed but nothing else)
- [ ] check if it works well if the files were just altered (ex one badly written, one simply "reformated" automatically)

- [ ] include examples?
- [ ] include tests?

## Documentation

- [ ] Write the README.md in a more standard markdown
- [ ] Update documentation on README.md
- [ ] Update and improve help message output by the program

## Rewrite?

- [ ] Rewrite using OCaml ?
- [ ] Rewrite using Python ?

## Release?

- [ ] Include a binary from GitHub release?
- [ ] Write a web-app? probably too complicated!
- [ ] Write a graphical local desktop? probably too complicated!
