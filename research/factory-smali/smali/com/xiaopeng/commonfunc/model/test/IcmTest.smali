.class public Lcom/xiaopeng/commonfunc/model/test/IcmTest;
.super Ljava/lang/Object;
.source "IcmTest.java"


# instance fields
.field public TAG:Ljava/lang/String;

.field private mCar:Landroid/car/Car;

.field private mIcmManager:Landroid/car/hardware/icm/CarIcmManager;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "IcmTest"

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/IcmTest;->TAG:Ljava/lang/String;

    .line 20
    new-instance v0, Lcom/xiaopeng/commonfunc/model/test/IcmTest$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/commonfunc/model/test/IcmTest$1;-><init>(Lcom/xiaopeng/commonfunc/model/test/IcmTest;)V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/IcmTest;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/IcmTest;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {p1, v0}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/car/Car;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/IcmTest;->mCar:Landroid/car/Car;

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/IcmTest;->mCar:Landroid/car/Car;

    invoke-virtual {v0}, Landroid/car/Car;->connect()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/IcmTest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect to carservice failed :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    return-void
.end method

.method static synthetic access$002(Lcom/xiaopeng/commonfunc/model/test/IcmTest;Landroid/car/hardware/icm/CarIcmManager;)Landroid/car/hardware/icm/CarIcmManager;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/test/IcmTest;
    .param p1, "x1"    # Landroid/car/hardware/icm/CarIcmManager;

    .line 16
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/IcmTest;->mIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/commonfunc/model/test/IcmTest;)Landroid/car/Car;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/test/IcmTest;

    .line 16
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/IcmTest;->mCar:Landroid/car/Car;

    return-object v0
.end method


# virtual methods
.method public getIcmAlarmVolume()I
    .locals 5

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/IcmTest;->mIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    if-nez v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/IcmTest;->TAG:Ljava/lang/String;

    const-string v2, "not connected to carservice"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v1, -0x1

    return v1

    .line 54
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/IcmTest;->mIcmManager:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v1}, Landroid/car/hardware/icm/CarIcmManager;->getIcmAlarmVolume()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 58
    goto :goto_0

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/IcmTest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIcmAlarmVolume from icm failed!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v0, -0x1

    .line 59
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method
