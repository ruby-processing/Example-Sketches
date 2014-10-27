Example-Sketches
================

Many of the vanilla processing example sketches have been translated to ruby-processing, and they are mainly written as 'bare' sketches (ie not class wrapped) in keeping with the original processing.  At runtime these sketches the get wrapped into a Sketch class. Should you prefer you can still write class wrapped sketches, these will work equally well with ruby processing. Certain sketches must be run with JRuby-Complete (`load_image` and `shader` sketches), this is some java permissions thing with jruby. You should also checkout the [Nature of Code Examples in ruby][] and for the beginner [Learning Processing with Ruby][].

### Partial Catalogue (for the lazy)

1. [Basic][]

    1. [structure][]
    2. [objects][] 
    3. [arrays][]
    4. [input][]
    5. [shape][]
    6. [image][]
    7. [control][]

2. [Topics][]

    1. [shaders][]
    2. [lsystems][]
    
3. [Libraries][]
    1. [fastmath][]
    2. [vecmath][]
    3. [control-panel][]

[Learning Processing with Ruby]:https://github.com/ruby-processing/learning-processing-with-ruby
[Nature of Code Examples in ruby]:https://github.com/ruby-processing/The-Nature-of-Code-Examples-in-Ruby
[Basic]:https://github.com/ruby-processing/Example-Sketches/tree/master/samples/processing_app/basics
[structure]:https://github.com/ruby-processing/Example-Sketches/tree/master/samples/processing_app/basics/structure
[objects]:https://github.com/ruby-processing/Example-Sketches/tree/master/samples/processing_app/basics/objects
[arrays]:https://github.com/ruby-processing/Example-Sketches/tree/master/samples/processing_app/basics/arrays
[control]:https://github.com/ruby-processing/Example-Sketches/tree/master/samples/processing_app/basics/control
[shape]:https://github.com/ruby-processing/Example-Sketches/tree/master/samples/processing_app/basics/shape
[input]:https://github.com/ruby-processing/Example-Sketches/tree/master/samples/processing_app/basics/input
[image]:https://github.com/ruby-processing/Example-Sketches/tree/master/samples/processing_app/basics/image
[Topics]:https://github.com/ruby-processing/Example-Sketches/tree/master/samples/processing_app/topics
[lsystems]:https://github.com/ruby-processing/Example-Sketches/tree/master/samples/processing_app/topics/lsystems
[shaders]:https://github.com/ruby-processing/Example-Sketches/tree/master/samples/processing_app/topics/shaders
[Libraries]:https://github.com/ruby-processing/Example-Sketches/tree/master/samples/processing_app/libraries
[fastmath]:https://github.com/ruby-processing/Example-Sketches/tree/master/samples/processing_app/libraries/fastmath
[vecmath]:https://github.com/ruby-processing/Example-Sketches/tree/master/samples/processing_app/libraries/vecmath
[control-panel]:https://github.com/ruby-processing/Example-Sketches/tree/master/samples/contributed/jwishy.rb
