.class public Lcom/xiaopeng/commonfunc/model/test/CarTest;
.super Ljava/lang/Object;
.source "CarTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/commonfunc/model/test/CarTest$TestCallBack;
    }
.end annotation


# instance fields
.field public TAG:Ljava/lang/String;

.field private isConnected:Z

.field private mCar:Landroid/car/Car;

.field private mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

.field private mMcuCallBackCount:I

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

.field private mTestCallBack:Lcom/xiaopeng/commonfunc/model/test/CarTest$TestCallBack;

.field private mXpDiagnosticManager:Landroid/car/diagnostic/XpDiagnosticManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "CarTest"

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest;->TAG:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest;->isConnected:Z

    .line 31
    iput v0, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest;->mMcuCallBackCount:I

    .line 32
    new-instance v0, Lcom/xiaopeng/commonfunc/model/test/CarTest$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/commonfunc/model/test/CarTest$1;-><init>(Lcom/xiaopeng/commonfunc/model/test/CarTest;)V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {p1, v0}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/car/Car;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest;->mCar:Landroid/car/Car;

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest;->mCar:Landroid/car/Car;

    invoke-virtual {v0}, Landroid/car/Car;->connect()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect to carservice failed :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    return-void
.end method

.method static synthetic access$002(Lcom/xiaopeng/commonfunc/model/test/CarTest;Landroid/car/hardware/tbox/CarTboxManager;)Landroid/car/hardware/tbox/CarTboxManager;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/test/CarTest;
    .param p1, "x1"    # Landroid/car/hardware/tbox/CarTboxManager;

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest;->mTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/commonfunc/model/test/CarTest;)Landroid/car/Car;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/test/CarTest;

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest;->mCar:Landroid/car/Car;

    return-object v0
.end method

.method static synthetic access$202(Lcom/xiaopeng/commonfunc/model/test/CarTest;Landroid/car/diagnostic/XpDiagnosticManager;)Landroid/car/diagnostic/XpDiagnosticManager;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/test/CarTest;
    .param p1, "x1"    # Landroid/car/diagnostic/XpDiagnosticManager;

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest;->mXpDiagnosticManager:Landroid/car/diagnostic/XpDiagnosticManager;

    return-object p1
.end method

.method static synthetic access$302(Lcom/xiaopeng/commonfunc/model/test/CarTest;Landroid/car/hardware/mcu/CarMcuManager;)Landroid/car/hardware/mcu/CarMcuManager;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/test/CarTest;
    .param p1, "x1"    # Landroid/car/hardware/mcu/CarMcuManager;

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    return-object p1
.end method

.method static synthetic access$402(Lcom/xiaopeng/commonfunc/model/test/CarTest;Lcom/xiaopeng/commonfunc/model/test/CarTest$TestCallBack;)Lcom/xiaopeng/commonfunc/model/test/CarTest$TestCallBack;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/test/CarTest;
    .param p1, "x1"    # Lcom/xiaopeng/commonfunc/model/test/CarTest$TestCallBack;

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest;->mTestCallBack:Lcom/xiaopeng/commonfunc/model/test/CarTest$TestCallBack;

    return-object p1
.end method

.method static synthetic access$502(Lcom/xiaopeng/commonfunc/model/test/CarTest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/test/CarTest;
    .param p1, "x1"    # Z

    .line 23
    iput-boolean p1, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest;->isConnected:Z

    return p1
.end method

.method static synthetic access$608(Lcom/xiaopeng/commonfunc/model/test/CarTest;)I
    .locals 2
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/test/CarTest;

    .line 23
    iget v0, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest;->mMcuCallBackCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest;->mMcuCallBackCount:I

    return v0
.end method


# virtual methods
.method public getDiagPropList()I
    .locals 5

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest;->mXpDiagnosticManager:Landroid/car/diagnostic/XpDiagnosticManager;

    if-nez v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest;->TAG:Ljava/lang/String;

    const-string v2, "not connected to carservice"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v1, -0x1

    return v1

    .line 123
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest;->mXpDiagnosticManager:Landroid/car/diagnostic/XpDiagnosticManager;

    invoke-virtual {v1}, Landroid/car/diagnostic/XpDiagnosticManager;->getPropertyList()Ljava/util/List;

    move-result-object v1

    .line 124
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/CarPropertyConfig;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 128
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/CarPropertyConfig;>;"
    goto :goto_0

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDiagRequest from tbox failed!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v0, -0x1

    .line 129
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public getDiagRequest()I
    .locals 5

    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest;->mTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    if-nez v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest;->TAG:Ljava/lang/String;

    const-string v2, "not connected to carservice"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v1, -0x1

    return v1

    .line 108
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest;->mTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    invoke-virtual {v1}, Landroid/car/hardware/tbox/CarTboxManager;->getRemoteDiagCaptureRequest()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 112
    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDiagRequest from tbox failed!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v0, -0x1

    .line 113
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public getIsConnected()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest;->isConnected:Z

    return v0
.end method

.method public getMcuCallBackCount()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest;->mMcuCallBackCount:I

    return v0
.end method

.method public registerAllCallBack()V
    .locals 4

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    if-nez v0, :cond_0

    .line 71
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest;->TAG:Ljava/lang/String;

    const-string v1, "registerAllCallBack :wait connect to carservice"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 78
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest;->mTestCallBack:Lcom/xiaopeng/commonfunc/model/test/CarTest$TestCallBack;

    invoke-virtual {v0, v1}, Landroid/car/hardware/mcu/CarMcuManager;->registerCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    goto :goto_2

    .line 79
    :catch_1
    move-exception v0

    .line 80
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/CarTest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerAllCallBack :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method
