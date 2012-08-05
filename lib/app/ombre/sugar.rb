
module App
  class Ombre
    module Sugar
      def attr_lazy_reader *args
        args.each { |e|
          define_method(e) {
            instance_variable_set("@#{e}", self.method("_build_#{e}").call) unless instance_variable_defined? "@#{e}"
            instance_variable_get("@#{e}")
          }
        }
      end

      def attr_lazy *args
        args.each { |arg|
          attr_writer arg
          attr_lazy_reader arg
        }
      end
    end
  end
end
        
