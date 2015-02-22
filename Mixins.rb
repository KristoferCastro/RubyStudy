# Mixins are all about utilizing "module" and "include":
module ModuleA
  def methodA()
    print "I am from module A"
  end
end

module ModuleB
  def methodB()
    print "I am from module B"
  end
end

# Modules have a crazy use that makes the need for multiple inheritance
# unecessary.  You can use the 'include' keyword to essentially
# copy paste the code contained in the module into a class definition

class MixinFun
  include ModuleA
  include ModuleB
  
end

test = MixinFun.new

test.methodB()
test.methodA()


