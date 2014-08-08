# -*- coding: utf-8 -*-
$:.unshift('/Library/RubyMotion/lib')
require 'motion/project/template/ios'
require 'bundler'
Bundler.require

Motion::Project::App.setup do |app|

  app.name                   = 'ruby-motion-facebook'
  app.identifier             = 'com.arkency.ruby-motion-facebook'
  app.short_version          = '0.1.0'
  app.version                = app.short_version
  app.sdk_version            = '7.1'
  app.deployment_target      = '7.0'
  app.icons                  = ["icon@2x.png", "icon-29@2x.png", "icon-40@2x.png", "icon-60@2x.png", "icon-76@2x.png", "icon-512@2x.png"]
  app.device_family          = [:iphone]
  app.interface_orientations = [:portrait]
  app.files                 += Dir.glob(File.join(app.project_dir, 'lib/**/*.rb'))

  app.pods do
    pod 'Facebook-iOS-SDK', '~> 3.16.2'
  end

  FB_APP_ID = '211631258997995'
  app.info_plist['FacebookAppID']   = FB_APP_ID
  app.info_plist['CFBundleURLTypes'] = [{ CFBundleURLSchemes: ["fb#{FB_APP_ID}"] }]
end
