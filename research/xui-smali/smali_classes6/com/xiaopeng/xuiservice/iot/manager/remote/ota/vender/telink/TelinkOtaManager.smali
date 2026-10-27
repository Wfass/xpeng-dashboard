.class public Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;
.super Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/AbstractOtaManager;
.source "TelinkOtaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$TelinkOtaManagerHolder;,
        Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$Action;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TelinkOtaManager"


# instance fields
.field private hasOtaRunning:Z

.field private isConnected:Z

.field private final mCallback:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection$ConnectionCallback;

.field private mConnectTask:Ljava/lang/Runnable;

.field private mGattConnection:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;

.field private mOtaController:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

.field private mOtaSetting:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;

.field private mUpgradeTask:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 83
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/AbstractOtaManager;-><init>()V

    .line 26
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->mOtaSetting:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;

    .line 28
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/-$$Lambda$TelinkOtaManager$09QIvJwoVYmKA7I3tmrgdt3mZok;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/-$$Lambda$TelinkOtaManager$09QIvJwoVYmKA7I3tmrgdt3mZok;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->mConnectTask:Ljava/lang/Runnable;

    .line 29
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/-$$Lambda$TelinkOtaManager$KBZmKLv4WyPSlag2llc196200to;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/-$$Lambda$TelinkOtaManager$KBZmKLv4WyPSlag2llc196200to;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->mUpgradeTask:Ljava/lang/Runnable;

    .line 34
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$1;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->mCallback:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection$ConnectionCallback;

    .line 84
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->mGattConnection:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;

    .line 86
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->mGattConnection:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->mOtaController:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->mOtaController:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

    new-instance v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$2;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->setOtaCallback(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController$GattOtaCallback;)V

    .line 115
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$1;

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->mConnectTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;)Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->mOtaSetting:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;)Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->mOtaController:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$Action;ZLjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$Action;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->showOtaStatus(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$Action;ZLjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;

    .line 17
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->hasOtaRunning:Z

    return v0
.end method

.method static synthetic access$402(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;
    .param p1, "x1"    # Z

    .line 17
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->hasOtaRunning:Z

    return p1
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->mUpgradeTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;)Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->mGattConnection:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;

    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;
    .locals 1

    .line 122
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$TelinkOtaManagerHolder;->access$800()Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;)V
    .locals 3

    .line 28
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$Action;->STOP:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$Action;

    const-string v1, "ble connect timeout"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->showOtaStatus(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$Action;ZLjava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;)V
    .locals 3

    .line 30
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$Action;->STOP:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$Action;

    const-string v1, "ota upgrade timeout"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->showOtaStatus(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$Action;ZLjava/lang/String;I)V

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->mOtaController:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->stopOta(Z)V

    .line 32
    return-void
.end method

.method private showOtaStatus(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$Action;ZLjava/lang/String;I)V
    .locals 2
    .param p1, "action"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$Action;
    .param p2, "succeed"    # Z
    .param p3, "info"    # Ljava/lang/String;
    .param p4, "progress"    # I

    .line 68
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->getOtaStatusRegistry()Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/IOtaStatusRegistry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$3;->$SwitchMap$com$xiaopeng$xuiservice$iot$manager$remote$ota$vender$telink$TelinkOtaManager$Action:[I

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$Action;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 77
    :pswitch_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->getOtaStatusRegistry()Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/IOtaStatusRegistry;

    move-result-object v0

    invoke-interface {v0, p4}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/IOtaStatusRegistry;->onOtaProgressUpgrade(I)V

    goto :goto_0

    .line 74
    :pswitch_1
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->getOtaStatusRegistry()Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/IOtaStatusRegistry;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/IOtaStatusRegistry;->onOtaStopUpgrade(ZLjava/lang/String;)V

    .line 75
    goto :goto_0

    .line 71
    :pswitch_2
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->getOtaStatusRegistry()Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/IOtaStatusRegistry;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/IOtaStatusRegistry;->onOtaStartUpgrade()V

    .line 72
    nop

    .line 81
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected getVersion(Ljava/lang/String;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->mOtaController:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->getFirmwareVersion(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected startOta(Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->mOtaSetting:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;

    iput-object p1, v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;->firmwarePath:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->mGattConnection:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const-string v0, "TelinkOtaManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startOta ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->mOtaController:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->mOtaSetting:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->startOta(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;)Z

    move-result v0

    return v0

    .line 140
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 141
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_1

    .line 142
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->mGattConnection:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->mCallback:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection$ConnectionCallback;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;->setConnectionCallback(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection$ConnectionCallback;)V

    .line 143
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->mGattConnection:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;->connect(Landroid/bluetooth/BluetoothDevice;)V

    .line 144
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->mConnectTask:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 147
    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
