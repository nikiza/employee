class Employee
  attr_accessor :name, :age, :yearly_salary, :gender

  def initialize(name, age, yearly_salary, gender)
    @name = name
    @age = age
    @yearly_salary = yearly_salary
    @gender = gender
  end

  def age_by_one_year
    @age = @age + 1
    if retirement_reached?
      puts "#{name} is ready for retirement"
    else
      puts "#{name} still needs to work for #{years_until_retirement} years until retirement."
    end
  end

private

  def retirement_reached?
    if is_male?
      if age >= 65
        true
      else
        false
      end
    elsif is_female?
      if age >= 64
        true
      else
        false
      end
    else
      raise "No gender found, cannot calculate retirement age!"
    end
  end

  def years_until_retirement
    case
    when is_male?
      65 - @age
    when is_female?
      64 - @age
    end
  end

  def is_male?
    true if @gender.downcase == "male"
  end

  def is_female?
    true if @gender.downcase == "female"
  end

end

employee_1 = Employee.new("Hans", 45, 50000, "Male")

employee_1.age_by_one_year
employee_1.age_by_one_year
employee_1.age_by_one_year
employee_1.age_by_one_year
employee_1.age_by_one_year
employee_1.age_by_one_year

employee_2 = Employee.new("Hanna", 50, 60000, "Female")

employee_2.age_by_one_year
employee_2.age_by_one_year
employee_2.age_by_one_year
employee_2.age_by_one_year
