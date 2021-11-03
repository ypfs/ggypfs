# ggypfs
R theme for YPFS publications

## installation
```
devtools::install_github("ypfs/ggypfs")
```

## usage
Begin with a `ggplot` object:
```
ggplot(iris) +
  geom_point(aes(Sepal.Length, Sepal.Width, col = Species))
```
![Default ggplot theme and palette](github_resources/default.svg)

Add the YPFS theme quickly with
```
ggplot(iris) +
  geom_point(aes(Sepal.Length, Sepal.Width, col = Species)) +
  theme_ypfs()
```
![YPFS theme with default palette](github_resources/ypfs_theme.svg)

And change the color palette with
```
ggplot(iris) +
  geom_point(aes(Sepal.Length, Sepal.Width, col = Species)) +
  scale_color_ypfs_d() + #that's d for discrete!
  theme_ypfs()
```
![YPFS theme with YPFS discrete palette](github_resources/ypfs_theme_discrete.svg)

Also works for continuous scales:
```
ggplot(iris) +
  geom_point(aes(Sepal.Length, Sepal.Width, col = Petal.Length)) +
  scale_color_ypfs_c("sequential") +
  theme_ypfs()
```
![YPFS theme with YPFS continuous palette](github_resources/ypfs_theme_continuous.svg)

## palettes
### qualitative
!['west_rock: "#286dc0" "#cc71b9" "#d3b845" "#bd5a0e" "#96a53b"'](github_resources/west_rock.svg)
!['east_rock: "#286dc0" "#f2cd5c" "#bd5319" "#5f712d" "#978d85"'](github_resources/east_rock.svg)
!['fields_decomp: "#303398" "#5ea66f" "#fedfc1" "#a0c248" "#3b5c6b" "#a33232" "#c14e4d" "#8b993c" "#f1ba5e" "#cd5849" "#a06cb8"'](github_resources/fields_decomp.svg)
!['yale_blues: "#A5D2EB" "#4BA5D7" "#1069A0" "#00356B" "#000440"'](github_resources/yale_blues.svg)

Note that you can also use the qualitative palettes with `scale_*_ypfs_c`---though I'd only recommend this with `yale_blues`:
!['yale_blues but continuous'](github_resources/yale_blues_continuous.svg)

### sequential
!['sequential: low = #E6D2EF high = #cc71b9'](github_resources/sequential.svg)

### divergent
!['divergent: low = #5f712d mid = #fdeabf high = #bd5a0e'](github_resources/divergent.svg)

## method
Check the [brainstorming](github_resources/brainstorming.html) doc to understand the iteration and selection process for themes a bit better.
