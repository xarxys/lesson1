require 'date'
class Lesson1
  def sum(val = 0)
    val.to_s.scan(/\d/).map!(&:to_i).inject(:+)
  end

  def age(birthday)
    if birthday.nil?
      'Invalid Date Format'
    else
      birthday = Date.parse(birthday)
      age = Date.today.year - birthday.year
      day = (age * 365) + birthday.yday
      result = "Я живу #{age} лет или #{day} дней или #{day * 24}
      часов или #{day * 1440} минут или #{day * 85_400} секунд"
      result
    end
  end

  def name
    puts 'Insert you name, surname and last_name: '
    onename = gets
    surname = gets
    last_name = gets
    result = "Hello #{onename} #{surname} #{last_name}!"
    result
  end
end

