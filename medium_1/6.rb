def minilang(commands)
  stack = []
  register = 0
  commands = commands.split
  until commands.empty?
    command = commands.shift
    case command
    when 'PUSH'  then stack << register
    when 'ADD'   then register += stack.pop
    when 'SUB'   then register -= stack.pop
    when 'MULT'  then register *= stack.pop
    when 'DIV'   then register /= stack.pop
    when 'MOD'   then register %= stack.pop
    when 'POP'   then register = stack.pop
    when 'PRINT' then puts register
    else register = command.to_i
    end
  end
end

# (3 + (4 * 5) - 7) / (5 % 3)
minilang('3 PUSH 5 MOD PUSH 7 PUSH 5 PUSH 4 MULT PUSH 3 ADD SUB DIV PRINT')

# With error detection
def minilang(commands)
  stack = []
  register = 0
  commands = commands.split
  until commands.empty?
    command = commands.shift
    if %w(ADD SUB MULT DIV MOD POP).include?(command) && stack.empty?
      return "Stack empty. Can't perform operation: #{command}"
    end
    case command
    when 'PUSH'  then stack << register
    when 'ADD'   then register += stack.pop
    when 'SUB'   then register -= stack.pop
    when 'MULT'  then register *= stack.pop
    when 'DIV'   then register /= stack.pop
    when 'MOD'   then register %= stack.pop
    when 'POP'   then register = stack.pop
    when 'PRINT' then puts register
    else
      if command.to_i.to_s != command
        return "Invalid token detected: #{command}"
      end
      register = command.to_i
    end
  end
end