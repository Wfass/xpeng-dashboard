.class public Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;
.super Ljava/lang/Object;
.source "DeviceShareManager.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/XUIManagerBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager$DeviceShareManagerHolder;
    }
.end annotation


# static fields
.field public static final CONNECT_STATE_CARLINK:I = 0x2

.field public static final CONNECT_STATE_DEFAULT:I = 0x3

.field public static final CONNECT_STATE_HICAR:I = 0x1

.field public static final MODULE_NAME:Ljava/lang/String; = "DeviceShareManager"

.field public static final PACKAGE_DEFAULT:Ljava/lang/String; = "mobile.default"

.field public static final PACKAGE_PREFIX:Ljava/lang/String; = "mobile."

.field public static final SHARE_PROTOCOL_CARLINK:I = 0x2

.field public static final SHARE_PROTOCOL_HICAR:I = 0x1

.field public static final SHARE_VERIFY_WITH_PIN_CODE:I = 0x1

.field public static final SHARE_VERIFY_WITH_QR_CODE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DeviceShareManager"

.field private static final busServiceName:Ljava/lang/String; = "deviceShare"

.field private static mServiceName:Ljava/lang/String; = "DeviceShareManager"


# instance fields
.field private mConnectedDevice:Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;

.field private final mDeviceShareListenerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/xiaopeng/xuimanager/deviceshare/IDeviceShareListener;",
            ">;"
        }
    .end annotation
.end field

.field private pipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

.field private final pipebusClientListener:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$IPipebusClientListener;

.field private serverDisconnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->serverDisconnected:Z

    .line 96
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->mDeviceShareListenerSet:Ljava/util/Set;

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->pipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    .line 98
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->mConnectedDevice:Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;

    .line 100
    new-instance v0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager$1;-><init>(Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->pipebusClientListener:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$IPipebusClientListener;

    .line 183
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "deviceShare"

    .line 182
    invoke-static {v1, v0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClientManager;->createBusClient(Ljava/lang/String;Landroid/content/Context;)Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->pipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    .line 184
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->addLogTagSuffix(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager$1;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;)Ljava/util/Set;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->mDeviceShareListenerSet:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;)Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->mConnectedDevice:Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;

    return-object p0
.end method

.method static synthetic access$202(Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;)Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->mConnectedDevice:Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;

    return-object p1
.end method

.method public static getInstance()Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;
    .locals 1

    .line 188
    invoke-static {}, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager$DeviceShareManagerHolder;->access$400()Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getConnectedDevice$1(I)[Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;
    .locals 0

    .line 349
    new-array p0, p0, [Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;

    return-object p0
.end method

.method static synthetic lambda$getShareApps$2(I)[Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;
    .locals 0

    .line 453
    new-array p0, p0, [Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;

    return-object p0
.end method

.method static synthetic lambda$getTrustedDevices$0(I)[Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;
    .locals 0

    .line 271
    new-array p0, p0, [Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;

    return-object p0
.end method


# virtual methods
.method public connectDevice(Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;)I
    .locals 4

    .line 304
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 305
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setParcelableArray([Landroid/os/Parcelable;)V

    .line 307
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->pipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    sget-object v1, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->MODULE_NAME:Ljava/lang/String;

    const-string v2, "connectDevice"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result p1

    return p1
.end method

.method public deleteTrustedDevice(Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;)I
    .locals 4

    .line 288
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 289
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setParcelableArray([Landroid/os/Parcelable;)V

    .line 291
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->pipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    sget-object v1, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->MODULE_NAME:Ljava/lang/String;

    const-string v2, "deleteTrustedDevice"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result p1

    return p1
.end method

.method public disConnectDevice(Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;)I
    .locals 4

    .line 320
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 321
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setParcelableArray([Landroid/os/Parcelable;)V

    .line 323
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->pipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    sget-object v1, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->MODULE_NAME:Ljava/lang/String;

    const-string v2, "disConnectDevice"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result p1

    return p1
.end method

.method public getConnectedDevice(I)[Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;
    .locals 4

    .line 335
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 336
    new-instance v1, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    .line 338
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setIntArray([I)V

    .line 339
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->pipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    sget-object v2, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->MODULE_NAME:Ljava/lang/String;

    const-string v3, "getConnectedDevice"

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 343
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableArray()[Landroid/os/Parcelable;

    move-result-object p1

    if-nez p1, :cond_0

    .line 345
    sget-object p1, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->TAG:Ljava/lang/String;

    const-string v1, "getConnected device null"

    invoke-static {p1, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 349
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcom/xiaopeng/xuimanager/deviceshare/-$$Lambda$DeviceShareManager$G3SUiuWHdZ_JUwEt3F-quP7fCSM;->INSTANCE:Lcom/xiaopeng/xuimanager/deviceshare/-$$Lambda$DeviceShareManager$G3SUiuWHdZ_JUwEt3F-quP7fCSM;

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 351
    sget-object v1, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConnectedDevice e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    .line 355
    :cond_1
    sget-object v1, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConnectedDevice,ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getConnectedDeviceState()I
    .locals 5

    .line 369
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 371
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->pipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    sget-object v2, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->MODULE_NAME:Ljava/lang/String;

    const-string v3, "getConnectedDeviceState"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v1

    if-nez v1, :cond_0

    .line 374
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getInt()I

    move-result v0

    return v0

    .line 376
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConnectedDeviceState,ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    return v0
.end method

.method public getProtocolInfo(I)Lcom/xiaopeng/xuimanager/deviceshare/data/ProtocolInfo;
    .locals 5

    .line 404
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 405
    new-instance v1, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    .line 407
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setIntArray([I)V

    .line 408
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->pipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    sget-object v2, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "getProtocolInfo"

    invoke-virtual {p1, v2, v4, v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 412
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableArray()[Landroid/os/Parcelable;

    move-result-object p1

    if-nez p1, :cond_0

    .line 414
    sget-object p1, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->TAG:Ljava/lang/String;

    const-string v1, "getProtocolInfo null"

    invoke-static {p1, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 418
    :cond_0
    :try_start_0
    aget-object p1, p1, v3

    check-cast p1, Lcom/xiaopeng/xuimanager/deviceshare/data/ProtocolInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 420
    sget-object v1, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProtocolInfo e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    .line 424
    :cond_1
    sget-object v1, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProtocolInfo,ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getRunningXpPackageInfo()Lcom/xiaopeng/app/xpPackageInfo;
    .locals 5

    .line 520
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 521
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->pipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    sget-object v2, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->MODULE_NAME:Ljava/lang/String;

    const-string v3, "getRunningXpPackageInfo"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v1

    if-nez v1, :cond_1

    .line 525
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableArray()[Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 527
    sget-object v0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->TAG:Ljava/lang/String;

    const-string v1, "getRunningXpPackageInfo null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_0
    const/4 v1, 0x0

    .line 531
    :try_start_0
    aget-object v0, v0, v1

    check-cast v0, Lcom/xiaopeng/app/xpPackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 533
    sget-object v1, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRunningXpPackageInfo e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v4

    .line 537
    :cond_1
    sget-object v0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRunningXpPackageInfo,ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 212
    sget-object v0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->mServiceName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 213
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->mServiceName:Ljava/lang/String;

    .line 215
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getShareApps(Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;)[Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;
    .locals 4

    .line 437
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 438
    new-instance v1, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 440
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setParcelableArray([Landroid/os/Parcelable;)V

    .line 443
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->pipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    sget-object v2, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->MODULE_NAME:Ljava/lang/String;

    const-string v3, "getShareApps"

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 447
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableArray()[Landroid/os/Parcelable;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 453
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcom/xiaopeng/xuimanager/deviceshare/-$$Lambda$DeviceShareManager$Q44trRnQgUjzpooKAOhWqfrZd8s;->INSTANCE:Lcom/xiaopeng/xuimanager/deviceshare/-$$Lambda$DeviceShareManager$Q44trRnQgUjzpooKAOhWqfrZd8s;

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 455
    sget-object v1, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getShareApps e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    .line 459
    :cond_2
    sget-object v1, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getShareApps, ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getSupportedProtocols()[I
    .locals 5

    .line 387
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 388
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->pipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    sget-object v2, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->MODULE_NAME:Ljava/lang/String;

    const-string v3, "getSupportedProtocols"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v1

    if-nez v1, :cond_0

    .line 392
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getIntArray()[I

    move-result-object v4

    :cond_0
    return-object v4
.end method

.method public getTrustedDevices()[Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;
    .locals 5

    .line 260
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 261
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->pipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    sget-object v2, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->MODULE_NAME:Ljava/lang/String;

    const-string v3, "getTrustedDevices"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v1

    if-nez v1, :cond_1

    .line 265
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableArray()[Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 267
    sget-object v0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->TAG:Ljava/lang/String;

    const-string v1, "getTrustedDevices, no device"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 271
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuimanager/deviceshare/-$$Lambda$DeviceShareManager$KgIFWDCPuo_Fc7E7vlgz1vubYm0;->INSTANCE:Lcom/xiaopeng/xuimanager/deviceshare/-$$Lambda$DeviceShareManager$KgIFWDCPuo_Fc7E7vlgz1vubYm0;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 273
    sget-object v1, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTrustedDevices e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v4
.end method

.method public init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public onServerDisconnected()V
    .locals 2

    .line 220
    sget-object v0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->TAG:Ljava/lang/String;

    const-string v1, "onServerDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 221
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->serverDisconnected:Z

    return-void
.end method

.method public onXUIConnected(Landroid/os/IBinder;)V
    .locals 0

    .line 198
    iget-boolean p1, p0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->serverDisconnected:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 202
    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->serverDisconnected:Z

    return-void
.end method

.method public onXUIDisconnected()V
    .locals 2

    .line 193
    sget-object v0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->TAG:Ljava/lang/String;

    const-string v1, "onXUIDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized registerListener(Lcom/xiaopeng/xuimanager/deviceshare/IDeviceShareListener;)I
    .locals 3

    monitor-enter p0

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->mDeviceShareListenerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->pipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    sget-object v1, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->MODULE_NAME:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->pipebusClientListener:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$IPipebusClientListener;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->registerModuleListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$IPipebusClientListener;)V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->mDeviceShareListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 239
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0

    .line 207
    sput-object p1, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->mServiceName:Ljava/lang/String;

    return-void
.end method

.method public startApp(Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;)I
    .locals 4

    .line 472
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 473
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setParcelableArray([Landroid/os/Parcelable;)V

    .line 475
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->pipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    sget-object v1, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->MODULE_NAME:Ljava/lang/String;

    const-string v2, "startApp"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result p1

    return p1
.end method

.method public startApp(Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;I)I
    .locals 4

    .line 489
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 490
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setParcelableArray([Landroid/os/Parcelable;)V

    new-array p1, v1, [I

    aput p2, p1, v3

    .line 491
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setIntArray([I)V

    .line 493
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->pipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    sget-object p2, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->MODULE_NAME:Ljava/lang/String;

    const-string v1, "startApp"

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v0, v2}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result p1

    return p1
.end method

.method public startManagerView(II)I
    .locals 3

    .line 551
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    .line 552
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setIntArray([I)V

    .line 554
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->pipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    sget-object p2, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->MODULE_NAME:Ljava/lang/String;

    const-string v1, "startManagerView"

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v0, v2}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result p1

    return p1
.end method

.method public stopApp(Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;)I
    .locals 4

    .line 506
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 507
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setParcelableArray([Landroid/os/Parcelable;)V

    .line 509
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->pipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    sget-object v1, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->MODULE_NAME:Ljava/lang/String;

    const-string v2, "stopApp"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result p1

    return p1
.end method

.method public declared-synchronized unRegisterListener(Lcom/xiaopeng/xuimanager/deviceshare/IDeviceShareListener;)I
    .locals 2

    monitor-enter p0

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->mDeviceShareListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 249
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->mDeviceShareListenerSet:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 250
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->pipeBusClient:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    sget-object v0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->MODULE_NAME:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager;->pipebusClientListener:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$IPipebusClientListener;

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->unRegisterModuleListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$IPipebusClientListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 p1, 0x0

    .line 252
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
