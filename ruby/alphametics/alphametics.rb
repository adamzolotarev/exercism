class Alphametics
  def self.solve(equation)
    # equation.gsub!('^', '**')
    letters = equation.scan(/[A-Z]/).uniq

    (0..9).to_a.permutation(letters.count).each do |digits|
      map = Hash[*letters.zip(digits).flatten]

      substitued = equation.gsub(/[A-Z]/, map)
      next if substitued =~ /(\s|\A)0/

      return map if eval(substitued)
    end
  end
end

module BookKeeping
  VERSION = 4
end
