.class public Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;
.super Lcom/xiaopeng/smartcontrol/sdk/server/BaseManagerServer;
.source "HvacManagerServer_AutoClass.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/xiaopeng/smartcontrol/sdk/server/BaseManagerServer;-><init>()V

    return-void
.end method


# virtual methods
.method public onHvacAcChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 703
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacAcChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onHvacAcChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacAcHeatNatureChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 548
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacAcHeatNatureChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onHvacAcHeatNatureChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacAirPurgeModeChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 778
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacAirPurgeModeChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onHvacAirPurgeModeChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacAutoChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 568
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacAutoChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onHvacAutoChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacAutoDefogWorkStChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 718
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacAutoDefogWorkStChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onHvacAutoDefogWorkStChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacBackMirrorHeatChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 728
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacBackMirrorHeatChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onHvacBackMirrorHeatChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacCirculationModeChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 713
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacCirculationModeChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onHvacCirculationModeChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacDeodorantChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 708
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacDeodorantChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onHvacDeodorantChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacDrvSeatBlowLevelChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 628
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacDrvSeatBlowLevelChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onHvacDrvSeatBlowLevelChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacDrvSeatHeatLevelChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 563
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacDrvSeatHeatLevelChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onHvacDrvSeatHeatLevelChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacDrvSyncChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 688
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacDrvSyncChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onHvacDrvSyncChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacDrvTempChanged(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 663
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacDrvTempChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "onHvacDrvTempChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacEAVDriverLeftHPos(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 638
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacEAVDriverLeftHPos   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onHvacEAVDriverLeftHPos"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacEAVDriverLeftVPos(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 693
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacEAVDriverLeftVPos   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onHvacEAVDriverLeftVPos"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacEAVDriverRightHPos(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 753
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacEAVDriverRightHPos   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onHvacEAVDriverRightHPos"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacEAVDriverRightVPos(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 553
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacEAVDriverRightVPos   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onHvacEAVDriverRightVPos"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacEAVPsnLeftHPos(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 588
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacEAVPsnLeftHPos   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onHvacEAVPsnLeftHPos"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacEAVPsnLeftVPos(I)V
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
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacEAVPsnLeftVPos   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onHvacEAVPsnLeftVPos"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacEAVPsnRightHPos(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 533
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacEAVPsnRightHPos   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onHvacEAVPsnRightHPos"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacEAVPsnRightVPos(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 678
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacEAVPsnRightVPos   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onHvacEAVPsnRightVPos"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacFrontDefrostChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 743
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacFrontDefrostChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onHvacFrontDefrostChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacFrontMirrorHeatChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 783
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacFrontMirrorHeatChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onHvacFrontMirrorHeatChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacInnerPM25Changed(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 758
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacInnerPM25Changed   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "onHvacInnerPM25Changed"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacInnerTempChanged(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 593
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacInnerTempChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "onHvacInnerTempChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacNIVentChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 578
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacNIVentChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onHvacNIVentChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacOutTempChanged(F)V
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
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacOutTempChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "onHvacOutTempChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacPowerChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 648
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacPowerChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onHvacPowerChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacPsnSeatBlowLevelChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 573
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacPsnSeatBlowLevelChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onHvacPsnSeatBlowLevelChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacPsnSeatHeatLevelChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 738
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacPsnSeatHeatLevelChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onHvacPsnSeatHeatLevelChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacPsnTempChanged(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 643
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacPsnTempChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "onHvacPsnTempChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacRLSeatBlowLevelChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 528
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacRLSeatBlowLevelChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onHvacRLSeatBlowLevelChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacRLSeatHeatLevelChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 788
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacRLSeatHeatLevelChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onHvacRLSeatHeatLevelChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacRLTempChanged(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 733
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacRLTempChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "onHvacRLTempChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacRRSeatBlowLevelChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 668
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacRRSeatBlowLevelChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onHvacRRSeatBlowLevelChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacRRSeatHeatLevelChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 683
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacRRSeatHeatLevelChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onHvacRRSeatHeatLevelChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacRRTempChanged(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 603
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacRRTempChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "onHvacRRTempChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacRapidCoolingChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 698
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacRapidCoolingChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onHvacRapidCoolingChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacRapidHeatChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 613
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacRapidHeatChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onHvacRapidHeatChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacRearAutoChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 748
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacRearAutoChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onHvacRearAutoChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacRearPowerChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 543
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacRearPowerChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onHvacRearPowerChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacRearWindBlowModeChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacRearWindBlowModeChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onHvacRearWindBlowModeChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacRearWindLevelChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 768
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacRearWindLevelChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onHvacRearWindLevelChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacSecRowEavLeftHPosChanged(I)V
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
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacSecRowEavLeftHPosChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onHvacSecRowEavLeftHPosChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacSecRowEavLeftVPosChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 583
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacSecRowEavLeftVPosChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onHvacSecRowEavLeftVPosChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacSecRowEavRightHPosChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 538
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacSecRowEavRightHPosChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onHvacSecRowEavRightHPosChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacSecRowEavRightVPosChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 658
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacSecRowEavRightVPosChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onHvacSecRowEavRightVPosChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacSecRowEavSweepModeChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 598
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacSecRowEavSweepModeChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onHvacSecRowEavSweepModeChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacSecRowLeftEavWindModeChange(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 763
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacSecRowLeftEavWindModeChange   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onHvacSecRowLeftEavWindModeChange"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacSecRowRightEavWindModeChange(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 633
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacSecRowRightEavWindModeChange   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onHvacSecRowRightEavWindModeChange"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacSteerHeatLevelChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 618
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacSteerHeatLevelChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onHvacSteerHeatLevelChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacThirdTempChanged(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 623
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacThirdTempChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "onHvacThirdTempChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacThirdWindBlowModeChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 653
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacThirdWindBlowModeChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onHvacThirdWindBlowModeChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacTopVentChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 773
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacTopVentChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onHvacTopVentChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacWindBlowModeChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 723
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacWindBlowModeChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onHvacWindBlowModeChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacWindLevelChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 608
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacWindLevelChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onHvacWindLevelChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onHvacWindModeColorChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 673
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHvacWindModeColorChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onHvacWindModeColorChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onIpcCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
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

    .line 9
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v0, -0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p1, "setHvacEAVPsnLeftVPosDirect"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x7b

    goto/16 :goto_0

    :sswitch_1
    const-string p1, "isHvacDeodorantEnable"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x7a

    goto/16 :goto_0

    :sswitch_2
    const-string p1, "getHvacAcpConsumption"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x79

    goto/16 :goto_0

    :sswitch_3
    const-string p1, "getHvacCirculationMode"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x78

    goto/16 :goto_0

    :sswitch_4
    const-string p1, "setHvacDrvTempStep"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x77

    goto/16 :goto_0

    :sswitch_5
    const-string p1, "setHvacRLSeatHeatLevel"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0x76

    goto/16 :goto_0

    :sswitch_6
    const-string p1, "setHvacPsnSeatVentLevel"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x75

    goto/16 :goto_0

    :sswitch_7
    const-string p1, "getHvacRRSeatHeatLevel"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x74

    goto/16 :goto_0

    :sswitch_8
    const-string p1, "getHvacAirPurgeMode"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0x73

    goto/16 :goto_0

    :sswitch_9
    const-string p1, "getHvacInnerTemp"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0x72

    goto/16 :goto_0

    :sswitch_a
    const-string p1, "getHvacInnerPM25"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0x71

    goto/16 :goto_0

    :sswitch_b
    const-string p1, "setHvacTempDriver"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0x70

    goto/16 :goto_0

    :sswitch_c
    const-string p1, "isHvacPowerOn"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0x6f

    goto/16 :goto_0

    :sswitch_d
    const-string p1, "getHvacThirdTemp"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v0, 0x6e

    goto/16 :goto_0

    :sswitch_e
    const-string p1, "setHvacSecRowLeftWindVerPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v0, 0x6d

    goto/16 :goto_0

    :sswitch_f
    const-string p1, "isSupportHvacDrvSeatVent"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v0, 0x6c

    goto/16 :goto_0

    :sswitch_10
    const-string p1, "isSupportHvacDrvSeatHeat"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v0, 0x6b

    goto/16 :goto_0

    :sswitch_11
    const-string p1, "setFrontMirrorHeatEnable"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v0, 0x6a

    goto/16 :goto_0

    :sswitch_12
    const-string p1, "setHvacRRTempStep"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v0, 0x69

    goto/16 :goto_0

    :sswitch_13
    const-string p1, "getHvacEAVPsnRightVPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v0, 0x68

    goto/16 :goto_0

    :sswitch_14
    const-string p1, "getHvacEAVPsnRightHPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v0, 0x67

    goto/16 :goto_0

    :sswitch_15
    const-string p1, "setSecRowRightEavWindMode"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v0, 0x66

    goto/16 :goto_0

    :sswitch_16
    const-string p1, "getSecRowSweepWindMode"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v0, 0x65

    goto/16 :goto_0

    :sswitch_17
    const-string p1, "setSteerHeatLevel"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v0, 0x64

    goto/16 :goto_0

    :sswitch_18
    const-string p1, "setHvacEAVDriverRightHPosDirect"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v0, 0x63

    goto/16 :goto_0

    :sswitch_19
    const-string p1, "setSecRowLeftEavWindMode"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v0, 0x62

    goto/16 :goto_0

    :sswitch_1a
    const-string p1, "getHvacSecRowRightWindVerPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v0, 0x61

    goto/16 :goto_0

    :sswitch_1b
    const-string p1, "setHvacRearAutoMode"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v0, 0x60

    goto/16 :goto_0

    :sswitch_1c
    const-string p1, "isBackMirrorHeatEnabled"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v0, 0x5f

    goto/16 :goto_0

    :sswitch_1d
    const-string p1, "setHvacRearWindSpeedLevel"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v0, 0x5e

    goto/16 :goto_0

    :sswitch_1e
    const-string p1, "setHvacEAVPsnRightHPosDirect"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v0, 0x5d

    goto/16 :goto_0

    :sswitch_1f
    const-string p1, "getHvacDrvSeatHeatLevel"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v0, 0x5c

    goto/16 :goto_0

    :sswitch_20
    const-string p1, "setHvacSecRowLeftWindHorPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v0, 0x5b

    goto/16 :goto_0

    :sswitch_21
    const-string p1, "isHvacTopVentOn"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v0, 0x5a

    goto/16 :goto_0

    :sswitch_22
    const-string p1, "setHvacRapidCoolingEnable"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v0, 0x59

    goto/16 :goto_0

    :sswitch_23
    const-string p1, "setHvacWindSpeedMin"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v0, 0x58

    goto/16 :goto_0

    :sswitch_24
    const-string p1, "setHvacWindSpeedMax"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v0, 0x57

    goto/16 :goto_0

    :sswitch_25
    const-string p1, "getHvacExternalTemp"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v0, 0x56

    goto/16 :goto_0

    :sswitch_26
    const-string p1, "getHvacSecRowRightWindHorPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    goto/16 :goto_0

    :cond_26
    const/16 v0, 0x55

    goto/16 :goto_0

    :sswitch_27
    const-string p1, "setHvacRLSeatVentLevel"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    goto/16 :goto_0

    :cond_27
    const/16 v0, 0x54

    goto/16 :goto_0

    :sswitch_28
    const-string p1, "getHvacRRSeatVentLevel"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_28

    goto/16 :goto_0

    :cond_28
    const/16 v0, 0x53

    goto/16 :goto_0

    :sswitch_29
    const-string p1, "setHvacPsnTemp"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    goto/16 :goto_0

    :cond_29
    const/16 v0, 0x52

    goto/16 :goto_0

    :sswitch_2a
    const-string p1, "setHvacPower"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    goto/16 :goto_0

    :cond_2a
    const/16 v0, 0x51

    goto/16 :goto_0

    :sswitch_2b
    const-string p1, "getHvacRearWindBlowMode"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2b

    goto/16 :goto_0

    :cond_2b
    const/16 v0, 0x50

    goto/16 :goto_0

    :sswitch_2c
    const-string p1, "setHvacThirdTempStep"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    goto/16 :goto_0

    :cond_2c
    const/16 v0, 0x4f

    goto/16 :goto_0

    :sswitch_2d
    const-string p1, "setAcHeatNatureMode"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    goto/16 :goto_0

    :cond_2d
    const/16 v0, 0x4e

    goto/16 :goto_0

    :sswitch_2e
    const-string p1, "getHvacPtcConsumption"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2e

    goto/16 :goto_0

    :cond_2e
    const/16 v0, 0x4d

    goto/16 :goto_0

    :sswitch_2f
    const-string p1, "getHvacPsnSeatHeatLevel"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2f

    goto/16 :goto_0

    :cond_2f
    const/16 v0, 0x4c

    goto/16 :goto_0

    :sswitch_30
    const-string p1, "getSecRowRightEavWindMode"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    goto/16 :goto_0

    :cond_30
    const/16 v0, 0x4b

    goto/16 :goto_0

    :sswitch_31
    const-string p1, "setHvacEAVPsnLeftHPosDirect"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    goto/16 :goto_0

    :cond_31
    const/16 v0, 0x4a

    goto/16 :goto_0

    :sswitch_32
    const-string p1, "getHvacRLSeatHeatLevel"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_32

    goto/16 :goto_0

    :cond_32
    const/16 v0, 0x49

    goto/16 :goto_0

    :sswitch_33
    const-string p1, "getHvacRearWindSpeedLevel"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_33

    goto/16 :goto_0

    :cond_33
    const/16 v0, 0x48

    goto/16 :goto_0

    :sswitch_34
    const-string p1, "getHvacDrvSeatVentLevel"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_34

    goto/16 :goto_0

    :cond_34
    const/16 v0, 0x47

    goto/16 :goto_0

    :sswitch_35
    const-string p1, "isHvacRearAutoModeOn"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_35

    goto/16 :goto_0

    :cond_35
    const/16 v0, 0x46

    goto/16 :goto_0

    :sswitch_36
    const-string p1, "setHvacRRTemp"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    goto/16 :goto_0

    :cond_36
    const/16 v0, 0x45

    goto/16 :goto_0

    :sswitch_37
    const-string p1, "setHvacRLTemp"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_37

    goto/16 :goto_0

    :cond_37
    const/16 v0, 0x44

    goto/16 :goto_0

    :sswitch_38
    const-string p1, "setHvacTopVentOn"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    goto/16 :goto_0

    :cond_38
    const/16 v0, 0x43

    goto/16 :goto_0

    :sswitch_39
    const-string p1, "setHvacWindSpeedUp"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_39

    goto/16 :goto_0

    :cond_39
    const/16 v0, 0x42

    goto/16 :goto_0

    :sswitch_3a
    const-string p1, "getHvacWindModeColor"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    goto/16 :goto_0

    :cond_3a
    const/16 v0, 0x41

    goto/16 :goto_0

    :sswitch_3b
    const-string p1, "setHvacNIVent"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    goto/16 :goto_0

    :cond_3b
    const/16 v0, 0x40

    goto/16 :goto_0

    :sswitch_3c
    const-string p1, "setHvacWindSpeedDown"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3c

    goto/16 :goto_0

    :cond_3c
    const/16 v0, 0x3f

    goto/16 :goto_0

    :sswitch_3d
    const-string p1, "getHvacWindSpeedLevel"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3d

    goto/16 :goto_0

    :cond_3d
    const/16 v0, 0x3e

    goto/16 :goto_0

    :sswitch_3e
    const-string p1, "setHvacThirdTemp"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3e

    goto/16 :goto_0

    :cond_3e
    const/16 v0, 0x3d

    goto/16 :goto_0

    :sswitch_3f
    const-string p1, "isHvacFrontDefrostEnable"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3f

    goto/16 :goto_0

    :cond_3f
    const/16 v0, 0x3c

    goto/16 :goto_0

    :sswitch_40
    const-string p1, "setHvacAcMode"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_40

    goto/16 :goto_0

    :cond_40
    const/16 v0, 0x3b

    goto/16 :goto_0

    :sswitch_41
    const-string p1, "getHvacWindBlowMode"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_41

    goto/16 :goto_0

    :cond_41
    const/16 v0, 0x3a

    goto/16 :goto_0

    :sswitch_42
    const-string p1, "getHvacPsnSeatVentLevel"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_42

    goto/16 :goto_0

    :cond_42
    const/16 v0, 0x39

    goto/16 :goto_0

    :sswitch_43
    const-string p1, "getHvacRLSeatVentLevel"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_43

    goto/16 :goto_0

    :cond_43
    const/16 v0, 0x38

    goto/16 :goto_0

    :sswitch_44
    const-string p1, "setHvacEAVDriverLeftVPosDirect"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_44

    goto/16 :goto_0

    :cond_44
    const/16 v0, 0x37

    goto/16 :goto_0

    :sswitch_45
    const-string p1, "isHvacDriverSyncMode"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_45

    goto/16 :goto_0

    :cond_45
    const/16 v0, 0x36

    goto/16 :goto_0

    :sswitch_46
    const-string p1, "getHvacRRTemp"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_46

    goto/16 :goto_0

    :cond_46
    const/16 v0, 0x35

    goto/16 :goto_0

    :sswitch_47
    const-string p1, "getHvacRLTemp"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_47

    goto/16 :goto_0

    :cond_47
    const/16 v0, 0x34

    goto/16 :goto_0

    :sswitch_48
    const-string p1, "getHvacEAVDriverLeftVPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_48

    goto/16 :goto_0

    :cond_48
    const/16 v0, 0x33

    goto/16 :goto_0

    :sswitch_49
    const-string p1, "getHvacEAVDriverLeftHPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_49

    goto/16 :goto_0

    :cond_49
    const/16 v0, 0x32

    goto/16 :goto_0

    :sswitch_4a
    const-string p1, "setHvacRLTempStep"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a

    goto/16 :goto_0

    :cond_4a
    const/16 v0, 0x31

    goto/16 :goto_0

    :sswitch_4b
    const-string p1, "getHvacEAVDriverRightVPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4b

    goto/16 :goto_0

    :cond_4b
    const/16 v0, 0x30

    goto/16 :goto_0

    :sswitch_4c
    const-string p1, "getHvacEAVDriverRightHPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4c

    goto/16 :goto_0

    :cond_4c
    const/16 v0, 0x2f

    goto/16 :goto_0

    :sswitch_4d
    const-string p1, "isHvacAcModeOn"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4d

    goto/16 :goto_0

    :cond_4d
    const/16 v0, 0x2e

    goto/16 :goto_0

    :sswitch_4e
    const-string p1, "setHvacRearWindSpeedStep"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4e

    goto/16 :goto_0

    :cond_4e
    const/16 v0, 0x2d

    goto/16 :goto_0

    :sswitch_4f
    const-string p1, "getHvacThirdRowWindBlowMode"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f

    goto/16 :goto_0

    :cond_4f
    const/16 v0, 0x2c

    goto/16 :goto_0

    :sswitch_50
    const-string p1, "isHvacAutoMode"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_50

    goto/16 :goto_0

    :cond_50
    const/16 v0, 0x2b

    goto/16 :goto_0

    :sswitch_51
    const-string p1, "isHvacNIVentOn"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_51

    goto/16 :goto_0

    :cond_51
    const/16 v0, 0x2a

    goto/16 :goto_0

    :sswitch_52
    const-string p1, "setHvacCirculationMode"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_52

    goto/16 :goto_0

    :cond_52
    const/16 v0, 0x29

    goto/16 :goto_0

    :sswitch_53
    const-string p1, "isSupportHvacRearSeatVent"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_53

    goto/16 :goto_0

    :cond_53
    const/16 v0, 0x28

    goto/16 :goto_0

    :sswitch_54
    const-string p1, "isSupportHvacRearSeatHeat"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_54

    goto/16 :goto_0

    :cond_54
    const/16 v0, 0x27

    goto/16 :goto_0

    :sswitch_55
    const-string p1, "setHvacDrvSeatHeatLevel"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_55

    goto/16 :goto_0

    :cond_55
    const/16 v0, 0x26

    goto/16 :goto_0

    :sswitch_56
    const-string p1, "setHvacDriverSyncMode"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_56

    goto/16 :goto_0

    :cond_56
    const/16 v0, 0x25

    goto/16 :goto_0

    :sswitch_57
    const-string p1, "setHvacPsnTempStep"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_57

    goto/16 :goto_0

    :cond_57
    const/16 v0, 0x24

    goto/16 :goto_0

    :sswitch_58
    const-string p1, "getHvacEAVPsnLeftVPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_58

    goto/16 :goto_0

    :cond_58
    const/16 v0, 0x23

    goto/16 :goto_0

    :sswitch_59
    const-string p1, "getHvacEAVPsnLeftHPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_59

    goto/16 :goto_0

    :cond_59
    const/16 v0, 0x22

    goto/16 :goto_0

    :sswitch_5a
    const-string p1, "setHvacRRSeatHeatLevel"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5a

    goto/16 :goto_0

    :cond_5a
    const/16 v0, 0x21

    goto/16 :goto_0

    :sswitch_5b
    const-string p1, "getHvacDriverTemp"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5b

    goto/16 :goto_0

    :cond_5b
    const/16 v0, 0x20

    goto/16 :goto_0

    :sswitch_5c
    const-string p1, "setHvacFrontDefrostEnable"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5c

    goto/16 :goto_0

    :cond_5c
    const/16 v0, 0x1f

    goto/16 :goto_0

    :sswitch_5d
    const-string p1, "isFrontMirrorHeatEnabled"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5d

    goto/16 :goto_0

    :cond_5d
    const/16 v0, 0x1e

    goto/16 :goto_0

    :sswitch_5e
    const-string p1, "getHvacSecRowLeftWindVerPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5e

    goto/16 :goto_0

    :cond_5e
    const/16 v0, 0x1d

    goto/16 :goto_0

    :sswitch_5f
    const-string p1, "setHvacEAVDriverRightVPosDirect"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5f

    goto/16 :goto_0

    :cond_5f
    const/16 v0, 0x1c

    goto/16 :goto_0

    :sswitch_60
    const-string p1, "isSupportHvacPsnSeatVent"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_60

    goto/16 :goto_0

    :cond_60
    const/16 v0, 0x1b

    goto/16 :goto_0

    :sswitch_61
    const-string p1, "isSupportHvacPsnSeatHeat"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_61

    goto/16 :goto_0

    :cond_61
    const/16 v0, 0x1a

    goto/16 :goto_0

    :sswitch_62
    const-string p1, "setHvacRearWindBlowMode"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_62

    goto/16 :goto_0

    :cond_62
    const/16 v0, 0x19

    goto/16 :goto_0

    :sswitch_63
    const-string p1, "setHvacRapidHeatEnable"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_63

    goto/16 :goto_0

    :cond_63
    const/16 v0, 0x18

    goto/16 :goto_0

    :sswitch_64
    const-string p1, "setHvacEAVPsnRightVPosDirect"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_64

    goto/16 :goto_0

    :cond_64
    const/16 v0, 0x17

    goto/16 :goto_0

    :sswitch_65
    const-string p1, "setSecRowSweepWindMode"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_65

    goto/16 :goto_0

    :cond_65
    const/16 v0, 0x16

    goto/16 :goto_0

    :sswitch_66
    const-string p1, "setBackMirrorHeatEnable"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_66

    goto/16 :goto_0

    :cond_66
    const/16 v0, 0x15

    goto/16 :goto_0

    :sswitch_67
    const-string p1, "setHvacPsnSeatHeatLevel"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_67

    goto/16 :goto_0

    :cond_67
    const/16 v0, 0x14

    goto/16 :goto_0

    :sswitch_68
    const-string p1, "setHvacDeodorantEnable"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_68

    goto/16 :goto_0

    :cond_68
    const/16 v0, 0x13

    goto/16 :goto_0

    :sswitch_69
    const-string p1, "setHvacRearPowerMode"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_69

    goto/16 :goto_0

    :cond_69
    const/16 v0, 0x12

    goto/16 :goto_0

    :sswitch_6a
    const-string p1, "getHvacPsnTemp"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6a

    goto/16 :goto_0

    :cond_6a
    const/16 v0, 0x11

    goto/16 :goto_0

    :sswitch_6b
    const-string p1, "isSupportHvacSteerHeat"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6b

    goto/16 :goto_0

    :cond_6b
    const/16 v0, 0x10

    goto/16 :goto_0

    :sswitch_6c
    const-string p1, "isHvacRearPowerModeOn"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6c

    goto/16 :goto_0

    :cond_6c
    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_6d
    const-string p1, "setHvacSecRowRightWindVerPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6d

    goto/16 :goto_0

    :cond_6d
    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_6e
    const-string p1, "setHvacWindBlowMode"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6e

    goto/16 :goto_0

    :cond_6e
    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_6f
    const-string p1, "getHvacSecRowLeftWindHorPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6f

    goto/16 :goto_0

    :cond_6f
    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_70
    const-string p1, "setHvacAutoMode"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_70

    goto/16 :goto_0

    :cond_70
    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_71
    const-string p1, "setHvacWindSpeedLevel"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_71

    goto/16 :goto_0

    :cond_71
    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_72
    const-string p1, "setHvacDrvSeatVentLevel"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_72

    goto/16 :goto_0

    :cond_72
    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_73
    const-string p1, "setHvacEAVDriverLeftHPosDirect"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_73

    goto/16 :goto_0

    :cond_73
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_74
    const-string p1, "getSteerHeatLevel"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_74

    goto :goto_0

    :cond_74
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_75
    const-string p1, "setHvacThirdRowWindBlowMode"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_75

    goto :goto_0

    :cond_75
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_76
    const-string p1, "isHvacRapidCoolingEnable"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_76

    goto :goto_0

    :cond_76
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_77
    const-string p1, "getAcHeatNatureMode"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_77

    goto :goto_0

    :cond_77
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_78
    const-string p1, "setHvacRRSeatVentLevel"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_78

    goto :goto_0

    :cond_78
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_79
    const-string p1, "setHvacSecRowRightWindHorPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_79

    goto :goto_0

    :cond_79
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_7a
    const-string p1, "getSecRowLeftEavWindMode"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7a

    goto :goto_0

    :cond_7a
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_7b
    const-string p1, "isHvacRapidHeatEnable"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7b

    goto :goto_0

    :cond_7b
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 505
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacEAVPsnLeftVPosDirect(I)V

    goto/16 :goto_1

    .line 401
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->isHvacDeodorantEnable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 309
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getHvacAcpConsumption()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 405
    :pswitch_3
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getHvacCirculationMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 333
    :pswitch_4
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacDrvTempStep(Z)V

    goto/16 :goto_1

    .line 373
    :pswitch_5
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacRLSeatHeatLevel(I)V

    goto/16 :goto_1

    .line 93
    :pswitch_6
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacPsnSeatVentLevel(I)V

    goto/16 :goto_1

    .line 45
    :pswitch_7
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getHvacRRSeatHeatLevel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 365
    :pswitch_8
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getHvacAirPurgeMode()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 81
    :pswitch_9
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getHvacInnerTemp()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_2

    .line 85
    :pswitch_a
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getHvacInnerPM25()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_2

    .line 181
    :pswitch_b
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacTempDriver(F)V

    goto/16 :goto_1

    .line 429
    :pswitch_c
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->isHvacPowerOn()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 193
    :pswitch_d
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getHvacThirdTemp()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_2

    .line 493
    :pswitch_e
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacSecRowLeftWindVerPos(I)V

    goto/16 :goto_1

    .line 237
    :pswitch_f
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->isSupportHvacDrvSeatVent()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 57
    :pswitch_10
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->isSupportHvacDrvSeatHeat()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 301
    :pswitch_11
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setFrontMirrorHeatEnable(Z)V

    goto/16 :goto_1

    .line 437
    :pswitch_12
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacRRTempStep(Z)V

    goto/16 :goto_1

    .line 261
    :pswitch_13
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getHvacEAVPsnRightVPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 113
    :pswitch_14
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getHvacEAVPsnRightHPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 157
    :pswitch_15
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setSecRowRightEavWindMode(I)V

    goto/16 :goto_1

    .line 201
    :pswitch_16
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getSecRowSweepWindMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 229
    :pswitch_17
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setSteerHeatLevel(I)V

    goto/16 :goto_1

    .line 37
    :pswitch_18
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacEAVDriverRightHPosDirect(I)V

    goto/16 :goto_1

    .line 353
    :pswitch_19
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setSecRowLeftEavWindMode(I)V

    goto/16 :goto_1

    .line 153
    :pswitch_1a
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getHvacSecRowRightWindVerPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 125
    :pswitch_1b
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacRearAutoMode(Z)V

    goto/16 :goto_1

    .line 189
    :pswitch_1c
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->isBackMirrorHeatEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 197
    :pswitch_1d
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacRearWindSpeedLevel(I)V

    goto/16 :goto_1

    .line 165
    :pswitch_1e
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacEAVPsnRightHPosDirect(I)V

    goto/16 :goto_1

    .line 341
    :pswitch_1f
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getHvacDrvSeatHeatLevel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 293
    :pswitch_20
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacSecRowLeftWindHorPos(I)V

    goto/16 :goto_1

    .line 69
    :pswitch_21
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->isHvacTopVentOn()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 121
    :pswitch_22
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacRapidCoolingEnable(Z)V

    goto/16 :goto_1

    .line 321
    :pswitch_23
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacWindSpeedMin()V

    goto/16 :goto_1

    .line 501
    :pswitch_24
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacWindSpeedMax()V

    goto/16 :goto_1

    .line 305
    :pswitch_25
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getHvacExternalTemp()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_2

    .line 425
    :pswitch_26
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getHvacSecRowRightWindHorPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 289
    :pswitch_27
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacRLSeatVentLevel(I)V

    goto/16 :goto_1

    .line 145
    :pswitch_28
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getHvacRRSeatVentLevel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 141
    :pswitch_29
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacPsnTemp(F)V

    goto/16 :goto_1

    .line 325
    :pswitch_2a
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacPower(Z)V

    goto/16 :goto_1

    .line 313
    :pswitch_2b
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getHvacRearWindBlowMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 213
    :pswitch_2c
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacThirdTempStep(Z)V

    goto/16 :goto_1

    .line 73
    :pswitch_2d
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setAcHeatNatureMode(I)V

    goto/16 :goto_1

    .line 377
    :pswitch_2e
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getHvacPtcConsumption()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 345
    :pswitch_2f
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getHvacPsnSeatHeatLevel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 489
    :pswitch_30
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getSecRowRightEavWindMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 497
    :pswitch_31
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacEAVPsnLeftHPosDirect(I)V

    goto/16 :goto_1

    .line 317
    :pswitch_32
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getHvacRLSeatHeatLevel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 65
    :pswitch_33
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getHvacRearWindSpeedLevel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 173
    :pswitch_34
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getHvacDrvSeatVentLevel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 21
    :pswitch_35
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->isHvacRearAutoModeOn()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 277
    :pswitch_36
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacRRTemp(F)V

    goto/16 :goto_1

    .line 269
    :pswitch_37
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacRLTemp(F)V

    goto/16 :goto_1

    .line 481
    :pswitch_38
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacTopVentOn()V

    goto/16 :goto_1

    .line 465
    :pswitch_39
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacWindSpeedUp()V

    goto/16 :goto_1

    .line 53
    :pswitch_3a
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getHvacWindModeColor()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 393
    :pswitch_3b
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacNIVent(Z)V

    goto/16 :goto_1

    .line 433
    :pswitch_3c
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacWindSpeedDown()V

    goto/16 :goto_1

    .line 457
    :pswitch_3d
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getHvacWindSpeedLevel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 349
    :pswitch_3e
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacThirdTemp(F)V

    goto/16 :goto_1

    .line 281
    :pswitch_3f
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->isHvacFrontDefrostEnable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 133
    :pswitch_40
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacAcMode(Z)V

    goto/16 :goto_1

    .line 169
    :pswitch_41
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getHvacWindBlowMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 221
    :pswitch_42
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getHvacPsnSeatVentLevel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 49
    :pswitch_43
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getHvacRLSeatVentLevel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 257
    :pswitch_44
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacEAVDriverLeftVPosDirect(I)V

    goto/16 :goto_1

    .line 245
    :pswitch_45
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->isHvacDriverSyncMode()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 297
    :pswitch_46
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getHvacRRTemp()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_2

    .line 25
    :pswitch_47
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getHvacRLTemp()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_2

    .line 149
    :pswitch_48
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getHvacEAVDriverLeftVPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 29
    :pswitch_49
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getHvacEAVDriverLeftHPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 105
    :pswitch_4a
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacRLTempStep(Z)V

    goto/16 :goto_1

    .line 225
    :pswitch_4b
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getHvacEAVDriverRightVPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 421
    :pswitch_4c
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getHvacEAVDriverRightHPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 385
    :pswitch_4d
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->isHvacAcModeOn()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 397
    :pswitch_4e
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacRearWindSpeedStep(Z)V

    goto/16 :goto_1

    .line 77
    :pswitch_4f
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getHvacThirdRowWindBlowMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 241
    :pswitch_50
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->isHvacAutoMode()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 249
    :pswitch_51
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->isHvacNIVentOn()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 209
    :pswitch_52
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacCirculationMode(I)V

    goto/16 :goto_1

    .line 445
    :pswitch_53
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->isSupportHvacRearSeatVent()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 129
    :pswitch_54
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->isSupportHvacRearSeatHeat()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 61
    :pswitch_55
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacDrvSeatHeatLevel(I)V

    goto/16 :goto_1

    .line 137
    :pswitch_56
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacDriverSyncMode(Z)V

    goto/16 :goto_1

    .line 17
    :pswitch_57
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacPsnTempStep(Z)V

    goto/16 :goto_1

    .line 253
    :pswitch_58
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getHvacEAVPsnLeftVPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 453
    :pswitch_59
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getHvacEAVPsnLeftHPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 369
    :pswitch_5a
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacRRSeatHeatLevel(I)V

    goto/16 :goto_1

    .line 329
    :pswitch_5b
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getHvacDriverTemp()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_2

    .line 473
    :pswitch_5c
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacFrontDefrostEnable(Z)V

    goto/16 :goto_1

    .line 13
    :pswitch_5d
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->isFrontMirrorHeatEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 177
    :pswitch_5e
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getHvacSecRowLeftWindVerPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 185
    :pswitch_5f
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacEAVDriverRightVPosDirect(I)V

    goto/16 :goto_1

    .line 101
    :pswitch_60
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->isSupportHvacPsnSeatVent()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 205
    :pswitch_61
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->isSupportHvacPsnSeatHeat()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 41
    :pswitch_62
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacRearWindBlowMode(I)V

    goto/16 :goto_1

    .line 285
    :pswitch_63
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacRapidHeatEnable(Z)V

    goto/16 :goto_1

    .line 413
    :pswitch_64
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacEAVPsnRightVPosDirect(I)V

    goto/16 :goto_1

    .line 161
    :pswitch_65
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setSecRowSweepWindMode(I)V

    goto/16 :goto_1

    .line 89
    :pswitch_66
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setBackMirrorHeatEnable(Z)V

    goto/16 :goto_1

    .line 417
    :pswitch_67
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacPsnSeatHeatLevel(I)V

    goto/16 :goto_1

    .line 117
    :pswitch_68
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacDeodorantEnable(Z)V

    goto/16 :goto_1

    .line 469
    :pswitch_69
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacRearPowerMode(Z)V

    goto/16 :goto_1

    .line 233
    :pswitch_6a
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getHvacPsnTemp()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_2

    .line 477
    :pswitch_6b
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->isSupportHvacSteerHeat()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 441
    :pswitch_6c
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->isHvacRearPowerModeOn()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 449
    :pswitch_6d
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacSecRowRightWindVerPos(I)V

    goto/16 :goto_1

    .line 265
    :pswitch_6e
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacWindBlowMode(I)V

    goto/16 :goto_1

    .line 109
    :pswitch_6f
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getHvacSecRowLeftWindHorPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 273
    :pswitch_70
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacAutoMode(Z)V

    goto/16 :goto_1

    .line 389
    :pswitch_71
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacWindSpeedLevel(I)V

    goto :goto_1

    .line 485
    :pswitch_72
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacDrvSeatVentLevel(I)V

    goto :goto_1

    .line 381
    :pswitch_73
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacEAVDriverLeftHPosDirect(I)V

    goto :goto_1

    .line 409
    :pswitch_74
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getSteerHeatLevel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 361
    :pswitch_75
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacThirdRowWindBlowMode(I)V

    goto :goto_1

    .line 461
    :pswitch_76
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->isHvacRapidCoolingEnable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    .line 337
    :pswitch_77
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getAcHeatNatureMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 357
    :pswitch_78
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacRRSeatVentLevel(I)V

    goto :goto_1

    .line 33
    :pswitch_79
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->setHvacSecRowRightWindHorPos(I)V

    :goto_1
    const/4 p1, 0x0

    goto :goto_2

    .line 97
    :pswitch_7a
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->getSecRowLeftEavWindMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 217
    :pswitch_7b
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/hvac/HvacManagerServer$Implementation;->isHvacRapidHeatEnable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_7c

    .line 509
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_7c
    const-string p1, ""

    :goto_3
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x7c82e7ab -> :sswitch_7b
        -0x7c066001 -> :sswitch_7a
        -0x7ba6c5ae -> :sswitch_79
        -0x7a6a4a88 -> :sswitch_78
        -0x7a3926ce -> :sswitch_77
        -0x79519126 -> :sswitch_76
        -0x78f2ec7e -> :sswitch_75
        -0x72bf5667 -> :sswitch_74
        -0x7149f994 -> :sswitch_73
        -0x705f982c -> :sswitch_72
        -0x6a911489 -> :sswitch_71
        -0x674b94bc -> :sswitch_70
        -0x660800f9 -> :sswitch_6f
        -0x65506911 -> :sswitch_6e
        -0x644fd806 -> :sswitch_6d
        -0x63e9c157 -> :sswitch_6c
        -0x63e6a3b4 -> :sswitch_6b
        -0x62fee7c7 -> :sswitch_6a
        -0x61d5010e -> :sswitch_69
        -0x617833a1 -> :sswitch_68
        -0x5e0b28ca -> :sswitch_67
        -0x5bd3e8c5 -> :sswitch_66
        -0x5b4a5c34 -> :sswitch_65
        -0x59cbaca0 -> :sswitch_64
        -0x593211e3 -> :sswitch_63
        -0x56348a4d -> :sswitch_62
        -0x53715455 -> :sswitch_61
        -0x536af590 -> :sswitch_60
        -0x4f48666d -> :sswitch_5f
        -0x4eb11351 -> :sswitch_5e
        -0x4d0f036d -> :sswitch_5d
        -0x4b7c3c91 -> :sswitch_5c
        -0x45eaa91e -> :sswitch_5b
        -0x45d95ee3 -> :sswitch_5a
        -0x411bba96 -> :sswitch_59
        -0x41155d64 -> :sswitch_58
        -0x3f2997e7 -> :sswitch_57
        -0x3dab9f08 -> :sswitch_56
        -0x3bceac87 -> :sswitch_55
        -0x3b926572 -> :sswitch_54
        -0x3b8c06ad -> :sswitch_53
        -0x3b5c5b88 -> :sswitch_52
        -0x30ba54f7 -> :sswitch_51
        -0x2be82ff4 -> :sswitch_50
        -0x28bfb58a -> :sswitch_4f
        -0x26ca99cb -> :sswitch_4e
        -0x269b0e42 -> :sswitch_4d
        -0x23327834 -> :sswitch_4c
        -0x232c1b02 -> :sswitch_4b
        -0x1f50d034 -> :sswitch_4a
        -0x1bd7edd1 -> :sswitch_49
        -0x1bd1909f -> :sswitch_48
        -0x1abf292c -> :sswitch_47
        -0x1a6a9c26 -> :sswitch_46
        -0x1584f040 -> :sswitch_45
        -0x1545c9e2 -> :sswitch_44
        -0x13e1c3b6 -> :sswitch_43
        -0xcef437b -> :sswitch_42
        -0x94cfe1d -> :sswitch_41
        -0x85c2b49 -> :sswitch_40
        -0x75a31c9 -> :sswitch_3f
        -0x7103337 -> :sswitch_3e
        -0x1bc9695 -> :sswitch_3d
        0x4ce8a4f -> :sswitch_3c
        0xc6864c2 -> :sswitch_3b
        0x1118f3d2 -> :sswitch_3a
        0x12a6fb88 -> :sswitch_39
        0x12b61217 -> :sswitch_38
        0x136524e0 -> :sswitch_37
        0x13b9b1e6 -> :sswitch_36
        0x14ba22cf -> :sswitch_35
        0x154d38c8 -> :sswitch_34
        0x1aca8d2f -> :sswitch_33
        0x20af27ef -> :sswitch_32
        0x23045eff -> :sswitch_31
        0x269aa868 -> :sswitch_30
        0x27a1a82a -> :sswitch_2f
        0x28483f02 -> :sswitch_2e
        0x29c36e3e -> :sswitch_2d
        0x2f61bb35 -> :sswitch_2c
        0x2f7846a7 -> :sswitch_2b
        0x3220caf3 -> :sswitch_2a
        0x33668bad -> :sswitch_29
        0x3750f604 -> :sswitch_28
        0x3a62fbbe -> :sswitch_27
        0x3a8ce1de -> :sswitch_26
        0x3f21ff85 -> :sswitch_25
        0x42385617 -> :sswitch_24
        0x42385705 -> :sswitch_23
        0x428c6412 -> :sswitch_22
        0x43bf464f -> :sswitch_21
        0x49c4c813 -> :sswitch_20
        0x49de246d -> :sswitch_1f
        0x4a3023ae -> :sswitch_1e
        0x4d0e293b -> :sswitch_1d
        0x4ee44cc1 -> :sswitch_1c
        0x50f64c08 -> :sswitch_1b
        0x51e3cf86 -> :sswitch_1a
        0x540c5273 -> :sswitch_19
        0x54b369e1 -> :sswitch_18
        0x553711a5 -> :sswitch_17
        0x5670e458 -> :sswitch_16
        0x58de4474 -> :sswitch_15
        0x5997bbf1 -> :sswitch_14
        0x599e1923 -> :sswitch_13
        0x5a49c9d2 -> :sswitch_12
        0x5e69c5b9 -> :sswitch_11
        0x5fb05188 -> :sswitch_10
        0x5fb6b04d -> :sswitch_f
        0x611bb5bb -> :sswitch_e
        0x66196655 -> :sswitch_d
        0x68d2c66a -> :sswitch_c
        0x69025bee -> :sswitch_b
        0x6982ecd0 -> :sswitch_a
        0x69851fc4 -> :sswitch_9
        0x69d8cc0a -> :sswitch_8
        0x6be1e1a9 -> :sswitch_7
        0x6d63eb91 -> :sswitch_6
        0x6ef3e763 -> :sswitch_5
        0x73f80df6 -> :sswitch_4
        0x765ee504 -> :sswitch_3
        0x799b65f3 -> :sswitch_2
        0x7b36f697 -> :sswitch_1
        0x7f088eb1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
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
