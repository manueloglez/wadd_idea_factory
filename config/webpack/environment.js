const { environment } = require('@rails/webpacker')
import { ProvidePlugin } from 'webpack-dev-server'

environment.plugins.append('Provide',
  new ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
    Popper: ['popper.js', 'default']
  })
)

module.exports = environment
