# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path
# Rails.application.config.assets.paths << Rails.root.join('ember_app', 'public', 'assets')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
# Rails.application.config.assets.precompile += []
# Rails.application.config.assets.precompile += ['font-awesome/fonts/fontawesome-webfont.eot']
# Rails.application.config.assets.precompile << %r(font-awesome/fonts/[\w-]+\.(?:eot|svg|ttf|woff|woff2?)$)
# Rails.application.config.assets.precompile << %r(fonts/open_sans/[\w-]+/[\w-]+\.(?:eot|svg|ttf|woff|woff2?)$)
# Rails.application.config.assets.precompile << %r(fonts/font-awesome/[\w-]+\.(?:eot|svg|ttf|woff|woff2?)$)
# NonStupidDigestAssets.whitelist += [/tinymce\/.*/, "image.png"]
NonStupidDigestAssets.whitelist += [/fonts\/.*/]