.class public abstract Landroid/hardware/input/IInputManager$Stub;
.super Landroid/os/Binder;
.source "IInputManager.java"

# interfaces
.implements Landroid/hardware/input/IInputManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/IInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/IInputManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.input.IInputManager"

.field static final TRANSACTION_addKeyboardLayoutForInputDevice:I = 0x12

.field static final TRANSACTION_addPortAssociation:I = 0x25

.field static final TRANSACTION_addUniqueIdAssociation:I = 0x27

.field static final TRANSACTION_cancelVibrate:I = 0x1a

.field static final TRANSACTION_closeLightSession:I = 0x33

.field static final TRANSACTION_disableInputDevice:I = 0x5

.field static final TRANSACTION_disableSensor:I = 0x2d

.field static final TRANSACTION_dispatchGenericMotionToListener:I = 0x39

.field static final TRANSACTION_dispatchInputEventToListener:I = 0x40

.field static final TRANSACTION_dispatchInterceptEventToListener:I = 0x43

.field static final TRANSACTION_dispatchKeyEventToListener:I = 0x37

.field static final TRANSACTION_dispatchKeyToListener:I = 0x35

.field static final TRANSACTION_dispatchLimitMotionEventToListener:I = 0x46

.field static final TRANSACTION_enableInputDevice:I = 0x4

.field static final TRANSACTION_enableSensor:I = 0x2c

.field static final TRANSACTION_flushSensor:I = 0x2e

.field static final TRANSACTION_getBatteryCapacity:I = 0x20

.field static final TRANSACTION_getBatteryStatus:I = 0x1f

.field static final TRANSACTION_getCurrentKeyboardLayoutForInputDevice:I = 0xf

.field static final TRANSACTION_getEnabledKeyboardLayoutsForInputDevice:I = 0x11

.field static final TRANSACTION_getInputDevice:I = 0x1

.field static final TRANSACTION_getInputDeviceIds:I = 0x2

.field static final TRANSACTION_getInputPolicy:I = 0x3b

.field static final TRANSACTION_getKeyboardLayout:I = 0xe

.field static final TRANSACTION_getKeyboardLayouts:I = 0xc

.field static final TRANSACTION_getKeyboardLayoutsForInputDevice:I = 0xd

.field static final TRANSACTION_getLightState:I = 0x30

.field static final TRANSACTION_getLights:I = 0x2f

.field static final TRANSACTION_getSensorList:I = 0x29

.field static final TRANSACTION_getTouchCalibrationForInputDevice:I = 0xa

.field static final TRANSACTION_getVibratorIds:I = 0x1b

.field static final TRANSACTION_hasKeys:I = 0x6

.field static final TRANSACTION_injectInputEvent:I = 0x8

.field static final TRANSACTION_isInTabletMode:I = 0x15

.field static final TRANSACTION_isInputDeviceEnabled:I = 0x3

.field static final TRANSACTION_isMicMuted:I = 0x17

.field static final TRANSACTION_isVibrating:I = 0x1c

.field static final TRANSACTION_monitorGestureInput:I = 0x24

.field static final TRANSACTION_openLightSession:I = 0x32

.field static final TRANSACTION_registerGlobalKeyInterceptListener:I = 0x47

.field static final TRANSACTION_registerInputDevicesChangedListener:I = 0x14

.field static final TRANSACTION_registerInputListener:I = 0x3e

.field static final TRANSACTION_registerInterceptListener:I = 0x41

.field static final TRANSACTION_registerKeyListener:I = 0x36

.field static final TRANSACTION_registerLimitMotionEventListener:I = 0x44

.field static final TRANSACTION_registerListener:I = 0x34

.field static final TRANSACTION_registerMotionListener:I = 0x38

.field static final TRANSACTION_registerSensorListener:I = 0x2a

.field static final TRANSACTION_registerSpecialKeyInterceptListener:I = 0x49

.field static final TRANSACTION_registerTabletModeChangedListener:I = 0x16

.field static final TRANSACTION_registerVibratorStateListener:I = 0x1d

.field static final TRANSACTION_removeKeyboardLayoutForInputDevice:I = 0x13

.field static final TRANSACTION_removePortAssociation:I = 0x26

.field static final TRANSACTION_removeUniqueIdAssociation:I = 0x28

.field static final TRANSACTION_requestPointerCapture:I = 0x23

.field static final TRANSACTION_setCurrentKeyboardLayoutForInputDevice:I = 0x10

.field static final TRANSACTION_setCustomPointerIcon:I = 0x22

.field static final TRANSACTION_setInputDevicePolicy:I = 0x3d

.field static final TRANSACTION_setInputPolicy:I = 0x3a

.field static final TRANSACTION_setInputSourcePolicy:I = 0x3c

.field static final TRANSACTION_setLightStates:I = 0x31

.field static final TRANSACTION_setPointerIconType:I = 0x21

.field static final TRANSACTION_setTouchCalibrationForInputDevice:I = 0xb

.field static final TRANSACTION_tryPointerSpeed:I = 0x7

.field static final TRANSACTION_unregisterGlobalKeyInterceptListener:I = 0x48

.field static final TRANSACTION_unregisterInputListener:I = 0x3f

.field static final TRANSACTION_unregisterInterceptListener:I = 0x42

.field static final TRANSACTION_unregisterLimitMotionEventListener:I = 0x45

.field static final TRANSACTION_unregisterSensorListener:I = 0x2b

.field static final TRANSACTION_unregisterSpecialKeyInterceptListener:I = 0x4a

.field static final TRANSACTION_unregisterVibratorStateListener:I = 0x1e

.field static final TRANSACTION_verifyInputEvent:I = 0x9

.field static final TRANSACTION_vibrate:I = 0x18

.field static final TRANSACTION_vibrateCombined:I = 0x19


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 294
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.hardware.input.IInputManager"

    .line 295
    invoke-virtual {p0, p0, v0}, Landroid/hardware/input/IInputManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.hardware.input.IInputManager"

    .line 306
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 307
    instance-of v1, v0, Landroid/hardware/input/IInputManager;

    if-eqz v1, :cond_1

    .line 308
    check-cast v0, Landroid/hardware/input/IInputManager;

    return-object v0

    .line 310
    :cond_1
    new-instance v0, Landroid/hardware/input/IInputManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/hardware/input/IInputManager;
    .locals 1

    .line 3182
    sget-object v0, Landroid/hardware/input/IInputManager$Stub$Proxy;->sDefaultImpl:Landroid/hardware/input/IInputManager;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/hardware/input/IInputManager;)Z
    .locals 1

    .line 3172
    sget-object v0, Landroid/hardware/input/IInputManager$Stub$Proxy;->sDefaultImpl:Landroid/hardware/input/IInputManager;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 3176
    sput-object p0, Landroid/hardware/input/IInputManager$Stub$Proxy;->sDefaultImpl:Landroid/hardware/input/IInputManager;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 3173
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "android.hardware.input.IInputManager"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_1c

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1254
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 1241
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1243
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 1245
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/xiaopeng/IXPKeyListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/IXPKeyListener;

    move-result-object p4

    .line 1247
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1248
    invoke-virtual {p0, p1, p4, p2}, Landroid/hardware/input/IInputManager$Stub;->unregisterSpecialKeyInterceptListener([ILcom/xiaopeng/IXPKeyListener;Ljava/lang/String;)V

    .line 1249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1228
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1230
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 1232
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/xiaopeng/IXPKeyListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/IXPKeyListener;

    move-result-object p4

    .line 1234
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1235
    invoke-virtual {p0, p1, p4, p2}, Landroid/hardware/input/IInputManager$Stub;->registerSpecialKeyInterceptListener([ILcom/xiaopeng/IXPKeyListener;Ljava/lang/String;)V

    .line 1236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1217
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1219
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/IXPKeyListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/IXPKeyListener;

    move-result-object p1

    .line 1221
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1222
    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/IInputManager$Stub;->unregisterGlobalKeyInterceptListener(Lcom/xiaopeng/IXPKeyListener;Ljava/lang/String;)V

    .line 1223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1206
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1208
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/IXPKeyListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/IXPKeyListener;

    move-result-object p1

    .line 1210
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1211
    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/IInputManager$Stub;->registerGlobalKeyInterceptListener(Lcom/xiaopeng/IXPKeyListener;Ljava/lang/String;)V

    .line 1212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1197
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1199
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1200
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->dispatchLimitMotionEventToListener(Ljava/lang/String;)V

    .line 1201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1186
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1188
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/input/ILimitMotionEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/input/ILimitMotionEventListener;

    move-result-object p1

    .line 1190
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1191
    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/IInputManager$Stub;->unregisterLimitMotionEventListener(Lcom/xiaopeng/input/ILimitMotionEventListener;Ljava/lang/String;)V

    .line 1192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1175
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1177
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/input/ILimitMotionEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/input/ILimitMotionEventListener;

    move-result-object p1

    .line 1179
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1180
    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/IInputManager$Stub;->registerLimitMotionEventListener(Lcom/xiaopeng/input/ILimitMotionEventListener;Ljava/lang/String;)V

    .line 1181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1162
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1168
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1169
    invoke-virtual {p0, p1, p4, p2}, Landroid/hardware/input/IInputManager$Stub;->dispatchInterceptEventToListener(IILjava/lang/String;)V

    .line 1170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1153
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1155
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/input/IInterceptEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/input/IInterceptEventListener;

    move-result-object p1

    .line 1156
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->unregisterInterceptListener(Lcom/xiaopeng/input/IInterceptEventListener;)V

    .line 1157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1144
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1146
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/input/IInterceptEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/input/IInterceptEventListener;

    move-result-object p1

    .line 1147
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->registerInterceptListener(Lcom/xiaopeng/input/IInterceptEventListener;)V

    .line 1148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1128
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 1131
    sget-object p1, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/view/InputEvent;

    .line 1137
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1138
    invoke-virtual {p0, v3, p1}, Landroid/hardware/input/IInputManager$Stub;->dispatchInputEventToListener(Landroid/view/InputEvent;Ljava/lang/String;)V

    .line 1139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1117
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1119
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/input/IInputEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/input/IInputEventListener;

    move-result-object p1

    .line 1121
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1122
    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/IInputManager$Stub;->unregisterInputListener(Lcom/xiaopeng/input/IInputEventListener;Ljava/lang/String;)V

    .line 1123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1106
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1108
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/input/IInputEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/input/IInputEventListener;

    move-result-object p1

    .line 1110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1111
    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/IInputManager$Stub;->registerInputListener(Lcom/xiaopeng/input/IInputEventListener;Ljava/lang/String;)V

    .line 1112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1092
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1094
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 1095
    sget-object p1, Lcom/xiaopeng/input/InputDevicePolicyList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/xiaopeng/input/InputDevicePolicyList;

    .line 1100
    :cond_1
    invoke-virtual {p0, v3}, Landroid/hardware/input/IInputManager$Stub;->setInputDevicePolicy(Lcom/xiaopeng/input/InputDevicePolicyList;)V

    .line 1101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1081
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1083
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1085
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 1086
    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/IInputManager$Stub;->setInputSourcePolicy(II)V

    .line 1087
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1073
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getInputPolicy()I

    move-result p1

    .line 1075
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1076
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 1064
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1066
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1067
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->setInputPolicy(I)V

    .line 1068
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1048
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1050
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 1051
    sget-object p1, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/view/MotionEvent;

    .line 1057
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1058
    invoke-virtual {p0, v3, p1}, Landroid/hardware/input/IInputManager$Stub;->dispatchGenericMotionToListener(Landroid/view/MotionEvent;I)V

    .line 1059
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1035
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/IXPMotionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/IXPMotionListener;

    move-result-object p1

    .line 1039
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1041
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_3

    move v2, v0

    .line 1042
    :cond_3
    invoke-virtual {p0, p1, p4, v2}, Landroid/hardware/input/IInputManager$Stub;->registerMotionListener(Lcom/xiaopeng/IXPMotionListener;Ljava/lang/String;Z)V

    .line 1043
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1019
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1021
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 1022
    sget-object p1, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/view/KeyEvent;

    .line 1028
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1029
    invoke-virtual {p0, v3, p1}, Landroid/hardware/input/IInputManager$Stub;->dispatchKeyEventToListener(Landroid/view/KeyEvent;I)V

    .line 1030
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1006
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1008
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/IXpengKeyListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/IXpengKeyListener;

    move-result-object p1

    .line 1010
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1012
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_5

    move v2, v0

    .line 1013
    :cond_5
    invoke-virtual {p0, p1, p4, v2}, Landroid/hardware/input/IInputManager$Stub;->registerKeyListener(Lcom/xiaopeng/IXpengKeyListener;Ljava/lang/String;Z)V

    .line 1014
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 990
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 992
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    .line 993
    sget-object p1, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/view/KeyEvent;

    .line 999
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 1000
    invoke-virtual {p0, v3, p1}, Landroid/hardware/input/IInputManager$Stub;->dispatchKeyToListener(Landroid/view/KeyEvent;I)V

    .line 1001
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 977
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 979
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/IXPKeyListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/IXPKeyListener;

    move-result-object p1

    .line 981
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 983
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_7

    move v2, v0

    .line 984
    :cond_7
    invoke-virtual {p0, p1, p4, v2}, Landroid/hardware/input/IInputManager$Stub;->registerListener(Lcom/xiaopeng/IXPKeyListener;Ljava/lang/String;Z)V

    .line 985
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 966
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 968
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 970
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 971
    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/IInputManager$Stub;->closeLightSession(ILandroid/os/IBinder;)V

    .line 972
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 953
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 955
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 957
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 959
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 960
    invoke-virtual {p0, p1, p4, p2}, Landroid/hardware/input/IInputManager$Stub;->openLightSession(ILjava/lang/String;Landroid/os/IBinder;)V

    .line 961
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 938
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 940
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 942
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p4

    .line 944
    sget-object v1, Landroid/hardware/lights/LightState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/lights/LightState;

    .line 946
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 947
    invoke-virtual {p0, p1, p4, v1, p2}, Landroid/hardware/input/IInputManager$Stub;->setLightStates(I[I[Landroid/hardware/lights/LightState;Landroid/os/IBinder;)V

    .line 948
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 920
    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 922
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 924
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 925
    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/IInputManager$Stub;->getLightState(II)Landroid/hardware/lights/LightState;

    move-result-object p1

    .line 926
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_8

    .line 928
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 929
    invoke-virtual {p1, p3, v0}, Landroid/hardware/lights/LightState;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 932
    :cond_8
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v0

    .line 910
    :pswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 912
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 913
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->getLights(I)Ljava/util/List;

    move-result-object p1

    .line 914
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 915
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v0

    .line 898
    :pswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 900
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 902
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 903
    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/IInputManager$Stub;->flushSensor(II)Z

    move-result p1

    .line 904
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 887
    :pswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 889
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 891
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 892
    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/IInputManager$Stub;->disableSensor(II)V

    .line 893
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 871
    :pswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 873
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 875
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 877
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 879
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 880
    invoke-virtual {p0, p1, p4, v1, p2}, Landroid/hardware/input/IInputManager$Stub;->enableSensor(IIII)Z

    move-result p1

    .line 881
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 882
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 862
    :pswitch_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 864
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/input/IInputSensorEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputSensorEventListener;

    move-result-object p1

    .line 865
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->unregisterSensorListener(Landroid/hardware/input/IInputSensorEventListener;)V

    .line 866
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 852
    :pswitch_20
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 854
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/input/IInputSensorEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputSensorEventListener;

    move-result-object p1

    .line 855
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->registerSensorListener(Landroid/hardware/input/IInputSensorEventListener;)Z

    move-result p1

    .line 856
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 857
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 842
    :pswitch_21
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 844
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 845
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->getSensorList(I)[Landroid/hardware/input/InputSensorInfo;

    move-result-object p1

    .line 846
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 847
    invoke-virtual {p3, p1, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v0

    .line 833
    :pswitch_22
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 835
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 836
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->removeUniqueIdAssociation(Ljava/lang/String;)V

    .line 837
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 822
    :pswitch_23
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 824
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 826
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 827
    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/IInputManager$Stub;->addUniqueIdAssociation(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 813
    :pswitch_24
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 815
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 816
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->removePortAssociation(Ljava/lang/String;)V

    .line 817
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 802
    :pswitch_25
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 804
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 806
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 807
    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/IInputManager$Stub;->addPortAssociation(Ljava/lang/String;I)V

    .line 808
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 784
    :pswitch_26
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 786
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 788
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 789
    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/IInputManager$Stub;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object p1

    .line 790
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_9

    .line 792
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 793
    invoke-virtual {p1, p3, v0}, Landroid/view/InputMonitor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 796
    :cond_9
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v0

    .line 774
    :pswitch_27
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 776
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 778
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_a

    move v2, v0

    .line 779
    :cond_a
    invoke-virtual {p0, p1, v2}, Landroid/hardware/input/IInputManager$Stub;->requestPointerCapture(Landroid/os/IBinder;Z)V

    return v0

    .line 760
    :pswitch_28
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 762
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_b

    .line 763
    sget-object p1, Landroid/view/PointerIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/view/PointerIcon;

    .line 768
    :cond_b
    invoke-virtual {p0, v3}, Landroid/hardware/input/IInputManager$Stub;->setCustomPointerIcon(Landroid/view/PointerIcon;)V

    .line 769
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 751
    :pswitch_29
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 753
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 754
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->setPointerIconType(I)V

    .line 755
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 741
    :pswitch_2a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 743
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 744
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->getBatteryCapacity(I)I

    move-result p1

    .line 745
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 746
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 731
    :pswitch_2b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 733
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 734
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->getBatteryStatus(I)I

    move-result p1

    .line 735
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 736
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 719
    :pswitch_2c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 721
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 723
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/os/IVibratorStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorStateListener;

    move-result-object p2

    .line 724
    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/IInputManager$Stub;->unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

    move-result p1

    .line 725
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 726
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 707
    :pswitch_2d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 711
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/os/IVibratorStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorStateListener;

    move-result-object p2

    .line 712
    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/IInputManager$Stub;->registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

    move-result p1

    .line 713
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 697
    :pswitch_2e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 699
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 700
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->isVibrating(I)Z

    move-result p1

    .line 701
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 687
    :pswitch_2f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 690
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->getVibratorIds(I)[I

    move-result-object p1

    .line 691
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    return v0

    .line 676
    :pswitch_30
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 678
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 680
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 681
    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/IInputManager$Stub;->cancelVibrate(ILandroid/os/IBinder;)V

    .line 682
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 658
    :pswitch_31
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 660
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 662
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_c

    .line 663
    sget-object p4, Landroid/os/CombinedVibration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    move-object v3, p4

    check-cast v3, Landroid/os/CombinedVibration;

    .line 669
    :cond_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 670
    invoke-virtual {p0, p1, v3, p2}, Landroid/hardware/input/IInputManager$Stub;->vibrateCombined(ILandroid/os/CombinedVibration;Landroid/os/IBinder;)V

    .line 671
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 640
    :pswitch_32
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 644
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_d

    .line 645
    sget-object p4, Landroid/os/VibrationEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    move-object v3, p4

    check-cast v3, Landroid/os/VibrationEffect;

    .line 651
    :cond_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 652
    invoke-virtual {p0, p1, v3, p2}, Landroid/hardware/input/IInputManager$Stub;->vibrate(ILandroid/os/VibrationEffect;Landroid/os/IBinder;)V

    .line 653
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 632
    :pswitch_33
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->isMicMuted()I

    move-result p1

    .line 634
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 623
    :pswitch_34
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/input/ITabletModeChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/ITabletModeChangedListener;

    move-result-object p1

    .line 626
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V

    .line 627
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 615
    :pswitch_35
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->isInTabletMode()I

    move-result p1

    .line 617
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 606
    :pswitch_36
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/input/IInputDevicesChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputDevicesChangedListener;

    move-result-object p1

    .line 609
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V

    .line 610
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 590
    :pswitch_37
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_e

    .line 593
    sget-object p1, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/hardware/input/InputDeviceIdentifier;

    .line 599
    :cond_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 600
    invoke-virtual {p0, v3, p1}, Landroid/hardware/input/IInputManager$Stub;->removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 601
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 574
    :pswitch_38
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_f

    .line 577
    sget-object p1, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/hardware/input/InputDeviceIdentifier;

    .line 583
    :cond_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 584
    invoke-virtual {p0, v3, p1}, Landroid/hardware/input/IInputManager$Stub;->addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 585
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 559
    :pswitch_39
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_10

    .line 562
    sget-object p1, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/hardware/input/InputDeviceIdentifier;

    .line 567
    :cond_10
    invoke-virtual {p0, v3}, Landroid/hardware/input/IInputManager$Stub;->getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;

    move-result-object p1

    .line 568
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v0

    .line 543
    :pswitch_3a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_11

    .line 546
    sget-object p1, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/hardware/input/InputDeviceIdentifier;

    .line 552
    :cond_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 553
    invoke-virtual {p0, v3, p1}, Landroid/hardware/input/IInputManager$Stub;->setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 554
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 528
    :pswitch_3b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_12

    .line 531
    sget-object p1, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/hardware/input/InputDeviceIdentifier;

    .line 536
    :cond_12
    invoke-virtual {p0, v3}, Landroid/hardware/input/IInputManager$Stub;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object p1

    .line 537
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 512
    :pswitch_3c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 515
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object p1

    .line 516
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_13

    .line 518
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    invoke-virtual {p1, p3, v0}, Landroid/hardware/input/KeyboardLayout;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 522
    :cond_13
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v0

    .line 497
    :pswitch_3d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_14

    .line 500
    sget-object p1, Landroid/hardware/input/InputDeviceIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/hardware/input/InputDeviceIdentifier;

    .line 505
    :cond_14
    invoke-virtual {p0, v3}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;

    move-result-object p1

    .line 506
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    invoke-virtual {p3, p1, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v0

    .line 489
    :pswitch_3e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;

    move-result-object p1

    .line 491
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    invoke-virtual {p3, p1, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v0

    .line 471
    :pswitch_3f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 475
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 477
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_15

    .line 478
    sget-object v1, Landroid/hardware/input/TouchCalibration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/hardware/input/TouchCalibration;

    .line 483
    :cond_15
    invoke-virtual {p0, p1, p4, v3}, Landroid/hardware/input/IInputManager$Stub;->setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V

    .line 484
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 453
    :pswitch_40
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 457
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 458
    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/IInputManager$Stub;->getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;

    move-result-object p1

    .line 459
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_16

    .line 461
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    invoke-virtual {p1, p3, v0}, Landroid/hardware/input/TouchCalibration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 465
    :cond_16
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v0

    .line 432
    :pswitch_41
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_17

    .line 435
    sget-object p1, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/view/InputEvent;

    .line 440
    :cond_17
    invoke-virtual {p0, v3}, Landroid/hardware/input/IInputManager$Stub;->verifyInputEvent(Landroid/view/InputEvent;)Landroid/view/VerifiedInputEvent;

    move-result-object p1

    .line 441
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_18

    .line 443
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    invoke-virtual {p1, p3, v0}, Landroid/view/VerifiedInputEvent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 447
    :cond_18
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return v0

    .line 415
    :pswitch_42
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_19

    .line 418
    sget-object p1, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/view/InputEvent;

    .line 424
    :cond_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 425
    invoke-virtual {p0, v3, p1}, Landroid/hardware/input/IInputManager$Stub;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result p1

    .line 426
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 406
    :pswitch_43
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 409
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->tryPointerSpeed(I)V

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 383
    :pswitch_44
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 389
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-gez p2, :cond_1a

    goto :goto_5

    .line 396
    :cond_1a
    new-array v3, p2, [Z

    .line 398
    :goto_5
    invoke-virtual {p0, p1, p4, v1, v3}, Landroid/hardware/input/IInputManager$Stub;->hasKeys(II[I[Z)Z

    move-result p1

    .line 399
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    return v0

    .line 374
    :pswitch_45
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 377
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->disableInputDevice(I)V

    .line 378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 365
    :pswitch_46
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 368
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->enableInputDevice(I)V

    .line 369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 355
    :pswitch_47
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 358
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->isInputDeviceEnabled(I)Z

    move-result p1

    .line 359
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 347
    :pswitch_48
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getInputDeviceIds()[I

    move-result-object p1

    .line 349
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    return v0

    .line 331
    :pswitch_49
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 334
    invoke-virtual {p0, p1}, Landroid/hardware/input/IInputManager$Stub;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object p1

    .line 335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1b

    .line 337
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    invoke-virtual {p1, p3, v0}, Landroid/view/InputDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 341
    :cond_1b
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    return v0

    .line 323
    :cond_1c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
