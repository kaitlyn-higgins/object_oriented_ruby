class Employee
  attr_reader :first_name, :last_name, :active, :salary
  attr_writer :first_name, :last_name, :active

  # attr_accessor :first_name, :last_name, :active, :salary

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{first_name} #{last_name} makes #{salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end

  def bonus
    @salary = @salary + 3000
  end
end

class Manager < Employee
  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  def give_all_raises
    @employees.each do |employee|
      employee.give_annual_raise
    end
  end

  def fire_all_employees
    @employees.each do |employee|
      employee.active = false
    end
  end

  def bonus
    super + 5000
  end

  def send_report
    puts "Sending email..."
    # use email sending library
    puts "Email sent!"
  end
end

employee1 = Employee.new({ first_name: "Majora", last_name: "Carter", salary: 80000, active: true })
employee2 = Employee.new(last_name: "Campos", salary: 70000, active: true, first_name: "Danilo")

manager = Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2])
# manager.print_info
# manager.send_report
# manager.give_all_raises
# puts employee2.salary
# puts employee1.salary
# puts employee1.active
# manager.fire_all_employees
# puts employee1.active
puts employee1.bonus
puts manager.bonus
puts employee1.salary
puts manager.salary

puts "Answer to bonus: when you define a method in both Employee and Manager classes, the changes in the Manager class will override the changes in the Employee class. In my example, I ran manager.bonus with the bonus method commented out, and their new salary was 103000. When I uncommented the bonus under the Manager class and called the bonus method on manager, it changed the salary to 105000."

puts "Answer to bonus part 2: when you use super on a method other than initialize, it will work when calling the method to action (via puts manager.bonus for example), but it doesn't seem to retain all of the changes - it only retains the changes from the super, not the modifications that are added in the Manager bonus method. "
