def funcs
  comment = nil
  provider = nil

  File.readlines('probes.d').collect do |line|
    case line
    when %r{/\*}; comment = true; nil
    when %r{\*/}; comment = nil
    when %r{provider}; provider = line.split[1].upcase; nil
    when %r{\}}; provider = nil; ""
    else
      if !comment and provider
        if line =~ /probe/
          probe_name, probe_args = line.match(/probe (.*)\((.*)\)/)[1..2]

          macro_name = probe_name.gsub('__', '_').upcase
          args = probe_args.split(',').enum_for(:each_with_index).collect {|item, index| "arg#{index}"}.join(', ')

          "#define #{provider}_#{macro_name}_ENABLED() 0\n" \
          "#define #{provider}_#{macro_name}(#{args})"
        else
          ""
        end
      end
    end
  end.compact
end

puts <<-eoheader
#ifndef	_PROBES_H
#define	_PROBES_H

#{funcs.join "\n"}

#endif	/* _PROBES_H */
eoheader
