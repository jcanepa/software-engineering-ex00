class MathBot
    def add(num1, num2)
        puts num1 + num2
    end

    def sub(num1, num2)
        puts num1 - num2
    end

    def mul(num1, num2)
        puts num1 * num2
    end

    def div(num1, num2)
        return puts 'Can\'t divide by zero' if num2 == 0

        puts num1 / num2
    end
end