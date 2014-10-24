# -*- encoding: utf-8 -*-

desc 'run contributed samples'    
task :default => [:contributed]

desc 'run contributed samples'
task :contributed do
  sh "cd samples/contributed && rake"
end

desc 'shaders'
task :shaders do
  sh "cd samples/processing_app/topics/shaders && rake"
end

desc 'vecmath'
task :vecmath do
  sh "cd samples/processing_app/library/vecmath/vec2d && rake"
  sh "cd samples/processing_app/library/vecmath/vec3d && rake"
  sh "cd samples/processing_app/library/vecmath/arc_ball && rake"
end
