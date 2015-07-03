HookClassMethods
===================================  
  此工程用于替换类方法 , 通常的hook方式都是用类目 ,然后再类目中替换, 此工程可以不用创建类目 
  
    
Mathod Swizzling  
-----------------------------------  
  这是个神奇的技术啊
### ViewController  
  在Viewcontroller里面,有一个UIImageView和一个UIButon  
  
### DHMethodSwizzling
  在这个类里 , 可以hook两个类方法 一个是UIImage的+ (UIColor *)colorWithRed:green:blue:alpha 
  一个是UIImage的+ (UIImage*)imageNamed

