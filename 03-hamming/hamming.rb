# require 'pry'

class Hamming
  attr_reader :strand_1, :strand_2

  def initialize(strand_1, strand_2)
    @strand_1 = strand_1
    @strand_2 = strand_2
  end

  def self.compute(strand_1, strand_2)
    @distance = 0
    # Raise argument error if strands are not equal length
    unless strand_1.length == strand_2.length
        raise ArgumentError, "DNA strands must be of equal length."
    end

    # If strands are the same, Hamming distance is zero
    if strand_1 == strand_2
      @distance = 0
    # If strands are not the same, compare the nucleotides of each strand together in order
    elsif strand_1 != strand_2

      strand_1.length.times do |i|
        if strand_1[i] != strand_2[i]
          @distance += 1
        end
      end
    end

    return @distance
  end

end
