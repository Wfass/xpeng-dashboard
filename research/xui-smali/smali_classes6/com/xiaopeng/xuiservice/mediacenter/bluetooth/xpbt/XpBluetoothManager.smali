.class public Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;
.super Ljava/lang/Object;
.source "XpBluetoothManager.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager$Holder;
    }
.end annotation


# static fields
.field private static final S_V2:I = 0x20

.field private static final TAG:Ljava/lang/String; = "XpBluetoothManager"


# instance fields
.field private mBluetoothCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mXA2dpSinkListener:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkListener;

.field private mXA2dpSinkManager:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManager;

.field mXA2dpSourceListener:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSourceListener;

.field mXAvrcpListener:Lcom/xiaopeng/lib_xpbt/avrcp/XAvrcpListener;

.field private mXBluetoothAdapter:Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;

.field mXBluetoothListener:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;

.field private mXBluetoothManager:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManager;

.field mXHfpListener:Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;

.field private mXHfpManager:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->mBluetoothCallbacks:Ljava/util/Set;

    .line 188
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager$1;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->mXA2dpSinkListener:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkListener;

    .line 206
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager$2;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->mXA2dpSourceListener:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSourceListener;

    .line 210
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager$3;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->mXHfpListener:Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;

    .line 238
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager$4;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->mXAvrcpListener:Lcom/xiaopeng/lib_xpbt/avrcp/XAvrcpListener;

    .line 242
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager$5;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->mXBluetoothListener:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->mContext:Landroid/content/Context;

    .line 39
    invoke-static {}, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->getInstance()Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->mXBluetoothAdapter:Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;

    .line 40
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->initXBluetoothAdapter(Landroid/content/Context;)V

    .line 41
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/-$$Lambda$XpBluetoothManager$2cupuv-cYlbgH5PxBe4uZkhzjK4;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/-$$Lambda$XpBluetoothManager$2cupuv-cYlbgH5PxBe4uZkhzjK4;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->addBootCompleteTask(Ljava/lang/Runnable;)V

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->mXBluetoothAdapter:Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->mXBluetoothListener:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->getBluetoothManager(Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;)Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->mXBluetoothManager:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManager;

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->mXBluetoothAdapter:Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->mXA2dpSinkListener:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->getA2DPSinkManager(Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkListener;)Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->mXA2dpSinkManager:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManager;

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->mXBluetoothAdapter:Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->mXHfpListener:Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->getHfpManager(Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;)Lcom/xiaopeng/lib_xpbt/hfp/XHfpManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->mXHfpManager:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManager;

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager$1;

    .line 27
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->mBluetoothCallbacks:Ljava/util/Set;

    return-object v0
.end method

.method public static get()Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;
    .locals 1

    .line 58
    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager$Holder;->instance:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;

    return-object v0
.end method

.method private initXBluetoothAdapter(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    const-string v0, "XpBluetoothManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "version code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->mXBluetoothAdapter:Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->setSdkMode(I)V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->mXBluetoothAdapter:Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib_xpbt/XBluetoothAdapter;->init(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->initXBluetoothAdapter(Landroid/content/Context;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getA2dpConnectState(Ljava/lang/String;)I
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->mXA2dpSinkManager:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManager;

    invoke-interface {v0}, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManager;->getA2dpConnectionState()I

    move-result v0

    .line 96
    .local v0, "state":I
    const-string v1, "XpBluetoothManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getA2dpConnectionState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return v0
.end method

.method public getA2dpConnectedAddress()Ljava/lang/String;
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->mXA2dpSinkManager:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManager;

    invoke-interface {v0}, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManager;->getA2dpConnectedAddress()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "connectedAddress":Ljava/lang/String;
    const-string v1, "XpBluetoothManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getA2dpConnectedAddress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-object v0
.end method

.method public getHfpConnectState(Ljava/lang/String;)I
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->mXHfpManager:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManager;

    invoke-interface {v0}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManager;->getHfpConnectionState()I

    move-result v0

    .line 103
    .local v0, "state":I
    const-string v1, "XpBluetoothManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHfpConnectState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return v0
.end method

.method public getHfpConnectedAddress()Ljava/lang/String;
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->mXHfpManager:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManager;

    invoke-interface {v0}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManager;->getHfpConnectedAddress()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "connectedAddress":Ljava/lang/String;
    const-string v1, "XpBluetoothManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHfpConnectedAddress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-object v0
.end method

.method public getMeteData()Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;
    .locals 1

    .line 180
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayState()I
    .locals 1

    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public getPosition()[J
    .locals 1

    .line 175
    const/4 v0, 0x0

    new-array v0, v0, [J

    return-object v0
.end method

.method public isA2dpConnected(Ljava/lang/String;)Z
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->mXA2dpSinkManager:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManager;

    invoke-interface {v0}, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManager;->getA2dpConnectedAddress()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "connectedAddress":Ljava/lang/String;
    const-string v1, "XpBluetoothManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getA2dpConnectedAddress params:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " &connectedAddress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isHfpConnected(Ljava/lang/String;)Z
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->mXHfpManager:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManager;

    invoke-interface {v0}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManager;->getHfpConnectedAddress()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "connectedAddress":Ljava/lang/String;
    const-string v1, "XpBluetoothManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHfpConnectedAddress params:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " &connectedAddress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public next()V
    .locals 2

    .line 165
    const-string v0, "XpBluetoothManager"

    const-string v1, "avrcp next"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public pause()V
    .locals 2

    .line 160
    const-string v0, "XpBluetoothManager"

    const-string v1, "avrcp pause"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public pauseRender()Z
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->mXA2dpSinkManager:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManager;

    invoke-interface {v0}, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManager;->pauseRender()Z

    move-result v0

    .line 143
    .local v0, "result":Z
    const-string v1, "XpBluetoothManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pauseRender result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return v0
.end method

.method public play()V
    .locals 2

    .line 155
    const-string v0, "XpBluetoothManager"

    const-string v1, "avrcp play"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public previous()V
    .locals 2

    .line 170
    const-string v0, "XpBluetoothManager"

    const-string v1, "avrcp previous"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public registerCallback(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothCallback;

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->mBluetoothCallbacks:Ljava/util/Set;

    monitor-enter v0

    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->mBluetoothCallbacks:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    monitor-exit v0

    .line 70
    return-void

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestA2dpConnect(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 115
    const-string v0, "XpBluetoothManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestA2dpConnect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->mXA2dpSinkManager:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManager;

    invoke-interface {v0, p1}, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManager;->connect(Ljava/lang/String;)Z

    .line 117
    return-void
.end method

.method public requestA2dpDisconnect(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 109
    const-string v0, "XpBluetoothManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestA2dpDisconnect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->mXA2dpSinkManager:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManager;

    invoke-interface {v0, p1}, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManager;->disconnect(Ljava/lang/String;)Z

    .line 111
    return-void
.end method

.method public setLocalVolume(F)V
    .locals 3
    .param p1, "volume"    # F

    .line 149
    const-string v0, "XpBluetoothManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLocalVolume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->mXA2dpSinkManager:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManager;

    invoke-interface {v0, p1}, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManager;->setLocalVolume(F)Z

    .line 151
    return-void
.end method

.method public startRender()Z
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->mXA2dpSinkManager:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManager;

    invoke-interface {v0}, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManager;->startRender()Z

    move-result v0

    .line 136
    .local v0, "result":Z
    const-string v1, "XpBluetoothManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startRender result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return v0
.end method

.method public unregisterCallback(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/IBluetoothCallback;

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->mBluetoothCallbacks:Ljava/util/Set;

    monitor-enter v0

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/xpbt/XpBluetoothManager;->mBluetoothCallbacks:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 76
    monitor-exit v0

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
