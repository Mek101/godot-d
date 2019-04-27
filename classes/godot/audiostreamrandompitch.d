/**
Plays audio with random pitch tweaking.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.audiostreamrandompitch;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.audiostream;
import godot.resource;
import godot.reference;
/**
Plays audio with random pitch tweaking.

Randomly varies pitch on each start.
*/
@GodotBaseClass struct AudioStreamRandomPitch
{
	enum string _GODOT_internal_name = "AudioStreamRandomPitch";
public:
@nogc nothrow:
	union { godot_object _godot_object; AudioStream _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_audio_stream") GodotMethod!(void, AudioStream) setAudioStream;
		@GodotName("get_audio_stream") GodotMethod!(AudioStream) getAudioStream;
		@GodotName("set_random_pitch") GodotMethod!(void, double) setRandomPitch;
		@GodotName("get_random_pitch") GodotMethod!(double) getRandomPitch;
	}
	bool opEquals(in AudioStreamRandomPitch other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AudioStreamRandomPitch opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AudioStreamRandomPitch _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AudioStreamRandomPitch");
		if(constructor is null) return typeof(this).init;
		return cast(AudioStreamRandomPitch)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void setAudioStream(AudioStream stream)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAudioStream, _godot_object, stream);
	}
	/**
	
	*/
	Ref!AudioStream getAudioStream() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AudioStream)(_classBinding.getAudioStream, _godot_object);
	}
	/**
	
	*/
	void setRandomPitch(in double scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRandomPitch, _godot_object, scale);
	}
	/**
	
	*/
	double getRandomPitch() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getRandomPitch, _godot_object);
	}
	/**
	The current $(D AudioStream).
	*/
	@property AudioStream audioStream()
	{
		return getAudioStream();
	}
	/// ditto
	@property void audioStream(AudioStream v)
	{
		setAudioStream(v);
	}
	/**
	The intensity of random pitch variation.
	*/
	@property double randomPitch()
	{
		return getRandomPitch();
	}
	/// ditto
	@property void randomPitch(double v)
	{
		setRandomPitch(v);
	}
}