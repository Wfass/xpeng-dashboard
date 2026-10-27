.class public Lcom/xiaopeng/devtools/model/a/a;
.super Ljava/lang/Object;
.source "BcmModel.java"


# static fields
.field private static rE:Lcom/xiaopeng/devtools/model/a/a;


# instance fields
.field private rF:Landroid/car/hardware/bcm/CarBcmManager;

.field private rG:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/xiaopeng/devtools/model/a/a$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/model/a/a$1;-><init>(Lcom/xiaopeng/devtools/model/a/a;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/a/a;->rG:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    .line 21
    invoke-direct {p0}, Lcom/xiaopeng/devtools/model/a/a;->fu()V

    .line 22
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/model/a/a;->fv()V

    .line 23
    return-void
.end method

.method public static ft()Lcom/xiaopeng/devtools/model/a/a;
    .locals 1

    .line 26
    sget-object v0, Lcom/xiaopeng/devtools/model/a/a;->rE:Lcom/xiaopeng/devtools/model/a/a;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/xiaopeng/devtools/model/a/a;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/model/a/a;-><init>()V

    sput-object v0, Lcom/xiaopeng/devtools/model/a/a;->rE:Lcom/xiaopeng/devtools/model/a/a;

    .line 29
    :cond_0
    sget-object v0, Lcom/xiaopeng/devtools/model/a/a;->rE:Lcom/xiaopeng/devtools/model/a/a;

    return-object v0
.end method

.method private fu()V
    .locals 2

    .line 34
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->eo()Landroid/car/Car;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->eo()Landroid/car/Car;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/Car;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->eo()Landroid/car/Car;

    move-result-object v0

    const-string v1, "xp_bcm"

    invoke-virtual {v0, v1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/a/a;->rF:Landroid/car/hardware/bcm/CarBcmManager;

    goto :goto_0

    .line 37
    :cond_0
    const-string v0, "BcmModel"

    const-string v1, "Car is not connected yet"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    goto :goto_1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    invoke-virtual {v0}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    .line 42
    :goto_1
    return-void
.end method


# virtual methods
.method public fv()V
    .locals 2

    .line 45
    const-string v0, "BcmModel"

    const-string v1, "registerCallback"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/a;->rF:Landroid/car/hardware/bcm/CarBcmManager;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/a;->rF:Landroid/car/hardware/bcm/CarBcmManager;

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/a/a;->rG:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    invoke-virtual {v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->registerCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    goto :goto_0

    .line 50
    :cond_0
    const-string v0, "BcmModel"

    const-string v1, "registerCallback mCarBcmManager == null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    goto :goto_1

    .line 52
    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    .line 55
    :goto_1
    return-void
.end method

.method public getAlsInitializationStudyAndErrorState()[I
    .locals 3

    .line 70
    const-string v0, "BcmModel"

    const-string v1, "getAlsInitializationStudyAndErrorState"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    nop

    .line 73
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/a/a;->rF:Landroid/car/hardware/bcm/CarBcmManager;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/a/a;->rF:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v1}, Landroid/car/hardware/bcm/CarBcmManager;->getAlsInitializationStudyAndErrorState()[I

    move-result-object v1

    .line 80
    move-object v0, v1

    goto :goto_0

    .line 76
    :cond_0
    const-string v1, "BcmModel"

    const-string v2, "getAlsInitializationStudyAndErrorState mCarBcmManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    goto :goto_1

    .line 78
    :catch_0
    move-exception v1

    .line 79
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    :goto_1
    return-object v0
.end method
