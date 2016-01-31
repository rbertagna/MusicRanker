require_relative "../../config/environment"
require_relative "../models/musician.rb" # change/add to account for name of models
# require "pry"
require "open-uri"
require "json"
require "pp"


class ApplicationController < Sinatra::Base
  
  set :views, "app/views"
  set :public_folders, "public" 
  #:public is no longer used to avoid overloading Module#public, use :public_folder or :public_dir instead
  #from /Users/julianne/Desktop/development/musicranker/app/controllers/application_controller.rb:12:in `<class:ApplicationController>'
  
  get "/" do
    # Musician.create( :name => "Kendrick Lamar", :genre => "Hip-Hop", :img_url => "http://revive-music.com/wp-content/uploads/1556365_10152290789958092_885501008_o.jpg", :music_url => "https://www.youtube.com/user/KendrickLamarVEVO", :rating => 600)
    # Musician.create( :name => "Kanye West", :genre => "Hip-Hop", :img_url => "http://static.stereogum.com/uploads/2015/03/Kanye-chain.jpg", :music_url => "https://www.youtube.com/user/KanyeWestVEVO", :rating => 600)
    # Musician.create( :name => "G-Eazy", :genre => "Hip-Hop", :img_url => "http://blogs-images.forbes.com/ruthblatt/files/2014/11/G-Eazy-cropped-1940x1002.jpg", :music_url => "https://www.youtube.com/user/GEazyMusicVEVO", :rating => 600)
    # Musician.create( :name => "Jay-Z", :genre => "Hip-Hop", :img_url => "http://blog.niskey.com/wp-content/uploads/2013/07/jay-z-big-lips.jpg", :music_url => "https://www.youtube.com/user/JayZVEVO", :rating => 600)
    # Musician.create( :name => "Eminem", :genre => "Hip-Hop", :img_url => "http://gazettereview.com/wp-content/uploads/2015/12/Eminem-Featured-image.jpg", :music_url => "https://www.youtube.com/user/EminemVEVO", :rating => 600)
    # Musician.create( :name => "2Pac", :genre => "Hip-Hop", :img_url => "http://www.howtorapbook.com/wp-content/uploads/2015/07/2pac-7.jpg", :music_url => "https://www.youtube.com/user/2PacVEVO", :rating => 600)
    # Musician.create( :name => "Notorious B.I.G.", :genre => "Hip-Hop", :img_url => "http://images.thehollywoodgossip.com/iu/s--hAHYtcrM--/t_full/f_auto,fl_lossy,q_75/v1391696197/biggie-smalls-ghost.jpg", :music_url => "https://www.youtube.com/user/NotoriousBIG", :rating => 600)
    # Musician.create( :name => "50 Cent", :genre => "Hip-Hop", :img_url => "http://images2.fanpop.com/images/photos/6400000/-50Cent-50-cent-6446600-1280-1024.jpg", :music_url => "https://www.youtube.com/user/50CentVEVO", :rating => 600)
    # Musician.create( :name => "Wiz Khalifa", :genre => "Hip-Hop", :img_url => "http://www.wizkhalifa.com/sites/g/files/g2000003971/f/201407/fb_wiz.jpg", :music_url => "https://www.youtube.com/user/taylorgangent", :rating => 600)
    # Musician.create( :name => "Drake", :genre => "Hip-Hop", :img_url => "http://www.aclfestival.com/wp/wp-content/uploads/2015/05/acl-drake-1280x800.jpg", :music_url => "https://www.youtube.com/user/DrakeVEVO", :rating => 600)
    puts "1"
    array = Musician.all
    puts "2"
    @left = array.sample
    puts "3"
    @right = array.sample
    puts "4"
    puts @right.rating + @left.rating
    puts "5"
    while @left == @right
        puts "6"
        puts @right = array.sample
    end
    puts "7"
    @left_rating = @left.rating.to_f
    puts "8"
    @right_rating = @right.rating.to_f
    puts "9"
    erb :index
  end

  post "/left" do
    @left_rating = params[:left_rating]
    puts @left_rating
    @right_rating = params[:right_rating]
    puts @right_rating
    expected_outcome_left = 1/(1+10**((@right_rating - @left_rating)/400))
    puts expected_outcome_left
  end

  post "/right" do

  end

  gets "/left" do
    redirect "/"
  end
  gets "right" do
    redirect "/"
  end

end