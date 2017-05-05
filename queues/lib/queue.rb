module Launch
  class QueueIsEmpty < StandardError
  end

  class Queue
    def initialize
    @list = Array.new
    end

    def enter(element)
      @list << element
    end

    def empty?
      @list.empty?
    end

    def peek
      @list.first
    end

    def leave
      if @list.empty?
        raise QueueIsEmpty
      else
        @list.shift
      end
    end

  end
end
