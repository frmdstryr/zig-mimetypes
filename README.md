# Zig Mimetypes

[![Build Status](https://travis-ci.org/frmdstryr/zig-mimetypes.svg?branch=master)](https://travis-ci.org/frmdstryr/zig-mimetypes)
[![codecov](https://codecov.io/gh/frmdstryr/zig-mimetypes/branch/master/graph/badge.svg)](https://codecov.io/gh/frmdstryr/zig-mimetypes)

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



> Note: It currently does not support Windows
