# Test our plugin using DocPad's Testers
require('docpad').require('testers').test({testerClass: 'RendererTester', pluginPath: __dirname+'/..'})