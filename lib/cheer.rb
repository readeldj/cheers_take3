require_relative 'birthday_parser'

class Cheer
  AN_LETTERS = "HALFNORSEMIX"

  def self.for_birthday(birthday)
    today = Date.today
    # puts today
    next_birthday = BirthdayParser.parse(birthday)
    difference = (next_birthday - today).to_i
    case difference
    when 0
      # Today is their birthday
      "Awesome! Your birthday is today! Happy Birthday!"
    when 1
      #Use the singular?
      "Awesome! Your birthday is in 1 day! Happy Birthday in advance!"
    else
      #Use the plural?
      "Awesome! Your birthday is in #{difference} days! Happy Birthday in advance!"
    end
  end

  def self.for_person(name)
    name.chomp!
    adjusted_name = name.upcase.gsub(/[^A-Z]*/,'')
    raise ArgumentError if adjusted_name.empty?
    output = ""
    adjusted_name.each_char do |char|
      article = (AN_LETTERS.include? char) ? "an.." : "a..."
      output << "Give me #{article} #{char}!\n"
    end
    output + "#{name}'s just GRAND!"
  end
end





  # def self.for_person(name)
  #   cheer_name = name.upcase.gsub(/[^A-Z]/, "")
  #   cheer_name.each_char do |char|
  #     if "HALFNORSEMIX".include? char
  #       puts "Give me an.. #{char}"
  #     else
  #       puts "Give me a.. #{char}"
  #     end
  #   puts "#{name}’s just GRAND!"
  #   end
  # end




