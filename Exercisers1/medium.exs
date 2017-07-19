defmodule MyEnum do  
    def size([h|t]), do:  + size(t)
    def size([]), do: 0
    
    def maximum([h|t]), do: maximum(t,h)
    def maximum([]), do: nil
    defp maximum([h|t],m), do: maximum(t,Kernel.max(m,h))
    defp maximum([],m), do: m

    def minimum([h|t]), do: minimum(t,h)
    def minimum([]), do: nil
    defp minimum([h|t],m), do: minimum(t,Kernel.min(m,h))
    defp minimum([],m), do: m
    
    def maximum(list), do: reduce(list,&max(&1,&2))    
    def minimum(list), do: reduce(list,&min(&1,&2))
    def reduce([h|t],acc, fun), do: reduce(t,fun.(h,acc),fun)
    def reduce([],acc, fun), do: acc
    def reduce([h|t],fun), do: reduce(t,h,fun)
    def reduce([],fun), do: nil
    
end
