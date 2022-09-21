require_relative "mathbot"

class App
    @@options = ['add', 'sub', 'mul', 'div', 'quit']

    def initialize
		@mathbot = MathBot.new
	end

    def run
        continue = true

        while continue
            print 'SuperMathyBot> '
            command = gets.split(" ", 3)

            # validate command is an available option
            if !@@options.include?(command[0])
                print_help()
                next
            end

            # allow user to exit app
            if command[0].eql?('quit')
                continue = false
                next
            end

            # hand off calculation to SuperMathyBot object
            # first argument is the operation to be performed (method)
            # second and third are numbers to operate on (arguments)
            @mathbot.send(
                command[0],
                command[1],
                command[2])
        end
    end

    # supply the user with all available commands
    def print_help
        puts 'usage: add|sub|mul|div v0 v1'
        puts '       quit'
    end
end

App.new.run()