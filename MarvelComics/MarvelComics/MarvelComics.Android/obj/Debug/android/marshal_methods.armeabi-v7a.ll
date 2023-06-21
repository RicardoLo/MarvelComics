; ModuleID = 'obj/Debug/android/marshal_methods.armeabi-v7a.ll'
source_filename = "obj/Debug/android/marshal_methods.armeabi-v7a.ll"
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
@assembly_image_cache_hashes = local_unnamed_addr constant [244 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 67
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 96
	i32 37329459, ; 2: Akavache.Core.dll => 0x2399a33 => 6
	i32 39109920, ; 3: Newtonsoft.Json.dll => 0x254c520 => 19
	i32 57263871, ; 4: Xamarin.Forms.Core.dll => 0x369c6ff => 91
	i32 101534019, ; 5: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 81
	i32 120558881, ; 6: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 81
	i32 165246403, ; 7: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 48
	i32 182336117, ; 8: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 82
	i32 209399409, ; 9: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 46
	i32 220171995, ; 10: System.Diagnostics.Debug => 0xd1f8edb => 101
	i32 230216969, ; 11: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 62
	i32 231814094, ; 12: System.Globalization => 0xdd133ce => 109
	i32 232815796, ; 13: System.Web.Services => 0xde07cb4 => 118
	i32 261689757, ; 14: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 51
	i32 278686392, ; 15: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 66
	i32 280482487, ; 16: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 60
	i32 318968648, ; 17: Xamarin.AndroidX.Activity.dll => 0x13031348 => 38
	i32 321597661, ; 18: System.Numerics => 0x132b30dd => 30
	i32 342366114, ; 19: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 64
	i32 347068432, ; 20: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 24
	i32 385762202, ; 21: System.Memory.dll => 0x16fe439a => 29
	i32 399658627, ; 22: MarvelComics.Android => 0x17d24e83 => 1
	i32 441335492, ; 23: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 50
	i32 442521989, ; 24: Xamarin.Essentials => 0x1a605985 => 90
	i32 442565967, ; 25: System.Collections => 0x1a61054f => 97
	i32 450948140, ; 26: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 59
	i32 465846621, ; 27: mscorlib => 0x1bc4415d => 17
	i32 469710990, ; 28: System.dll => 0x1bff388e => 28
	i32 476646585, ; 29: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 60
	i32 486930444, ; 30: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 71
	i32 498788369, ; 31: System.ObjectModel => 0x1dbae811 => 108
	i32 520798577, ; 32: FFImageLoading.Platform => 0x1f0ac171 => 12
	i32 526420162, ; 33: System.Transactions.dll => 0x1f6088c2 => 112
	i32 545304856, ; 34: System.Runtime.Extensions => 0x2080b118 => 104
	i32 605376203, ; 35: System.IO.Compression.FileSystem => 0x24154ecb => 116
	i32 610194910, ; 36: System.Reactive.dll => 0x245ed5de => 32
	i32 627609679, ; 37: Xamarin.AndroidX.CustomView => 0x2568904f => 55
	i32 663517072, ; 38: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 87
	i32 666292255, ; 39: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 43
	i32 690569205, ; 40: System.Xml.Linq.dll => 0x29293ff5 => 37
	i32 748832960, ; 41: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 22
	i32 775507847, ; 42: System.IO.Compression => 0x2e394f87 => 115
	i32 809851609, ; 43: System.Drawing.Common.dll => 0x30455ad9 => 114
	i32 843511501, ; 44: Xamarin.AndroidX.Print => 0x3246f6cd => 78
	i32 877678880, ; 45: System.Globalization.dll => 0x34505120 => 109
	i32 902159924, ; 46: Rg.Plugins.Popup => 0x35c5de34 => 20
	i32 928116545, ; 47: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 96
	i32 955402788, ; 48: Newtonsoft.Json => 0x38f24a24 => 19
	i32 967690846, ; 49: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 64
	i32 974778368, ; 50: FormsViewGroup.dll => 0x3a19f000 => 13
	i32 992768348, ; 51: System.Collections.dll => 0x3b2c715c => 97
	i32 1012816738, ; 52: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 80
	i32 1035644815, ; 53: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 42
	i32 1042160112, ; 54: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 93
	i32 1052210849, ; 55: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 68
	i32 1098259244, ; 56: System => 0x41761b2c => 28
	i32 1100754253, ; 57: MarvelComics => 0x419c2d4d => 15
	i32 1146321787, ; 58: MarvelComics.resources.dll => 0x44537b7b => 0
	i32 1175144683, ; 59: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 85
	i32 1178241025, ; 60: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 75
	i32 1186231468, ; 61: Newtonsoft.Json.Bson.dll => 0x46b474ac => 18
	i32 1194354089, ; 62: Akavache.Sqlite3 => 0x473065a9 => 8
	i32 1204270330, ; 63: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 43
	i32 1267360935, ; 64: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 86
	i32 1292207520, ; 65: SQLitePCLRaw.core.dll => 0x4d0585a0 => 23
	i32 1293217323, ; 66: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 57
	i32 1324164729, ; 67: System.Linq => 0x4eed2679 => 107
	i32 1364015309, ; 68: System.IO => 0x514d38cd => 100
	i32 1365406463, ; 69: System.ServiceModel.Internals.dll => 0x516272ff => 121
	i32 1376866003, ; 70: Xamarin.AndroidX.SavedState => 0x52114ed3 => 80
	i32 1379779777, ; 71: System.Resources.ResourceManager => 0x523dc4c1 => 4
	i32 1395857551, ; 72: Xamarin.AndroidX.Media.dll => 0x5333188f => 72
	i32 1406073936, ; 73: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 52
	i32 1411638395, ; 74: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 33
	i32 1457743152, ; 75: System.Runtime.Extensions.dll => 0x56e36530 => 104
	i32 1460219004, ; 76: Xamarin.Forms.Xaml => 0x57092c7c => 94
	i32 1462112819, ; 77: System.IO.Compression.dll => 0x57261233 => 115
	i32 1469204771, ; 78: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 41
	i32 1530772511, ; 79: FFImageLoading.Forms.Platform => 0x5b3dbc1f => 11
	i32 1543031311, ; 80: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 106
	i32 1550322496, ; 81: System.Reflection.Extensions.dll => 0x5c680b40 => 5
	i32 1582372066, ; 82: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 56
	i32 1592978981, ; 83: System.Runtime.Serialization.dll => 0x5ef2ee25 => 35
	i32 1622152042, ; 84: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 70
	i32 1624863272, ; 85: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 89
	i32 1636350590, ; 86: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 54
	i32 1639515021, ; 87: System.Net.Http.dll => 0x61b9038d => 2
	i32 1639986890, ; 88: System.Text.RegularExpressions => 0x61c036ca => 106
	i32 1657153582, ; 89: System.Runtime => 0x62c6282e => 34
	i32 1658241508, ; 90: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 83
	i32 1658251792, ; 91: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 95
	i32 1670060433, ; 92: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 51
	i32 1677501392, ; 93: System.Net.Primitives.dll => 0x63fca3d0 => 102
	i32 1701541528, ; 94: System.Diagnostics.Debug.dll => 0x656b7698 => 101
	i32 1711441057, ; 95: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 24
	i32 1713971536, ; 96: Akavache.Core => 0x66292150 => 6
	i32 1726116996, ; 97: System.Reflection.dll => 0x66e27484 => 98
	i32 1729485958, ; 98: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 47
	i32 1765942094, ; 99: System.Reflection.Extensions => 0x6942234e => 5
	i32 1766324549, ; 100: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 82
	i32 1776026572, ; 101: System.Core.dll => 0x69dc03cc => 27
	i32 1788241197, ; 102: Xamarin.AndroidX.Fragment => 0x6a96652d => 59
	i32 1793089559, ; 103: FFImageLoading.Forms.dll => 0x6ae06017 => 10
	i32 1808609942, ; 104: Xamarin.AndroidX.Loader => 0x6bcd3296 => 70
	i32 1813201214, ; 105: Xamarin.Google.Android.Material => 0x6c13413e => 95
	i32 1818569960, ; 106: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 76
	i32 1840964413, ; 107: FFImageLoading.Forms => 0x6dbae33d => 10
	i32 1867746548, ; 108: Xamarin.Essentials.dll => 0x6f538cf4 => 90
	i32 1873820078, ; 109: Akavache.Sqlite3.dll => 0x6fb039ae => 8
	i32 1878053835, ; 110: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 94
	i32 1885316902, ; 111: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 44
	i32 1900610850, ; 112: System.Resources.ResourceManager.dll => 0x71490522 => 4
	i32 1904755420, ; 113: System.Runtime.InteropServices.WindowsRuntime.dll => 0x718842dc => 3
	i32 1919157823, ; 114: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 73
	i32 2011961780, ; 115: System.Buffers.dll => 0x77ec19b4 => 26
	i32 2019465201, ; 116: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 68
	i32 2055257422, ; 117: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 65
	i32 2069514766, ; 118: Newtonsoft.Json.Bson => 0x7b5a4a0e => 18
	i32 2079903147, ; 119: System.Runtime.dll => 0x7bf8cdab => 34
	i32 2090596640, ; 120: System.Numerics.Vectors => 0x7c9bf920 => 31
	i32 2097448633, ; 121: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 61
	i32 2103459038, ; 122: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 25
	i32 2126786730, ; 123: Xamarin.Forms.Platform.Android => 0x7ec430aa => 92
	i32 2193016926, ; 124: System.ObjectModel.dll => 0x82b6c85e => 108
	i32 2201231467, ; 125: System.Net.Http => 0x8334206b => 2
	i32 2217644978, ; 126: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 85
	i32 2244775296, ; 127: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 71
	i32 2256548716, ; 128: Xamarin.AndroidX.MultiDex => 0x8680336c => 73
	i32 2261435625, ; 129: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 63
	i32 2279755925, ; 130: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 79
	i32 2315684594, ; 131: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 39
	i32 2340826669, ; 132: FFImageLoading.dll => 0x8b862e2d => 9
	i32 2353062107, ; 133: System.Net.Primitives => 0x8c40e0db => 102
	i32 2409053734, ; 134: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 77
	i32 2454642406, ; 135: System.Text.Encoding.dll => 0x924edee6 => 105
	i32 2465273461, ; 136: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 22
	i32 2465532216, ; 137: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 50
	i32 2471841756, ; 138: netstandard.dll => 0x93554fdc => 110
	i32 2475788418, ; 139: Java.Interop.dll => 0x93918882 => 14
	i32 2501346920, ; 140: System.Data.DataSetExtensions => 0x95178668 => 113
	i32 2505896520, ; 141: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 67
	i32 2557152561, ; 142: MarvelComics.Android.dll => 0x986b0d31 => 1
	i32 2581819634, ; 143: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 86
	i32 2620871830, ; 144: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 54
	i32 2624644809, ; 145: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 58
	i32 2633051222, ; 146: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 66
	i32 2693849962, ; 147: System.IO.dll => 0xa090e36a => 100
	i32 2701096212, ; 148: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 83
	i32 2715334215, ; 149: System.Threading.Tasks.dll => 0xa1d8b647 => 99
	i32 2732626843, ; 150: Xamarin.AndroidX.Activity => 0xa2e0939b => 38
	i32 2737747696, ; 151: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 41
	i32 2766581644, ; 152: Xamarin.Forms.Core => 0xa4e6af8c => 91
	i32 2778768386, ; 153: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 88
	i32 2810250172, ; 154: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 52
	i32 2819470561, ; 155: System.Xml.dll => 0xa80db4e1 => 36
	i32 2842369275, ; 156: FFImageLoading.Forms.Platform.dll => 0xa96b1cfb => 11
	i32 2853208004, ; 157: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 88
	i32 2855708567, ; 158: Xamarin.AndroidX.Transition => 0xaa36a797 => 84
	i32 2861816565, ; 159: Rg.Plugins.Popup.dll => 0xaa93daf5 => 20
	i32 2873222696, ; 160: FFImageLoading => 0xab41e628 => 9
	i32 2901442782, ; 161: System.Reflection => 0xacf080de => 98
	i32 2903344695, ; 162: System.ComponentModel.Composition => 0xad0d8637 => 117
	i32 2905242038, ; 163: mscorlib.dll => 0xad2a79b6 => 17
	i32 2916838712, ; 164: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 89
	i32 2919462931, ; 165: System.Numerics.Vectors.dll => 0xae037813 => 31
	i32 2921128767, ; 166: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 40
	i32 2978675010, ; 167: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 57
	i32 3024354802, ; 168: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 62
	i32 3044182254, ; 169: FormsViewGroup => 0xb57288ee => 13
	i32 3048261857, ; 170: Splat.dll => 0xb5b0c8e1 => 21
	i32 3057625584, ; 171: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 74
	i32 3075834255, ; 172: System.Threading.Tasks => 0xb755818f => 99
	i32 3111772706, ; 173: System.Runtime.Serialization => 0xb979e222 => 35
	i32 3124832203, ; 174: System.Threading.Tasks.Extensions => 0xba4127cb => 120
	i32 3203554926, ; 175: MarvelComics.dll => 0xbef25e6e => 15
	i32 3204380047, ; 176: System.Data.dll => 0xbefef58f => 111
	i32 3211777861, ; 177: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 56
	i32 3220365878, ; 178: System.Threading => 0xbff2e236 => 103
	i32 3247949154, ; 179: Mono.Security => 0xc197c562 => 119
	i32 3258312781, ; 180: Xamarin.AndroidX.CardView => 0xc235e84d => 47
	i32 3265893370, ; 181: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 120
	i32 3267021929, ; 182: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 45
	i32 3291646556, ; 183: Splat => 0xc4328a5c => 21
	i32 3299363146, ; 184: System.Text.Encoding => 0xc4a8494a => 105
	i32 3317135071, ; 185: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 55
	i32 3317144872, ; 186: System.Data => 0xc5b79d28 => 111
	i32 3340431453, ; 187: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 44
	i32 3346324047, ; 188: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 75
	i32 3353484488, ; 189: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 61
	i32 3360279109, ; 190: SQLitePCLRaw.core => 0xc849ca45 => 23
	i32 3362522851, ; 191: Xamarin.AndroidX.Core => 0xc86c06e3 => 53
	i32 3366347497, ; 192: Java.Interop => 0xc8a662e9 => 14
	i32 3374999561, ; 193: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 79
	i32 3395150330, ; 194: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 33
	i32 3404865022, ; 195: System.ServiceModel.Internals => 0xcaf21dfe => 121
	i32 3429136800, ; 196: System.Xml => 0xcc6479a0 => 36
	i32 3430777524, ; 197: netstandard => 0xcc7d82b4 => 110
	i32 3441283291, ; 198: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 58
	i32 3476120550, ; 199: Mono.Android => 0xcf3163e6 => 16
	i32 3486566296, ; 200: System.Transactions => 0xcfd0c798 => 112
	i32 3493954962, ; 201: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 49
	i32 3501239056, ; 202: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 45
	i32 3509114376, ; 203: System.Xml.Linq => 0xd128d608 => 37
	i32 3536029504, ; 204: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 92
	i32 3565770714, ; 205: Akavache.dll => 0xd48957da => 7
	i32 3567349600, ; 206: System.ComponentModel.Composition.dll => 0xd4a16f60 => 117
	i32 3608519521, ; 207: System.Linq.dll => 0xd715a361 => 107
	i32 3618140916, ; 208: Xamarin.AndroidX.Preference => 0xd7a872f4 => 77
	i32 3627220390, ; 209: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 78
	i32 3632359727, ; 210: Xamarin.Forms.Platform => 0xd881692f => 93
	i32 3633644679, ; 211: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 40
	i32 3641597786, ; 212: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 65
	i32 3672681054, ; 213: Mono.Android.dll => 0xdae8aa5e => 16
	i32 3676310014, ; 214: System.Web.Services.dll => 0xdb2009fe => 118
	i32 3682565725, ; 215: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 46
	i32 3684561358, ; 216: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 49
	i32 3684933406, ; 217: System.Runtime.InteropServices.WindowsRuntime => 0xdba39f1e => 3
	i32 3689375977, ; 218: System.Drawing.Common => 0xdbe768e9 => 114
	i32 3690134583, ; 219: MarvelComics.resources => 0xdbf2fc37 => 0
	i32 3718780102, ; 220: Xamarin.AndroidX.Annotation => 0xdda814c6 => 39
	i32 3724971120, ; 221: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 74
	i32 3731644420, ; 222: System.Reactive => 0xde6c6004 => 32
	i32 3754567612, ; 223: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 25
	i32 3758932259, ; 224: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 63
	i32 3786282454, ; 225: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 48
	i32 3822602673, ; 226: Xamarin.AndroidX.Media => 0xe3d849b1 => 72
	i32 3829621856, ; 227: System.Numerics.dll => 0xe4436460 => 30
	i32 3885922214, ; 228: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 84
	i32 3896760992, ; 229: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 53
	i32 3920560973, ; 230: Akavache => 0xe9af034d => 7
	i32 3920810846, ; 231: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 116
	i32 3921031405, ; 232: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 87
	i32 3931092270, ; 233: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 76
	i32 3945713374, ; 234: System.Data.DataSetExtensions.dll => 0xeb2ecede => 113
	i32 3955647286, ; 235: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 42
	i32 4025784931, ; 236: System.Memory => 0xeff49a63 => 29
	i32 4073602200, ; 237: System.Threading.dll => 0xf2ce3c98 => 103
	i32 4105002889, ; 238: Mono.Security.dll => 0xf4ad5f89 => 119
	i32 4151237749, ; 239: System.Core => 0xf76edc75 => 27
	i32 4182413190, ; 240: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 69
	i32 4184283386, ; 241: FFImageLoading.Platform.dll => 0xf96718fa => 12
	i32 4260525087, ; 242: System.Buffers => 0xfdf2741f => 26
	i32 4292120959 ; 243: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 69
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [244 x i32] [
	i32 67, i32 96, i32 6, i32 19, i32 91, i32 81, i32 81, i32 48, ; 0..7
	i32 82, i32 46, i32 101, i32 62, i32 109, i32 118, i32 51, i32 66, ; 8..15
	i32 60, i32 38, i32 30, i32 64, i32 24, i32 29, i32 1, i32 50, ; 16..23
	i32 90, i32 97, i32 59, i32 17, i32 28, i32 60, i32 71, i32 108, ; 24..31
	i32 12, i32 112, i32 104, i32 116, i32 32, i32 55, i32 87, i32 43, ; 32..39
	i32 37, i32 22, i32 115, i32 114, i32 78, i32 109, i32 20, i32 96, ; 40..47
	i32 19, i32 64, i32 13, i32 97, i32 80, i32 42, i32 93, i32 68, ; 48..55
	i32 28, i32 15, i32 0, i32 85, i32 75, i32 18, i32 8, i32 43, ; 56..63
	i32 86, i32 23, i32 57, i32 107, i32 100, i32 121, i32 80, i32 4, ; 64..71
	i32 72, i32 52, i32 33, i32 104, i32 94, i32 115, i32 41, i32 11, ; 72..79
	i32 106, i32 5, i32 56, i32 35, i32 70, i32 89, i32 54, i32 2, ; 80..87
	i32 106, i32 34, i32 83, i32 95, i32 51, i32 102, i32 101, i32 24, ; 88..95
	i32 6, i32 98, i32 47, i32 5, i32 82, i32 27, i32 59, i32 10, ; 96..103
	i32 70, i32 95, i32 76, i32 10, i32 90, i32 8, i32 94, i32 44, ; 104..111
	i32 4, i32 3, i32 73, i32 26, i32 68, i32 65, i32 18, i32 34, ; 112..119
	i32 31, i32 61, i32 25, i32 92, i32 108, i32 2, i32 85, i32 71, ; 120..127
	i32 73, i32 63, i32 79, i32 39, i32 9, i32 102, i32 77, i32 105, ; 128..135
	i32 22, i32 50, i32 110, i32 14, i32 113, i32 67, i32 1, i32 86, ; 136..143
	i32 54, i32 58, i32 66, i32 100, i32 83, i32 99, i32 38, i32 41, ; 144..151
	i32 91, i32 88, i32 52, i32 36, i32 11, i32 88, i32 84, i32 20, ; 152..159
	i32 9, i32 98, i32 117, i32 17, i32 89, i32 31, i32 40, i32 57, ; 160..167
	i32 62, i32 13, i32 21, i32 74, i32 99, i32 35, i32 120, i32 15, ; 168..175
	i32 111, i32 56, i32 103, i32 119, i32 47, i32 120, i32 45, i32 21, ; 176..183
	i32 105, i32 55, i32 111, i32 44, i32 75, i32 61, i32 23, i32 53, ; 184..191
	i32 14, i32 79, i32 33, i32 121, i32 36, i32 110, i32 58, i32 16, ; 192..199
	i32 112, i32 49, i32 45, i32 37, i32 92, i32 7, i32 117, i32 107, ; 200..207
	i32 77, i32 78, i32 93, i32 40, i32 65, i32 16, i32 118, i32 46, ; 208..215
	i32 49, i32 3, i32 114, i32 0, i32 39, i32 74, i32 32, i32 25, ; 216..223
	i32 63, i32 48, i32 72, i32 30, i32 84, i32 53, i32 7, i32 116, ; 224..231
	i32 87, i32 76, i32 113, i32 42, i32 29, i32 103, i32 119, i32 27, ; 232..239
	i32 69, i32 12, i32 26, i32 69 ; 240..243
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
