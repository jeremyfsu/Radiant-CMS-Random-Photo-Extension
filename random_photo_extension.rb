# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application_controller'

class RandomPhotoExtension < Radiant::Extension
  version "1.0"
  description "Random photos for your Radiant site"
  url "http://yourwebsite.com/random_photo"
  
  def activate
    Page.send :include, RandomPhoto
  end
end
