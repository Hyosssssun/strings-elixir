defmodule AllStrings do
  @moduledoc """
  Documentation for `AllStrings`.
  """

  def trim_string(value) do
    String.trim(value)
  end
  
  def trim_and_first_letter (value) do
    String.trim(value)
    |> String.first()
  end

  def initial(value) do
    "#{trim_and_first_letter(value) |> String.capitalize()}. "
  end

  def initials(full_name) do
    String.split(full_name)
    |> Enum.map(fn name -> 
      initial(name)
    end)
    |> List.to_string()
    |> String.trim()
  end
end


# iex(1)> "Hi"
#   "Hi"
# iex(2)> "Welcome to" <> " " <> "Backend stuff"
#   "Welcome to Backend stuff"
# iex(3)> "6 * 7 = #{6 * 7}"
#   "6 * 7 = 42"
# iex(4)> "#{"string"}"
#   "string"
# iex(5)> "Elixir can convert booleans to strings: #{true}"
#   "Elixir can convert booleans to strings: true"
# iex(6)> "And #{["lists", ",", "too!"]}"
#   "And lists,too!"
# iex(7)> "But now a function: #{fn x -> x end}"
#     ** (Protocol.UndefinedError) protocol String.Chars not implemented for #Function<42.125776118/1 in :erl_eval.expr/6> of type Function. This protocol is implemented for the following type(s): Atom, BitString, Date, DateTime, Float, Integer, List, NaiveDateTime, Time, URI, Version, Version.Requirement
#       (elixir 1.15.4) lib/string/chars.ex:3: String.Chars.impl_for!/1
#       (elixir 1.15.4) lib/string/chars.ex:22: String.Chars.to_string/1
#       iex:7: (file)
# iex(7)> "\"A\" is \#1st letter of the alphabet\n" 
#   "\"A\" is #1st letter of the alphabet\n"
# iex(8)> IO.puts("\"A\" is \#1st letter of the alphabet\n") 
#   "A" is #1st letter of the alphabet

#   :ok
# iex(9)> """
# ...(9)> we can type
# ...(9)> multiple line
# ...(9)> without adding newline syntax
# ...(9)> """
#   "we can type\nmultiple line\nwithout adding newline syntax\n"