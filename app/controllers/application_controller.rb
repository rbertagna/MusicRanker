require_relative "../../config/environment"
require_relative "../models/musician.rb" # change/add to account for name of models
# require "pry"

class ApplicationController < Sinatra::Base

  set :views, "app/views"

  set :public, "public" 
  #:public is no longer used to avoid overloading Module#public, use :public_folder or :public_dir instead
  #from /Users/julianne/Desktop/development/musicranker/app/controllers/application_controller.rb:12:in `<class:ApplicationController>'
  
  ##item-section-380547 > li:nth-child(1) > div > div.yt-lockup-content > h3 > a

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

    # Musician.create( :name => "Kevin Gates", :genre => "Hip-Hop", :img_url => "http://assets.rollingstone.com/assets/2014/article/kevin-gates-gets-ready-to-go-global-20140414/15040/_original/1035x828-gates-1800-1397489529.jpg", :music_url => "https://www.youtube.com/user/kevingatesTV", :rating => 600)
    # Musician.create( :name => "Bryson Tiller", :genre => "R&B", :img_url => "http://static.vibe.com/files/2015/10/Bryson-Tiller-VIBE-1.jpg", :music_url => "https://www.youtube.com/user/BrysonTillerVEVO", :rating => 600)
    # Musician.create( :name => "Justin Bieber", :genre => "Pop", :img_url => "http://www.gannett-cdn.com/-mm-/c08b87ba3b6a089d3496e21dee813018396ec75b/c=0-408-3812-2562&r=x1683&c=3200x1680/local/-/media/2015/03/29/USATODAY/USATODAY/635632351551677847-XXX-Justin-Bieber-Roast-1089-dcb.JPG", :music_url => "https://www.youtube.com/user/JustinBieberVEVO", :rating => 600)
    # Musician.create( :name => "Sia", :genre => "Pop", :img_url => "https://consequenceofsound.files.wordpress.com/2015/11/sia-this-is-acting.jpg?w=800", :music_url => "https://www.youtube.com/user/SiaVEVO", :rating => 600)
    # Musician.create( :name => "Future", :genre => "Hip-Hop", :img_url => "http://www.mtv.com/crop-images/2013/09/09/future.jpg", :music_url => "https://www.youtube.com/channel/UCFNosi99Sp0_eLilBiXmmXA", :rating => 600)
    # Musician.create( :name => "Chris Brown", :genre => "R&B", :img_url => "http://theshaderoom.com/wp-content/uploads/2014/10/chris-brown-2013-650-430-a.jpg", :music_url => "https://www.youtube.com/user/ChrisBrownVEVO", :rating => 600)
    # Musician.create( :name => "Charlie Puth", :genre => "Pop", :img_url => "http://press.atlanticrecords.com/wp-content/uploads/2015/02/Charlie-Puth-Pub-2-Catie-Laffoon.jpg", :music_url => "https://www.youtube.com/user/CharliesVlogs", :rating => 600)
    # Musician.create( :name => "J. Cole", :genre => "Hip-Hop", :img_url => "http://img.cache.vevo.com/Content/VevoImages/video/22521441C8E1560939E10439D05B9931.jpg", :music_url => "https://www.youtube.com/user/JColeVEVO", :rating => 600)
    # Musician.create( :name => "Taylor Swift", :genre => "Pop", :img_url => "http://cdn.playbuzz.com/cdn/bf83dc3e-3390-40c1-86dc-6b2038b9c894/7ef3540c-5366-4b47-8265-c279cfc60d12.jpg", :music_url => "https://www.youtube.com/user/TaylorSwiftVEVO", :rating => 600)
    # Musician.create( :name => "The Weeknd", :genre => "R&B", :img_url => "http://s0.hulkshare.com/song_images/original/0/0/a/00a67d4762f55d6fa0f1bfafb25eda28.jpg?dd=1423163076", :music_url => "https://www.youtube.com/user/TheWeekndVEVO", :rating => 600)

    # Musician.create( :name => "twenty one pilots", :genre => "Alternative", :img_url => "http://celebmix.com/wp-content/uploads/2016/01/five-reasons-you-should-be-listening-to-twenty-one-pilots-01.jpg", :music_url => "https://www.youtube.com/user/twentyonepilots", :rating => 600)
    # Musician.create( :name => "Tank", :genre => "R&B", :img_url => "http://hypefreshmag.com/wp-content/uploads/2014/06/Tank-Main-Pub-2-Photo-Credit_Christian-Lantry.jpg", :music_url => "https://www.youtube.com/user/TheRealTank", :rating => 600)
    # Musician.create( :name => "Coldplay", :genre => "Alternative", :img_url => "http://worldversus.com/img/coldplay.jpg", :music_url => "https://www.youtube.com/user/ColdplayVEVO", :rating => 600)
    # Musician.create( :name => "Fetty Wap", :genre => "Hip-Hop", :img_url => "http://img.sxsw.com/2015/bands/14153.jpg", :music_url => "https://www.youtube.com/user/harlemfetty", :rating => 600)
    # Musician.create( :name => "Jeremih", :genre => "R&B", :img_url => "http://www.mixologi.com/wp-content/uploads/2015/10/jeremih-4f46888a3643b.jpg", :music_url => "https://www.youtube.com/user/JeremihVEVO", :rating => 600)
    # Musician.create( :name => "Selena Gomez", :genre => "Pop", :img_url => "http://www.hdwallpaper.nu/wp-content/uploads/2015/10/selena-gomez-2015-2208x1242.jpg", :music_url => "https://www.youtube.com/user/SelenaGomezVEVO", :rating => 600)
    # Musician.create( :name => "One Direction", :genre => "Pop", :img_url => "http://assets.rollingstone.com/assets/2015/albumreview/one-direction-made-in-the-a-m-20151113/216464/large_rect/1447421658/1401x788-07_GROUP_3_1142-91865269_Cal-Aurand.jpg", :music_url => "https://www.youtube.com/user/OneDirectionVEVO", :rating => 600)
    # Musician.create( :name => "Travis Scott", :genre => "Hip-Hop", :img_url => "http://s3.amazonaws.com/illroots3-images/images/19942/image/1421349019/galleryheader.png?1421349003", :music_url => "https://www.youtube.com/user/TravisScottVEVO", :rating => 600)
    # Musician.create( :name => "A$AP Rocky", :genre => "Hip-Hop", :img_url => "https://i.ytimg.com/vi/-WB5KZVy3g0/maxresdefault.jpg", :music_url => "https://www.youtube.com/user/ASAPROCKYUPTOWN", :rating => 600)
    # Musician.create( :name => "Halsey", :genre => "Alternative", :img_url => "http://s3.amazonaws.com/wd-static/media/cover_image/d7c13bba3f31fb230456b508cb5b170409f5c236.jpg", :music_url => "https://www.youtube.com/user/HalseyVEVO", :rating => 600)


    array = Musician.all
    @left = array.sample
    @right = array.sample
    #puts @right.rating + @left.rating
    while @left == @right
      @right = array.sample
    end
    @left_rating = @left.rating.to_f
    @right_rating = @right.rating.to_f
    erb :index
  end

  post "/left" do
    @left_rating = params[:left_rating].to_f
    @right_rating = params[:right_rating].to_f
    @expected_outcome_left = 1/(1+10**((@right_rating - @left_rating)/400))

    @left_rating = @left_rating + 16 * (1 - @expected_outcome_left)
    @right_rating = @right_rating + 16 * (0 - (1 - @expected_outcome_left))


    @left_id = params[:left_id].to_i
    @right_id = params[:right_id].to_i
    Musician.find(@left_id).update_attributes(rating: @left_rating.to_i)
    Musician.find(@right_id).update_attributes(rating: @right_rating.to_i)
    redirect "/"
  end

  post "/right" do
    @left_rating = params[:left_rating].to_f
    @right_rating = params[:right_rating].to_f
    @expected_outcome_left = 1/(1+10**((@right_rating - @left_rating)/400))

    @left_rating = @left_rating + 16 * (0 - @expected_outcome_left)
    @right_rating = @right_rating + 16 * (1 - (1 - @expected_outcome_left))

    @left_id = params[:left_id].to_i
    @right_id = params[:right_id].to_i
    Musician.find(@left_id).update_attributes(rating: @left_rating.to_i)
    Musician.find(@right_id).update_attributes(rating: @right_rating.to_i)
    redirect "/"
  end

  get "/rank" do
    @array = Musician.all
    @rankings = []
    rank = 1
    i = 3000
    until i == 0
      used = 0
      Musician.all.each do |musician|
        if musician.rating == i
          @rankings << [musician.name, musician.rating.to_s, rank.to_s]
          used = used + 1
        end
      end
      if used != 0
        rank = rank + used
      end
      i = i - 1
    end
    erb :rankings
  end

  get "/left" do
    redirect "/"
  end

  get "/right" do
    redirect "/"
  end

end