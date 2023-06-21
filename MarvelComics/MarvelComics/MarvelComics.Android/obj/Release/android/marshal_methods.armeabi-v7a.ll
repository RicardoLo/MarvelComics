; ModuleID = 'obj/Release/android/marshal_methods.armeabi-v7a.ll'
source_filename = "obj/Release/android/marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [126 x i32] [
	i32 34715100, ; 0: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 57
	i32 37329459, ; 1: Akavache.Core.dll => 0x2399a33 => 3
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 16
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 52
	i32 182336117, ; 4: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 49
	i32 318968648, ; 5: Xamarin.AndroidX.Activity.dll => 0x13031348 => 32
	i32 321597661, ; 6: System.Numerics => 0x132b30dd => 26
	i32 342366114, ; 7: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 43
	i32 347068432, ; 8: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 21
	i32 399658627, ; 9: MarvelComics.Android => 0x17d24e83 => 1
	i32 442521989, ; 10: Xamarin.Essentials => 0x1a605985 => 51
	i32 450948140, ; 11: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 41
	i32 465846621, ; 12: mscorlib => 0x1bc4415d => 14
	i32 469710990, ; 13: System.dll => 0x1bff388e => 25
	i32 520798577, ; 14: FFImageLoading.Platform => 0x1f0ac171 => 9
	i32 610194910, ; 15: System.Reactive.dll => 0x245ed5de => 27
	i32 627609679, ; 16: Xamarin.AndroidX.CustomView => 0x2568904f => 39
	i32 690569205, ; 17: System.Xml.Linq.dll => 0x29293ff5 => 31
	i32 748832960, ; 18: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 19
	i32 809851609, ; 19: System.Drawing.Common.dll => 0x30455ad9 => 59
	i32 902159924, ; 20: Rg.Plugins.Popup => 0x35c5de34 => 17
	i32 928116545, ; 21: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 57
	i32 955402788, ; 22: Newtonsoft.Json => 0x38f24a24 => 16
	i32 967690846, ; 23: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 43
	i32 974778368, ; 24: FormsViewGroup.dll => 0x3a19f000 => 10
	i32 1012816738, ; 25: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 48
	i32 1035644815, ; 26: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 34
	i32 1042160112, ; 27: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 54
	i32 1052210849, ; 28: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 45
	i32 1098259244, ; 29: System => 0x41761b2c => 25
	i32 1100754253, ; 30: MarvelComics => 0x419c2d4d => 12
	i32 1146321787, ; 31: MarvelComics.resources.dll => 0x44537b7b => 0
	i32 1186231468, ; 32: Newtonsoft.Json.Bson.dll => 0x46b474ac => 15
	i32 1194354089, ; 33: Akavache.Sqlite3 => 0x473065a9 => 5
	i32 1292207520, ; 34: SQLitePCLRaw.core.dll => 0x4d0585a0 => 20
	i32 1293217323, ; 35: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 40
	i32 1365406463, ; 36: System.ServiceModel.Internals.dll => 0x516272ff => 62
	i32 1376866003, ; 37: Xamarin.AndroidX.SavedState => 0x52114ed3 => 48
	i32 1406073936, ; 38: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 36
	i32 1411638395, ; 39: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 28
	i32 1460219004, ; 40: Xamarin.Forms.Xaml => 0x57092c7c => 55
	i32 1469204771, ; 41: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 33
	i32 1530772511, ; 42: FFImageLoading.Forms.Platform => 0x5b3dbc1f => 8
	i32 1592978981, ; 43: System.Runtime.Serialization.dll => 0x5ef2ee25 => 29
	i32 1622152042, ; 44: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 46
	i32 1636350590, ; 45: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 38
	i32 1639515021, ; 46: System.Net.Http.dll => 0x61b9038d => 2
	i32 1658251792, ; 47: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 56
	i32 1711441057, ; 48: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 21
	i32 1713971536, ; 49: Akavache.Core => 0x66292150 => 3
	i32 1729485958, ; 50: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 35
	i32 1766324549, ; 51: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 49
	i32 1776026572, ; 52: System.Core.dll => 0x69dc03cc => 24
	i32 1788241197, ; 53: Xamarin.AndroidX.Fragment => 0x6a96652d => 41
	i32 1793089559, ; 54: FFImageLoading.Forms.dll => 0x6ae06017 => 7
	i32 1808609942, ; 55: Xamarin.AndroidX.Loader => 0x6bcd3296 => 46
	i32 1813201214, ; 56: Xamarin.Google.Android.Material => 0x6c13413e => 56
	i32 1840964413, ; 57: FFImageLoading.Forms => 0x6dbae33d => 7
	i32 1867746548, ; 58: Xamarin.Essentials.dll => 0x6f538cf4 => 51
	i32 1873820078, ; 59: Akavache.Sqlite3.dll => 0x6fb039ae => 5
	i32 1878053835, ; 60: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 55
	i32 2011961780, ; 61: System.Buffers.dll => 0x77ec19b4 => 23
	i32 2019465201, ; 62: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 45
	i32 2055257422, ; 63: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 44
	i32 2069514766, ; 64: Newtonsoft.Json.Bson => 0x7b5a4a0e => 15
	i32 2097448633, ; 65: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 42
	i32 2103459038, ; 66: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 22
	i32 2126786730, ; 67: Xamarin.Forms.Platform.Android => 0x7ec430aa => 53
	i32 2201231467, ; 68: System.Net.Http => 0x8334206b => 2
	i32 2279755925, ; 69: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 47
	i32 2340826669, ; 70: FFImageLoading.dll => 0x8b862e2d => 6
	i32 2465273461, ; 71: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 19
	i32 2475788418, ; 72: Java.Interop.dll => 0x93918882 => 11
	i32 2557152561, ; 73: MarvelComics.Android.dll => 0x986b0d31 => 1
	i32 2620871830, ; 74: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 38
	i32 2732626843, ; 75: Xamarin.AndroidX.Activity => 0xa2e0939b => 32
	i32 2737747696, ; 76: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 33
	i32 2766581644, ; 77: Xamarin.Forms.Core => 0xa4e6af8c => 52
	i32 2778768386, ; 78: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 50
	i32 2810250172, ; 79: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 36
	i32 2819470561, ; 80: System.Xml.dll => 0xa80db4e1 => 30
	i32 2842369275, ; 81: FFImageLoading.Forms.Platform.dll => 0xa96b1cfb => 8
	i32 2853208004, ; 82: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 50
	i32 2861816565, ; 83: Rg.Plugins.Popup.dll => 0xaa93daf5 => 17
	i32 2873222696, ; 84: FFImageLoading => 0xab41e628 => 6
	i32 2905242038, ; 85: mscorlib.dll => 0xad2a79b6 => 14
	i32 2978675010, ; 86: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 40
	i32 3044182254, ; 87: FormsViewGroup => 0xb57288ee => 10
	i32 3048261857, ; 88: Splat.dll => 0xb5b0c8e1 => 18
	i32 3111772706, ; 89: System.Runtime.Serialization => 0xb979e222 => 29
	i32 3124832203, ; 90: System.Threading.Tasks.Extensions => 0xba4127cb => 61
	i32 3203554926, ; 91: MarvelComics.dll => 0xbef25e6e => 12
	i32 3204380047, ; 92: System.Data.dll => 0xbefef58f => 58
	i32 3247949154, ; 93: Mono.Security => 0xc197c562 => 60
	i32 3258312781, ; 94: Xamarin.AndroidX.CardView => 0xc235e84d => 35
	i32 3265893370, ; 95: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 61
	i32 3291646556, ; 96: Splat => 0xc4328a5c => 18
	i32 3317135071, ; 97: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 39
	i32 3317144872, ; 98: System.Data => 0xc5b79d28 => 58
	i32 3353484488, ; 99: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 42
	i32 3360279109, ; 100: SQLitePCLRaw.core => 0xc849ca45 => 20
	i32 3362522851, ; 101: Xamarin.AndroidX.Core => 0xc86c06e3 => 37
	i32 3366347497, ; 102: Java.Interop => 0xc8a662e9 => 11
	i32 3374999561, ; 103: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 47
	i32 3395150330, ; 104: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 28
	i32 3404865022, ; 105: System.ServiceModel.Internals => 0xcaf21dfe => 62
	i32 3429136800, ; 106: System.Xml => 0xcc6479a0 => 30
	i32 3476120550, ; 107: Mono.Android => 0xcf3163e6 => 13
	i32 3509114376, ; 108: System.Xml.Linq => 0xd128d608 => 31
	i32 3536029504, ; 109: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 53
	i32 3565770714, ; 110: Akavache.dll => 0xd48957da => 4
	i32 3632359727, ; 111: Xamarin.Forms.Platform => 0xd881692f => 54
	i32 3641597786, ; 112: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 44
	i32 3672681054, ; 113: Mono.Android.dll => 0xdae8aa5e => 13
	i32 3689375977, ; 114: System.Drawing.Common => 0xdbe768e9 => 59
	i32 3690134583, ; 115: MarvelComics.resources => 0xdbf2fc37 => 0
	i32 3731644420, ; 116: System.Reactive => 0xde6c6004 => 27
	i32 3754567612, ; 117: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 22
	i32 3829621856, ; 118: System.Numerics.dll => 0xe4436460 => 26
	i32 3896760992, ; 119: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 37
	i32 3920560973, ; 120: Akavache => 0xe9af034d => 4
	i32 3955647286, ; 121: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 34
	i32 4105002889, ; 122: Mono.Security.dll => 0xf4ad5f89 => 60
	i32 4151237749, ; 123: System.Core => 0xf76edc75 => 24
	i32 4184283386, ; 124: FFImageLoading.Platform.dll => 0xf96718fa => 9
	i32 4260525087 ; 125: System.Buffers => 0xfdf2741f => 23
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [126 x i32] [
	i32 57, i32 3, i32 16, i32 52, i32 49, i32 32, i32 26, i32 43, ; 0..7
	i32 21, i32 1, i32 51, i32 41, i32 14, i32 25, i32 9, i32 27, ; 8..15
	i32 39, i32 31, i32 19, i32 59, i32 17, i32 57, i32 16, i32 43, ; 16..23
	i32 10, i32 48, i32 34, i32 54, i32 45, i32 25, i32 12, i32 0, ; 24..31
	i32 15, i32 5, i32 20, i32 40, i32 62, i32 48, i32 36, i32 28, ; 32..39
	i32 55, i32 33, i32 8, i32 29, i32 46, i32 38, i32 2, i32 56, ; 40..47
	i32 21, i32 3, i32 35, i32 49, i32 24, i32 41, i32 7, i32 46, ; 48..55
	i32 56, i32 7, i32 51, i32 5, i32 55, i32 23, i32 45, i32 44, ; 56..63
	i32 15, i32 42, i32 22, i32 53, i32 2, i32 47, i32 6, i32 19, ; 64..71
	i32 11, i32 1, i32 38, i32 32, i32 33, i32 52, i32 50, i32 36, ; 72..79
	i32 30, i32 8, i32 50, i32 17, i32 6, i32 14, i32 40, i32 10, ; 80..87
	i32 18, i32 29, i32 61, i32 12, i32 58, i32 60, i32 35, i32 61, ; 88..95
	i32 18, i32 39, i32 58, i32 42, i32 20, i32 37, i32 11, i32 47, ; 96..103
	i32 28, i32 62, i32 30, i32 13, i32 31, i32 53, i32 4, i32 54, ; 104..111
	i32 44, i32 13, i32 59, i32 0, i32 27, i32 22, i32 26, i32 37, ; 112..119
	i32 4, i32 34, i32 60, i32 24, i32 9, i32 23 ; 120..125
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ a200af12c1e846626b8caebd926ac14c185f71ec"}
!llvm.linker.options = !{}
