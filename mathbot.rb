class MathBot
    def add(num1, num2)
        puts "Adding #{num1} to #{num2}"
    end

    def sub(num1, num2)
        puts "Subtracting #{num2} from #{num1}"
    end

    def mul(num1, num2)
        puts "Multiplying #{num1} and #{num2}"
    end

    def div(num1, num2)
        return puts 'Cannot divide by zero' if num2 == 0

        puts "Dividing #{num1} by #{num2}"
    end
end