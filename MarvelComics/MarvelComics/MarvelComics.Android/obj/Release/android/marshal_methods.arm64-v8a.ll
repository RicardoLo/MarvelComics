; ModuleID = 'obj/Release/android/marshal_methods.arm64-v8a.ll'
source_filename = "obj/Release/android/marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [126 x i64] [
	i64 2646484529726201, ; 0: FFImageLoading.Forms.Platform => 0x966f6b24c42f9 => 8
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 13
	i64 200137040527756079, ; 2: MarvelComics.dll => 0x2c70793f70e0b2f => 12
	i64 232391251801502327, ; 3: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 48
	i64 263803244706540312, ; 4: Rg.Plugins.Popup.dll => 0x3a937a743542b18 => 17
	i64 464346026994987652, ; 5: System.Reactive.dll => 0x671b04057e67284 => 27
	i64 684024108737575474, ; 6: Splat => 0x97e244d831b3a32 => 18
	i64 702024105029695270, ; 7: System.Drawing.Common => 0x9be17343c0e7726 => 59
	i64 720058930071658100, ; 8: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 42
	i64 870603111519317375, ; 9: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 21
	i64 872800313462103108, ; 10: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 40
	i64 890227643858171991, ; 11: MarvelComics.Android => 0xc5ab95351663857 => 1
	i64 996343623809489702, ; 12: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 54
	i64 1000557547492888992, ; 13: Mono.Security.dll => 0xde2b1c9cba651a0 => 60
	i64 1120440138749646132, ; 14: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 56
	i64 1274477032785669217, ; 15: Splat.dll => 0x11afda1bdd956c61 => 18
	i64 1301485588176585670, ; 16: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 20
	i64 1425944114962822056, ; 17: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 29
	i64 1518315023656898250, ; 18: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 22
	i64 1624659445732251991, ; 19: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 33
	i64 1731380447121279447, ; 20: Newtonsoft.Json => 0x18071957e9b889d7 => 16
	i64 1795316252682057001, ; 21: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 34
	i64 1836611346387731153, ; 22: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 48
	i64 1981742497975770890, ; 23: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 45
	i64 1984538867944326539, ; 24: FFImageLoading.Platform.dll => 0x1b8a7f95fac7058b => 9
	i64 2040001226662520565, ; 25: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 61
	i64 2133195048986300728, ; 26: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 16
	i64 2262844636196693701, ; 27: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 40
	i64 2329709569556905518, ; 28: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 44
	i64 2337758774805907496, ; 29: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 28
	i64 2470498323731680442, ; 30: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 36
	i64 2547086958574651984, ; 31: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 32
	i64 2592350477072141967, ; 32: System.Xml.dll => 0x23f9e10627330e8f => 30
	i64 2624866290265602282, ; 33: mscorlib.dll => 0x246d65fbde2db8ea => 14
	i64 2783046991838674048, ; 34: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 28
	i64 2863324215353042462, ; 35: FFImageLoading.Forms => 0x27bc92340ce4661e => 7
	i64 2960931600190307745, ; 36: Xamarin.Forms.Core => 0x2917579a49927da1 => 52
	i64 3017704767998173186, ; 37: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 56
	i64 3143372049866220642, ; 38: MarvelComics.resources => 0x2b9f80399d2ae462 => 0
	i64 3289520064315143713, ; 39: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 43
	i64 3522470458906976663, ; 40: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 49
	i64 3531994851595924923, ; 41: System.Numerics => 0x31042a9aade235bb => 26
	i64 3727469159507183293, ; 42: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 47
	i64 3885866789455342010, ; 43: Akavache => 0x35ed5f41bdf929ba => 4
	i64 4202567570116092282, ; 44: Newtonsoft.Json.Bson => 0x3a5284f05958a17a => 15
	i64 4337444564132831293, ; 45: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 19
	i64 4525561845656915374, ; 46: System.ServiceModel.Internals => 0x3ece06856b710dae => 62
	i64 4794310189461587505, ; 47: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 32
	i64 4795410492532947900, ; 48: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 49
	i64 5142919913060024034, ; 49: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 53
	i64 5203618020066742981, ; 50: Xamarin.Essentials => 0x4836f704f0e652c5 => 51
	i64 5507995362134886206, ; 51: System.Core.dll => 0x4c705499688c873e => 24
	i64 6085203216496545422, ; 52: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 54
	i64 6086316965293125504, ; 53: FormsViewGroup.dll => 0x5476f10882baef80 => 10
	i64 6183170893902868313, ; 54: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 19
	i64 6401687960814735282, ; 55: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 44
	i64 6548213210057960872, ; 56: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 39
	i64 6659513131007730089, ; 57: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 42
	i64 6876862101832370452, ; 58: System.Xml.Linq => 0x5f6f85a57d108914 => 31
	i64 7023993184608409196, ; 59: MarvelComics.Android.dll => 0x617a3c963159566c => 1
	i64 7488575175965059935, ; 60: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 31
	i64 7602111570124318452, ; 61: System.Reactive => 0x698020320025a6f4 => 27
	i64 7635363394907363464, ; 62: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 52
	i64 7637365915383206639, ; 63: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 51
	i64 7654504624184590948, ; 64: System.Net.Http => 0x6a3a4366801b8264 => 2
	i64 7820441508502274321, ; 65: System.Data => 0x6c87ca1e14ff8111 => 58
	i64 7836164640616011524, ; 66: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 33
	i64 8083354569033831015, ; 67: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 43
	i64 8167236081217502503, ; 68: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 11
	i64 8626175481042262068, ; 69: Java.Interop => 0x77b654e585b55834 => 11
	i64 9114191852432800567, ; 70: FFImageLoading.dll => 0x7e7c1d3363043b37 => 6
	i64 9238306115887712111, ; 71: FFImageLoading.Forms.dll => 0x80350e773bce476f => 7
	i64 9324707631942237306, ; 72: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 34
	i64 9405324967111855607, ; 73: Akavache.Core.dll => 0x82866d39ddd08df7 => 3
	i64 9662334977499516867, ; 74: System.Numerics.dll => 0x8617827802b0cfc3 => 26
	i64 9678050649315576968, ; 75: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 36
	i64 9808709177481450983, ; 76: Mono.Android.dll => 0x881f890734e555e7 => 13
	i64 9994308163963284983, ; 77: Newtonsoft.Json.Bson.dll => 0x8ab2ea52b0d16df7 => 15
	i64 9998632235833408227, ; 78: Mono.Security => 0x8ac2470b209ebae3 => 60
	i64 10038780035334861115, ; 79: System.Net.Http.dll => 0x8b50e941206af13b => 2
	i64 10229024438826829339, ; 80: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 39
	i64 10304525559830510402, ; 81: Akavache.Core => 0x8f010766a4a17b42 => 3
	i64 10430153318873392755, ; 82: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 37
	i64 10996513244237418412, ; 83: Akavache.dll => 0x989b76889aa64fac => 4
	i64 11023048688141570732, ; 84: System.Core => 0x98f9bc61168392ac => 24
	i64 11037814507248023548, ; 85: System.Xml => 0x992e31d0412bf7fc => 30
	i64 11162124722117608902, ; 86: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 50
	i64 11303585331900899220, ; 87: Akavache.Sqlite3 => 0x9cde66f86c44df94 => 5
	i64 11340910727871153756, ; 88: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 38
	i64 11529969570048099689, ; 89: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 50
	i64 12078096185981440303, ; 90: MarvelComics => 0xa79e047d186c912f => 12
	i64 12102847907131387746, ; 91: System.Buffers => 0xa7f5f40c43256f62 => 23
	i64 12279246230491828964, ; 92: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 22
	i64 12451044538927396471, ; 93: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 41
	i64 12466513435562512481, ; 94: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 46
	i64 12538491095302438457, ; 95: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 35
	i64 12963446364377008305, ; 96: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 59
	i64 13370592475155966277, ; 97: System.Runtime.Serialization => 0xb98de304062ea945 => 29
	i64 13454009404024712428, ; 98: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 57
	i64 13572454107664307259, ; 99: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 47
	i64 13647894001087880694, ; 100: System.Data.dll => 0xbd670f48cb071df6 => 58
	i64 13959074834287824816, ; 101: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 41
	i64 13967638549803255703, ; 102: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 53
	i64 14124974489674258913, ; 103: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 35
	i64 14792063746108907174, ; 104: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 57
	i64 14852515768018889994, ; 105: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 38
	i64 15370334346939861994, ; 106: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 37
	i64 15398511348637731642, ; 107: FFImageLoading.Forms.Platform.dll => 0xd5b2807c9d5f8b3a => 8
	i64 15609085926864131306, ; 108: System.dll => 0xd89e9cf3334914ea => 25
	i64 15810740023422282496, ; 109: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 55
	i64 15963349826457351533, ; 110: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 61
	i64 16154507427712707110, ; 111: System => 0xe03056ea4e39aa26 => 25
	i64 16755018182064898362, ; 112: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 20
	i64 16833383113903931215, ; 113: mscorlib => 0xe99c30c1484d7f4f => 14
	i64 17000878164442664314, ; 114: Akavache.Sqlite3.dll => 0xebef409db54ccd7a => 5
	i64 17285063141349522879, ; 115: Rg.Plugins.Popup => 0xefe0e158cc55fdbf => 17
	i64 17643123953373031521, ; 116: FFImageLoading => 0xf4d8f7c220fc2c61 => 6
	i64 17704177640604968747, ; 117: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 46
	i64 17710060891934109755, ; 118: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 45
	i64 17838668724098252521, ; 119: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 23
	i64 17882897186074144999, ; 120: FormsViewGroup => 0xf82cd03e3ac830e7 => 10
	i64 17892495832318972303, ; 121: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 55
	i64 17947624217716767869, ; 122: FFImageLoading.Platform => 0xf912c522ab34bc7d => 9
	i64 18129453464017766560, ; 123: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 62
	i64 18191491074784574273, ; 124: MarvelComics.resources.dll => 0xfc7528bff7393b41 => 0
	i64 18370042311372477656 ; 125: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 21
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [126 x i32] [
	i32 8, i32 13, i32 12, i32 48, i32 17, i32 27, i32 18, i32 59, ; 0..7
	i32 42, i32 21, i32 40, i32 1, i32 54, i32 60, i32 56, i32 18, ; 8..15
	i32 20, i32 29, i32 22, i32 33, i32 16, i32 34, i32 48, i32 45, ; 16..23
	i32 9, i32 61, i32 16, i32 40, i32 44, i32 28, i32 36, i32 32, ; 24..31
	i32 30, i32 14, i32 28, i32 7, i32 52, i32 56, i32 0, i32 43, ; 32..39
	i32 49, i32 26, i32 47, i32 4, i32 15, i32 19, i32 62, i32 32, ; 40..47
	i32 49, i32 53, i32 51, i32 24, i32 54, i32 10, i32 19, i32 44, ; 48..55
	i32 39, i32 42, i32 31, i32 1, i32 31, i32 27, i32 52, i32 51, ; 56..63
	i32 2, i32 58, i32 33, i32 43, i32 11, i32 11, i32 6, i32 7, ; 64..71
	i32 34, i32 3, i32 26, i32 36, i32 13, i32 15, i32 60, i32 2, ; 72..79
	i32 39, i32 3, i32 37, i32 4, i32 24, i32 30, i32 50, i32 5, ; 80..87
	i32 38, i32 50, i32 12, i32 23, i32 22, i32 41, i32 46, i32 35, ; 88..95
	i32 59, i32 29, i32 57, i32 47, i32 58, i32 41, i32 53, i32 35, ; 96..103
	i32 57, i32 38, i32 37, i32 8, i32 25, i32 55, i32 61, i32 25, ; 104..111
	i32 20, i32 14, i32 5, i32 17, i32 6, i32 46, i32 45, i32 23, ; 112..119
	i32 10, i32 55, i32 9, i32 62, i32 0, i32 21 ; 120..125
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ a200af12c1e846626b8caebd926ac14c185f71ec"}
!llvm.linker.options = !{}
