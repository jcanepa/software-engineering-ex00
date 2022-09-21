require_relative "mathbot"

class GamePlayController
    @@options = ['add', 'sub', 'mul', 'div', 'quit']

    def run
        continue = true

        while continue
            print 'SuperMathyBot> '

            # return process_command()
            command = gets.split(" ", 3)

            # command is not an option
            if !@@options.include?(command[0])
                print_help()
                next
            end

            # allow user to terminate game play
            if command[0].eql?('quit')
                continue = false
                next
            end

            # hand off calculation to SuperMathyBot
            puts 'I guess I\'ll do some math'
        end
    end

    def print_help
        puts 'usage: add|sub|mul|div v0 v1'
        puts '       quit'
    end
end

GamePlayController.new.run()
# Show "SuperMathyBot" command prompt
# accept command and two optional numbers
# validate command (quit ends the program)
# process arithmatic commands using mathbot
# answer returned by mathbot is a float