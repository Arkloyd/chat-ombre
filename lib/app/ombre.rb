$:.unshift 'lib'

require 'app/ombre/sugar'

module App
  # Acts as a front-end to the Ombre application, providing basic functionalities.
  #
  #
  class Ombre
    extend App::Ombre::Sugar

    class << self
      VERSION = '0.0.0'
    end

    attr_lazy :root_dir, :share_dir, :page_plugin_config, :pages, :web
    attr_reader :plugins

    def initialize(config)
      @config = config
      self.load_plugin("Core", nil)
      config['plugins'].each_key do |k|
        self.load_plugin(k, config['plugins'][k])
      end
    end

    # builds a Dir object from the `@config['root_dir']` value
    # 
    # @return [Dir] an object containing the root directory
    def _build_root_dir
      Dir.open( File.absolute_path(@config['root_dir']) )
    end

    # builds a Dir object from the `@config['share_dir']` value, or by looking
    # in the `root_dir`.
    #
    # @return [Dir] an object containing the share directory
    def _build_share_dir
      Dir.open( @config['share_dir'] || self.root_dir + "/share" )
    end

    def _build_page_plugin_config
    end

    def _build_pages
    end

    def _build_web
    end

    def _default_plugins
      []
    end

  end
end
