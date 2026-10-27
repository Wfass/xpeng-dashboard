.class public Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/AvrcpProfile;
.super Ljava/lang/Object;
.source "AvrcpProfile.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AvrcpProfile"


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mContext:Landroid/content/Context;

.field private mService:Landroid/bluetooth/BluetoothAvrcpController;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/AvrcpProfile$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/AvrcpProfile$1;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/AvrcpProfile;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/AvrcpProfile;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 17
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/AvrcpProfile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/AvrcpProfile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/AvrcpProfile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/AvrcpProfile;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 19
    return-void
.end method

.method static synthetic access$002(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/AvrcpProfile;Landroid/bluetooth/BluetoothAvrcpController;)Landroid/bluetooth/BluetoothAvrcpController;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/AvrcpProfile;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothAvrcpController;

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/AvrcpProfile;->mService:Landroid/bluetooth/BluetoothAvrcpController;

    return-object p1
.end method


# virtual methods
.method public getMeteData()Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;
    .locals 1

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPosition()[J
    .locals 1

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method public next()V
    .locals 0

    .line 31
    return-void
.end method

.method public pause()V
    .locals 0

    .line 27
    return-void
.end method

.method public play()V
    .locals 0

    .line 23
    return-void
.end method

.method public previous()V
    .locals 0

    .line 35
    return-void
.end method
