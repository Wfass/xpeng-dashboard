.class public Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile;
.super Ljava/lang/Object;
.source "HfpClientProfile.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HfpClientProfile"


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mContext:Landroid/content/Context;

.field private mProfileReady:Z

.field private mService:Landroid/bluetooth/BluetoothHeadsetClient;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile$1;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 20
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile;->mContext:Landroid/content/Context;

    .line 21
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 23
    return-void
.end method

.method static synthetic access$002(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadsetClient;

    .line 12
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    return-object p1
.end method

.method static synthetic access$102(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile;
    .param p1, "x1"    # Z

    .line 12
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile;->mProfileReady:Z

    return p1
.end method

.method private getConnectedDevice()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 50
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getConnectState(Ljava/lang/String;)I
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getConnectedAddress()Ljava/lang/String;
    .locals 2

    .line 39
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/osbt/HfpClientProfile;->getConnectedDevice()Ljava/util/List;

    move-result-object v0

    .line 40
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 43
    :cond_0
    const-string v1, ""

    return-object v1
.end method

.method public isConnected(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    return v0
.end method
