Pod::Spec.new do |s|
    s.name         = "MyFramework"
    s.version      = "0.1.0"
    s.summary      = "A brief description of MyFramework project."
    s.description  = <<-DESC
    An extended description of MyFramework project.
    DESC
    s.homepage     = "https://www.google.com/"
    s.license = { :type => 'Copyright', :text => <<-LICENSE
                   Copyright 2018
                   Permission is granted to...
                  LICENSE
                }
    s.author             = { "Vardhan-apalya" => "88319683+Vardhan-apalya@users.noreply.github.com" }
    s.source       = { :git => "/Users/vivekkasthuri/Desktop/workspace/cocoapods/MyFrameworkDistribution.git", :tag => "#{s.version}" }
    s.public_header_files = "Users/vivekkasthuri/Desktop/workspace/cocoapods/MyFrameworkDistribution/MyFramework.framework/Headers /*.h"
    s.source_files = "Users/vivekkasthuri/Desktop/workspace/cocoapods/MyFrameworkDistribution/MyFramework.framework/Headers /*.h"
    s.vendored_frameworks = "MyFramework.framework"
    s.platform = :ios
    s.swift_version = "4.2"
    s.ios.deployment_target  = '12.0'
end
