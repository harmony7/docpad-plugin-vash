module.exports = (BasePlugin) ->
  class VashPlugin extends BasePlugin
    name: 'vash'
    render: (opts) ->
      if opts.inExtension is 'vash'
        vash = require('vash')
        tpl = vash.compile(opts.content, { useWith: true })
        opts.content = tpl(opts.templateData)
