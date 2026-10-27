.class public abstract Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;
.super Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;
.source "BaseCarListener.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;


# static fields
.field public static final DBG:Z = true


# instance fields
.field public final TAG:Ljava/lang/String;

.field private mCarApiClient:Landroid/car/Car;

.field private mConn:Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;

.field public mContext:Landroid/content/Context;

.field private mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;-><init>()V

    .line 28
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

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->TAG:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->mCarApiClient:Landroid/car/Car;

    .line 31
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    .line 33
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->mConn:Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method private connectCar()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener$1;-><init>(Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;)V

    invoke-static {v0, v1}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/car/Car;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->mCarApiClient:Landroid/car/Car;

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v0}, Landroid/car/Car;->connect()V

    .line 67
    return-void
.end method

.method private connectXUI()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener$2;-><init>(Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/XUIManager;->createXUIManager(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/xiaopeng/xuimanager/XUIManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/XUIManager;->connect()V

    .line 89
    return-void
.end method

.method public static getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;
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

    .line 110
    invoke-virtual {p0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private initConnectListener()V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->mConn:Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener$3;-><init>(Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->mConn:Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->mConn:Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->addConnectionListener(Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;)V

    .line 172
    return-void
.end method


# virtual methods
.method public getCarClient()Landroid/car/Car;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->mCarApiClient:Landroid/car/Car;

    return-object v0
.end method

.method public getXuiManager()Lcom/xiaopeng/xuimanager/XUIManager;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    return-object v0
.end method

.method public handleException(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .line 92
    instance-of v0, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalArgumentException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 94
    :cond_0
    instance-of v0, p1, Landroid/car/CarNotConnectedException;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarNotConnectedException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 96
    :cond_1
    instance-of v0, p1, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalStateException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_2
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_3

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_3
    instance-of v0, p1, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_4

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileNotFoundException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_4
    instance-of v0, p1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    if-eqz v0, :cond_5

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XUIServiceNotConnectedException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :goto_0
    return-void
.end method

.method public init()V
    .locals 1

    .line 128
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->setCarControl(Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;)V

    .line 129
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->initConnectListener()V

    .line 130
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->onInit()V

    .line 131
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->needConnectCar()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->initCarListener()V

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->mCarApiClient:Landroid/car/Car;

    if-nez v0, :cond_1

    .line 134
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->connectCar()V

    .line 136
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->needConnectXUI()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    if-nez v0, :cond_2

    .line 137
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->connectXUI()V

    .line 139
    :cond_2
    return-void
.end method

.method protected initCarListener()V
    .locals 0

    .line 121
    return-void
.end method

.method protected initCarManager()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/car/CarNotConnectedException;
        }
    .end annotation

    .line 116
    return-void
.end method

.method protected initXUIManager()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 205
    return-void
.end method

.method protected needConnectCar()Z
    .locals 1

    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method protected needConnectXUI()Z
    .locals 1

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method protected onCarManagerInited()V
    .locals 0

    .line 182
    return-void
.end method

.method public onConnectedCar()V
    .locals 0

    .line 177
    return-void
.end method

.method protected abstract onInit()V
.end method

.method protected abstract onRelease()V
.end method

.method public release()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->TAG:Ljava/lang/String;

    const-string v1, "release()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->onRelease()V

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->mConn:Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->removeConnectionListener(Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;)V

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->mCarApiClient:Landroid/car/Car;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->mCarApiClient:Landroid/car/Car;

    invoke-virtual {v0}, Landroid/car/Car;->disconnect()V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;->mXUIManager:Lcom/xiaopeng/xuimanager/XUIManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/XUIManager;->disconnect()V

    .line 194
    :cond_1
    return-void
.end method
