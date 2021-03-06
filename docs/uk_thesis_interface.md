# uk_thesis documentclass interface

If it ain't required and you don't want to include it, comment it out rather than providing an empty definition.

## Options

### Thesis/Dissertation mode

```latex
\documentclass{uk_thesis}               % implicit thesis mode
\documentclass[thesis]{uk_thesis}       % explicit thesis mode
\documentclass[dissertation]{uk_thesis} % dissertation mode
```

## Fields

### Title (required)

```latex
\title{Title IN any CAse}
```

### Author (required)

```latex
\author{You Yourself You}
```

### Director of Graduate Studies (required)

```latex
\dgs{Zongming Fei}
```

### Director of Thesis (required)

Arguments: name and discipline

```latex
\director{Mirosław Truszczyński}{Computer Science}
```

### Co-director of Thesis (optional)

Same usage as `\director`

```latex
\codirector{Richard Ehrenborg}{Mathematics}
```

If you want to align the co-director and director's names, you can use
```latex
\aligncodirector{}
```

### Degree (required)

```latex
% Computer Science is the only Engineering degree without a major in the name
\degree{Master of Science}
\degree{Master of Science in Mechanical Engineering}
%...
```

### Orcid (optional)

```latex
\orcid{https://orcid.org/0000-0001-2345-6789}
```
### College (required)

```latex
\college{Engineering}
```

### Submission date (required)

Arguments: year (yyyy), month (mm), day (dd)

```latex
\submissiondate{2021}{05}{05}
```

### Abstract (required)

```latex
\abstract{Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum finibus justo a eros rhoncus condimentum. Vestibulum ornare diam nec ipsum placerat rutrum. Maecenas sodales facilisis massa vel rutrum. Donec in tellus dui. Aliquam gravida faucibus tortor, sit amet faucibus ligula laoreet nec. Quisque id ullamcorper nibh. Nullam sapien mauris, ullamcorper id iaculis vitae, malesuada cursus leo. Donec suscipit metus vitae ante imperdiet, ut aliquet nunc ornare. Praesent pulvinar lorem consequat sagittis imperdiet. In sem nisl, vulputate eu suscipit eget, dapibus id quam. Integer diam odio, feugiat quis auctor sit amet, consequat et sem. Proin feugiat, libero eget tempor bibendum, est magna tempus nisi, eu ullamcorper arcu libero ullamcorper nisl.}
```

### Keywords (required)

Arguments: comma separated keywords
```latex
\keywords{nim, simplicial complexes, optimal strategy, function interpolation}
```

### Dedication (optional)
```latex
\dedication{To my lovely cat, Jeff.}
```

### Acknowledgements (optional)
```latex
\acknowledgements{Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum finibus justo a eros rhoncus condimentum. Vestibulum ornare diam nec ipsum placerat rutrum. Maecenas sodales facilisis massa vel rutrum. Donec in tellus dui. Aliquam gravida faucibus tortor, sit amet faucibus ligula laoreet nec. Quisque id ullamcorper nibh. Nullam sapien mauris, ullamcorper id iaculis vitae, malesuada cursus leo. Donec suscipit metus vitae ante imperdiet, ut aliquet nunc ornare. Praesent pulvinar lorem consequat sagittis imperdiet. In sem nisl, vulputate eu suscipit eget, dapibus id quam. Integer diam odio, feugiat quis auctor sit amet, consequat et sem. Proin feugiat, libero eget tempor bibendum, est magna tempus nisi, eu ullamcorper arcu libero ullamcorper nisl.}
```
