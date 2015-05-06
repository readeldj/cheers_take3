class BirthdayParser
  def self.parse(birthday)
    next_birthday = Date.parse(birthday)
    today = Date.today
    if next_birthday < today
      next_birthday = next_birthday >> 12
    end
    next_birthday
  end
end