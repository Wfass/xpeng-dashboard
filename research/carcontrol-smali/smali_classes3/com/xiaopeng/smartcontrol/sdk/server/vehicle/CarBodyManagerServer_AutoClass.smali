.class public Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;
.super Lcom/xiaopeng/smartcontrol/sdk/server/BaseManagerServer;
.source "CarBodyManagerServer_AutoClass.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/smartcontrol/sdk/server/BaseManagerServer;-><init>()V

    return-void
.end method


# virtual methods
.method public onArsFoldStateChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 503
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onArsFoldStateChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onArsFoldStateChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onArsPositionChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onArsPositionChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onArsPositionChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onArsWorkStateChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 483
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onArsWorkStateChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onArsWorkStateChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCentralLockStateChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCentralLockStateChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onCentralLockStateChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onChargePortChanged(ZI)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "param0",
            "param1"
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChargePortChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onChargePortChanged"

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCwcChargeErrorStateChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 433
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCwcChargeErrorStateChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onCwcChargeErrorStateChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCwcChargeStateChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCwcChargeStateChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onCwcChargeStateChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCwcFRChargeErrorStateChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 468
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCwcFRChargeErrorStateChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onCwcFRChargeErrorStateChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCwcFRChargeStateChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCwcFRChargeStateChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onCwcFRChargeStateChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCwcFRSwChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCwcFRSwChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onCwcFRSwChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCwcRLChargeErrorStateChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCwcRLChargeErrorStateChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onCwcRLChargeErrorStateChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCwcRLChargeStateChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCwcRLChargeStateChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onCwcRLChargeStateChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCwcRLSwChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCwcRLSwChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onCwcRLSwChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCwcRRChargeErrorStateChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 413
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCwcRRChargeErrorStateChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onCwcRRChargeErrorStateChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCwcRRChargeStateChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCwcRRChargeStateChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onCwcRRChargeStateChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCwcRRSwChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCwcRRSwChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onCwcRRSwChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCwcSwChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCwcSwChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onCwcSwChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDoorChanged(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "param0",
            "param1"
        }
    .end annotation

    .line 443
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDoorChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onDoorChanged"

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onEasyLoadingModeChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEasyLoadingModeChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onEasyLoadingModeChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onElcTrunkPosChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onElcTrunkPosChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onElcTrunkPosChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onFrontLeftTyrePressureChanged(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 428
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFrontLeftTyrePressureChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onFrontLeftTyrePressureChanged"

    .line 429
    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onFrontLeftTyreTempChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 473
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFrontLeftTyreTempChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onFrontLeftTyreTempChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onFrontLeftTyreTempWarningChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFrontLeftTyreTempWarningChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onFrontLeftTyreTempWarningChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onFrontLeftTyreWarningStateChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 513
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFrontLeftTyreWarningStateChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onFrontLeftTyreWarningStateChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onFrontRightTyrePressureChanged(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFrontRightTyrePressureChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onFrontRightTyrePressureChanged"

    .line 519
    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onFrontRightTyreTempChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFrontRightTyreTempChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onFrontRightTyreTempChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onFrontRightTyreTempWarningChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFrontRightTyreTempWarningChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onFrontRightTyreTempWarningChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onFrontRightTyreWarningStateChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFrontRightTyreWarningStateChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onFrontRightTyreWarningStateChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onIpcCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "method",
            "param"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "setChargePort"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x3c

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "getElcTrunkPos"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x3b

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "getCwcChargeErrorSt"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x3a

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "setLeftChildLock"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x39

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "setCentralLock"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x38

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "controlSmartRestore"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x37

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "getCwcRRChargeErrorSt"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x36

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "getLeftSlideDoorMode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x35

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "getLeftSdcSysRunningState"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0x34

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "getTyreTemp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0x33

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "setTrunk"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0x32

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "setCwcSwRLEnable"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x31

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "isDoorClosed"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0x30

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "getChargePort"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0x2f

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "unfoldArs"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0x2e

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "getTyrePressure"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0x2d

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "getWiperSensitivity"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v3, 0x2c

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "getCwcRRChargeSt"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v3, 0x2b

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "setLeftSlideDoorMode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v3, 0x2a

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "getRightSdcDoorPos"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v3, 0x29

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "isTpmsTempWarning"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v3, 0x28

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "getCwcFRSwEnable"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v3, 0x27

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "getCwcFRChargeErrorSt"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v3, 0x26

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "getRightSlideDoorMode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v3, 0x25

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "getCwcRLSwEnable"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v3, 0x24

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "getRightSdcSysRunningState"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v3, 0x23

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "controlRightSlideDoor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v3, 0x22

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "controlRightSdc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v3, 0x21

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "getLeftSlideDoorState"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v3, 0x20

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "getCwcRLChargeErrorSt"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v3, 0x1f

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "getCwcSwEnable"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v3, 0x1e

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "getRightChildLock"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v3, 0x1d

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "getArsWorkState"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v3, 0x1c

    goto/16 :goto_0

    :sswitch_21
    const-string v0, "getRightSlideDoorState"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v3, 0x1b

    goto/16 :goto_0

    :sswitch_22
    const-string v0, "getEasyLoadingSwitch"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v3, 0x1a

    goto/16 :goto_0

    :sswitch_23
    const-string v0, "getRightSlideDoorPos"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v3, 0x19

    goto/16 :goto_0

    :sswitch_24
    const-string v0, "getLeftSdcDoorPos"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v3, 0x18

    goto/16 :goto_0

    :sswitch_25
    const-string v0, "getArsFoldState"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v3, 0x17

    goto/16 :goto_0

    :sswitch_26
    const-string v0, "setEasyLoadingSwitch"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_26

    goto/16 :goto_0

    :cond_26
    const/16 v3, 0x16

    goto/16 :goto_0

    :sswitch_27
    const-string v0, "setWiperSensitivity"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_27

    goto/16 :goto_0

    :cond_27
    const/16 v3, 0x15

    goto/16 :goto_0

    :sswitch_28
    const-string v0, "getLeftChildLock"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_28

    goto/16 :goto_0

    :cond_28
    const/16 v3, 0x14

    goto/16 :goto_0

    :sswitch_29
    const-string v0, "getArsPosition"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_29

    goto/16 :goto_0

    :cond_29
    const/16 v3, 0x13

    goto/16 :goto_0

    :sswitch_2a
    const-string v0, "setRightChildLock"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2a

    goto/16 :goto_0

    :cond_2a
    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_2b
    const-string v0, "foldArs"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2b

    goto/16 :goto_0

    :cond_2b
    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_2c
    const-string v0, "getTpmsWarningStates"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2c

    goto/16 :goto_0

    :cond_2c
    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_2d
    const-string v0, "controlLeftSdc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2d

    goto/16 :goto_0

    :cond_2d
    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_2e
    const-string v0, "getCwcFRChargeSt"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2e

    goto/16 :goto_0

    :cond_2e
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_2f
    const-string v0, "setRightSlideDoorMode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2f

    goto/16 :goto_0

    :cond_2f
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_30
    const-string v0, "getCwcRLChargeSt"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_30

    goto/16 :goto_0

    :cond_30
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_31
    const-string v0, "isCentralLocked"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_31

    goto/16 :goto_0

    :cond_31
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_32
    const-string v0, "getCwcChargeSt"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_32

    goto/16 :goto_0

    :cond_32
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_33
    const-string v0, "setCwcSwEnable"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_33

    goto/16 :goto_0

    :cond_33
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_34
    const-string v0, "setCwcSwFREnable"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_34

    goto/16 :goto_0

    :cond_34
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_35
    const-string v0, "foldMirror"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_35

    goto :goto_0

    :cond_35
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_36
    const-string v0, "getCwcRRSwEnable"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_36

    goto :goto_0

    :cond_36
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_37
    const-string v0, "exeSmartRestore"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_37

    goto :goto_0

    :cond_37
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_38
    const-string v0, "controlLeftSlideDoor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_38

    goto :goto_0

    :cond_38
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_39
    const-string v0, "getTrunkState"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_39

    goto :goto_0

    :cond_39
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_3a
    const-string v0, "resetChargePort"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3a

    goto :goto_0

    :cond_3a
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3b
    const-string v0, "getLeftSlideDoorPos"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3b

    goto :goto_0

    :cond_3b
    move v3, v1

    goto :goto_0

    :sswitch_3c
    const-string v0, "setCwcSwRREnable"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3c

    goto :goto_0

    :cond_3c
    move v3, v2

    :goto_0
    const/4 p2, 0x0

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const-string v0, ","

    .line 171
    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    aget-object v3, p3, v2

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    aget-object v4, p3, v1

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-interface {v0, v3, v4}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->setChargePort(ZZ)V

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 174
    aget-object v2, p3, v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "isLeft"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    aget-object p3, p3, v1

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const-string v1, "open"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p3, "windowdoor_charge_port"

    .line 176
    invoke-static {p3, p2, p1, v0}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 138
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->getElcTrunkPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_1

    .line 122
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->getCwcChargeErrorSt()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto/16 :goto_1

    .line 91
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->setLeftChildLock(Z)V

    .line 92
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const-string/jumbo v0, "windowdoor_left_child_lock"

    invoke-static {v0, p3, p1, p2}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 70
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->setCentralLock(Z)V

    .line 71
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const-string/jumbo v0, "windowdoor_central_lock"

    invoke-static {v0, p3, p1, p2}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 134
    :pswitch_5
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->controlSmartRestore()V

    goto/16 :goto_1

    .line 28
    :pswitch_6
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->getCwcRRChargeErrorSt()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto/16 :goto_1

    .line 196
    :pswitch_7
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->getLeftSlideDoorMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_1

    .line 19
    :pswitch_8
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->getLeftSdcSysRunningState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_1

    .line 83
    :pswitch_9
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->getTyreTemp(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_1

    .line 65
    :pswitch_a
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->setTrunk(I)V

    .line 66
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string/jumbo v0, "windowdoor_trunk"

    invoke-static {v0, p3, p1, p2}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 113
    :pswitch_b
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->setCwcSwRLEnable(Z)V

    .line 114
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const-string v0, "charge_cwc_sec_left"

    invoke-static {v0, p3, p1, p2}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 188
    :pswitch_c
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->isDoorClosed(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto/16 :goto_1

    .line 100
    :pswitch_d
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->getChargePort(Z)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_1

    .line 53
    :pswitch_e
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->unfoldArs()V

    goto/16 :goto_1

    .line 154
    :pswitch_f
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->getTyrePressure(I)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    .line 213
    :pswitch_10
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->getWiperSensitivity()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_1

    .line 192
    :pswitch_11
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->getCwcRRChargeSt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_1

    .line 109
    :pswitch_12
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->setLeftSlideDoorMode(I)V

    goto/16 :goto_1

    .line 242
    :pswitch_13
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->getRightSdcDoorPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_1

    .line 32
    :pswitch_14
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->isTpmsTempWarning(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto/16 :goto_1

    .line 57
    :pswitch_15
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->getCwcFRSwEnable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto/16 :goto_1

    .line 150
    :pswitch_16
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->getCwcFRChargeErrorSt()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto/16 :goto_1

    .line 266
    :pswitch_17
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->getRightSlideDoorMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_1

    .line 126
    :pswitch_18
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->getCwcRLSwEnable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto/16 :goto_1

    .line 262
    :pswitch_19
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->getRightSdcSysRunningState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_1

    .line 180
    :pswitch_1a
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->controlRightSlideDoor(I)V

    goto/16 :goto_1

    .line 79
    :pswitch_1b
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->controlRightSdc(I)V

    goto/16 :goto_1

    .line 36
    :pswitch_1c
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->getLeftSlideDoorState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_1

    .line 184
    :pswitch_1d
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->getCwcRLChargeErrorSt()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto/16 :goto_1

    .line 142
    :pswitch_1e
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->getCwcSwEnable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto/16 :goto_1

    .line 146
    :pswitch_1f
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->getRightChildLock()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto/16 :goto_1

    .line 254
    :pswitch_20
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->getArsWorkState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_1

    .line 226
    :pswitch_21
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->getRightSlideDoorState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_1

    .line 158
    :pswitch_22
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->getEasyLoadingSwitch()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto/16 :goto_1

    .line 118
    :pswitch_23
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->getRightSlideDoorPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_1

    .line 209
    :pswitch_24
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->getLeftSdcDoorPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_1

    .line 75
    :pswitch_25
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->getArsFoldState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_1

    .line 104
    :pswitch_26
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->setEasyLoadingSwitch(Z)V

    .line 105
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const-string/jumbo v0, "windowdoor_auto_easy_load"

    invoke-static {v0, p3, p1, p2}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 166
    :pswitch_27
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->setWiperSensitivity(I)V

    .line 167
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string/jumbo v0, "windowdoor_wiper_level"

    invoke-static {v0, p3, p1, p2}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 246
    :pswitch_28
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->getLeftChildLock()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto/16 :goto_1

    .line 217
    :pswitch_29
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->getArsPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_1

    .line 221
    :pswitch_2a
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->setRightChildLock(Z)V

    .line 222
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const-string/jumbo v0, "windowdoor_right_child_lock"

    invoke-static {v0, p3, p1, p2}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 61
    :pswitch_2b
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->foldArs()V

    goto/16 :goto_1

    .line 205
    :pswitch_2c
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->getTpmsWarningStates(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto/16 :goto_1

    .line 40
    :pswitch_2d
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->controlLeftSdc(I)V

    goto/16 :goto_1

    .line 87
    :pswitch_2e
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->getCwcFRChargeSt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_1

    .line 130
    :pswitch_2f
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->setRightSlideDoorMode(I)V

    goto/16 :goto_1

    .line 258
    :pswitch_30
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->getCwcRLChargeSt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_1

    .line 270
    :pswitch_31
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->isCentralLocked()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto/16 :goto_1

    .line 15
    :pswitch_32
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->getCwcChargeSt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_1

    .line 23
    :pswitch_33
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->setCwcSwEnable(Z)V

    .line 24
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const-string v0, "charge_cwc_drv"

    invoke-static {v0, p3, p1, p2}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 44
    :pswitch_34
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->setCwcSwFREnable(Z)V

    .line 45
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const-string v0, "charge_cwc_psn"

    invoke-static {v0, p3, p1, p2}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 238
    :pswitch_35
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p3

    invoke-interface {p1, p3}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->foldMirror(Z)V

    goto :goto_1

    .line 49
    :pswitch_36
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->getCwcRRSwEnable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_1

    .line 230
    :pswitch_37
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->exeSmartRestore()V

    goto :goto_1

    .line 234
    :pswitch_38
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->controlLeftSlideDoor(I)V

    goto :goto_1

    .line 162
    :pswitch_39
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->getTrunkState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    .line 250
    :pswitch_3a
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p3

    invoke-interface {p1, p3}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->resetChargePort(Z)V

    goto :goto_1

    .line 96
    :pswitch_3b
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->getLeftSlideDoorPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    .line 200
    :pswitch_3c
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer$Implementation;->setCwcSwRREnable(Z)V

    .line 201
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const-string v0, "charge_cwc_sec_right"

    invoke-static {v0, p3, p1, p2}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    :goto_1
    if-eqz p2, :cond_3d

    .line 274
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3d
    const-string p1, ""

    :goto_2
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x77a0a72c -> :sswitch_3c
        -0x70a7660e -> :sswitch_3b
        -0x6ee067fc -> :sswitch_3a
        -0x69c940cd -> :sswitch_39
        -0x64e4a9a5 -> :sswitch_38
        -0x61d53c49 -> :sswitch_37
        -0x5f7ccca0 -> :sswitch_36
        -0x5ac060e0 -> :sswitch_35
        -0x562ec1a0 -> :sswitch_34
        -0x55b7792c -> :sswitch_33
        -0x53aa6172 -> :sswitch_32
        -0x518b482b -> :sswitch_31
        -0x40a4db78 -> :sswitch_30
        -0x3f1fb578 -> :sswitch_2f
        -0x3a7b8ee6 -> :sswitch_2e
        -0x2a8f4d72 -> :sswitch_2d
        -0x290f89fa -> :sswitch_2c
        -0x28ba155f -> :sswitch_2b
        -0x28848d53 -> :sswitch_2a
        -0x27a2c38b -> :sswitch_29
        -0x241a6b96 -> :sswitch_28
        -0x217b1aea -> :sswitch_27
        -0x1a6ce594 -> :sswitch_26
        -0x140218bc -> :sswitch_25
        -0xa3a646f -> :sswitch_24
        -0x6e99ba5 -> :sswitch_23
        0x9fd0df8 -> :sswitch_22
        0xd3b10d8 -> :sswitch_21
        0xde09634 -> :sswitch_20
        0xf850aa1 -> :sswitch_1f
        0x13e31360 -> :sswitch_1e
        0x168824c2 -> :sswitch_1d
        0x1bc63caf -> :sswitch_1c
        0x1ca018f3 -> :sswitch_1b
        0x1d7b9d00 -> :sswitch_1a
        0x2088adf3 -> :sswitch_19
        0x26e8995a -> :sswitch_18
        0x29b4c87c -> :sswitch_17
        0x2b71e370 -> :sswitch_16
        0x2d11e5ec -> :sswitch_15
        0x2fba501c -> :sswitch_14
        0x3614ec3a -> :sswitch_13
        0x374f5239 -> :sswitch_12
        0x38f5be8e -> :sswitch_11
        0x3a88500a -> :sswitch_10
        0x3d06a453 -> :sswitch_f
        0x3d4dede8 -> :sswitch_e
        0x42c56d4b -> :sswitch_d
        0x496af384 -> :sswitch_c
        0x4af9f54e -> :sswitch_b
        0x53c3fe72 -> :sswitch_a
        0x56f408e2 -> :sswitch_9
        0x5b5c164a -> :sswitch_8
        0x5bb945c5 -> :sswitch_7
        0x61bade7c -> :sswitch_6
        0x66530682 -> :sswitch_5
        0x67391e7e -> :sswitch_4
        0x6ebbfade -> :sswitch_3
        0x6f46fe7c -> :sswitch_2
        0x6fd38786 -> :sswitch_1
        0x70e9bb57 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLeftChildLockChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLeftChildLockChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onLeftChildLockChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onLeftSdcDoorPosChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLeftSdcDoorPosChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onLeftSdcDoorPosChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onLeftSdcSysRunningStateChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 498
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLeftSdcSysRunningStateChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onLeftSdcSysRunningStateChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onLeftSlideDoorModeChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLeftSlideDoorModeChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onLeftSlideDoorModeChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onLeftSlideDoorPosChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 508
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLeftSlideDoorPosChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onLeftSlideDoorPosChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onLeftSlideDoorStateChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLeftSlideDoorStateChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onLeftSlideDoorStateChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRearLeftTyrePressureChanged(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 488
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRearLeftTyrePressureChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onRearLeftTyrePressureChanged"

    .line 489
    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRearLeftTyreTempChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 523
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRearLeftTyreTempChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onRearLeftTyreTempChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRearLeftTyreTempWarningChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 418
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRearLeftTyreTempWarningChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onRearLeftTyreTempWarningChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRearLeftTyreWarningStateChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 398
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRearLeftTyreWarningStateChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onRearLeftTyreWarningStateChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRearRightTyrePressureChanged(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRearRightTyrePressureChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onRearRightTyrePressureChanged"

    .line 384
    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRearRightTyreTempChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRearRightTyreTempChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onRearRightTyreTempChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRearRightTyreTempWarningChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRearRightTyreTempWarningChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onRearRightTyreTempWarningChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRearRightTyreWarningStateChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRearRightTyreWarningStateChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onRearRightTyreWarningStateChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRightChildLockChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRightChildLockChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onRightChildLockChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRightSdcDoorPosChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRightSdcDoorPosChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onRightSdcDoorPosChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRightSdcSysRunningStateChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRightSdcSysRunningStateChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onRightSdcSysRunningStateChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRightSlideDoorModeChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRightSlideDoorModeChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onRightSlideDoorModeChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRightSlideDoorPosChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 478
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRightSlideDoorPosChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onRightSlideDoorPosChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRightSlideDoorStateChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 453
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRightSlideDoorStateChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onRightSlideDoorStateChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTrunkStateChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrunkStateChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onTrunkStateChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onWiperSensitivityChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 438
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWiperSensitivityChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onWiperSensitivityChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/CarBodyManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
