class Bank
  @select_var = ''
  class << self
    def selecter(select_m)
      case select_m
      when '0'
        'ATM'
      when '1'
        'quit'
      else
        'nill'
      end
    end

    def control
      @select_var = gets.chomp
      puts selecter(@select_var)
    end

    def display_select
      puts 'menu_list 0 >> atm, 1 >> quit'
      Bank.control
    end
  end
end
Bank.display_select
