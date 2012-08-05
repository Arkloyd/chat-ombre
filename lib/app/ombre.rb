
module App
  class Ombre

    class << self
      VERSION = '0.0.0'

    end

    attr :root_dir, :share_dir, :page_plugin_config, :pages, :web
    attr_reader :plugins

    def initialize(config)
      self.load_plugin("Core", nil)
      config['plugins'].each_key do |k|
        self.load_plugin(k, config['plugins'][k])
      end
    end

    def _build_root_dir
    end

    def _build_share_dir
    end

    def _build_page_plugin_config
    end

    def _build_pages
    end

    def _build_web
    end

    # Sets the `@root_dir` attribute.
    #
    # == Parameters:
    # fh::
    #   A filehandle referencing the root directory of the app (?)
    #
    # == Returns:
    #   The provided file-handle.
    def root_dir=(fh)
      @root_dir = fh
    end

    # `@root_dir`'s getter method.
    #
    # It's lazy; it will call `self._build_root_dir` if `@root_dir` is
    # not set.
    #
    # == Returns:
    # `@root_dir`
    def root_dir
      @root_dir ||= self._build_root_dir
    end

    def _default_plugins
      return []
    end

  end
end
