/**
Defines a 2D collision polygon.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.collisionpolygon2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.node2d;
import godot.canvasitem;
import godot.node;
/**
Defines a 2D collision polygon.

Provides a 2D collision polygon to a $(D CollisionObject2D) parent. Polygon can be drawn in the editor or specified by a list of vertices.
*/
@GodotBaseClass struct CollisionPolygon2D
{
	enum string _GODOT_internal_name = "CollisionPolygon2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_polygon") GodotMethod!(void, PoolVector2Array) setPolygon;
		@GodotName("get_polygon") GodotMethod!(PoolVector2Array) getPolygon;
		@GodotName("set_build_mode") GodotMethod!(void, long) setBuildMode;
		@GodotName("get_build_mode") GodotMethod!(CollisionPolygon2D.BuildMode) getBuildMode;
		@GodotName("set_disabled") GodotMethod!(void, bool) setDisabled;
		@GodotName("is_disabled") GodotMethod!(bool) isDisabled;
		@GodotName("set_one_way_collision") GodotMethod!(void, bool) setOneWayCollision;
		@GodotName("is_one_way_collision_enabled") GodotMethod!(bool) isOneWayCollisionEnabled;
	}
	bool opEquals(in CollisionPolygon2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CollisionPolygon2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static CollisionPolygon2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CollisionPolygon2D");
		if(constructor is null) return typeof(this).init;
		return cast(CollisionPolygon2D)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum BuildMode : int
	{
		/**
		Collisions will include the polygon and its contained area.
		*/
		buildSolids = 0,
		/**
		Collisions will only include the polygon edges.
		*/
		buildSegments = 1,
	}
	/// 
	enum Constants : int
	{
		buildSolids = 0,
		buildSegments = 1,
	}
	/**
	
	*/
	void setPolygon(in PoolVector2Array polygon)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPolygon, _godot_object, polygon);
	}
	/**
	
	*/
	PoolVector2Array getPolygon() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector2Array)(_classBinding.getPolygon, _godot_object);
	}
	/**
	
	*/
	void setBuildMode(in long build_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBuildMode, _godot_object, build_mode);
	}
	/**
	
	*/
	CollisionPolygon2D.BuildMode getBuildMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(CollisionPolygon2D.BuildMode)(_classBinding.getBuildMode, _godot_object);
	}
	/**
	
	*/
	void setDisabled(in bool disabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDisabled, _godot_object, disabled);
	}
	/**
	
	*/
	bool isDisabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isDisabled, _godot_object);
	}
	/**
	
	*/
	void setOneWayCollision(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOneWayCollision, _godot_object, enabled);
	}
	/**
	
	*/
	bool isOneWayCollisionEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isOneWayCollisionEnabled, _godot_object);
	}
	/**
	Collision build mode. Use one of the `BUILD_*` constants. Default value: `BUILD_SOLIDS`.
	*/
	@property CollisionPolygon2D.BuildMode buildMode()
	{
		return getBuildMode();
	}
	/// ditto
	@property void buildMode(long v)
	{
		setBuildMode(v);
	}
	/**
	The polygon's list of vertices. The final point will be connected to the first.
	*/
	@property PoolVector2Array polygon()
	{
		return getPolygon();
	}
	/// ditto
	@property void polygon(PoolVector2Array v)
	{
		setPolygon(v);
	}
	/**
	If `true` no collisions will be detected.
	*/
	@property bool disabled()
	{
		return isDisabled();
	}
	/// ditto
	@property void disabled(bool v)
	{
		setDisabled(v);
	}
	/**
	If `true` only edges that face up, relative to CollisionPolygon2D's rotation, will collide with other objects.
	*/
	@property bool oneWayCollision()
	{
		return isOneWayCollisionEnabled();
	}
	/// ditto
	@property void oneWayCollision(bool v)
	{
		setOneWayCollision(v);
	}
}