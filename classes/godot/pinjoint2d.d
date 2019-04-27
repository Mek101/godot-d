/**
Pin Joint for 2D Shapes.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.pinjoint2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.joint2d;
import godot.node2d;
import godot.canvasitem;
import godot.node;
/**
Pin Joint for 2D Shapes.

Pin Joint for 2D Rigid Bodies. It pins two bodies (rigid or static) together.
*/
@GodotBaseClass struct PinJoint2D
{
	enum string _GODOT_internal_name = "PinJoint2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Joint2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_softness") GodotMethod!(void, double) setSoftness;
		@GodotName("get_softness") GodotMethod!(double) getSoftness;
	}
	bool opEquals(in PinJoint2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PinJoint2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PinJoint2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PinJoint2D");
		if(constructor is null) return typeof(this).init;
		return cast(PinJoint2D)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void setSoftness(in double softness)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSoftness, _godot_object, softness);
	}
	/**
	
	*/
	double getSoftness() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSoftness, _godot_object);
	}
	/**
	The higher this value, the more the bond to the pinned partner can flex.
	*/
	@property double softness()
	{
		return getSoftness();
	}
	/// ditto
	@property void softness(double v)
	{
		setSoftness(v);
	}
}