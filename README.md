# Zig Mimetypes

[![Build Status](https://travis-ci.org/frmdstryr/zig-mimetypes.svg?branch=master)](https://travis-ci.org/frmdstryr/zig-mimetypes)

A mimetype module for Zig.

### Usage

```zig
const mimetypes = @import("mimetypes.zig");

var registry = mimetypes.Registry.init(std.heap.page_allocator);
defer registry.deinit();
try registry.load();

if (registry.getTypeFromFilename("wavascript.js")) |mime_type| {
    assert(mem.eql(u8, mime_type, "application/javascript"));
}


```



