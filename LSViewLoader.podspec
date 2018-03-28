#
#  Be sure to run `pod spec lint LSViewLoader.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

    s.name         = 'LSViewLoader'
    s.version      = '0.0.1'
    s.summary      = '加载视图'
    s.homepage     = 'https://github.com/shenglinFL/LSViewLoader'
    s.license      = 'MIT'
    s.authors      = {'linsheng' => 'linsheng77777@163.com'}
    s.platform     = :ios, '8.0'
    s.source       = {:git => 'https://github.com/shenglinFL/LSViewLoader.git', :tag => s.version}
    s.source_files = 'LSViewLoader/LSViewLoader/LoadingView.swift'
    s.requires_arc = true
    s.dependency 'MBProgressHUD', '~> 1.1.0'
end
