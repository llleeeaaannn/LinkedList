class LinkedList

  attr_reader :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    new_node = Node.new(value)

    if @head.nil?
      @head = new_node
    elsif @tail.nil?
      @head.next_node = new_node
      @tail = new_node
    else
      @tail.next_node = new_node
      @tail = new_node
    end
  end

  def prepend(value)
    new_node = Node.new(value)

    if @head.nil? && @tail.nil?
      @head = new_node
    elsif !@head.nil? && @tail.nil?
      @tail = @head
      @head = new_node
      @head.next_node = @tail
    else
      new_node.next_node = @head
      @head = new_node
    end
  end

  def insert_at(value, index)
    size = self.size
    return nil if index > size

    new_node = Node.new(value)

    if index.zero?
      new_node.next_node = @head
      @head = new_node
    elsif tail.nil?
      @tail = new_node
      @head.next_node = @tail
    elsif index == size
      @tail.next_node = new_node
      @tail = new_node
    else
      current = self.at(index, 1)
      new_node.next_node = current.next_node
      current.next_node = new_node
    end
  end

  def size
    i = 0
    current = @head
    until current.nil?
      current = current.next_node
      i += 1
    end
    i
  end

  def at(index, i = 0)
    current = @head
    while i < index
      current = current.next_node
      i += 1
    end
    current
  end

  def pop
    size = self.size
    if size == 1
      @head = nil
    elsif size == 2
      @head.next_node = nil
      @tail = nil
    elsif size > 2
      current = @head
      size -= 2
      size.times do
        current = current.next_node
      end
      current.next_node = nil
      @tail = current
    end
  end

  def remove_at(index)
    size = self.size
    return nil if index >= size

    if index.zero?
      if tail.nil?
        @head = nil
      elsif size == 2
        @head = tail
        @tail = nil
      else
        @head = @head.next_node
      end
    elsif index == size - 1
      current = self.at(index, 1)
      current.next_node = nil
      @tail = current
    else
      current = self.at(index, 1)
      after_removed_node = current.next_node.next_node
      current.next_node = nil
      current.next_node = after_removed_node
    end
  end

  def contains?(value)
    output = false
    current = @head
    while !current.nil? && !output
      current.value == value ? output = true : nil
      current = current.next_node
    end
    output
  end

  def find(value)
    output = false
    index = -1
    current = @head
    while !current.nil? && !output
      current.value == value ? output = true : nil
      current = current.next_node
      index += 1
    end
    output ? index : nil
  end

  def to_s
    array = []
    current = @head
    until current.nil?
      array.push("( #{current.value} )")
      current = current.next_node
    end
    array.push('nil').join(' -> ')
  end

end

class Node

  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end

end


mylist = LinkedList.new
mylist.append("apple")
mylist.append("orange")
mylist.append("mango")
mylist.append("banana")
mylist.append("pineapple")

print mylist.to_s
