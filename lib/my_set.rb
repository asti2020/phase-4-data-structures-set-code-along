# def first_repeated_value(array)
#     for i in 0..array.length
#         for j in i + 1..array.length
#             return array[i] if array[i] == array[j]
#         end
#     end
#     nil
# end


# def first_repeated_value(array)
#     set = Set.new
#     for i in 0..array.length
#         return array[i] if set.include?(array[i])
#         set.add(array[i])
#     end
#         nil
# end
# first_repeated_value([1, 2, 7, 7, 3, 4, 4, 5] )

class MySet

    def initialize(enumerable = [])
        @hash = {}
        enumerable.each do |value|
            hash[value] = true
        end
    end

    def include?(value)
        hash.has_key?(value)
    end

    def add(value)
        hash[value] = true
        self
    end

    def delete(value)
        hash.delete(value)
        self
    end

    def size
        hash.size
    end
    # BONUS ! 

    def self.[](*args)
        new(args)
    end

    def clear
        hash.clear
        self
    end

    def each(&block)
        self.hash.keys.each(&block)
        self
    end

    def inspect
        "#<#{self.class.name}: {#{self.hash.keys.join(', ')}}>"
    end

    private

    attr_reader :hash


end




