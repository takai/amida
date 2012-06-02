require "amida/version"

module Amida
  class App
    START_CHAR = 65

    def header(column)
      chars = (START_CHAR...(START_CHAR + column)).map(&:chr)
      chars.join('  ') + "\n" +
          bar_row_string(column)
    end

    def row(column)
      bar = rand(column - 1)
      (0...column).each_with_object("") do |i, r|
        r << if i == bar
               "|--"
             else
               "|  "
             end
      end
    end

    def footer(column)
      win_rows = ([" "] * column).tap { |r| r[rand(column)] = "*" }
      "#{bar_row_string(column)}\n#{win_rows.join('  ')}"
    end

    def run
      num    = 18
      column = 20

      puts header(column)
      num.times do
        puts row(column)
      end
      puts footer(column)
    end

    private
    def bar_row_string(column)
      "|  " * column
    end
  end
end
