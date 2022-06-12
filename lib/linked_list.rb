class LinkedList
    attr_accessor :head

    def initialize
        @head = nil
    end

    def each
        node = @head

        loop do
            break unless node
            yield node if block_given?
            node = node.next_node
        end
    end

    def append(node)
        if @head.nil?
            @head = Node.new(node)
        else
            @head.next_node = Node.new(node)
        end
    end

    def empty?
        @head.nil?
    end

    def prepend(node)
        if empty?
            @head = Node.new(node)
        else
            node = Node.new(node)
            node.next_node = @head
            @head = node
        end
    end

    def count
        temp = @head
        c = 0
        unless temp.nil?
            while temp
                c += 1
                temp = temp.next_node
            end
            return c
        end
        return 0
    end

    def insert(position, node)
        raise "Position must be greater than zero" unless position > 0
        node = Node.new(node)
        c = 0

        each do |n|
            c += 1
            if position == c
                temp = n.next_node
                n.next_node = node
                node.next_node = temp
            end
        end
    end

    def to_string
        if count == 1
            "The #{@head.surname} family"
        elsif count > 1
            temp = @head
            strings = ["The #{@head.surname} family,"]
            while temp && temp.next_node
                strings << " followed by the #{temp.next_node.surname} family,"
                temp = temp.next_node
            end
            s = strings.join("")
            s[0..-2]
        end
    end
end
