class String

    def rot13(opts={operation: :encode})

        string = self
        
        case opts[:operation]
        when :encode
            string.tr!('abcdefghijklmnopqrstuvwxyz', 'nopqrstuvwxyzabcdefghijklm')
            string.tr!("ABCDEFGHIJKLMNOPQRSTUVWXYZ", "NOPQRSTUVWXYZABCDEFGHIJKLM")
            return string
        when :decode
            string.tr!('nopqrstuvwxyzabcdefghijklm', 'abcdefghijklmnopqrstuvwxyz')
            string.tr!("NOPQRSTUVWXYZABCDEFGHIJKLM", "ABCDEFGHIJKLMNOPQRSTUVWXYZ")
            return string
        else
            raise ArgumentError, 'operation must be either :encode or :decode.'
        end

    end

end