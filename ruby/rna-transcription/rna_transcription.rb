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
    dna_strand.each_char { |c| rna += @dna_to_rna_map[c] }
    rna
  end

  def valid?(dna_strand)
    dna_strand.split('').all? { |c| @dna_to_rna_map.key?(c) }
  end
end

Complement.extend(Complement)

module BookKeeping
  VERSION = 4
end
