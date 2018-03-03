Example-Sketches for processing-2.2.1
================
This repo is essentially obsolete since [JRubyArt][jra] that supports processing-3.3.6 see [JRubyArt-examples][examples]

Many of the vanilla processing example sketches have been translated to ruby-processing, and they are mainly written as 'bare' sketches (ie not class wrapped) in keeping with the original processing.  At runtime these sketches the get wrapped into a Sketch class. Should you prefer you can still write class wrapped sketches, these will work equally well with ruby-processing. Certain sketches must be run with JRuby-Complete (mainly `load_image` and `shader` sketches), this is a [java permissions thing with jruby][]. You should also checkout the [Nature of Code Examples in ruby][] and for the beginner [Learning Processing with Ruby][] for even more examples.
Includes autorun Rakefiles, in a console cd outer directory and 'rake' to run all autorun examples or eg 'rake shaders' to just run the shader examples. 

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
    3. [advanced data][]
    
3. [Libraries][]
    1. [fastmath][]
    2. [vecmath][]
    3. [control-panel][]
    4. [video][]

4. [JBox2D][]

### User contributions are most welcome
[Contributions][] add your [own][]

[jra]:https://github.com/ruby-processing/JRubyArt
[examples]:https://github.com/ruby-processing/JRubyArt-examples
[Learning Processing with Ruby]:https://github.com/ruby-processing/learning-processing-with-ruby
[Nature of Code Examples in ruby]:https://github.com/ruby-processing/The-Nature-of-Code-Examples-in-Ruby
[Contributions]:https://github.com/ruby-processing/Example-Sketches/tree/master/samples/contributed
[own]:https://github.com/ruby-processing/Example-Sketches/blob/master/CONTRIBUTING.md
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
[advanced data]:https://github.com/ruby-processing/Example-Sketches/tree/master/samples/processing_app/topics/advanced_data
[shaders]:https://github.com/ruby-processing/Example-Sketches/tree/master/samples/processing_app/topics/shaders
[Libraries]:https://github.com/ruby-processing/Example-Sketches/tree/master/samples/processing_app/library
[fastmath]:https://github.com/ruby-processing/Example-Sketches/tree/master/samples/processing_app/library/fastmath
[vecmath]:https://github.com/ruby-processing/Example-Sketches/tree/master/samples/processing_app/library/vecmath
[video]:https://github.com/ruby-processing/Example-Sketches/tree/master/samples/processing_app/library/video
[control-panel]:https://github.com/ruby-processing/Example-Sketches/tree/master/samples/contributed/jwishy.rb
[JBox2D]:https://github.com/ruby-processing/Example-Sketches/tree/master/samples/external_library/ruby_gem/jbox2d
[java permissions thing with jruby]:https://github.com/jashkenas/ruby-processing/wiki/FAQs
