class Deck
  attr_reader :cards
  def initialize(cards)
    @cards = []
    @cards << cards
    @cards = @cards.flatten
  end

  def count
    @cards.length
  end

  # Bubble Sort
  def sort
    loop do
      swap = false
      (@cards.length - 1).times do |i|
        if @cards[i].rank > @cards[i + 1].rank
          @cards[i], @cards[i + 1] = @cards[i + 1], @cards[i]
          swap = true
        end
      end
      return @cards if !swap
    end
  end


  # Merge Sort Methods
  def cut(stack = @cards)
    last = stack.length - 1
    middle = (last / 2)
    top = stack[0..(middle)]
    bottom = stack[(middle + 1)..last]
    [top, bottom]
  end

  def merge(stack_1, stack_2)
    merged = []
    loop do
      return (merged + stack_2) if stack_1[0] == nil
      return (merged + stack_1) if stack_2[0] == nil
      if stack_2[0].rank > stack_1[0].rank
        merged << stack_1.shift
      else
        merged << stack_2.shift
      end
    end
  end

  def merge_sort(stack = @cards)
    if stack.length > 1
      cut_stack = cut(stack)
      sorted_stack_1 = merge_sort(cut_stack[0])
      sorted_stack_2 = merge_sort(cut_stack[1])
      merge(sorted_stack_1, sorted_stack_2)
    else
      stack
    end
  end
end
