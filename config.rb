# Default to development if environment is not set.
saved = environment
if (environment.nil?)
  environment = :development
else
  environment = saved
end

# Location of the theme's resources.
css_dir = "css"
sass_dir = "sass"
images_dir = "images"
generated_images_dir = images_dir + "/generated"
javascripts_dir = "js"
fonts_dir = "fonts"

# Require any additional compass plugins installed on your system.
require 'breakpoint'
require 'susy'
require 'sass-globbing'

# Select output style (:expanded, :nested, :compact, :compressed).
output_style = (environment == :production) ? :compressed : :expanded

# Enable relative paths to assets via compass helper functions.
relative_assets = true

# Disable cache busting on image assets
asset_cache_buster :none

# Disable output line comments in CSS.
line_comments = false

# Uncomment this part to make sprite name static, icons-123asda.png -> icons.png
# ===================
# module Compass::SassExtensions::Functions::Sprites
#   def sprite_url(map)
#     verify_map(map, "sprite-url")
#     map.generate
#     generated_image_url(Sass::Script::String.new(map.name_and_hash))
#   end
# end

# module Compass::SassExtensions::Sprites::SpriteMethods
#   def name_and_hash
#     "#{path}.png"
#   end

#   def cleanup_old_sprites
#     Dir[File.join(::Compass.configuration.generated_images_path, "#{path}.png")].each do |file|
#       log :remove, file
#       FileUtils.rm file
#       ::Compass.configuration.run_sprite_removed(file)
#     end
#   end
# end

# module Compass
#   class << SpriteImporter
#     def find_all_sprite_map_files(path)
#       glob = "*{#{self::VALID_EXTENSIONS.join(",")}}"
#       Dir.glob(File.join(path, "**", glob))
#     end
#   end
# end
# ===================
