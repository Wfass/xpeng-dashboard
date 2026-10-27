.class public Lcom/xiaopeng/commonfunc/b/g/a;
.super Ljava/lang/Object;
.source "BluetoothTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/commonfunc/b/g/a$a;
    }
.end annotation


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mContext:Landroid/content/Context;

.field private oF:Lcom/xiaopeng/commonfunc/b/g/a/a;

.field private oG:Lcom/xiaopeng/commonfunc/b/g/a$a;

.field private oH:Landroid/bluetooth/BluetoothA2dp;

.field private oI:Landroid/bluetooth/BluetoothA2dpSink;

.field private oJ:Landroid/bluetooth/BluetoothPbap;

.field private oK:Landroid/bluetooth/BluetoothPbapClient;

.field private oL:Landroid/bluetooth/BluetoothHeadsetClient;

.field private oM:Landroid/bluetooth/BluetoothAvrcpController;

.field private oN:Landroid/bluetooth/BluetoothHeadset;

.field private oO:Landroid/bluetooth/BluetoothHearingAid;

.field private oP:Landroid/bluetooth/BluetoothHidDevice;

.field private oQ:Landroid/bluetooth/BluetoothHidHost;

.field private oR:Landroid/bluetooth/BluetoothMapClient;

.field private oS:Landroid/bluetooth/BluetoothPan;

.field private oT:Landroid/bluetooth/BluetoothSap;

.field private oU:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oH:Landroid/bluetooth/BluetoothA2dp;

    .line 40
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oI:Landroid/bluetooth/BluetoothA2dpSink;

    .line 41
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oJ:Landroid/bluetooth/BluetoothPbap;

    .line 42
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oK:Landroid/bluetooth/BluetoothPbapClient;

    .line 43
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oL:Landroid/bluetooth/BluetoothHeadsetClient;

    .line 44
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oM:Landroid/bluetooth/BluetoothAvrcpController;

    .line 45
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oN:Landroid/bluetooth/BluetoothHeadset;

    .line 46
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oO:Landroid/bluetooth/BluetoothHearingAid;

    .line 47
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oP:Landroid/bluetooth/BluetoothHidDevice;

    .line 48
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oQ:Landroid/bluetooth/BluetoothHidHost;

    .line 49
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oR:Landroid/bluetooth/BluetoothMapClient;

    .line 50
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oS:Landroid/bluetooth/BluetoothPan;

    .line 51
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oT:Landroid/bluetooth/BluetoothSap;

    .line 150
    new-instance v0, Lcom/xiaopeng/commonfunc/b/g/a$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/commonfunc/b/g/a$1;-><init>(Lcom/xiaopeng/commonfunc/b/g/a;)V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oU:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 61
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oH:Landroid/bluetooth/BluetoothA2dp;

    .line 40
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oI:Landroid/bluetooth/BluetoothA2dpSink;

    .line 41
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oJ:Landroid/bluetooth/BluetoothPbap;

    .line 42
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oK:Landroid/bluetooth/BluetoothPbapClient;

    .line 43
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oL:Landroid/bluetooth/BluetoothHeadsetClient;

    .line 44
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oM:Landroid/bluetooth/BluetoothAvrcpController;

    .line 45
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oN:Landroid/bluetooth/BluetoothHeadset;

    .line 46
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oO:Landroid/bluetooth/BluetoothHearingAid;

    .line 47
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oP:Landroid/bluetooth/BluetoothHidDevice;

    .line 48
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oQ:Landroid/bluetooth/BluetoothHidHost;

    .line 49
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oR:Landroid/bluetooth/BluetoothMapClient;

    .line 50
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oS:Landroid/bluetooth/BluetoothPan;

    .line 51
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oT:Landroid/bluetooth/BluetoothSap;

    .line 150
    new-instance v1, Lcom/xiaopeng/commonfunc/b/g/a$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/commonfunc/b/g/a$1;-><init>(Lcom/xiaopeng/commonfunc/b/g/a;)V

    iput-object v1, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oU:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 55
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a;->mContext:Landroid/content/Context;

    .line 56
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 57
    new-instance p1, Lcom/xiaopeng/commonfunc/b/g/a$a;

    invoke-direct {p1, p0, v0}, Lcom/xiaopeng/commonfunc/b/g/a$a;-><init>(Lcom/xiaopeng/commonfunc/b/g/a;Lcom/xiaopeng/commonfunc/b/g/a$1;)V

    iput-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oG:Lcom/xiaopeng/commonfunc/b/g/a$a;

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/commonfunc/b/g/a;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oH:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/commonfunc/b/g/a;Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothA2dpSink;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oI:Landroid/bluetooth/BluetoothA2dpSink;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/commonfunc/b/g/a;Landroid/bluetooth/BluetoothAvrcpController;)Landroid/bluetooth/BluetoothAvrcpController;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oM:Landroid/bluetooth/BluetoothAvrcpController;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/commonfunc/b/g/a;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oN:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/commonfunc/b/g/a;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oL:Landroid/bluetooth/BluetoothHeadsetClient;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/commonfunc/b/g/a;Landroid/bluetooth/BluetoothHearingAid;)Landroid/bluetooth/BluetoothHearingAid;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oO:Landroid/bluetooth/BluetoothHearingAid;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/commonfunc/b/g/a;Landroid/bluetooth/BluetoothHidDevice;)Landroid/bluetooth/BluetoothHidDevice;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oP:Landroid/bluetooth/BluetoothHidDevice;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/commonfunc/b/g/a;Landroid/bluetooth/BluetoothHidHost;)Landroid/bluetooth/BluetoothHidHost;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oQ:Landroid/bluetooth/BluetoothHidHost;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/commonfunc/b/g/a;Landroid/bluetooth/BluetoothMapClient;)Landroid/bluetooth/BluetoothMapClient;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oR:Landroid/bluetooth/BluetoothMapClient;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/commonfunc/b/g/a;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oS:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/commonfunc/b/g/a;Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oJ:Landroid/bluetooth/BluetoothPbap;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/commonfunc/b/g/a;Landroid/bluetooth/BluetoothPbapClient;)Landroid/bluetooth/BluetoothPbapClient;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oK:Landroid/bluetooth/BluetoothPbapClient;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/commonfunc/b/g/a;Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/BluetoothSap;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oT:Landroid/bluetooth/BluetoothSap;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/commonfunc/b/g/a;)Lcom/xiaopeng/commonfunc/b/g/a/a;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oF:Lcom/xiaopeng/commonfunc/b/g/a/a;

    return-object p0
.end method

.method private a(Landroid/content/Intent;I)V
    .locals 4

    .line 345
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 346
    const-string v1, "android.bluetooth.profile.extra.STATE"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 347
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 348
    invoke-virtual {p0, p2}, Lcom/xiaopeng/commonfunc/b/g/a;->getProfileProxy(I)V

    .line 350
    :cond_0
    const-string v2, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    const/high16 v3, -0x80000000

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 351
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oF:Lcom/xiaopeng/commonfunc/b/g/a/a;

    invoke-interface {v2, v0, v1, p1, p2}, Lcom/xiaopeng/commonfunc/b/g/a/a;->onBtConnectStatus(Landroid/bluetooth/BluetoothDevice;III)V

    .line 352
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/commonfunc/b/g/a;Landroid/content/Intent;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/commonfunc/b/g/a;->a(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/commonfunc/b/g/a/a;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oF:Lcom/xiaopeng/commonfunc/b/g/a/a;

    .line 66
    return-void
.end method

.method public closeProfileProxy()V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oK:Landroid/bluetooth/BluetoothPbapClient;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oK:Landroid/bluetooth/BluetoothPbapClient;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oL:Landroid/bluetooth/BluetoothHeadsetClient;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oL:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oI:Landroid/bluetooth/BluetoothA2dpSink;

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oI:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oN:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_3

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oN:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oH:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_4

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oH:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 95
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oJ:Landroid/bluetooth/BluetoothPbap;

    if-eqz v0, :cond_5

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oJ:Landroid/bluetooth/BluetoothPbap;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 98
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oT:Landroid/bluetooth/BluetoothSap;

    if-eqz v0, :cond_6

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oT:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 101
    :cond_6
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oO:Landroid/bluetooth/BluetoothHearingAid;

    if-eqz v0, :cond_7

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v1, 0x15

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oO:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 104
    :cond_7
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oR:Landroid/bluetooth/BluetoothMapClient;

    if-eqz v0, :cond_8

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oR:Landroid/bluetooth/BluetoothMapClient;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 107
    :cond_8
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oQ:Landroid/bluetooth/BluetoothHidHost;

    if-eqz v0, :cond_9

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oQ:Landroid/bluetooth/BluetoothHidHost;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 110
    :cond_9
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oS:Landroid/bluetooth/BluetoothPan;

    if-eqz v0, :cond_a

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oS:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 113
    :cond_a
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oP:Landroid/bluetooth/BluetoothHidDevice;

    if-eqz v0, :cond_b

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v1, 0x13

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oP:Landroid/bluetooth/BluetoothHidDevice;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 116
    :cond_b
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oM:Landroid/bluetooth/BluetoothAvrcpController;

    if-eqz v0, :cond_c

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oM:Landroid/bluetooth/BluetoothAvrcpController;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 119
    :cond_c
    return-void
.end method

.method public disable()Z
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    return v0

    .line 369
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public enable()Z
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    return v0

    .line 362
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getProfileProxy(I)V
    .locals 3

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
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/b/g/a;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oU:Landroid/bluetooth/BluetoothProfile$ServiceListener;

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

    const-string p1, " result = fail"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    return-void
.end method

.method public getState()I
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    return v0
.end method

.method public isDiscovering()Z
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    return v0
.end method

.method public registerReceiver()V
    .locals 3

    .line 122
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 123
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
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/b/g/a;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oG:Lcom/xiaopeng/commonfunc/b/g/a$a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    return-void
.end method

.method public releaseCallback()V
    .locals 1

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oF:Lcom/xiaopeng/commonfunc/b/g/a/a;

    .line 70
    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/g/a;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/b/g/a;->oG:Lcom/xiaopeng/commonfunc/b/g/a$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 148
    return-void
.end method
