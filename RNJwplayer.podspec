
Pod::Spec.new do |s|
  s.name         = "RNJwplayer"
  s.version      = "1.0.0"
  s.summary      = "RNJwplayer"
  s.description  = <<-DESC
                  RNJwplayer
                   DESC
  s.homepage     = ""
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/fausto95/react-native-jwplayer.git", :tag => "master" }
  s.source_files  = "RNJwplayer/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

