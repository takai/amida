module Amida
  class App
    START_CHAR = 65

    def header(column)
      header_string = (START_CHAR...(START_CHAR + column)).map(&:chr).join('  ')
      "#{header_string}\n#{bar_row_string(column)}"
    end

    def row(column)
      bar = rand(column - 1)
      (0...column).each_with_object("") do |i, r|
        r << (i == bar ? "|--" : "|  ")
      end
    end

    def footer(column)
      footer_string = ([" "] * column).tap { |r| r[rand(column)] = "*" }.join('  ')
      "#{bar_row_string(column)}\n#{footer_string}"
    end

    def run(row, column)
      puts header(column)
      row.times { puts row(column) }
      puts footer(column)
    end

    private
    def bar_row_string(column)
      "|  " * column
    end
  end
end
