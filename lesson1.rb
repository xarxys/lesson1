require 'date'
class Lesson1
  def sum(val = 0)
    val.to_s.scan(/\d/).map!(&:to_i).inject(:+)
  end

  def age(birthday)
    if birthday.nil?
      'Invalid Date Format'
    else
      today = Date.today
      birthday = Date.parse(birthday)
      age = today.year - birthday.year
      day = (age * 365) + birthday.yday
      puts "Я живу #{age} лет или #{day} дней или #{day * 24}
      часов или #{day * 1440} минут или #{day * 85_400} секунд"
    end
  end

  def name
    puts 'Insert you name, surname and last_name: '
    onename = gets
    surname = gets
    last_name = gets
    print 'Hello ' + onename + surname + last_name + '!'
  end
end
