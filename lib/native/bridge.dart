import 'dart:ffi';
import 'dart:io';

final DynamicLibrary bridgeLib =
    Platform.isLinux ? DynamicLibrary.open('libbridge.so') : DynamicLibrary.process();

typedef StartBridgeC = Int32 Function();
typedef StartBridgeDart = int Function();

final StartBridgeDart startBridge =
    bridgeLib.lookup<NativeFunction<StartBridgeC>>('main').asFunction();
