
Pod::Spec.new do |s|
  s.name         = "RNGetValues"
  s.version      = "1.0.0"
  s.summary      = "RNGetValues"
  s.description  = <<-DESC
                  RNGetValues
                   DESC
  s.homepage     = "https://github.com/stevenselcuk/react-native-get-values"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/author/RNGetValues.git", :tag => "master" }
  s.source_files  = "ios/RNGetValues/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

  
