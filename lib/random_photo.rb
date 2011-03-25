module RandomPhoto
  include Radiant::Taggable

  desc "Renders an IMG tag with a random photo from a specified directory"
  tag "random_photo" do |tag|
    if tag.attr['dir'].nil?
      dir_name = "images"
    else
      dir_name = tag.attr['dir']
    end
    Dir.chdir("#{RAILS_ROOT}/public/#{dir_name}")
    files = Dir.glob("*.{jpeg,jpg,png,gif,JPEG,JPG,PNG,GIF}")
    random_file = files[rand(files.size)]
    "<img src='/#{dir_name}/#{random_file}'/>"
  end
end
