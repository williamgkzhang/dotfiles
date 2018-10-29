"use strict";
exports.__esModule = true;
exports.activate = function (oni) {
    console.log("config activated");
    // Input
    //
    // Add input bindings here:
    //
    oni.input.bind("<c-enter>", function () { return console.log("Control+Enter was pressed"); });
    //
    // Or remove the default bindings here by uncommenting the below line:
    //
    // oni.input.unbind("<c-p>")
};
exports.deactivate = function (oni) {
    console.log("config deactivated");
};
exports.configuration = {
    //add custom config here, such as
    "ui.colorscheme": "base16-brewer",
    //"oni.useDefaultConfig": true,
    //"oni.bookmarks": ["~/Documents"],
    //"oni.loadInitVim": false,
    "editor.fontSize": "12px",
    "editor.fontFamily": "Hack",
    "autoClosingPairs.enabled": false,
    "sidebar.default.open": false,
    // UI customizations
    "ui.animations.enabled": true,
    "ui.fontSmoothing": "auto",
    "oni.useDefaultConfig": false,
    "oni.loadInitVim": true
};
