# About Rmd presentations

Rmd presentations are written with ioSlides technology, allowing programmatically and interactive slideshows. 

## Constraints

- .Rmd files' names must contain NO SPACE. This produce an error (got under Ubuntu), preventing from loading images in the presentation through "![]()" operator.

## Including shiny apps

You must have written the following line in the header:

    runtime: shiny

to allow the slideshow to perform shiny app. Do not forget to load the `shiny` library in the first R chunk.

It is preferable to have apps completely written in the .Rmd files, instead of importing an existing app or to have partial chunks of app (even if this is supported). Also, do not include heavy apps with mutliple features: this is just a light-weight visual support for speeches.
