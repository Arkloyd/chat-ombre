require 'app/ombre/sugar'

module App
  class Ombre
    module Plugin
      class Core
        extend App::Ombre::Sugar

        attr_lazy :templates, :includes

        def _build_templates
        end

        def _build_includes
        end

        def page_plugins
        end

        def default_page_plugins
        end

        def page_dispatchers
        end
      end
    end
  end
end
