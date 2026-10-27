.class public Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;
.super Lcom/xiaopeng/smartcontrol/sdk/server/BaseManagerServer;
.source "SeatManagerServer_AutoClass.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/xiaopeng/smartcontrol/sdk/server/BaseManagerServer;-><init>()V

    return-void
.end method


# virtual methods
.method public onDriverAntiFatigueStChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 652
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDriverAntiFatigueStChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onDriverAntiFatigueStChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDrvBeltWaringChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 667
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDrvBeltWaringChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onDrvBeltWaringChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDrvCushionExtPosChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 562
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDrvCushionExtPosChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onDrvCushionExtPosChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDrvHeadrestChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 552
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDrvHeadrestChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onDrvHeadrestChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDrvHorPosChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 512
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDrvHorPosChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onDrvHorPosChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDrvLegPosChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 692
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDrvLegPosChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onDrvLegPosChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDrvSeatAntiFatiguePreview()V
    .locals 2

    .line 782
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    const-string v1, "onDrvSeatAntiFatiguePreview   params: null"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onDrvSeatAntiFatiguePreview"

    const/4 v1, 0x0

    .line 783
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDrvSeatAntiFatigueSwChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 712
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDrvSeatAntiFatigueSwChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onDrvSeatAntiFatigueSwChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDrvSeatMoveStateChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 527
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDrvSeatMoveStateChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onDrvSeatMoveStateChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDrvSeatOccupiedChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 567
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDrvSeatOccupiedChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onDrvSeatOccupiedChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDrvSeatSbrStChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 727
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDrvSeatSbrStChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onDrvSeatSbrStChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDrvTiltPosChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 637
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDrvTiltPosChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onDrvTiltPosChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDrvVerPosChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 572
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDrvVerPosChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onDrvVerPosChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onIpcCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
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
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

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

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p1, "switchRRSeatId"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v5, 0x73

    goto/16 :goto_0

    :sswitch_1
    const-string p1, "getRlSeatEqualMemory"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v5, 0x72

    goto/16 :goto_0

    :sswitch_2
    const-string p1, "getDriverAntiFatigueStatus"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v5, 0x71

    goto/16 :goto_0

    :sswitch_3
    const-string p1, "setRLSeatLegHorPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v5, 0x70

    goto/16 :goto_0

    :sswitch_4
    const-string p1, "getPsnSeatSelectId"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v5, 0x6f

    goto/16 :goto_0

    :sswitch_5
    const-string p1, "getRRSeatName"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v5, 0x6e

    goto/16 :goto_0

    :sswitch_6
    const-string p1, "setSeatMenuNotShowKeepTime"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v5, 0x6d

    goto/16 :goto_0

    :sswitch_7
    const-string p1, "setDriverAntiFatigueMode"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v5, 0x6c

    goto/16 :goto_0

    :sswitch_8
    const-string p1, "setMassagerIntensity"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v5, 0x6b

    goto/16 :goto_0

    :sswitch_9
    const-string p1, "getRRSeatTiltPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v5, 0x6a

    goto/16 :goto_0

    :sswitch_a
    const-string p1, "stopDrvSeatMove"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v5, 0x69

    goto/16 :goto_0

    :sswitch_b
    const-string p1, "isTrSeatOccupied"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v5, 0x68

    goto/16 :goto_0

    :sswitch_c
    const-string p1, "getSecRowLtSeatEZ"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v5, 0x67

    goto/16 :goto_0

    :sswitch_d
    const-string p1, "setPsnSrsEnable"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v5, 0x66

    goto/16 :goto_0

    :sswitch_e
    const-string p1, "setTrdRowLtSeatTiltPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v5, 0x65

    goto/16 :goto_0

    :sswitch_f
    const-string p1, "getDSeatTiltPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v5, 0x64

    goto/16 :goto_0

    :sswitch_10
    const-string p1, "setSecRowRtSeatZeroGrav"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v5, 0x63

    goto/16 :goto_0

    :sswitch_11
    const-string p1, "setTrdRowRtSeatFold"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v5, 0x62

    goto/16 :goto_0

    :sswitch_12
    const-string p1, "getRLSeatLegVerPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v5, 0x61

    goto/16 :goto_0

    :sswitch_13
    const-string p1, "startMassagerWithIntensity"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v5, 0x60

    goto/16 :goto_0

    :sswitch_14
    const-string p1, "getPSeatHorzPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v5, 0x5f

    goto/16 :goto_0

    :sswitch_15
    const-string p1, "setPsnSeatAllPositionsWithoutSave"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v5, 0x5e

    goto/16 :goto_0

    :sswitch_16
    const-string p1, "getPsnSeatEqualMemory"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v5, 0x5d

    goto/16 :goto_0

    :sswitch_17
    const-string p1, "setPsnSeatLayFlat"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v5, 0x5c

    goto/16 :goto_0

    :sswitch_18
    const-string p1, "setRRSeatHorPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v5, 0x5b

    goto/16 :goto_0

    :sswitch_19
    const-string p1, "setDSeatVerPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v5, 0x5a

    goto/16 :goto_0

    :sswitch_1a
    const-string p1, "getRLSeatLegHorPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v5, 0x59

    goto/16 :goto_0

    :sswitch_1b
    const-string p1, "getRLSeatTiltPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v5, 0x58

    goto/16 :goto_0

    :sswitch_1c
    const-string p1, "switchRLSeatId"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v5, 0x57

    goto/16 :goto_0

    :sswitch_1d
    const-string p1, "setPSeatVerPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v5, 0x56

    goto/16 :goto_0

    :sswitch_1e
    const-string p1, "getRRSeatSelectId"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v5, 0x55

    goto/16 :goto_0

    :sswitch_1f
    const-string p1, "getPsnSrsEnable"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v5, 0x54

    goto/16 :goto_0

    :sswitch_20
    const-string p1, "setSecRowLtSeatEZ"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v5, 0x53

    goto/16 :goto_0

    :sswitch_21
    const-string p1, "setDSeatLegPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v5, 0x52

    goto/16 :goto_0

    :sswitch_22
    const-string p1, "getTrdRowSeatStowState"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v5, 0x51

    goto/16 :goto_0

    :sswitch_23
    const-string p1, "setDSeatHorzPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v5, 0x50

    goto/16 :goto_0

    :sswitch_24
    const-string p1, "setPSeatLegPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v5, 0x4f

    goto/16 :goto_0

    :sswitch_25
    const-string p1, "setRLSeatFold"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v5, 0x4e

    goto/16 :goto_0

    :sswitch_26
    const-string p1, "setDSeatCushionExtPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    goto/16 :goto_0

    :cond_26
    const/16 v5, 0x4d

    goto/16 :goto_0

    :sswitch_27
    const-string p1, "isDrvHeadrestNormal"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    goto/16 :goto_0

    :cond_27
    const/16 v5, 0x4c

    goto/16 :goto_0

    :sswitch_28
    const-string p1, "getMassageMemoryMode"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_28

    goto/16 :goto_0

    :cond_28
    const/16 v5, 0x4b

    goto/16 :goto_0

    :sswitch_29
    const-string p1, "startMassager"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    goto/16 :goto_0

    :cond_29
    const/16 v5, 0x4a

    goto/16 :goto_0

    :sswitch_2a
    const-string p1, "getDrvSeatMoveState"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    goto/16 :goto_0

    :cond_2a
    const/16 v5, 0x49

    goto/16 :goto_0

    :sswitch_2b
    const-string p1, "setSecRowLtSeatZeroGrav"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2b

    goto/16 :goto_0

    :cond_2b
    const/16 v5, 0x48

    goto/16 :goto_0

    :sswitch_2c
    const-string p1, "getTrdRowLtSeatTiltPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    goto/16 :goto_0

    :cond_2c
    const/16 v5, 0x47

    goto/16 :goto_0

    :sswitch_2d
    const-string p1, "setDriverSeatAntiFatigueSw"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    goto/16 :goto_0

    :cond_2d
    const/16 v5, 0x46

    goto/16 :goto_0

    :sswitch_2e
    const-string p1, "isRlSeatOccupied"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2e

    goto/16 :goto_0

    :cond_2e
    const/16 v5, 0x45

    goto/16 :goto_0

    :sswitch_2f
    const-string p1, "setTrdRowSeatStow"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2f

    goto/16 :goto_0

    :cond_2f
    const/16 v5, 0x44

    goto/16 :goto_0

    :sswitch_30
    const-string p1, "getRRSeatHorPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    goto/16 :goto_0

    :cond_30
    const/16 v5, 0x43

    goto/16 :goto_0

    :sswitch_31
    const-string p1, "isDrvSeatOccupied"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    goto/16 :goto_0

    :cond_31
    const/16 v5, 0x42

    goto/16 :goto_0

    :sswitch_32
    const-string p1, "getTrdRowLtSeatFold"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_32

    goto/16 :goto_0

    :cond_32
    const/16 v5, 0x41

    goto/16 :goto_0

    :sswitch_33
    const-string p1, "setDrvSeatLayFlat"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_33

    goto/16 :goto_0

    :cond_33
    const/16 v5, 0x40

    goto/16 :goto_0

    :sswitch_34
    const-string p1, "getDriverSeatAntiFatigueSw"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_34

    goto/16 :goto_0

    :cond_34
    const/16 v5, 0x3f

    goto/16 :goto_0

    :sswitch_35
    const-string p1, "setRRSeatTiltPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_35

    goto/16 :goto_0

    :cond_35
    const/16 v5, 0x3e

    goto/16 :goto_0

    :sswitch_36
    const-string p1, "isRmSeatOccupied"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    goto/16 :goto_0

    :cond_36
    const/16 v5, 0x3d

    goto/16 :goto_0

    :sswitch_37
    const-string p1, "isPsnHeadrestNormal"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_37

    goto/16 :goto_0

    :cond_37
    const/16 v5, 0x3c

    goto/16 :goto_0

    :sswitch_38
    const-string p1, "setMassageMemoryMode"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    goto/16 :goto_0

    :cond_38
    const/16 v5, 0x3b

    goto/16 :goto_0

    :sswitch_39
    const-string p1, "setTrdRowRtSeatTiltPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_39

    goto/16 :goto_0

    :cond_39
    const/16 v5, 0x3a

    goto/16 :goto_0

    :sswitch_3a
    const-string p1, "setSecRowLtSeatOneKeyRestore"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    goto/16 :goto_0

    :cond_3a
    const/16 v5, 0x39

    goto/16 :goto_0

    :sswitch_3b
    const-string p1, "getRLSeatName"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    goto/16 :goto_0

    :cond_3b
    const/16 v5, 0x38

    goto/16 :goto_0

    :sswitch_3c
    const-string p1, "getPsnSeatMoveState"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3c

    goto/16 :goto_0

    :cond_3c
    const/16 v5, 0x37

    goto/16 :goto_0

    :sswitch_3d
    const-string p1, "setPSeatTiltPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3d

    goto/16 :goto_0

    :cond_3d
    const/16 v5, 0x36

    goto/16 :goto_0

    :sswitch_3e
    const-string p1, "isPsnSeatSbrSt"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3e

    goto/16 :goto_0

    :cond_3e
    const/16 v5, 0x35

    goto/16 :goto_0

    :sswitch_3f
    const-string p1, "getDSeatHorzPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3f

    goto/16 :goto_0

    :cond_3f
    const/16 v5, 0x34

    goto/16 :goto_0

    :sswitch_40
    const-string p1, "getSecRowRtSeatZeroGrav"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_40

    goto/16 :goto_0

    :cond_40
    const/16 v5, 0x33

    goto/16 :goto_0

    :sswitch_41
    const-string p1, "setDriverAntiFatigueReq"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_41

    goto/16 :goto_0

    :cond_41
    const/16 v5, 0x32

    goto/16 :goto_0

    :sswitch_42
    const-string p1, "getParkDropdownMenuEnable"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_42

    goto/16 :goto_0

    :cond_42
    const/16 v5, 0x31

    goto/16 :goto_0

    :sswitch_43
    const-string p1, "restoreDrvSeatPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_43

    goto/16 :goto_0

    :cond_43
    const/16 v5, 0x30

    goto/16 :goto_0

    :sswitch_44
    const-string p1, "isDrvBeltUnbuckled"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_44

    goto/16 :goto_0

    :cond_44
    const/16 v5, 0x2f

    goto/16 :goto_0

    :sswitch_45
    const-string p1, "isRearSeatSbrSt"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_45

    goto/16 :goto_0

    :cond_45
    const/16 v5, 0x2e

    goto/16 :goto_0

    :sswitch_46
    const-string p1, "isMassagerRunning"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_46

    goto/16 :goto_0

    :cond_46
    const/16 v5, 0x2d

    goto/16 :goto_0

    :sswitch_47
    const-string p1, "getSecRowRtSeatEZ"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_47

    goto/16 :goto_0

    :cond_47
    const/16 v5, 0x2c

    goto/16 :goto_0

    :sswitch_48
    const-string p1, "setRRSeatLegVerPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_48

    goto/16 :goto_0

    :cond_48
    const/16 v5, 0x2b

    goto/16 :goto_0

    :sswitch_49
    const-string p1, "isTlSeatOccupied"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_49

    goto/16 :goto_0

    :cond_49
    const/16 v5, 0x2a

    goto/16 :goto_0

    :sswitch_4a
    const-string p1, "switchPsnSeatId"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a

    goto/16 :goto_0

    :cond_4a
    const/16 v5, 0x29

    goto/16 :goto_0

    :sswitch_4b
    const-string p1, "setRLSeatTiltPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4b

    goto/16 :goto_0

    :cond_4b
    const/16 v5, 0x28

    goto/16 :goto_0

    :sswitch_4c
    const-string p1, "stopMassager"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4c

    goto/16 :goto_0

    :cond_4c
    const/16 v5, 0x27

    goto/16 :goto_0

    :sswitch_4d
    const-string p1, "setSecRowRtSeatOneKeyRestore"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4d

    goto/16 :goto_0

    :cond_4d
    const/16 v5, 0x26

    goto/16 :goto_0

    :sswitch_4e
    const-string p1, "setRLSeatHorPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4e

    goto/16 :goto_0

    :cond_4e
    const/16 v5, 0x25

    goto/16 :goto_0

    :sswitch_4f
    const-string p1, "getRrSeatEqualMemory"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f

    goto/16 :goto_0

    :cond_4f
    const/16 v5, 0x24

    goto/16 :goto_0

    :sswitch_50
    const-string p1, "isTmSeatOccupied"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_50

    goto/16 :goto_0

    :cond_50
    const/16 v5, 0x23

    goto/16 :goto_0

    :sswitch_51
    const-string p1, "setRRSeatLegHorPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_51

    goto/16 :goto_0

    :cond_51
    const/16 v5, 0x22

    goto/16 :goto_0

    :sswitch_52
    const-string p1, "getPSeatTiltPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_52

    goto/16 :goto_0

    :cond_52
    const/16 v5, 0x21

    goto/16 :goto_0

    :sswitch_53
    const-string p1, "isPsnBeltUnbuckled"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_53

    goto/16 :goto_0

    :cond_53
    const/16 v5, 0x20

    goto/16 :goto_0

    :sswitch_54
    const-string p1, "getTrdRowRtSeatFold"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_54

    goto/16 :goto_0

    :cond_54
    const/16 v5, 0x1f

    goto/16 :goto_0

    :sswitch_55
    const-string p1, "stopPsnSeatMove"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_55

    goto/16 :goto_0

    :cond_55
    const/16 v5, 0x1e

    goto/16 :goto_0

    :sswitch_56
    const-string p1, "setSecRowLtSeatZeroGravWithScreen"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_56

    goto/16 :goto_0

    :cond_56
    const/16 v5, 0x1d

    goto/16 :goto_0

    :sswitch_57
    const-string p1, "getPsnSeatName"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_57

    goto/16 :goto_0

    :cond_57
    const/16 v5, 0x1c

    goto/16 :goto_0

    :sswitch_58
    const-string p1, "getTrdRowRtSeatTiltPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_58

    goto/16 :goto_0

    :cond_58
    const/16 v5, 0x1b

    goto/16 :goto_0

    :sswitch_59
    const-string p1, "getMassagerRunningEffectId"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_59

    goto/16 :goto_0

    :cond_59
    const/16 v5, 0x1a

    goto/16 :goto_0

    :sswitch_5a
    const-string p1, "restorePsnSeatPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5a

    goto/16 :goto_0

    :cond_5a
    const/16 v5, 0x19

    goto/16 :goto_0

    :sswitch_5b
    const-string p1, "setDrvSeatAllPositions"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5b

    goto/16 :goto_0

    :cond_5b
    const/16 v5, 0x18

    goto/16 :goto_0

    :sswitch_5c
    const-string p1, "getDSeatVerPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5c

    goto/16 :goto_0

    :cond_5c
    const/16 v5, 0x17

    goto/16 :goto_0

    :sswitch_5d
    const-string p1, "isRrSeatOccupied"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5d

    goto/16 :goto_0

    :cond_5d
    const/16 v5, 0x16

    goto/16 :goto_0

    :sswitch_5e
    const-string p1, "isPsnSeatOccupied"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5e

    goto/16 :goto_0

    :cond_5e
    const/16 v5, 0x15

    goto/16 :goto_0

    :sswitch_5f
    const-string p1, "setTrdRowLtSeatFold"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5f

    goto/16 :goto_0

    :cond_5f
    const/16 v5, 0x14

    goto/16 :goto_0

    :sswitch_60
    const-string p1, "isDrvSeatSbrSt"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_60

    goto/16 :goto_0

    :cond_60
    const/16 v5, 0x13

    goto/16 :goto_0

    :sswitch_61
    const-string p1, "setDrvSeatAllPositionsWithoutSave"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_61

    goto/16 :goto_0

    :cond_61
    const/16 v5, 0x12

    goto/16 :goto_0

    :sswitch_62
    const-string p1, "getPSeatVerPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_62

    goto/16 :goto_0

    :cond_62
    const/16 v5, 0x11

    goto/16 :goto_0

    :sswitch_63
    const-string p1, "getRRSeatLegVerPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_63

    goto/16 :goto_0

    :cond_63
    const/16 v5, 0x10

    goto/16 :goto_0

    :sswitch_64
    const-string p1, "setRRSeatFold"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_64

    goto/16 :goto_0

    :cond_64
    const/16 v5, 0xf

    goto/16 :goto_0

    :sswitch_65
    const-string p1, "setSecRowRtSeatEZ"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_65

    goto/16 :goto_0

    :cond_65
    const/16 v5, 0xe

    goto/16 :goto_0

    :sswitch_66
    const-string p1, "getRLSeatSelectId"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_66

    goto/16 :goto_0

    :cond_66
    const/16 v5, 0xd

    goto/16 :goto_0

    :sswitch_67
    const-string p1, "getSecRowLtSeatZeroGrav"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_67

    goto/16 :goto_0

    :cond_67
    const/16 v5, 0xc

    goto/16 :goto_0

    :sswitch_68
    const-string p1, "setSecRowRtSeatZeroGravWithScreen"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_68

    goto/16 :goto_0

    :cond_68
    const/16 v5, 0xb

    goto/16 :goto_0

    :sswitch_69
    const-string p1, "setDSeatTiltPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_69

    goto/16 :goto_0

    :cond_69
    const/16 v5, 0xa

    goto/16 :goto_0

    :sswitch_6a
    const-string p1, "getDSeatLegPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6a

    goto/16 :goto_0

    :cond_6a
    const/16 v5, 0x9

    goto/16 :goto_0

    :sswitch_6b
    const-string p1, "setRearSeatFold"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6b

    goto/16 :goto_0

    :cond_6b
    const/16 v5, 0x8

    goto/16 :goto_0

    :sswitch_6c
    const-string p1, "getPSeatLegPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6c

    goto :goto_0

    :cond_6c
    const/4 v5, 0x7

    goto :goto_0

    :sswitch_6d
    const-string p1, "getMassagerIntensity"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6d

    goto :goto_0

    :cond_6d
    const/4 v5, 0x6

    goto :goto_0

    :sswitch_6e
    const-string p1, "getRLSeatHorPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6e

    goto :goto_0

    :cond_6e
    const/4 v5, 0x5

    goto :goto_0

    :sswitch_6f
    const-string p1, "getDSeatCushionExtPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6f

    goto :goto_0

    :cond_6f
    move v5, v0

    goto :goto_0

    :sswitch_70
    const-string p1, "setRLSeatLegVerPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_70

    goto :goto_0

    :cond_70
    move v5, v1

    goto :goto_0

    :sswitch_71
    const-string p1, "setPsnSeatAllPositions"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_71

    goto :goto_0

    :cond_71
    move v5, v2

    goto :goto_0

    :sswitch_72
    const-string p1, "getRRSeatLegHorPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_72

    goto :goto_0

    :cond_72
    move v5, v3

    goto :goto_0

    :sswitch_73
    const-string p1, "setPSeatHorzPos"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_73

    goto :goto_0

    :cond_73
    move v5, v4

    :goto_0
    const-string p1, ","

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    .line 182
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->switchRRSeatId(I)V

    goto/16 :goto_1

    .line 369
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getRlSeatEqualMemory()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 95
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getDriverAntiFatigueStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 227
    :pswitch_3
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setRLSeatLegHorPos(I)V

    goto/16 :goto_1

    .line 263
    :pswitch_4
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getPsnSeatSelectId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 70
    :pswitch_5
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getRRSeatName(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 324
    :pswitch_6
    invoke-virtual {p3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 325
    iget-object p2, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    aget-object p3, p1, v4

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p3

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-interface {p2, p3, v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setSeatMenuNotShowKeepTime(ZJ)V

    goto/16 :goto_1

    .line 479
    :pswitch_7
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setDriverAntiFatigueMode(I)V

    goto/16 :goto_1

    .line 483
    :pswitch_8
    invoke-virtual {p3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 484
    iget-object p2, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    aget-object p3, p1, v4

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p3, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setMassagerIntensity(II)V

    goto/16 :goto_1

    .line 399
    :pswitch_9
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getRRSeatTiltPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 239
    :pswitch_a
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->stopDrvSeatMove()V

    goto/16 :goto_1

    .line 407
    :pswitch_b
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->isTrSeatOccupied()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 141
    :pswitch_c
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getSecRowLtSeatEZ()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 202
    :pswitch_d
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setPsnSrsEnable(Z)V

    goto/16 :goto_1

    .line 251
    :pswitch_e
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setTrdRowLtSeatTiltPos(I)V

    goto/16 :goto_1

    .line 120
    :pswitch_f
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getDSeatTiltPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 154
    :pswitch_10
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setSecRowRtSeatZeroGrav(Z)V

    goto/16 :goto_1

    .line 345
    :pswitch_11
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setTrdRowRtSeatFold(I)V

    goto/16 :goto_1

    .line 41
    :pswitch_12
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getRLSeatLegVerPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 124
    :pswitch_13
    invoke-virtual {p3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 125
    iget-object p2, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    aget-object p3, p1, v4

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    aget-object v0, p1, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object p1, p1, v2

    invoke-interface {p2, p3, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->startMassagerWithIntensity(IILjava/lang/String;)V

    goto/16 :goto_1

    .line 387
    :pswitch_14
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getPSeatHorzPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 377
    :pswitch_15
    invoke-virtual {p3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 378
    iget-object p2, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    aget-object p3, p1, v4

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    aget-object v0, p1, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p3, v0, v2, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setPsnSeatAllPositionsWithoutSave(IIII)V

    goto/16 :goto_1

    .line 137
    :pswitch_16
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getPsnSeatEqualMemory()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 283
    :pswitch_17
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setPsnSeatLayFlat()V

    goto/16 :goto_1

    .line 443
    :pswitch_18
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setRRSeatHorPos(I)V

    goto/16 :goto_1

    .line 353
    :pswitch_19
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setDSeatVerPos(I)V

    goto/16 :goto_1

    .line 459
    :pswitch_1a
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getRLSeatLegHorPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 411
    :pswitch_1b
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getRLSeatTiltPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 107
    :pswitch_1c
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->switchRLSeatId(I)V

    goto/16 :goto_1

    .line 259
    :pswitch_1d
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setPSeatVerPos(I)V

    goto/16 :goto_1

    .line 103
    :pswitch_1e
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getRRSeatSelectId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 329
    :pswitch_1f
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getPsnSrsEnable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 61
    :pswitch_20
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setSecRowLtSeatEZ(I)V

    goto/16 :goto_1

    .line 471
    :pswitch_21
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setDSeatLegPos(I)V

    goto/16 :goto_1

    .line 158
    :pswitch_22
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getTrdRowSeatStowState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 361
    :pswitch_23
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setDSeatHorzPos(I)V

    goto/16 :goto_1

    .line 271
    :pswitch_24
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setPSeatLegPos(I)V

    goto/16 :goto_1

    .line 166
    :pswitch_25
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setRLSeatFold(Z)V

    goto/16 :goto_1

    .line 21
    :pswitch_26
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setDSeatCushionExtPos(I)V

    goto/16 :goto_1

    .line 431
    :pswitch_27
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->isDrvHeadrestNormal()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 247
    :pswitch_28
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getMassageMemoryMode(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 90
    :pswitch_29
    invoke-virtual {p3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 91
    iget-object p2, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    aget-object p3, p1, v4

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    aget-object p1, p1, v3

    invoke-interface {p2, p3, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->startMassager(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 307
    :pswitch_2a
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getDrvSeatMoveState()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 320
    :pswitch_2b
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setSecRowLtSeatZeroGrav(Z)V

    goto/16 :goto_1

    .line 267
    :pswitch_2c
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getTrdRowLtSeatTiltPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 99
    :pswitch_2d
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setDriverSeatAntiFatigueSw(Z)V

    goto/16 :goto_1

    .line 198
    :pswitch_2e
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->isRlSeatOccupied()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 357
    :pswitch_2f
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setTrdRowSeatStow(I)V

    goto/16 :goto_1

    .line 415
    :pswitch_30
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getRRSeatHorPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 13
    :pswitch_31
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->isDrvSeatOccupied()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 25
    :pswitch_32
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getTrdRowLtSeatFold()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 333
    :pswitch_33
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setDrvSeatLayFlat()V

    goto/16 :goto_1

    .line 423
    :pswitch_34
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getDriverSeatAntiFatigueSw()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 231
    :pswitch_35
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setRRSeatTiltPos(I)V

    goto/16 :goto_1

    .line 463
    :pswitch_36
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->isRmSeatOccupied()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 373
    :pswitch_37
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->isPsnHeadrestNormal()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 210
    :pswitch_38
    invoke-virtual {p3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 211
    iget-object p2, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    aget-object p3, p1, v4

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p3, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setMassageMemoryMode(II)V

    goto/16 :goto_1

    .line 17
    :pswitch_39
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setTrdRowRtSeatTiltPos(I)V

    goto/16 :goto_1

    .line 395
    :pswitch_3a
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setSecRowLtSeatOneKeyRestore()V

    goto/16 :goto_1

    .line 129
    :pswitch_3b
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getRLSeatName(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 243
    :pswitch_3c
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getPsnSeatMoveState()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 316
    :pswitch_3d
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setPSeatTiltPos(I)V

    goto/16 :goto_1

    .line 475
    :pswitch_3e
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->isPsnSeatSbrSt()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 190
    :pswitch_3f
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getDSeatHorzPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 303
    :pswitch_40
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getSecRowRtSeatZeroGrav()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 427
    :pswitch_41
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setDriverAntiFatigueReq(I)V

    goto/16 :goto_1

    .line 435
    :pswitch_42
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getParkDropdownMenuEnable()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 37
    :pswitch_43
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->restoreDrvSeatPos()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 53
    :pswitch_44
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->isDrvBeltUnbuckled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 45
    :pswitch_45
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->isRearSeatSbrSt()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 341
    :pswitch_46
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->isMassagerRunning(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 86
    :pswitch_47
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getSecRowRtSeatEZ()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 279
    :pswitch_48
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setRRSeatLegVerPos(I)V

    goto/16 :goto_1

    .line 174
    :pswitch_49
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->isTlSeatOccupied()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 467
    :pswitch_4a
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->switchPsnSeatId(I)V

    goto/16 :goto_1

    .line 235
    :pswitch_4b
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setRLSeatTiltPos(I)V

    goto/16 :goto_1

    .line 451
    :pswitch_4c
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->stopMassager(I)V

    goto/16 :goto_1

    .line 33
    :pswitch_4d
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setSecRowRtSeatOneKeyRestore()V

    goto/16 :goto_1

    .line 78
    :pswitch_4e
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setRLSeatHorPos(I)V

    goto/16 :goto_1

    .line 29
    :pswitch_4f
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getRrSeatEqualMemory()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 116
    :pswitch_50
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->isTmSeatOccupied()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 439
    :pswitch_51
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setRRSeatLegHorPos(I)V

    goto/16 :goto_1

    .line 365
    :pswitch_52
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getPSeatTiltPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 178
    :pswitch_53
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->isPsnBeltUnbuckled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 419
    :pswitch_54
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getTrdRowRtSeatFold()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 170
    :pswitch_55
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->stopPsnSeatMove()V

    goto/16 :goto_1

    .line 145
    :pswitch_56
    invoke-virtual {p3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 146
    iget-object p2, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    aget-object p3, p1, v4

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p3

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p3, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setSecRowLtSeatZeroGravWithScreen(ZI)V

    goto/16 :goto_1

    .line 391
    :pswitch_57
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getPsnSeatName(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 186
    :pswitch_58
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getTrdRowRtSeatTiltPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 299
    :pswitch_59
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getMassagerRunningEffectId(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 150
    :pswitch_5a
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->restorePsnSeatPos()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 311
    :pswitch_5b
    invoke-virtual {p3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 312
    iget-object p2, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    move-object v5, p2

    check-cast v5, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    aget-object p2, p1, v4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object p2, p1, v3

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object p2, p1, v2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aget-object p2, p1, v1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-interface/range {v5 .. v10}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setDrvSeatAllPositions(IIIII)V

    goto/16 :goto_1

    .line 162
    :pswitch_5c
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getDSeatVerPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 337
    :pswitch_5d
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->isRrSeatOccupied()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 194
    :pswitch_5e
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->isPsnSeatOccupied()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 219
    :pswitch_5f
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setTrdRowLtSeatFold(I)V

    goto/16 :goto_1

    .line 133
    :pswitch_60
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->isDrvSeatSbrSt()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 65
    :pswitch_61
    invoke-virtual {p3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 66
    iget-object p2, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    move-object v5, p2

    check-cast v5, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    aget-object p2, p1, v4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object p2, p1, v3

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object p2, p1, v2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aget-object p2, p1, v1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-interface/range {v5 .. v10}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setDrvSeatAllPositionsWithoutSave(IIIII)V

    goto/16 :goto_1

    .line 206
    :pswitch_62
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getPSeatVerPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 291
    :pswitch_63
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getRRSeatLegVerPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 403
    :pswitch_64
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setRRSeatFold(Z)V

    goto/16 :goto_1

    .line 255
    :pswitch_65
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setSecRowRtSeatEZ(I)V

    goto/16 :goto_1

    .line 223
    :pswitch_66
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getRLSeatSelectId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 49
    :pswitch_67
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getSecRowLtSeatZeroGrav()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 111
    :pswitch_68
    invoke-virtual {p3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 112
    iget-object p2, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    aget-object p3, p1, v4

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p3

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p3, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setSecRowRtSeatZeroGravWithScreen(ZI)V

    goto/16 :goto_1

    .line 455
    :pswitch_69
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setDSeatTiltPos(I)V

    goto/16 :goto_1

    .line 74
    :pswitch_6a
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getDSeatLegPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 295
    :pswitch_6b
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setRearSeatFold(Z)V

    goto/16 :goto_1

    .line 57
    :pswitch_6c
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getPSeatLegPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 349
    :pswitch_6d
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getMassagerIntensity(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 82
    :pswitch_6e
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getRLSeatHorPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 215
    :pswitch_6f
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getDSeatCushionExtPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 287
    :pswitch_70
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setRLSeatLegVerPos(I)V

    goto :goto_1

    .line 382
    :pswitch_71
    invoke-virtual {p3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 383
    iget-object p2, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    aget-object p3, p1, v4

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    aget-object v0, p1, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p3, v0, v2, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setPsnSeatAllPositions(IIII)V

    goto :goto_1

    .line 275
    :pswitch_72
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-interface {p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->getRRSeatLegHorPos()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 447
    :pswitch_73
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->mImpl:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer$Implementation;->setPSeatHorzPos(I)V

    :goto_1
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_74

    .line 488
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_74
    const-string p1, ""

    :goto_3
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f4c608e -> :sswitch_73
        -0x7b664744 -> :sswitch_72
        -0x7971a869 -> :sswitch_71
        -0x786b79e2 -> :sswitch_70
        -0x7626cfdf -> :sswitch_6f
        -0x756a3b62 -> :sswitch_6e
        -0x73bd750a -> :sswitch_6d
        -0x733790db -> :sswitch_6c
        -0x6e3fd514 -> :sswitch_6b
        -0x6deff1e7 -> :sswitch_6a
        -0x6b69b4f0 -> :sswitch_69
        -0x6a83ca34 -> :sswitch_68
        -0x6891576c -> :sswitch_67
        -0x6734db74 -> :sswitch_66
        -0x64b03db9 -> :sswitch_65
        -0x6419e418 -> :sswitch_64
        -0x640f599c -> :sswitch_63
        -0x62221a90 -> :sswitch_62
        -0x60d8a6af -> :sswitch_61
        -0x605587bf -> :sswitch_60
        -0x5fbb7cbc -> :sswitch_5f
        -0x5f89a05c -> :sswitch_5e
        -0x5f73b613 -> :sswitch_5d
        -0x5cda7b9c -> :sswitch_5c
        -0x5cb12f8c -> :sswitch_5b
        -0x5c9a7e0e -> :sswitch_5a
        -0x5a2cfe12 -> :sswitch_59
        -0x57e8683a -> :sswitch_58
        -0x56d16b1b -> :sswitch_57
        -0x528d236e -> :sswitch_56
        -0x4ea60601 -> :sswitch_55
        -0x49ff6b0e -> :sswitch_54
        -0x47df0d15 -> :sswitch_53
        -0x455eef88 -> :sswitch_52
        -0x448fadd0 -> :sswitch_51
        -0x4447435a -> :sswitch_50
        -0x4378e906 -> :sswitch_4f
        -0x3f214056 -> :sswitch_4e
        -0x3948e2bd -> :sswitch_4d
        -0x3512a197 -> :sswitch_4c
        -0x34bdbb2a -> :sswitch_4b
        -0x33fc3829 -> :sswitch_4a
        -0x32ca49db -> :sswitch_49
        -0x2d38c028 -> :sswitch_48
        -0x2ca6a5c5 -> :sswitch_47
        -0x2afa0312 -> :sswitch_46
        -0x28003b8f -> :sswitch_45
        -0x25a290d2 -> :sswitch_44
        -0x2546d38b -> :sswitch_43
        -0x20796ccd -> :sswitch_42
        -0x1d9ff4dd -> :sswitch_41
        -0x1d5e9db2 -> :sswitch_40
        -0x11e91c0e -> :sswitch_3f
        -0x11689d82 -> :sswitch_3e
        -0xf15f47c -> :sswitch_3d
        -0xd805eda -> :sswitch_3c
        -0xbd55da0 -> :sswitch_3b
        -0xb472d43 -> :sswitch_3a
        -0x9a3a8c6 -> :sswitch_39
        -0x8f02213 -> :sswitch_38
        -0x86008a4 -> :sswitch_37
        -0x802d698 -> :sswitch_36
        -0x693daf0 -> :sswitch_35
        -0x687673a -> :sswitch_34
        -0x4d3b44e -> :sswitch_33
        -0x3b811c8 -> :sswitch_32
        -0x39830ff -> :sswitch_31
        0x7f1f524 -> :sswitch_30
        0x89b1b24 -> :sswitch_2f
        0x97a22e7 -> :sswitch_2e
        0xfa87e3a -> :sswitch_2d
        0x110570c0 -> :sswitch_2c
        0x11c1d7a0 -> :sswitch_2b
        0x14bc1d69 -> :sswitch_2a
        0x186fbac9 -> :sswitch_29
        0x1b79d179 -> :sswitch_28
        0x1cf30379 -> :sswitch_27
        0x2104b22d -> :sswitch_26
        0x224b81e2 -> :sswitch_25
        0x232de299 -> :sswitch_24
        0x245fdefe -> :sswitch_23
        0x270f5059 -> :sswitch_22
        0x2875818d -> :sswitch_21
        0x2c08b50d -> :sswitch_20
        0x2cd27c82 -> :sswitch_1f
        0x2fdd4b92 -> :sswitch_1e
        0x344358e4 -> :sswitch_1d
        0x3714900e -> :sswitch_1c
        0x386bde62 -> :sswitch_1b
        0x3966ff02 -> :sswitch_1a
        0x398af7d8 -> :sswitch_19
        0x3e3af030 -> :sswitch_18
        0x42879aaf -> :sswitch_17
        0x46e445bb -> :sswitch_16
        0x4a070e4e -> :sswitch_15
        0x4a6aa466 -> :sswitch_14
        0x50a209c4 -> :sswitch_13
        0x50bdecaa -> :sswitch_12
        0x59fd29fe -> :sswitch_11
        0x5cf4915a -> :sswitch_10
        0x5e4d5004 -> :sswitch_f
        0x5f4a3034 -> :sswitch_e
        0x631b778e -> :sswitch_d
        0x64124d01 -> :sswitch_c
        0x6447dd2b -> :sswitch_b
        0x647b9fdc -> :sswitch_a
        0x6695be9c -> :sswitch_9
        0x67d8976a -> :sswitch_8
        0x699f37be -> :sswitch_7
        0x6a00041c -> :sswitch_6
        0x6dc53c66 -> :sswitch_5
        0x6dd84c91 -> :sswitch_4
        0x703d9876 -> :sswitch_3
        0x7302cdd9 -> :sswitch_2
        0x731be3c0 -> :sswitch_1
        0x7479f394 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public onMassagerStatusChange(ILjava/lang/String;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "param0",
            "param1",
            "param2",
            "param3"
        }
    .end annotation

    .line 672
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMassagerStatusChange   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onMassagerStatusChange"

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onParkDropdownMenuStatusChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 627
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onParkDropdownMenuStatusChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onParkDropdownMenuStatusChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPsnBeltWaringChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 742
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPsnBeltWaringChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onPsnBeltWaringChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPsnHeadrestChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 587
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPsnHeadrestChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onPsnHeadrestChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPsnHorPosChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 497
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPsnHorPosChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onPsnHorPosChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPsnLegPosChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 617
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPsnLegPosChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onPsnLegPosChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPsnOnSeatChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 682
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPsnOnSeatChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onPsnOnSeatChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPsnSeatEqualMemoryChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 737
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPsnSeatEqualMemoryChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onPsnSeatEqualMemoryChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPsnSeatMoveStateChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 717
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPsnSeatMoveStateChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onPsnSeatMoveStateChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPsnSeatNameChanged(ILjava/lang/String;)V
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

    .line 632
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPsnSeatNameChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onPsnSeatNameChanged"

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPsnSeatSbrStChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 757
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPsnSeatSbrStChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onPsnSeatSbrStChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPsnSeatSelectIdChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 702
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPsnSeatSelectIdChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onPsnSeatSelectIdChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPsnSrsStatusChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 507
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPsnSrsStatusChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onPsnSrsStatusChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPsnTiltPosChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 522
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPsnTiltPosChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onPsnTiltPosChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPsnVerPosChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 697
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPsnVerPosChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onPsnVerPosChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRLSeatNameChanged(ILjava/lang/String;)V
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

    .line 732
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRLSeatNameChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onRLSeatNameChanged"

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRLSeatSelectIdChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 677
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRLSeatSelectIdChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onRLSeatSelectIdChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRRSeatLegVerPosChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 642
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRRSeatLegVerPosChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onRRSeatLegVerPosChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRRSeatNameChanged(ILjava/lang/String;)V
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

    .line 597
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRRSeatNameChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onRRSeatNameChanged"

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRRSeatSelectIdChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 542
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRRSeatSelectIdChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onRRSeatSelectIdChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRearSeatSbrStChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 662
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRearSeatSbrStChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onRearSeatSbrStChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRhythmStatusChange(IIIZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "param0",
            "param1",
            "param2",
            "param3"
        }
    .end annotation

    .line 547
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRhythmStatusChange   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onRhythmStatusChange"

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRlOnSeatChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 537
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRlOnSeatChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onRlOnSeatChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRlSeatEqualMemoryChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 517
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRlSeatEqualMemoryChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onRlSeatEqualMemoryChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRlSeatHorPosChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 502
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRlSeatHorPosChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onRlSeatHorPosChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRlSeatLegHorPosChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 777
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRlSeatLegHorPosChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onRlSeatLegHorPosChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRlSeatLegVerPosChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 602
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRlSeatLegVerPosChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onRlSeatLegVerPosChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRlSeatTiltPosChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 592
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRlSeatTiltPosChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onRlSeatTiltPosChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRmOnSeatChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRmOnSeatChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onRmOnSeatChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRrOnSeatChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 607
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRrOnSeatChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onRrOnSeatChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRrSeatEqualMemoryChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 532
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRrSeatEqualMemoryChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onRrSeatEqualMemoryChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRrSeatHorPosChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 582
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRrSeatHorPosChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onRrSeatHorPosChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRrSeatLegHorPosChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 772
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRrSeatLegHorPosChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onRrSeatLegHorPosChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRrSeatTiltPosChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 577
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRrSeatTiltPosChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onRrSeatTiltPosChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSecRowLtSeatEZChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 767
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSecRowLtSeatEZChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onSecRowLtSeatEZChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSecRowLtSeatZeroGravChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 657
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSecRowLtSeatZeroGravChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onSecRowLtSeatZeroGravChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSecRowRtSeatEZChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 687
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSecRowRtSeatEZChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onSecRowRtSeatEZChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSecRowRtSeatZeroGravChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 612
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSecRowRtSeatZeroGravChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onSecRowRtSeatZeroGravChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTlOnSeatChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 557
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTlOnSeatChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onTlOnSeatChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTmOnSeatChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 762
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTmOnSeatChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onTmOnSeatChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTrOnSeatChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 747
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrOnSeatChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "onTrOnSeatChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTrdRowLtFoldStatusChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 647
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrdRowLtFoldStatusChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onTrdRowLtFoldStatusChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTrdRowLtSeatTiltPosChangedpos(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 752
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrdRowLtSeatTiltPosChangedpos   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onTrdRowLtSeatTiltPosChangedpos"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTrdRowRtFoldStatusChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 722
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrdRowRtFoldStatusChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onTrdRowRtFoldStatusChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTrdRowRtSeatTiltPosChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 622
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrdRowRtSeatTiltPosChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onTrdRowRtSeatTiltPosChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTrdRowSeatStowStatusChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 707
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrdRowSeatStowStatusChanged   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "onTrdRowSeatStowStatusChanged"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/SeatManagerServer_AutoClass;->sendIpc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
