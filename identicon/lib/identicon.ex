defmodule Identicon do
  def main(input) do
    input
    |> hash_input
    |> pick_color
    |> build_grid
    |> filter_odd_squares
    |> build_pixel_map
    |> draw_image
    |> save_image(input)
  end
  
  def save_image(image, input) do
    File.write("#{input}.png", image)
  end
  
  def draw_image(%Identicon.Image{color: color, pixel_map: pixel_map}) do
    image = :egd.create(250, 250)
    fill = :egd.color(color)
    
    Enum.each pixel_map, fn({start, stop}) ->
      :egd.filledRectangle(image, start, stop, fill)
      end
      :egd.render(image)
  end
  
  def build_pixel_map(%Identicon.Image{grid: grid} = image) do
    pixel_map = Enum.map grid, fn({_code, index}) ->
    horizontal = rem(index, 5) * 50
    vertical = div(index, 5) * 50
    
    top_left = {horizontal, vertical}
    bottom_right = {horizontal + 50, vertical + 50}
    
    {top_left, bottom_right}
    end
    
    %Identicon.Image{image | pixel_map: pixel_map}
  end
  
  def filter_odd_squares(%Identicon.Image{grid: grid} = image) do
    grid = Enum.filter grid, fn({code, _index}) -> 
      rem(code, 2) == 0
    end
    # Its better than version with parenthesis
    # Enum.filter(grid, fn(square) -> end)
    
    %Identicon.Image{image | grid: grid}
  end
  
  def build_grid(%Identicon.Image{hex: hex} = image) do
    grid = 
      hex
      # It's convention to place a variable in a new row.
      |> Enum.chunk(3)
      |> Enum.map(&mirror_row/1)
      # we passing any list to Enum.map. We pass in a function.
      # the function will be called with every element in that list. And everything that is 
      # returned will be stuck into new list.
      # we passing a reference to the function with & and number of arguments that it takes.
      |> List.flatten
      |> Enum.with_index
    
    %Identicon.Image{image | grid: grid}
  end
  
  def mirror_row(row) do
    # [145, 46, 200]
    [first, second | _tail] = row
    
    # [145, 46, 200, 46, 145]
    row ++ [second, first]
  end
  
  def pick_color(%Identicon.Image{hex: [r, g, b | _tail]} = image) do
    %Identicon.Image{image | color: {r, g, b}}
    
    # Long and clear version:
    # %Identicon.Image{hex: hex_list} = image
    # [r, g, b | _tail] = hex_list
    
    # [r, g, b]
  end

  def hash_input(input) do
    hex = :crypto.hash(:md5, input)
    |> :binary.bin_to_list
    
    %Identicon.Image{hex: hex}
  end
end
