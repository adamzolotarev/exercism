module Complement
  @dna_to_rna_map = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }

  def of_dna(dna_strand)
    return '' unless valid? dna_strand

    rna = ''
    dna_strand.each_char { |c| rna += @dna_to_rna_map.fetch(c, '') }
    rna
  end

  def valid?(dna_strand)
    is_valid = true
    dna_strand.each_char { |c| is_valid &&= @dna_to_rna_map.key?(c) }
    is_valid
  end
end

Complement.extend(Complement)

module BookKeeping
  VERSION = 4
end
