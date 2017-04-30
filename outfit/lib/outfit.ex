defmodule Outfit do
  
  def generate(month) do
    if(season?(month) == true,
    do: wardrobe_winter, else: wardrobe_summer)
    |> wardrobe
    
  end
  
  def season?(month) do
  
    winter = ["January", "February", "March", "April", "October", "November", "December"]
    Enum.member?(winter, month)
  
  end
  
  
  def colors do
    colors = ["White", "Black", "Green", "Red", "Yellow", "Blue"]
  
  end
  
  def wardrobe_winter do
    cloths = ["panties", "shirt", "trousers", "blouse", "socks", "shoes", "cap"]
    
    for cloth <- cloths do
      for color <- colors do
      "#{color} #{cloth}"
      end
    end
  
  end
  
  def wardrobe_summer do
    cloths = ["panties", "T-shirt", "shorts", "sandals"]
    
    for cloth <- cloths do
      for color <- colors do
      "#{color} #{cloth}"
        
      end
    end
  
  end

  def wardrobe(list_of_stuff) do
    
    Enum.map list_of_stuff, fn (stuff) ->
      stuff
      |> Enum.shuffle
      |> List.first
    
    end
  end

end