defmodule Rectangle do
  def area({w, h}), do: h * w
  def perimeter({w, h}), do: 2 * (w + h)

  def f1 do
    IO.puts "Block form"
  end

  def f(x), do: IO.puts("Key/value form")

end
