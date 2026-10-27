.class public Lcom/xiaopeng/devtools/model/a/b;
.super Ljava/lang/Object;
.source "IcmModel.java"


# instance fields
.field private rI:Landroid/car/hardware/icm/CarIcmManager;

.field private rJ:Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/xiaopeng/devtools/model/a/b$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/model/a/b$1;-><init>(Lcom/xiaopeng/devtools/model/a/b;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/a/b;->rJ:Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/devtools/model/a/b;->fu()V

    .line 24
    return-void
.end method

.method private fu()V
    .locals 2

    .line 28
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->eo()Landroid/car/Car;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->eo()Landroid/car/Car;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/Car;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->eo()Landroid/car/Car;

    move-result-object v0

    const-string v1, "xp_icm"

    invoke-virtual {v0, v1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/icm/CarIcmManager;

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/a/b;->rI:Landroid/car/hardware/icm/CarIcmManager;

    goto :goto_0

    .line 31
    :cond_0
    const-string v0, "IcmModel"

    const-string v1, "Car is not connected yet"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    goto :goto_1

    .line 33
    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    .line 36
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 39
    const-string v0, "IcmModel"

    const-string v1, "registerPropCallback"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/b;->rI:Landroid/car/hardware/icm/CarIcmManager;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/b;->rI:Landroid/car/hardware/icm/CarIcmManager;

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/a/b;->rJ:Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/icm/CarIcmManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    goto :goto_0

    .line 44
    :cond_0
    const-string p1, "IcmModel"

    const-string v0, "registerPropCallback mCarIcmManager == null"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    goto :goto_1

    .line 46
    :catch_0
    move-exception p1

    .line 47
    invoke-virtual {p1}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    .line 49
    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/b;->rI:Landroid/car/hardware/icm/CarIcmManager;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/b;->rI:Landroid/car/hardware/icm/CarIcmManager;

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/a/b;->rJ:Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;

    invoke-virtual {v0, v1}, Landroid/car/hardware/icm/CarIcmManager;->unregisterCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/a/b;->rI:Landroid/car/hardware/icm/CarIcmManager;

    .line 96
    :cond_0
    const-string v0, "IcmModel"

    const-string v1, "disconnect CarIcmManager"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    const-string v1, "IcmModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnect CarIcmManager failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    :goto_0
    return-void
.end method

.method public sendUpdateRequest(Ljava/lang/String;)V
    .locals 3

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/b;->rI:Landroid/car/hardware/icm/CarIcmManager;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/b;->rI:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/icm/CarIcmManager;->sendUpdateRequest(Ljava/lang/String;)V

    .line 67
    const-string v0, "IcmModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendIcmUpdateRequest :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_0
    const-string p1, "IcmModel"

    const-string v0, "sendIcmUpdateRequest error:mCarIcmManager is null "

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    goto :goto_1

    .line 71
    :catch_0
    move-exception p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    :goto_1
    return-void
.end method

.method public setUpdateFileTransferStatus(I)V
    .locals 3

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/b;->rI:Landroid/car/hardware/icm/CarIcmManager;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/b;->rI:Landroid/car/hardware/icm/CarIcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/icm/CarIcmManager;->setUpdateFileTransferStatus(I)V

    .line 80
    const-string v0, "IcmModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUpdateFileTransferStatus :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_0
    const-string p1, "IcmModel"

    const-string v0, "sendIcmUpdateRequest error:mCarIcmManager is null "

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    goto :goto_1

    .line 84
    :catch_0
    move-exception p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    :goto_1
    return-void
.end method
