Pod::Spec.new do |s|
  s.name         = "FIOWrapper"
  s.version      = "1.0.0"
  s.summary      = "A simple way to get weather data from the ForecastIO API. Notification based and complete with model objects."
  s.homepage     = "https://github.com/kevinj04/FIOWrapper.git"
  s.license      = { :type => 'WTFPL', :file => 'license.txt' }
  s.author       = { "Kevin Jenkins" => "kevinj04@gmail.com" }
  s.source       = { :git => "https://github.com/kevinj04/FIOWrapper.git" }
  s.platform     = :ios, '5.0'
  s.source_files = 'ForecastIOWrapper'
  s.requires_arc = true
end