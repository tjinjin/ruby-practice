stone = 'ruby'

detected =
    case stone
    when /ruby/
        'July'
    when /peridot|sardonyx/
        'August'
    else
        %q(i don't no)
    end

puts detected
