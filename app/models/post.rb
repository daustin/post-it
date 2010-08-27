class Post < ActiveRecord::Base

  def self.save_whenever(params,sec=60)
    puts "Sleeping for #{sec} seconds..."
    sleep sec
    p = Post.new(params)
    p.save
  end
  
end
