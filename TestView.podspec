
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
  
  #git
  s.source       = { :git => "https://github.com/devgj/TestView.git", :tag => s.version.to_s }
  
  #svn
  #s.source       = { :svn => "http://192.168.1.1/svn/repo/TestView", :tag => s.version.to_s }

  #TestModel, 在Pod生成的主目录下创建名为Model的文件夹，里面放上以TestM的开头的.h和.m文件
  s.subspec 'Model' do |model|
    model.source_files = 'TestView/TestM*.{h,m}'
	model.frameworks = 'AVFoundation' 
  end
  
  #TestView
  s.subspec 'View' do |view|
    view.source_files = 'TestView/TestV*.{h,m}'
	view.dependency 'TestView/Model'
  end

  #资源文件，图片啥的。
  s.resources = "TestView/TestView.bundle"
  s.requires_arc = true
  
  #依赖SDWebImage，如果你之前的Pod里面没有SDWebImage，
  #则会自动下载一个，如果有了，就不会在下载。
  s.dependency "SDWebImage"
end
