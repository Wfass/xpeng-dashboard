.class public Lcom/xiaopeng/commonfunc/b/a/e;
.super Lcom/xiaopeng/commonfunc/b/a/b;
.source "TboxModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/commonfunc/b/a/b<",
        "Landroid/car/hardware/tbox/CarTboxManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/xiaopeng/commonfunc/b/a/b;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected getServiceName()Ljava/lang/String;
    .locals 1

    .line 37
    const-string v0, "xp_tbox"

    return-object v0
.end method

.method public sendCopyTboxLogRequest(I)V
    .locals 3

    .line 370
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/a/e;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendCopyTboxLogRequest type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/b/a/e;->dD()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/tbox/CarTboxManager;

    .line 373
    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {v0, p1}, Landroid/car/hardware/tbox/CarTboxManager;->sendCopyTboxLogRequest(I)V

    goto :goto_0

    .line 376
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/a/e;->TAG:Ljava/lang/String;

    const-string v0, "sendCopyTboxLogRequest carTboxManager == null"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :goto_0
    goto :goto_1

    .line 378
    :catch_0
    move-exception p1

    .line 379
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 381
    :goto_1
    return-void
.end method

.method public setRoutingForTbox(I)V
    .locals 3

    .line 342
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/a/e;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRoutingForTbox cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/b/a/e;->dD()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/tbox/CarTboxManager;

    .line 345
    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v0, p1}, Landroid/car/hardware/tbox/CarTboxManager;->setRoutingForTbox(I)V

    goto :goto_0

    .line 348
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/a/e;->TAG:Ljava/lang/String;

    const-string v0, "setRoutingForTbox carTboxManager == null"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :goto_0
    goto :goto_1

    .line 350
    :catch_0
    move-exception p1

    .line 351
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 353
    :goto_1
    return-void
.end method

.method public setTboxModemCapture(I)V
    .locals 3

    .line 356
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/a/e;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTboxModemCapture cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/b/a/e;->dD()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/tbox/CarTboxManager;

    .line 359
    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {v0, p1}, Landroid/car/hardware/tbox/CarTboxManager;->setTboxModemCapture(I)V

    goto :goto_0

    .line 362
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/a/e;->TAG:Ljava/lang/String;

    const-string v0, "setTboxModemCapture carTboxManager == null"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :goto_0
    goto :goto_1

    .line 364
    :catch_0
    move-exception p1

    .line 365
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 367
    :goto_1
    return-void
.end method
