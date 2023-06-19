package;

import cxx.Ptr;
import cxx.num.SizeT;
import cxx.num.UInt32;
import cxx.num.UInt16;
import cxx.num.UInt8;

//@:include("citro2d.h")

@:native("PrintConsole")
extern class PrintConsole {}

@:native("Tex3DS_Texture")
extern class Tex3DS_Texture {}

@:native("C3D_Tex")
extern class C3D_Tex {}

@:native("C3D_TexCube")
extern class C3D_TexCube {}

@:native("C2D_Image")
extern class C2D_Image {}

@:native("C2D_SpriteSheet")
extern class C2D_SpriteSheet {}

@:native("C2D_Sprite")
extern class C2D_Sprite {}

@:native("Tex3DS_SubTexture")
extern class Tex3DS_SubTexture {
	public var width:UInt16;
	public var height:UInt16;
	public var left:Float;
	public var top:Float;
	public var right:Float;
	public var bottom:Float;
	public inline function new(){
		trace("lol");
	}
}
//Tex3DS_SubTexture
/*
typedef struct Tex3DS_SubTexture
{
	u16   width;  ///< Sub-texture width (pixels)
	u16   height; ///< Sub-texture height (pixels)
	float left;   ///< Left u-coordinate
	float top;    ///< Top v-coordinate
	float right;  ///< Right u-coordinate
	float bottom; ///< Bottom v-coordinate
} Tex3DS_SubTexture;
*/

//Tex3DS_Texture

enum GfxScreen_t {
	@:native("GFX_TOP")
	GFX_TOP;
	@:native("GFX_BOTTOM")
	GFX_BOTTOM;
}

enum GfxSide_t {
	@:native("GFX_LEFT")
	GFX_LEFT;
	@:native("GFX_RIGHT")
	GFX_RIGHT;
}

enum FrameBeginEnum {//idk what to call it lol
	@:native("C3D_FRAME_SYNCDRAW")
	C3D_FRAME_SYNCDRAW;
	@:native("C3D_FRAME_NONBLOCK")
	C3D_FRAME_NONBLOCK;
}

enum GPU_COLORBUF {
	@:native("GPU_RB_RGBA8")
	GPU_RB_RGBA8;
	@:native("GPU_RB_RGB8")
	GPU_RB_RGB8;
	@:native("GPU_RB_RGBA5551")
	GPU_RB_RGBA5551;
	@:native("GPU_RB_RGB565")
	GPU_RB_RGB565;
	@:native("GPU_RB_RGBA4")
	GPU_RB_RGBA4;
}

enum GPU_DEPTHBUF {
	@:native("GPU_RB_DEPTH16")
	GPU_RB_DEPTH16;
	@:native("GPU_RB_DEPTH24")
	GPU_RB_DEPTH24;
	@:native("GPU_RB_DEPTH24_STENCIL8")
	GPU_RB_DEPTH24_STENCIL8;
}

enum C3D_ClearBits {
	@:native("C3D_CLEAR_COLOR")
	C3D_CLEAR_COLOR;
	@:native("C3D_CLEAR_DEPTH")
	C3D_CLEAR_DEPTH;
	@:native("C3D_CLEAR_ALL")
	C3D_CLEAR_ALL;
}

extern class Buttons {
	@:native("KEY_A")
	public static var KEY_A:UInt32;

	@:native("KEY_B")
	public static var KEY_B:UInt32;

	@:native("KEY_X")
	public static var KEY_X:UInt32;

	@:native("KEY_Y")
	public static var KEY_Y:UInt32;

	@:native("KEY_SELECT")
	public static var KEY_SELECT:UInt32;

	@:native("KEY_START")
	public static var KEY_START:UInt32;

	@:native("KEY_DRIGHT")
	public static var KEY_DRIGHT:UInt32;

	@:native("KEY_DLEFT")
	public static var KEY_DLEFT:UInt32;

	@:native("KEY_DUP")
	public static var KEY_DUP:UInt32;

	@:native("KEY_DDOWN")
	public static var KEY_DDOWN:UInt32;

	@:native("KEY_R")
	public static var KEY_R:UInt32;

	@:native("KEY_L")
	public static var KEY_L:UInt32;

	@:native("KEY_TOUCH")
	public static var KEY_TOUCH:UInt32;

	@:native("KEY_CSTICK_RIGHT")
	public static var KEY_CSTICK_RIGHT:UInt32;

	@:native("KEY_CSTICK_LEFT")
	public static var KEY_CSTICK_LEFT:UInt32;

	@:native("KEY_CSTICK_UP")
	public static var KEY_CSTICK_UP:UInt32;

	@:native("KEY_CSTICK_DOWN")
	public static var KEY_CSTICK_DOWN:UInt32;
}
/*
 char keysNames[32][32] = {
		"KEY_A", "KEY_B", "KEY_SELECT", "KEY_START",
		"KEY_DRIGHT", "KEY_DLEFT", "KEY_DUP", "KEY_DDOWN",
		"KEY_R", "KEY_L", "KEY_X", "KEY_Y",
		"", "", "KEY_ZL", "KEY_ZR",
		"", "", "", "",
		"KEY_TOUCH", "", "", "",
		"KEY_CSTICK_RIGHT", "KEY_CSTICK_LEFT", "KEY_CSTICK_UP", "KEY_CSTICK_DOWN",
		"KEY_CPAD_RIGHT", "KEY_CPAD_LEFT", "KEY_CPAD_UP", "KEY_CPAD_DOWN"
	};
*/


//@:native("C2D_RenderTarget")
//class C2DRenderTarget {}

@:native("C3D_RenderTarget")
extern class C3DRenderTarget {}

//gfx3dSide_t

@:include("3ds.h")
@:include("citro2d.h")
@:include("citro3d.h")


class Nintendo{
	@:native("C3D_DEFAULT_CMDBUF_SIZE")
	public static var C3D_DEFAULT_CMDBUF_SIZE:SizeT;

	@:native("C2D_DEFAULT_MAX_OBJECTS")
	public static var C2D_DEFAULT_MAX_OBJECTS:SizeT;

    @:native("gfxInitDefault")
    public static function gfxInitDefault():Void{};

    @:native("printf")
    public static function printf(string:String):Void{};

	@:native("aptMainLoop")
	public static function aptMainLoop():Bool{return true;};

	@:native("gspWaitForVBlank")
	public static function gspWaitForVBlank():Void{};

	@:native("gfxSwapBuffers")
	public static function gfxSwapBuffers():Void{};

	@:native("gfxFlushBuffers")
	public static function gfxFlushBuffers():Void{};

	@:native("hidScanInput")
	public static function hidScanInput():Void{};

	@:native("gfxExit")
	public static function gfxExit():Void{};

	@:native("consoleInit")
	public static function consoleInit(screen:GfxScreen_t, printconsole:Null<Ptr<PrintConsole>>):Void{};

	@:native("C3D_Init")
	public static function C3D_Init(maxObjects:SizeT):Void{};

	@:native("C2D_Init")
	public static function C2D_Init(maxObjects:SizeT):Bool{return true;};

	@:native("C2D_Prepare")
	public static function C2D_Prepare():Void{};

	@:native("C3D_Prepare")
	public static function C3D_Prepare():Void{};

	@:native("C2D_CreateScreenTarget")
	public static function C2D_CreateScreenTarget(screen:GfxScreen_t, side:GfxSide_t):Ptr<C3DRenderTarget>{return null;};

	@:native("C3D_RenderTargetCreate")
	public static function C3D_RenderTargetCreate(width:Int, height:Int, colorbuf:GPU_COLORBUF, depthbuf:GPU_DEPTHBUF):Ptr<C3DRenderTarget>{return null;};

	@:native("C2D_Color32f")
	public static function C2D_Color32f(r:Float, g:Float, b:Float, a:Float):UInt32{return 0;}; 

	@:native("C2D_TargetClear")
	public static function C2D_TargetClear(target:Ptr<C3DRenderTarget>, color:UInt32):Void{}; 

	@:native("C3D_RenderTargetClear")
	public static function C3D_RenderTargetClear(target:Ptr<C3DRenderTarget>, clear:C3D_ClearBits, color:UInt32, depth:UInt32):Void{}; 

	@:native("C3D_RenderTargetSetOutput")
	public static function C3D_RenderTargetSetOutput(target:Ptr<C3DRenderTarget>, screen:GfxScreen_t, side:GfxSide_t, transferFlags:UInt32):Void{}; 

	//@:native("sceneRender")
	//public static function sceneRender(target:Ptr<C3DRenderTarget>):Void{};

	@:native("C3D_FrameBegin")
	public static function C3D_FrameBegin(flags:FrameBeginEnum):Void{}; 

	@:native("C2D_SceneBegin")
	public static function C2D_SceneBegin(target:Ptr<C3DRenderTarget>):Void{}; 

	@:native("C2D_DrawRectSolid")
	public static function C2D_DrawRectSolid(x:Float, y:Float, z:Float, w:Float, h:Float, clr:UInt32):Void{}; 

	@:native("C2D_Flush")
	public static function C2D_Flush():Void{}; 

	@:native("C3D_FrameEnd")
	public static function C3D_FrameEnd(flags:UInt8):Void{}; 

	@:native("C3D_FrameDrawOn")
	public static function C3D_FrameDrawOn(screen:Ptr<C3DRenderTarget>):Void{}; 

	@:native("romfsInit")
	public static function romfsInit():Void{}; 

	@:native("C2D_SpriteSheetLoad")
	public static function C2D_SpriteSheetLoad(path:String):C2D_SpriteSheet{return null;}; 
 
	@:native("Tex3DS_TextureImport")
	public static function Tex3DS_TextureImport(input:Ptr<Void>, insize:SizeT, tex:Ptr<C3D_Tex>, texcube:Null<Ptr<C3D_Tex>>, vram:Bool):Tex3DS_Texture{return null;}; 

	@:native("C2D_SpriteFromSheet")
	public static function C2D_SpriteFromSheet(sprites:Ptr<C2D_Sprite>, sheet:C2D_SpriteSheet, index:SizeT):Void{};

	@:native("C2D_SpriteFromImage")
	public static function C2D_SpriteFromImage(sprite:Ptr<C2D_Sprite>, image:C2D_Image):Void{};

	@:native("C2D_DrawSprite")
	public static function C2D_DrawSprite(sprites:Ptr<C2D_Sprite>):Void{};  

	@:native("C2D_SpriteSheetCount")
	public static function C2D_SpriteSheetCount(sheet:C2D_SpriteSheet):SizeT{return 0;};

	@:native("C2D_SpriteSheetGetImage")
	public static function C2D_SpriteSheetGetImage(sheet:Null<C2D_SpriteSheet>, index:Int):C2D_Image{return null;};

	@:native("C2D_SpriteSetPos")
	public static function C2D_SpriteSetPos(sheet:Ptr<C2D_Sprite>, x:Float, y:Float):Void{};

	//has a key just been pressed that frame
	@:native("hidKeysDown")
	public static function hidKeysDown():UInt32{return 0;};

	//is a key held
	@:native("hidKeysHeld")
	public static function hidKeysHeld():UInt32{return 0;};

	//has a key gone up that frame
	@:native("hidKeysUp")
	public static function hidKeysUp():UInt32{return 0;};
}