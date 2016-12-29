class ETL
  def self.transform(original)
    transformed = {}
    original.each do |key, value|
      value.each { |e| transformed.update(e.downcase => key) }
    end
    transformed
  end
end
