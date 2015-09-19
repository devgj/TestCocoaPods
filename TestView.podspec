
Pod::Spec.new do |s|
  s.name         = "TestView"
  s.version      = "0.0.1"
  s.summary      = "测试一下TestView."
  s.description  = <<-DESC
                   A longer description of TestView in Markdown format.
				   测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试
                   DESC

  s.homepage     = "http://www.baidu.com"
  s.license      = "MIT"

  s.author             = { "GJ" => "devwgj@gmail.com" }

  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/devgj/TestView.git", :tag => s.version.to_s }

  #TestModel
  s.subspec 'Model' do |model|
    model.source_files = 'TestView/TestM*.{h,m}'
	model.frameworks = 'AVFoundation'
  end
  
  #TestView
  s.subspec 'View' do |view|
    view.source_files = 'TestView/TestV*.{h,m}'
	view.dependency 'TestView/Model'
  end

  s.resources = "TestView/TestView.bundle"
  s.requires_arc = true
end
