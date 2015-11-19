Pod::Spec.new do |s|
   s.name     = 'PEAR-DateUnixTime-iOS'
   s.version  = '1.0.0'
   s.platform = :'ios', '7.0'
   s.license  = 'MIT'
   s.summary  = 'Convert NSDate <-> UnixTime <-> NSString.'
   s.homepage = 'https://github.com/HirokiUmatani/PEAR-DateUnixTime-iOS'
   s.author   = { "HirokiUmatani" => "info@pear.chat" }
   s.source   = { :git => 'https://github.com/HirokiUmatani/PEAR-DateUnixTime-iOS.git', :tag => s.version.to_s }
   s.source_files = 'PEAR-DateUnixTime-iOS/*.{h,m}'
   s.requires_arc = true
end
