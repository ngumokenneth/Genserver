defmodule Genservers_calc do
  use Genserver


  def init(initial) do
    {:ok, initial}
  end

  def start(Calculator, initial) do
    Genserver.start(Calcualtor, init)
  end

  def handle_call({:add, _from, current_number}) do
    {:reply, current_number, current_number + 1}
  end

end
