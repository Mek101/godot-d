/**
A node used to create a parallax scrolling background.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.parallaxbackground;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.canvaslayer;
import godot.node;
/**
A node used to create a parallax scrolling background.

A ParallaxBackground uses one or more $(D ParallaxLayer) child nodes to create a parallax effect. Each $(D ParallaxLayer) can move at a different speed using $(D ParallaxLayer.motionOffset). This creates an illusion of depth in a 2D game. If not used with a $(D Camera2D), you must manually calculate the $(D scrollOffset).
*/
@GodotBaseClass struct ParallaxBackground
{
	enum string _GODOT_internal_name = "ParallaxBackground";
public:
@nogc nothrow:
	union { godot_object _godot_object; CanvasLayer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_camera_moved") GodotMethod!(void, Transform2D, Vector2) _cameraMoved;
		@GodotName("set_scroll_offset") GodotMethod!(void, Vector2) setScrollOffset;
		@GodotName("get_scroll_offset") GodotMethod!(Vector2) getScrollOffset;
		@GodotName("set_scroll_base_offset") GodotMethod!(void, Vector2) setScrollBaseOffset;
		@GodotName("get_scroll_base_offset") GodotMethod!(Vector2) getScrollBaseOffset;
		@GodotName("set_scroll_base_scale") GodotMethod!(void, Vector2) setScrollBaseScale;
		@GodotName("get_scroll_base_scale") GodotMethod!(Vector2) getScrollBaseScale;
		@GodotName("set_limit_begin") GodotMethod!(void, Vector2) setLimitBegin;
		@GodotName("get_limit_begin") GodotMethod!(Vector2) getLimitBegin;
		@GodotName("set_limit_end") GodotMethod!(void, Vector2) setLimitEnd;
		@GodotName("get_limit_end") GodotMethod!(Vector2) getLimitEnd;
		@GodotName("set_ignore_camera_zoom") GodotMethod!(void, bool) setIgnoreCameraZoom;
		@GodotName("is_ignore_camera_zoom") GodotMethod!(bool) isIgnoreCameraZoom;
	}
	bool opEquals(in ParallaxBackground other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ParallaxBackground opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ParallaxBackground _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ParallaxBackground");
		if(constructor is null) return typeof(this).init;
		return cast(ParallaxBackground)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void _cameraMoved(in Transform2D arg0, in Vector2 arg1)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		String _GODOT_method_name = String("_camera_moved");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void setScrollOffset(in Vector2 ofs)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setScrollOffset, _godot_object, ofs);
	}
	/**
	
	*/
	Vector2 getScrollOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getScrollOffset, _godot_object);
	}
	/**
	
	*/
	void setScrollBaseOffset(in Vector2 ofs)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setScrollBaseOffset, _godot_object, ofs);
	}
	/**
	
	*/
	Vector2 getScrollBaseOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getScrollBaseOffset, _godot_object);
	}
	/**
	
	*/
	void setScrollBaseScale(in Vector2 scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setScrollBaseScale, _godot_object, scale);
	}
	/**
	
	*/
	Vector2 getScrollBaseScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getScrollBaseScale, _godot_object);
	}
	/**
	
	*/
	void setLimitBegin(in Vector2 ofs)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLimitBegin, _godot_object, ofs);
	}
	/**
	
	*/
	Vector2 getLimitBegin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getLimitBegin, _godot_object);
	}
	/**
	
	*/
	void setLimitEnd(in Vector2 ofs)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLimitEnd, _godot_object, ofs);
	}
	/**
	
	*/
	Vector2 getLimitEnd() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getLimitEnd, _godot_object);
	}
	/**
	
	*/
	void setIgnoreCameraZoom(in bool ignore)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setIgnoreCameraZoom, _godot_object, ignore);
	}
	/**
	
	*/
	bool isIgnoreCameraZoom()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isIgnoreCameraZoom, _godot_object);
	}
	/**
	The ParallaxBackground's scroll value. Calculated automatically when using a $(D Camera2D), but can be used to manually manage scrolling when no camera is present.
	*/
	@property Vector2 scrollOffset()
	{
		return getScrollOffset();
	}
	/// ditto
	@property void scrollOffset(Vector2 v)
	{
		setScrollOffset(v);
	}
	/**
	Base position offset of all $(D ParallaxLayer) children.
	*/
	@property Vector2 scrollBaseOffset()
	{
		return getScrollBaseOffset();
	}
	/// ditto
	@property void scrollBaseOffset(Vector2 v)
	{
		setScrollBaseOffset(v);
	}
	/**
	Base motion scale of all $(D ParallaxLayer) children.
	*/
	@property Vector2 scrollBaseScale()
	{
		return getScrollBaseScale();
	}
	/// ditto
	@property void scrollBaseScale(Vector2 v)
	{
		setScrollBaseScale(v);
	}
	/**
	Top left limits for scrolling to begin. If the camera is outside of this limit the background will stop scrolling. Must be lower than $(D scrollLimitEnd) to work.
	*/
	@property Vector2 scrollLimitBegin()
	{
		return getLimitBegin();
	}
	/// ditto
	@property void scrollLimitBegin(Vector2 v)
	{
		setLimitBegin(v);
	}
	/**
	Right bottom limits for scrolling to end. If the camera is outside of this limit the background will stop scrolling. Must be higher than $(D scrollLimitBegin) to work.
	*/
	@property Vector2 scrollLimitEnd()
	{
		return getLimitEnd();
	}
	/// ditto
	@property void scrollLimitEnd(Vector2 v)
	{
		setLimitEnd(v);
	}
	/**
	If `true` elements in $(D ParallaxLayer) child aren't affected by the zoom level of the camera.
	*/
	@property bool scrollIgnoreCameraZoom()
	{
		return isIgnoreCameraZoom();
	}
	/// ditto
	@property void scrollIgnoreCameraZoom(bool v)
	{
		setIgnoreCameraZoom(v);
	}
}