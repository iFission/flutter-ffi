import 'dart:ffi';
import 'dart:io';

typedef sum_func = Int32 Function(Int32 a, Int32 b);
typedef Sum = int Function(int a, int b);

final DynamicLibrary nativeLib = Platform.isAndroid
    ? DynamicLibrary.open("libapi_util.so")
    : DynamicLibrary.process();

final Sum sum =
    nativeLib.lookup<NativeFunction<sum_func>>('get_sum').asFunction<Sum>();
