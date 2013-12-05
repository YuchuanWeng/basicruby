#Ruby: pass by value vs reference

def makeit(myobject)
  myobject.replace("here the arr is been mutate")
  #Without this line, the method do not mutate the caller
  myobjct = ("here is pass-by-reference")
end

arr = "here is pass by value"

makeit(arr)

puts arr


