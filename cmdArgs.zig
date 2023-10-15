const std = @import("std");

// zig run cmdArgs.zig -- "I'm a very competent person"
pub fn main() !void {

var generalPurposeAllocator = std.heap.GeneralPurposeAllocator(.{}){};
	defer _ = generalPurposeAllocator.deinit();

	const allocator = generalPurposeAllocator.allocator();

	const args = try std.process.argsAlloc(allocator);
	defer std.process.argsFree(allocator, args);

	// deprecated already
	// _ = args.skip(); //to skip the zig call => name of the file

	std.debug.print("Arguments to interview me are : {s} \n, ", .{args});
}

// zig test *.zig
test "If you're reading this: interview me 😄" {
	var generalPurposeAllocator = std.heap.GeneralPurposeAllocator(.{}){};
	defer _ = generalPurposeAllocator.deinit();

	const allocator = generalPurposeAllocator.allocator();

	const args = try std.process.argsAlloc(allocator);
	defer std.process.argsFree(allocator, args);

	// old API
	// _ = args.skip(); //to skip the zig call => name of the file

	std.debug.print("Arguments to interview me are : {s} \n, ", .{args});
}