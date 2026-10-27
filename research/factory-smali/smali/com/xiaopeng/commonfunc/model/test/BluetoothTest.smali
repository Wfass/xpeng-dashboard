.class public Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;
.super Ljava/lang/Object;
.source "BluetoothTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/commonfunc/model/test/BluetoothTest$BluetoothReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothTest"


# instance fields
.field private mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private mA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAvrcpController:Landroid/bluetooth/BluetoothAvrcpController;

.field private mBluetoothCallback:Lcom/xiaopeng/commonfunc/model/test/callback/BluetoothCallback;

.field private mBluetoothReceiver:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest$BluetoothReceiver;

.field mContext:Landroid/content/Context;

.field private mHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

.field private mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

.field private mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

.field private mHidHost:Landroid/bluetooth/BluetoothHidHost;

.field private mMapClient:Landroid/bluetooth/BluetoothMapClient;

.field private mPan:Landroid/bluetooth/BluetoothPan;

.field private mPbap:Landroid/bluetooth/BluetoothPbap;

.field private mPbapClient:Landroid/bluetooth/BluetoothPbapClient;

.field private mSap:Landroid/bluetooth/BluetoothSap;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 40
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    .line 41
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mPbap:Landroid/bluetooth/BluetoothPbap;

    .line 42
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mPbapClient:Landroid/bluetooth/BluetoothPbapClient;

    .line 43
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    .line 44
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAvrcpController:Landroid/bluetooth/BluetoothAvrcpController;

    .line 45
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 46
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    .line 47
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 48
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mHidHost:Landroid/bluetooth/BluetoothHidHost;

    .line 49
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mMapClient:Landroid/bluetooth/BluetoothMapClient;

    .line 50
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mPan:Landroid/bluetooth/BluetoothPan;

    .line 51
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mSap:Landroid/bluetooth/BluetoothSap;

    .line 150
    new-instance v0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest$1;-><init>(Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;)V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 61
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 40
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    .line 41
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mPbap:Landroid/bluetooth/BluetoothPbap;

    .line 42
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mPbapClient:Landroid/bluetooth/BluetoothPbapClient;

    .line 43
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    .line 44
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAvrcpController:Landroid/bluetooth/BluetoothAvrcpController;

    .line 45
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 46
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    .line 47
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 48
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mHidHost:Landroid/bluetooth/BluetoothHidHost;

    .line 49
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mMapClient:Landroid/bluetooth/BluetoothMapClient;

    .line 50
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mPan:Landroid/bluetooth/BluetoothPan;

    .line 51
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mSap:Landroid/bluetooth/BluetoothSap;

    .line 150
    new-instance v1, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest$1;-><init>(Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;)V

    iput-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 55
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mContext:Landroid/content/Context;

    .line 56
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 57
    new-instance v1, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest$BluetoothReceiver;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest$BluetoothReceiver;-><init>(Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;Lcom/xiaopeng/commonfunc/model/test/BluetoothTest$1;)V

    iput-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mBluetoothReceiver:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest$BluetoothReceiver;

    .line 58
    return-void
.end method

.method static synthetic access$1002(Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;Landroid/bluetooth/BluetoothHidHost;)Landroid/bluetooth/BluetoothHidHost;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHidHost;

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mHidHost:Landroid/bluetooth/BluetoothHidHost;

    return-object p1
.end method

.method static synthetic access$102(Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;Landroid/bluetooth/BluetoothPbapClient;)Landroid/bluetooth/BluetoothPbapClient;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothPbapClient;

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mPbapClient:Landroid/bluetooth/BluetoothPbapClient;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothPan;

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mPan:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;Landroid/bluetooth/BluetoothHidDevice;)Landroid/bluetooth/BluetoothHidDevice;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHidDevice;

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;Landroid/bluetooth/BluetoothAvrcpController;)Landroid/bluetooth/BluetoothAvrcpController;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothAvrcpController;

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAvrcpController:Landroid/bluetooth/BluetoothAvrcpController;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;)Lcom/xiaopeng/commonfunc/model/test/callback/BluetoothCallback;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mBluetoothCallback:Lcom/xiaopeng/commonfunc/model/test/callback/BluetoothCallback;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;Landroid/content/Intent;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # I

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->handleConnectionAction(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$202(Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadsetClient;

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    return-object p1
.end method

.method static synthetic access$302(Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothA2dpSink;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothA2dpSink;

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    return-object p1
.end method

.method static synthetic access$402(Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadset;

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$502(Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothA2dp;

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$602(Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothPbap;

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mPbap:Landroid/bluetooth/BluetoothPbap;

    return-object p1
.end method

.method static synthetic access$702(Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/BluetoothSap;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothSap;

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mSap:Landroid/bluetooth/BluetoothSap;

    return-object p1
.end method

.method static synthetic access$802(Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;Landroid/bluetooth/BluetoothHearingAid;)Landroid/bluetooth/BluetoothHearingAid;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHearingAid;

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    return-object p1
.end method

.method static synthetic access$902(Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;Landroid/bluetooth/BluetoothMapClient;)Landroid/bluetooth/BluetoothMapClient;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothMapClient;

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mMapClient:Landroid/bluetooth/BluetoothMapClient;

    return-object p1
.end method

.method private handleConnectionAction(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "profile"    # I

    .line 345
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 346
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v1, "android.bluetooth.profile.extra.STATE"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 347
    .local v1, "state":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 348
    invoke-virtual {p0, p2}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->getProfileProxy(I)V

    .line 350
    :cond_0
    const-string v2, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    const/high16 v3, -0x80000000

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 351
    .local v2, "preState":I
    iget-object v3, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mBluetoothCallback:Lcom/xiaopeng/commonfunc/model/test/callback/BluetoothCallback;

    invoke-interface {v3, v0, v1, v2, p2}, Lcom/xiaopeng/commonfunc/model/test/callback/BluetoothCallback;->onBtConnectStatus(Landroid/bluetooth/BluetoothDevice;III)V

    .line 352
    return-void
.end method


# virtual methods
.method public cancelDiscovery()Z
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    move-result v0

    return v0
.end method

.method public closeProfileProxy()V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mPbapClient:Landroid/bluetooth/BluetoothPbapClient;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mPbapClient:Landroid/bluetooth/BluetoothPbapClient;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_3

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_4

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 95
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mPbap:Landroid/bluetooth/BluetoothPbap;

    if-eqz v0, :cond_5

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mPbap:Landroid/bluetooth/BluetoothPbap;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 98
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mSap:Landroid/bluetooth/BluetoothSap;

    if-eqz v0, :cond_6

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mSap:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 101
    :cond_6
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    if-eqz v0, :cond_7

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v1, 0x15

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 104
    :cond_7
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mMapClient:Landroid/bluetooth/BluetoothMapClient;

    if-eqz v0, :cond_8

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mMapClient:Landroid/bluetooth/BluetoothMapClient;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 107
    :cond_8
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mHidHost:Landroid/bluetooth/BluetoothHidHost;

    if-eqz v0, :cond_9

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mHidHost:Landroid/bluetooth/BluetoothHidHost;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 110
    :cond_9
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v0, :cond_a

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 113
    :cond_a
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    if-eqz v0, :cond_b

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v1, 0x13

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 116
    :cond_b
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAvrcpController:Landroid/bluetooth/BluetoothAvrcpController;

    if-eqz v0, :cond_c

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAvrcpController:Landroid/bluetooth/BluetoothAvrcpController;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 119
    :cond_c
    return-void
.end method

.method public connectProfile(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profile"    # I

    .line 500
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    const-string v0, "BluetoothTest"

    const-string v1, "connectProfile bluetooth not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    return-void

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 505
    const-string v0, "BluetoothTest"

    const-string v1, "connectProfile bluetooth not bonded with device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    return-void

    .line 508
    :cond_1
    const/4 v0, 0x0

    .line 509
    .local v0, "proxy":Landroid/bluetooth/BluetoothProfile;
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 532
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    .line 533
    goto :goto_0

    .line 544
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 545
    goto :goto_0

    .line 535
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mMapClient:Landroid/bluetooth/BluetoothMapClient;

    .line 536
    goto :goto_0

    .line 511
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mPbapClient:Landroid/bluetooth/BluetoothPbapClient;

    .line 512
    goto :goto_0

    .line 514
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    .line 515
    goto :goto_0

    .line 547
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAvrcpController:Landroid/bluetooth/BluetoothAvrcpController;

    .line 548
    goto :goto_0

    .line 517
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    .line 518
    goto :goto_0

    .line 529
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mSap:Landroid/bluetooth/BluetoothSap;

    .line 530
    goto :goto_0

    .line 526
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mPbap:Landroid/bluetooth/BluetoothPbap;

    .line 527
    goto :goto_0

    .line 541
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mPan:Landroid/bluetooth/BluetoothPan;

    .line 542
    goto :goto_0

    .line 538
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mHidHost:Landroid/bluetooth/BluetoothHidHost;

    .line 539
    goto :goto_0

    .line 523
    :pswitch_c
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 524
    goto :goto_0

    .line 520
    :pswitch_d
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 521
    nop

    .line 552
    :goto_0
    if-nez v0, :cond_2

    .line 553
    const-string v1, "BluetoothTest"

    const-string v2, "connectProfile proxy == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    return-void

    .line 557
    :cond_2
    invoke-interface {v0, p1}, Landroid/bluetooth/BluetoothProfile;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 558
    .local v1, "state":I
    const-string v2, "BluetoothTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectProfile state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    packed-switch v1, :pswitch_data_1

    .line 598
    const-string v2, "BluetoothTest"

    const-string v3, "connectProfile invalid state"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 561
    :pswitch_e
    const-string v2, "BluetoothTest"

    const-string v3, "connectProfile STATE_CONNECTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    goto/16 :goto_1

    .line 564
    :pswitch_f
    const-string v2, "BluetoothTest"

    const-string v3, "connectProfile STATE_CONNECTING"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    goto/16 :goto_1

    .line 568
    :pswitch_10
    const-string v2, "BluetoothTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectProfile STATE_DISCONNECTED or STATE_DISCONNECTING profile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const/16 v2, 0x11

    if-ne p2, v2, :cond_3

    .line 570
    move-object v2, v0

    check-cast v2, Landroid/bluetooth/BluetoothPbapClient;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothPbapClient;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    goto/16 :goto_1

    .line 571
    :cond_3
    const/16 v2, 0x10

    if-ne p2, v2, :cond_4

    .line 572
    move-object v2, v0

    check-cast v2, Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    goto/16 :goto_1

    .line 573
    :cond_4
    const/16 v2, 0xb

    if-ne p2, v2, :cond_5

    .line 574
    move-object v2, v0

    check-cast v2, Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothA2dpSink;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    .line 575
    :cond_5
    const/4 v2, 0x1

    if-ne p2, v2, :cond_6

    .line 576
    move-object v2, v0

    check-cast v2, Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothHeadset;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    .line 577
    :cond_6
    const/4 v2, 0x2

    if-ne p2, v2, :cond_7

    .line 578
    move-object v2, v0

    check-cast v2, Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothA2dp;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    .line 579
    :cond_7
    const/4 v2, 0x6

    if-ne p2, v2, :cond_8

    goto :goto_1

    .line 581
    :cond_8
    const/16 v2, 0xa

    if-ne p2, v2, :cond_9

    .line 582
    move-object v2, v0

    check-cast v2, Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothSap;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    .line 583
    :cond_9
    const/16 v2, 0x15

    if-ne p2, v2, :cond_a

    .line 584
    move-object v2, v0

    check-cast v2, Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothHearingAid;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    .line 585
    :cond_a
    const/16 v2, 0x12

    if-ne p2, v2, :cond_b

    .line 586
    move-object v2, v0

    check-cast v2, Landroid/bluetooth/BluetoothMapClient;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothMapClient;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    .line 587
    :cond_b
    const/4 v2, 0x4

    if-ne p2, v2, :cond_c

    .line 588
    move-object v2, v0

    check-cast v2, Landroid/bluetooth/BluetoothHidHost;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothHidHost;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    .line 589
    :cond_c
    const/4 v2, 0x5

    if-ne p2, v2, :cond_d

    .line 590
    move-object v2, v0

    check-cast v2, Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothPan;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    .line 591
    :cond_d
    const/16 v2, 0x13

    if-ne p2, v2, :cond_e

    .line 592
    move-object v2, v0

    check-cast v2, Landroid/bluetooth/BluetoothHidDevice;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothHidDevice;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    .line 593
    :cond_e
    const/16 v2, 0xc

    .line 601
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_10
    .end packed-switch
.end method

.method public disable()Z
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    return v0

    .line 369
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public disconnectDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 604
    const/4 v0, 0x1

    .local v0, "profile":I
    :goto_0
    const/16 v1, 0x15

    if-gt v0, v1, :cond_0

    .line 605
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->disconnectProfile(Landroid/bluetooth/BluetoothDevice;I)V

    .line 604
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 607
    .end local v0    # "profile":I
    :cond_0
    return-void
.end method

.method public disconnectProfile(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profile"    # I

    .line 610
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 611
    const-string v0, "BluetoothTest"

    const-string v1, "disconnectProfile bluetooth not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    return-void

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 615
    const-string v0, "BluetoothTest"

    const-string v1, "disconnectProfile bluetooth not bonded with device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    return-void

    .line 618
    :cond_1
    const/4 v0, 0x0

    .line 619
    .local v0, "proxy":Landroid/bluetooth/BluetoothProfile;
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 642
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    .line 643
    goto :goto_0

    .line 654
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 655
    goto :goto_0

    .line 645
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mMapClient:Landroid/bluetooth/BluetoothMapClient;

    .line 646
    goto :goto_0

    .line 621
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mPbapClient:Landroid/bluetooth/BluetoothPbapClient;

    .line 622
    goto :goto_0

    .line 624
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    .line 625
    goto :goto_0

    .line 657
    :pswitch_6
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAvrcpController:Landroid/bluetooth/BluetoothAvrcpController;

    .line 658
    goto :goto_0

    .line 627
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    .line 628
    goto :goto_0

    .line 639
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mSap:Landroid/bluetooth/BluetoothSap;

    .line 640
    goto :goto_0

    .line 636
    :pswitch_9
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mPbap:Landroid/bluetooth/BluetoothPbap;

    .line 637
    goto :goto_0

    .line 651
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mPan:Landroid/bluetooth/BluetoothPan;

    .line 652
    goto :goto_0

    .line 648
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mHidHost:Landroid/bluetooth/BluetoothHidHost;

    .line 649
    goto :goto_0

    .line 633
    :pswitch_c
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 634
    goto :goto_0

    .line 630
    :pswitch_d
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 631
    nop

    .line 662
    :goto_0
    if-nez v0, :cond_2

    .line 663
    const-string v1, "BluetoothTest"

    const-string v2, "disconnectProfile proxy == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    return-void

    .line 667
    :cond_2
    invoke-interface {v0, p1}, Landroid/bluetooth/BluetoothProfile;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 668
    .local v1, "state":I
    const-string v2, "BluetoothTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnectProfile state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    packed-switch v1, :pswitch_data_1

    .line 708
    const-string v2, "BluetoothTest"

    const-string v3, "disconnectProfile invalid state"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 705
    :pswitch_e
    const-string v2, "BluetoothTest"

    const-string v3, "disconnectProfile STATE_DISCONNECTING"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    goto/16 :goto_1

    .line 672
    :pswitch_f
    const-string v2, "BluetoothTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnectProfile STATE_CONNECTED or STATE_CONNECTING profile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/16 v2, 0x11

    if-ne p2, v2, :cond_3

    .line 674
    move-object v2, v0

    check-cast v2, Landroid/bluetooth/BluetoothPbapClient;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothPbapClient;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto/16 :goto_1

    .line 675
    :cond_3
    const/16 v2, 0x10

    if-ne p2, v2, :cond_4

    .line 676
    move-object v2, v0

    check-cast v2, Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto/16 :goto_1

    .line 677
    :cond_4
    const/16 v2, 0xb

    if-ne p2, v2, :cond_5

    .line 678
    move-object v2, v0

    check-cast v2, Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothA2dpSink;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto/16 :goto_1

    .line 679
    :cond_5
    const/4 v2, 0x1

    if-ne p2, v2, :cond_6

    .line 680
    move-object v2, v0

    check-cast v2, Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothHeadset;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    .line 681
    :cond_6
    const/4 v2, 0x2

    if-ne p2, v2, :cond_7

    .line 682
    move-object v2, v0

    check-cast v2, Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothA2dp;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    .line 683
    :cond_7
    const/4 v2, 0x6

    if-ne p2, v2, :cond_8

    .line 684
    move-object v2, v0

    check-cast v2, Landroid/bluetooth/BluetoothPbap;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothPbap;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    .line 685
    :cond_8
    const/16 v2, 0xa

    if-ne p2, v2, :cond_9

    .line 686
    move-object v2, v0

    check-cast v2, Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothSap;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    .line 687
    :cond_9
    const/16 v2, 0x15

    if-ne p2, v2, :cond_a

    .line 688
    move-object v2, v0

    check-cast v2, Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothHearingAid;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    .line 689
    :cond_a
    const/16 v2, 0x12

    if-ne p2, v2, :cond_b

    .line 690
    move-object v2, v0

    check-cast v2, Landroid/bluetooth/BluetoothMapClient;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothMapClient;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    .line 691
    :cond_b
    const/4 v2, 0x4

    if-ne p2, v2, :cond_c

    .line 692
    move-object v2, v0

    check-cast v2, Landroid/bluetooth/BluetoothHidHost;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothHidHost;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    .line 693
    :cond_c
    const/4 v2, 0x5

    if-ne p2, v2, :cond_d

    .line 694
    move-object v2, v0

    check-cast v2, Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothPan;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    .line 695
    :cond_d
    const/16 v2, 0x13

    if-ne p2, v2, :cond_e

    .line 696
    move-object v2, v0

    check-cast v2, Landroid/bluetooth/BluetoothHidDevice;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothHidDevice;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    .line 697
    :cond_e
    const/16 v2, 0xc

    goto :goto_1

    .line 702
    :pswitch_10
    const-string v2, "BluetoothTest"

    const-string v3, "disconnectProfile STATE_DISCONNECTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    nop

    .line 711
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method public enable()Z
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    return v0

    .line 362
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method factoryReset()Z
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->factoryReset()Z

    move-result v0

    return v0
.end method

.method public getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 6

    .line 391
    const/4 v0, 0x0

    .line 392
    .local v0, "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 393
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 394
    .local v1, "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 395
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 396
    const-string v2, "BluetoothTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    move-object v0, v3

    .line 398
    goto :goto_1

    .line 400
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    goto :goto_0

    .line 402
    .end local v1    # "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_1
    :goto_1
    return-object v0
.end method

.method public getConnectedDevicesSize()I
    .locals 7

    .line 377
    const/4 v0, 0x0

    .line 378
    .local v0, "size":I
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 379
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 380
    .local v1, "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 381
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 382
    const-string v4, "BluetoothTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    add-int/lit8 v0, v0, 0x1

    .line 385
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    goto :goto_0

    .line 387
    .end local v1    # "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_1
    return v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "mac":Ljava/lang/String;
    return-object v0
.end method

.method public getProfileProxy(I)V
    .locals 3
    .param p1, "profile"    # I

    .line 73
    const-string v0, "BluetoothTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProfileProxy profile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v0, v1, v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    const-string v0, "BluetoothTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProfileProxy profile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " result = fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    return-void
.end method

.method public getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .line 431
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    return v0
.end method

.method public isBondedDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 427
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDiscovering()Z
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    return v0
.end method

.method public pairOrAcceptPair(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "shouldPair"    # Z

    .line 435
    const-string v0, "BluetoothTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pairOrAcceptPair shouldPair = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " device  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    const-string v0, "BluetoothTest"

    const-string v1, "pairOrAcceptPair Bluetooth is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    return-void

    .line 441
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    .line 442
    .local v0, "state":I
    const-string v1, "BluetoothTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pairOrAcceptPair state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    packed-switch v0, :pswitch_data_0

    .line 467
    const-string v1, "BluetoothTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pairOrAcceptPair invalid state: state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 461
    :pswitch_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 462
    const-string v1, "BluetoothTest"

    const-string v2, "pairOrAcceptPair bluetooth dont bonded with device, but device dont BOND_BONDED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    return-void

    .line 457
    :pswitch_1
    const-string v1, "BluetoothTest"

    const-string v2, "pairOrAcceptPair BOND_BONDING"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    goto :goto_0

    .line 445
    :pswitch_2
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 446
    const-string v1, "BluetoothTest"

    const-string v2, "pairOrAcceptPair bluetooth bonded with device, but device dont BOND_NONE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    return-void

    .line 449
    :cond_1
    if-eqz p2, :cond_2

    .line 450
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v1

    if-nez v1, :cond_2

    .line 451
    const-string v1, "BluetoothTest"

    const-string v2, "pairOrAcceptPair createBond fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    return-void

    .line 470
    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public registerCallback(Lcom/xiaopeng/commonfunc/model/test/callback/BluetoothCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/xiaopeng/commonfunc/model/test/callback/BluetoothCallback;

    .line 65
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mBluetoothCallback:Lcom/xiaopeng/commonfunc/model/test/callback/BluetoothCallback;

    .line 66
    return-void
.end method

.method public registerReceiver()V
    .locals 3

    .line 122
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 123
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string v1, "android.bluetooth.pbapclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v1, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v1, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string v1, "android.bluetooth.sap.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string v1, "android.bluetooth.pbap.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v1, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v1, "android.bluetooth.mapmce.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v1, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v1, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v1, "android.bluetooth.hiddevice.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v1, "android.bluetooth.avrcp-controller.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mBluetoothReceiver:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest$BluetoothReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    return-void
.end method

.method public releaseCallback()V
    .locals 1

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mBluetoothCallback:Lcom/xiaopeng/commonfunc/model/test/callback/BluetoothCallback;

    .line 70
    return-void
.end method

.method public startDiscovery()Z
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v0

    return v0
.end method

.method public unpair(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 473
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    const-string v0, "BluetoothTest"

    const-string v1, "unpair Bluetooth is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    return-void

    .line 478
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    .line 479
    .local v0, "state":I
    const-string v1, "BluetoothTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pairOrAcceptPair state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 489
    :pswitch_0
    const-string v1, "BluetoothTest"

    const-string v2, "unpair bluetooth device state BOND_BONDED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 491
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    goto :goto_0

    .line 485
    :pswitch_1
    const-string v1, "BluetoothTest"

    const-string v2, "unpair bluetooth device state BOND_BONDING"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    .line 487
    goto :goto_0

    .line 482
    :pswitch_2
    const-string v1, "BluetoothTest"

    const-string v2, "unpair bluetooth device state BOND_NONE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return-void

    .line 497
    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public unregisterReceiver()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTest;->mBluetoothReceiver:Lcom/xiaopeng/commonfunc/model/test/BluetoothTest$BluetoothReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 148
    return-void
.end method
