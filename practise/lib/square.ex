defmodule Square do
  def area({w}), do: Rectangle.area({w, w})
  
  def area({w, h}) when w == h do
    Rectangle.area({w, w})
  end
  
  def perimeter({w}) do
    Rectangle.perimeter({w, w})
  end
  
  def perimeter({w, h}) when w == h do
    Rectangle.perimeter({w, w})
  end
end
