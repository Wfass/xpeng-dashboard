.class abstract Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;
.super Ljava/lang/Object;
.source "BaseCarControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl$CarServiceDeathRecipient;
    }
.end annotation


# static fields
.field protected static final DBG:Z = true


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected mCarApiClient:Landroid/car/Car;

.field protected mCarHandler:Landroid/os/Handler;

.field protected mContext:Landroid/content/Context;

.field protected mHandlerThread:Landroid/os/HandlerThread;

.field protected mIsCarConnect:Z

.field protected mIsXuiConnect:Z

.field protected mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XUIService_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->TAG:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->mCarApiClient:Landroid/car/Car;

    .line 25
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    .line 27
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->mIsCarConnect:Z

    .line 28
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->mIsXuiConnect:Z

    .line 29
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 30
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->mCarHandler:Landroid/os/Handler;

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->connectCar()V

    return-void
.end method

.method private connectCar()V
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->TAG:Ljava/lang/String;

    const-string v1, "TRY TO connectCar()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->mCarHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 45
    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->mCarHandler:Landroid/os/Handler;

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl$1;-><init>(Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;)V

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->mCarHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/os/Handler;)Landroid/car/Car;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->mCarApiClient:Landroid/car/Car;

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v0}, Landroid/car/Car;->connect()V

    .line 71
    return-void
.end method

.method private connectXUI()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl$2;-><init>(Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/XUIManager;->createXUIManager(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/xiaopeng/xuimanager/XUIManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/XUIManager;->connect()V

    .line 95
    return-void
.end method

.method protected static getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;
    .locals 1
    .param p0, "propertyValue"    # Landroid/car/hardware/CarPropertyValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/car/hardware/CarPropertyValue;",
            ")TE;"
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected handleException(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .line 98
    instance-of v0, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalArgumentException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_0
    instance-of v0, p1, Landroid/car/CarNotConnectedException;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarNotConnectedException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :goto_0
    return-void
.end method

.method public init()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->TAG:Ljava/lang/String;

    const-string v1, "BaseCarControl init()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->onInit()V

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->mCarApiClient:Landroid/car/Car;

    if-nez v0, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->connectCar()V

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->needConnectXUI()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    if-nez v0, :cond_1

    .line 143
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->connectXUI()V

    .line 145
    :cond_1
    return-void
.end method

.method protected abstract initCarManager()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation
.end method

.method protected initXUIManager()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 168
    return-void
.end method

.method protected needConnectXUI()Z
    .locals 1

    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method protected onCarManagerInited()V
    .locals 0

    .line 150
    return-void
.end method

.method protected onConnectXUI()V
    .locals 0

    .line 124
    return-void
.end method

.method protected onConnectedCar()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "xuiservice connectcar onServiceConnected"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method protected onDisconnectCar()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "xuiservice connectcar onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method protected onDisconnectXUI()V
    .locals 0

    .line 128
    return-void
.end method

.method protected abstract onInit()V
.end method

.method protected abstract onRelease()V
.end method

.method public release()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->TAG:Ljava/lang/String;

    const-string v1, "BaseCarControl release()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->onRelease()V

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->mCarApiClient:Landroid/car/Car;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v0}, Landroid/car/Car;->disconnect()V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarControl;->mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/XUIManager;->disconnect()V

    .line 161
    :cond_1
    return-void
.end method
