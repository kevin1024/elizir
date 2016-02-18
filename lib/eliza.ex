import System
import String

defmodule Eliza do
  def chat(message) do
    {message, 0} = System.cmd("/usr/local/bin/lizbeth", [message])
    String.rstrip(message)
  end
end
