local core = require "spritepack.core"

--local w, h = core.imginfo "test.png"

local function image(filename)
	return {
		filename = filename,
		core.imgcrop(filename),
	}
end

local function dump(rect)
	print(string.format("[%s] %dx%d+%d+%d -> (%d, %d)", rect.filename, rect[1], rect[2], rect[3], rect[4], rect.x, rect.y))
end

local rects = {
	image "test.png",
	image "test.png",
}

core.rectpack( 1024, 1024, rects )

dump(rects[1])
dump(rects[2])

core.imgpack("output.png", 256, 256, rects)

