## Flood IO Presentations

### Pre-reqs

Install `prez`

```
  npm install -g prez
```

### Presentations

To make a new presentation

```
  mkdir mypresentation
  cd mypresentation
  prez --init
```

To build an existing presentation

```
  make build deck=mypresentation
```

To view an existing presentation

```
  make local deck=mypresentation
```

To publish an existing presentation on Github Pages

```
  make live deck=mypresentation
```

Note: this will replace the running presentation at:

http://flood-io.github.io/showandtell/
