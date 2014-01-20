docpad-plugin-vash
==================

Vash to anything plugin for DocPad

[Vash, aka "the Sixty Billion Double Dollar Template Compiler"](https://github.com/kirbysayshi/vash),
is an implementation of the [Razor syntax] 
(http://weblogs.asp.net/scottgu/archive/2010/07/02/introducing-razor.aspx) view engine for JavaScript.

This plugin for DocPad allows you to use the Razor syntax to write your DocPad layouts.

Use the `.vash` suffix for your Vash templates.

Example:

    default.html.vash
    <html>
    <head>
        <title>@getPreparedTitle()</title>
        @html.raw(getBlock("meta").toHTML())
        @html.raw(getBlock("styles").toHTML())
    </head>
    <body>
        <h1>@document.title</h1>
        @html.raw(content)
        @html.raw(getBlock("scripts").toHTML())
    </body>
    </html>

This plugin configures Vash to use its `useWith` mode, meaning that the members of the template data
are available to the razor view as the default object. Properites such as `document` and `content`,
as well as methods suchas `getFiles` are directly available in the template.
