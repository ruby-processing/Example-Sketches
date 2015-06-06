# -*- encoding: utf-8 -*-

root = File.expand_path(__dir__)

desc 'run contributed samples'    
task :default => [:all]

desc 'run all autorun samples'
task :all do
  Rake::Task[:contributed].execute
  Rake::Task[:vecmath].execute  
  Rake::Task[:shaders].execute
end

desc 'run contributed samples'
task :contributed do
  sh "cd #{root}/samples/contributed && rake"
end

desc 'shaders'
task :shaders do
  sh "cd #{root}/samples/processing_app/topics/shaders && rake"
end

desc 'vecmath'
task :vecmath do
  sh "cd #{root}/samples/processing_app/library/vecmath/vec2d && rake"
  sh "cd #{root}/samples/processing_app/library/vecmath/vec3d && rake"
  sh "cd #{root}/samples/processing_app/library/vecmath/arcball && rake"
end
