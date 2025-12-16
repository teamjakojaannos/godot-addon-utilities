@tool
class_name Facing

enum Direction {
	UP,
	RIGHT,
	DOWN,
	LEFT,
}
enum Horizontal {
	LEFT = Direction.LEFT,
	RIGHT = Direction.RIGHT,
}
enum Vertical {
	UP = Direction.UP,
	DOWN = Direction.DOWN,
}


static func opposite_h(facing: Horizontal) -> Horizontal:
	return Horizontal.RIGHT if facing == Horizontal.LEFT else Horizontal.LEFT


static func as_vec_h(facing: Horizontal) -> Vector2:
	return Vector2.RIGHT if facing == Horizontal.RIGHT else Vector2.LEFT


static func opposite_v(facing: Vertical) -> Vertical:
	return Vertical.DOWN if facing == Vertical.UP else Vertical.UP


static func as_vec_v(facing: Vertical) -> Vector2:
	return Vector2.DOWN if facing == Vertical.UP else Vector2.DOWN


static func opposite(facing: Direction) -> Direction:
	match facing:
		Direction.UP:
			return Direction.DOWN
		Direction.DOWN:
			return Direction.UP
		Direction.LEFT:
			return Direction.RIGHT
		Direction.RIGHT:
			return Direction.LEFT
		var not_valid:
			push_error(""""%s" is not a valid Direction!""" % not_valid)
			return Direction.UP


static func as_vec(facing: Direction) -> Vector2:
	match facing:
		Direction.UP:
			return Vector2.UP
		Direction.DOWN:
			return Vector2.DOWN
		Direction.LEFT:
			return Vector2.LEFT
		Direction.RIGHT:
			return Vector2.RIGHT
		var not_valid:
			push_error(""""%s" is not a valid Direction!""" % not_valid)
			return Vector2.UP


static func sign_h(facing: Horizontal) -> int:
	return 1 if facing == Horizontal.RIGHT else -1


static func sign_v(facing: Vertical) -> int:
	return 1 if facing == Vertical.DOWN else -1
