.class public Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr$IBTDeviceConnectedChangedListener;,
        Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr$DeviceListSpec;
    }
.end annotation


# static fields
.field private static final A2DP_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

.field private static final HEADSET_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

.field private static final TAG:Ljava/lang/String; = "SkyworthBlueToothMgr"

.field private static mInstance:Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private mBleA2dpService:Landroid/bluetooth/BluetoothA2dp;

.field private final mBleA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBleHeadsetService:Landroid/bluetooth/BluetoothHeadset;

.field private final mBleHeadsetServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mConnectedDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr$DeviceListSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr$IBTDeviceConnectedChangedListener;

.field private final mLock:Ljava/lang/Object;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mConnectedDevices:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mLock:Ljava/lang/Object;

    .line 30
    new-instance v0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr$1;

    invoke-direct {v0, p0}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr$1;-><init>(Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;)V

    iput-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mBleA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 44
    new-instance v0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr$2;

    invoke-direct {v0, p0}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr$2;-><init>(Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;)V

    iput-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mBleHeadsetServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-void
.end method

.method public static synthetic access$002(Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mBleA2dpService:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method public static synthetic access$102(Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mBleHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;)Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr$IBTDeviceConnectedChangedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mListener:Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr$IBTDeviceConnectedChangedListener;

    return-object p0
.end method

.method private getA2DPAddress()V
    .locals 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mBleA2dpService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 7
    :try_start_1
    sget-object v2, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const-string v3, "SkyworthBlueToothMgr"

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A2DP disconnectBtAudioDevice:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v3, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mBleA2dpService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const-string v4, "getPriority"

    const/4 v5, 0x1

    :try_start_3
    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/bluetooth/BluetoothDevice;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 9
    iget-object v4, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mBleA2dpService:Landroid/bluetooth/BluetoothA2dp;

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v1, v6, v8

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const-string v4, "SkyworthBlueToothMgr"

    .line 10
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "A2DP disconnectBtAudioDevice getPriority:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x64

    const/4 v4, 0x2

    if-le v2, v3, :cond_0

    .line 12
    iget-object v2, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mBleA2dpService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    const-string v6, "setPriority"

    :try_start_5
    new-array v7, v4, [Ljava/lang/Class;

    const-class v9, Landroid/bluetooth/BluetoothDevice;

    aput-object v9, v7, v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v5

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 13
    iget-object v6, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mBleA2dpService:Landroid/bluetooth/BluetoothA2dp;

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v1, v7, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v5

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_0
    iget-object v2, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mBleA2dpService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    const-string v3, "disconnect"

    :try_start_6
    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/bluetooth/BluetoothDevice;

    aput-object v7, v6, v8

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 16
    iget-object v3, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mBleA2dpService:Landroid/bluetooth/BluetoothA2dp;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v2, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mConnectedDevices:Ljava/util/List;

    new-instance v3, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr$DeviceListSpec;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v5, v1}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr$DeviceListSpec;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    .line 19
    :catch_1
    move-exception v1

    :goto_1
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 23
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method private getHeadsetAddress()V
    .locals 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mBleHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 7
    :try_start_1
    sget-object v2, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const-string v3, "SkyworthBlueToothMgr"

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Headset disconnectBtAudioDevice:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v3, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mBleHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const-string v4, "getPriority"

    const/4 v5, 0x1

    :try_start_3
    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/bluetooth/BluetoothDevice;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 9
    iget-object v4, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mBleHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v1, v6, v8

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const-string v4, "SkyworthBlueToothMgr"

    .line 10
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Headset disconnectBtAudioDevice getPriority:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_0

    .line 12
    iget-object v2, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mBleHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    const-string v4, "setPriority"

    const/4 v6, 0x2

    :try_start_5
    new-array v7, v6, [Ljava/lang/Class;

    const-class v9, Landroid/bluetooth/BluetoothDevice;

    aput-object v9, v7, v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v5

    invoke-virtual {v2, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 13
    iget-object v4, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mBleHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v5

    invoke-virtual {v2, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_0
    iget-object v2, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mBleHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    const-string v3, "disconnect"

    :try_start_6
    new-array v4, v5, [Ljava/lang/Class;

    const-class v6, Landroid/bluetooth/BluetoothDevice;

    aput-object v6, v4, v8

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 16
    iget-object v3, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mBleHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v8

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v2, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mConnectedDevices:Ljava/util/List;

    new-instance v3, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr$DeviceListSpec;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v5, v4, v1}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr$DeviceListSpec;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    .line 19
    :catch_1
    move-exception v1

    :goto_1
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 23
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;
    .locals 2

    const-class v0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mInstance:Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;

    invoke-direct {v1}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;-><init>()V

    sput-object v1, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mInstance:Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;

    .line 4
    :cond_0
    sget-object v1, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mInstance:Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 0
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private initBluetooth()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mBleA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 4
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mBleHeadsetServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_0
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.BluetoothAdapter.STATE_OFF"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.BluetoothAdapter.STATE_ON"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public connectBtAudioDevice()V
    .locals 9

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "SkyworthBlueToothMgr"

    const-string v2, "start connectBtAudioDevice"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 6
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 7
    iget-object v3, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr$DeviceListSpec;

    .line 8
    iget v4, v3, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr$DeviceListSpec;->mDeviceType:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    iget-object v5, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mBleA2dpService:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v5, :cond_0

    .line 9
    iget-object v4, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, v3, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :try_start_1
    sget-object v4, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, "SkyworthBlueToothMgr"

    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "A2DP connectBtAudioDevice:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v4, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mBleA2dpService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v5, "connect"

    :try_start_3
    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/bluetooth/BluetoothDevice;

    aput-object v8, v7, v1

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 14
    iget-object v5, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mBleA2dpService:Landroid/bluetooth/BluetoothA2dp;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_1

    .line 16
    :catch_1
    move-exception v3

    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_0
    if-ne v4, v6, :cond_1

    .line 18
    iget-object v4, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mBleHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v4, :cond_1

    .line 19
    iget-object v4, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, v3, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 22
    :try_start_5
    sget-object v4, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v5, "SkyworthBlueToothMgr"

    :try_start_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Headset connectBtAudioDevice:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v4, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mBleHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4
    :try_end_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v5, "connect"

    :try_start_7
    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/bluetooth/BluetoothDevice;

    aput-object v8, v7, v1

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 24
    iget-object v5, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mBleHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :catch_2
    move-exception v3

    goto :goto_2

    .line 26
    :catch_3
    move-exception v3

    :goto_2
    :try_start_8
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 30
    :cond_2
    iget-object v1, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 32
    :cond_3
    monitor-exit v0

    goto :goto_4

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v1

    :cond_4
    :goto_4
    return-void
.end method

.method public deinit()V
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "SkyworthBlueToothMgr"

    const-string v2, "deinit"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->unregisterReceiver()V

    .line 4
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 6
    iput-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mContext:Landroid/content/Context;

    .line 7
    sput-object v0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mInstance:Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;

    return-void
.end method

.method public disconnectBtAudioDevice()V
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "SkyworthBlueToothMgr"

    const-string v2, "start disconnectBtAudioDevice"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mBleA2dpService:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    invoke-direct {p0}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->getA2DPAddress()V

    .line 8
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 11
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 12
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mBleHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 14
    :try_start_1
    invoke-direct {p0}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->getHeadsetAddress()V

    .line 15
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    :cond_1
    :goto_1
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "SkyworthBlueToothMgr"

    const-string v2, "init"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mContext:Landroid/content/Context;

    .line 3
    iget-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr$3;

    invoke-direct {p1, p0}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr$3;-><init>(Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;)V

    iput-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 18
    :cond_0
    invoke-direct {p0}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->initBluetooth()V

    .line 19
    invoke-direct {p0}, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->registerReceiver()V

    return-void
.end method

.method public isAddressNull()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isConnectAudioBt()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 3
    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :cond_2
    :goto_1
    return v1
.end method

.method public setListener(Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr$IBTDeviceConnectedChangedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr;->mListener:Lcom/loostone/libtuning/channel/skyworth/util/SkyworthBlueToothMgr$IBTDeviceConnectedChangedListener;

    return-void
.end method
