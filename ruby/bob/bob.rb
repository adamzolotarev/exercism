class Bob
  def hey(text)
    return 'Whoa, chill out!' if yell? text
    return 'Sure.' if question? text
    return 'Fine. Be that way!' if say_nothing? text
    'Whatever.'
  end

  private

  def yell?(text)
    text.upcase == text && text.downcase != text
  end

  def question?(text)
    text.end_with? '?'
  end

  def say_nothing?(text)
    text.strip.empty?
  end
end
