# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

https://deforestation-2f7jkaqqnq-ew.a.run.app/

discogs_username = "raphaelvr"
url = "https://api.discogs.com/users/#{discogs_username}/wants?key=yuMTbCWYdVossTDyzxJk&secret=EICWESpDigMZdQDlHVejeAHrmLNdATxd"

url_open = URI.open(url, "Authorization" => "OLRMaNujjApbgklkmAPtMkoGmvpDDFVZGgBUfJAr").read
response = JSON.parse(url_open)

  response["wants"].each do |release|
    album_title = release["basic_information"]["title"]
    artist = release["basic_information"]["artists"][0]["name"]
    genre = release["basic_information"]["styles"]
    media_format = release["basic_information"]["formats"][0]["name"]
    release_date = release["basic_information"]["year"]
    product_id = release["id"]
    image_url = release["basic_information"]["cover_image"]

    @product = Product.new(album_title: album_title, artist: artist, genre: genre, media_format: media_format, release_date: release_date, product_id: product_id, product_url: "https://www.discogs.com/release/#{product_id}", image_url: image_url, user_id:1)
    # @product.genre = @product.genre.gsub("\", '')

    url_release = "https://api.discogs.com/releases/#{@product.product_id}"

    url_release_open = URI.open(url_release).read
    url_release_response = JSON.parse(url_release_open)

    @product.lowest_price = url_release_response["lowest_price"]
    @product.num_for_sale = url_release_response["num_for_sale"]


    if @product.save!
      puts "#{@product.id} created"


      # ------------------------
url = "https://api.boardgameatlas.com/api/search?client_id=9cu2Exy2kH&limit=100"

  url_open = URI.open(url).read
  response = JSON.parse(url_open)

  response["games"].each do |game|
    title = game["name"]
    year = game["year_published"]
    min_players = game["min_players"]
    max_players = game["max_players"]
    playtime = game["min_playtime"]
    image_url = game["image_url"]
    average_rating = game["average_user_rating"]
    description = game["description"]

    p @game = Game.create!(title: title, year: year, min_players: min_players, max_players: max_players, playtime: playtime, image_url: image_url, average_rating: average_rating, description: description)
    @game.description = @game.description.gsub('<p>', '').gsub('</p>', '').gsub('<br>', '').gsub('<br />', '').gsub('<em>', '').gsub('</em>', '').gsub('<strong>', '').gsub('</strong>', '')
    @game.save!
  end
