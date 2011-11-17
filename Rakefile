desc "Given a title as an argument, create a new post file"
task :write, [:title] do |t, args|
  filename = "#{Time.now.strftime('%Y-%m-%d')}-#{args.title.gsub(/\s/, '_').downcase}.markdown"
  path = File.join("_posts", filename)
  if File.exist? path; raise RuntimeError.new("Won't clobber #{path}"); end
  File.open(path, 'w') do |file|
    file.write <<-EOS
---
layout: post
title: #{args.title}
date: #{Time.now.strftime('%Y-%m-%d %k:%M:%S')}
tags: 
 - tagshere
 - another one
---
EOS
    end
    puts "Now open #{path} in an editor."
end

desc "Deploy site to Amazon's s3 service"
task :deploy do
  sh "s3cmd sync _site/* s3://www.kismetik.com/"
end

desc "clean output in _site"
task :clean do
  sh "cd _site && rm -r *"
  puts "Site output cleaned"
end

desc "start development"
task :dev do
  sh "ejekyll --server"
end
