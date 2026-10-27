.class public Lcom/android/car/CarBluetoothUserService;
.super Landroid/car/ICarBluetoothUserService$Stub;
.source "CarBluetoothUserService.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "CarBluetoothUsrSvc"


# instance fields
.field private mBluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

.field private mBluetoothMapClient:Landroid/bluetooth/BluetoothMapClient;

.field private mBluetoothPan:Landroid/bluetooth/BluetoothPan;

.field private mBluetoothPbapClient:Landroid/bluetooth/BluetoothPbapClient;

.field private mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mProfilesToConnect:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/car/PerUserCarService;


# direct methods
.method public constructor <init>(Lcom/android/car/PerUserCarService;)V
    .locals 4
    .param p1, "service"    # Lcom/android/car/PerUserCarService;

    .line 47
    invoke-direct {p0}, Landroid/car/ICarBluetoothUserService$Stub;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 40
    iput-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    .line 41
    iput-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    .line 42
    iput-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothPbapClient:Landroid/bluetooth/BluetoothPbapClient;

    .line 43
    iput-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothMapClient:Landroid/bluetooth/BluetoothMapClient;

    .line 44
    iput-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    .line 213
    new-instance v0, Lcom/android/car/CarBluetoothUserService$1;

    invoke-direct {v0, p0}, Lcom/android/car/CarBluetoothUserService$1;-><init>(Lcom/android/car/CarBluetoothUserService;)V

    iput-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 48
    iput-object p1, p0, Lcom/android/car/CarBluetoothUserService;->mService:Lcom/android/car/PerUserCarService;

    .line 49
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 50
    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/Integer;

    .line 51
    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 52
    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 53
    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 54
    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v1, v2

    .line 50
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mProfilesToConnect:Ljava/util/List;

    .line 56
    return-void
.end method

.method static synthetic access$002(Lcom/android/car/CarBluetoothUserService;Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothA2dpSink;
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarBluetoothUserService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothA2dpSink;

    .line 34
    iput-object p1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/car/CarBluetoothUserService;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarBluetoothUserService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadsetClient;

    .line 34
    iput-object p1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/car/CarBluetoothUserService;Landroid/bluetooth/BluetoothPbapClient;)Landroid/bluetooth/BluetoothPbapClient;
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarBluetoothUserService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothPbapClient;

    .line 34
    iput-object p1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothPbapClient:Landroid/bluetooth/BluetoothPbapClient;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/car/CarBluetoothUserService;Landroid/bluetooth/BluetoothMapClient;)Landroid/bluetooth/BluetoothMapClient;
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarBluetoothUserService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothMapClient;

    .line 34
    iput-object p1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothMapClient:Landroid/bluetooth/BluetoothMapClient;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/car/CarBluetoothUserService;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarBluetoothUserService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothPan;

    .line 34
    iput-object p1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method


# virtual methods
.method public bluetoothConnectToProfile(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "profile"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 146
    invoke-virtual {p0, p1}, Lcom/android/car/CarBluetoothUserService;->isBluetoothConnectionProxyAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    const-string v0, "CarBluetoothUsrSvc"

    const-string v1, "Cannot connect to Profile. Proxy Unavailable"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void

    .line 151
    :cond_0
    const-string v0, "CarBluetoothUsrSvc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to connect to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Profile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 163
    :pswitch_0
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothMapClient:Landroid/bluetooth/BluetoothMapClient;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothMapClient;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 164
    goto :goto_1

    .line 167
    :pswitch_1
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothPbapClient:Landroid/bluetooth/BluetoothPbapClient;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothPbapClient;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 168
    goto :goto_1

    .line 159
    :pswitch_2
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothHeadsetClient;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 160
    goto :goto_1

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothA2dpSink;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 156
    goto :goto_1

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothPan;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 174
    :goto_0
    const-string v0, "CarBluetoothUsrSvc"

    const-string v1, "Unknown profile"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public closeBluetoothConnectionProxy()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 82
    return-void

    .line 85
    :cond_0
    const-string v0, "CarBluetoothUsrSvc"

    const-string v1, "closeProfileProxy()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothPbapClient:Landroid/bluetooth/BluetoothPbapClient;

    if-eqz v0, :cond_3

    .line 96
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothPbapClient:Landroid/bluetooth/BluetoothPbapClient;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 98
    :cond_3
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothMapClient:Landroid/bluetooth/BluetoothMapClient;

    if-eqz v0, :cond_4

    .line 99
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothMapClient:Landroid/bluetooth/BluetoothMapClient;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 101
    :cond_4
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v0, :cond_5

    .line 102
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 104
    :cond_5
    return-void
.end method

.method public isBluetoothConnectionProxyAvailable(I)Z
    .locals 2
    .param p1, "profile"    # I

    .line 114
    const/4 v0, 0x5

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 131
    :pswitch_0
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothMapClient:Landroid/bluetooth/BluetoothMapClient;

    if-eqz v0, :cond_2

    .line 132
    return v1

    .line 126
    :pswitch_1
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothPbapClient:Landroid/bluetooth/BluetoothPbapClient;

    if-eqz v0, :cond_2

    .line 127
    return v1

    .line 121
    :pswitch_2
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    if-eqz v0, :cond_2

    .line 122
    return v1

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    if-eqz v0, :cond_2

    .line 117
    return v1

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v0, :cond_2

    .line 137
    return v1

    .line 141
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setProfilePriority(ILandroid/bluetooth/BluetoothDevice;I)V
    .locals 2
    .param p1, "profile"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "priority"    # I

    .line 188
    invoke-virtual {p0, p1}, Lcom/android/car/CarBluetoothUserService;->isBluetoothConnectionProxyAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    const-string v0, "CarBluetoothUsrSvc"

    const-string v1, "Cannot connect to Profile. Proxy Unavailable"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-void

    .line 192
    :cond_0
    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 206
    const-string v0, "CarBluetoothUsrSvc"

    const-string v1, "Unknown Profile"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 200
    :pswitch_0
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothMapClient:Landroid/bluetooth/BluetoothMapClient;

    invoke-virtual {v0, p2, p3}, Landroid/bluetooth/BluetoothMapClient;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 201
    goto :goto_0

    .line 203
    :pswitch_1
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothPbapClient:Landroid/bluetooth/BluetoothPbapClient;

    invoke-virtual {v0, p2, p3}, Landroid/bluetooth/BluetoothPbapClient;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 204
    goto :goto_0

    .line 197
    :pswitch_2
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v0, p2, p3}, Landroid/bluetooth/BluetoothHeadsetClient;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 198
    goto :goto_0

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v0, p2, p3}, Landroid/bluetooth/BluetoothA2dpSink;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 195
    nop

    .line 209
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setupBluetoothConnectionProxy()V
    .locals 6

    .line 64
    const-string v0, "CarBluetoothUsrSvc"

    const-string v1, "setupProfileProxy()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 67
    const-string v0, "CarBluetoothUsrSvc"

    const-string v1, "Null BT Adapter"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mProfilesToConnect:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 71
    .local v1, "profile":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p0, Lcom/android/car/CarBluetoothUserService;->mService:Lcom/android/car/PerUserCarService;

    invoke-virtual {v3}, Lcom/android/car/PerUserCarService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/car/CarBluetoothUserService;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 72
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 71
    invoke-virtual {v2, v3, v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 73
    .end local v1    # "profile":Ljava/lang/Integer;
    goto :goto_0

    .line 74
    :cond_1
    return-void
.end method
