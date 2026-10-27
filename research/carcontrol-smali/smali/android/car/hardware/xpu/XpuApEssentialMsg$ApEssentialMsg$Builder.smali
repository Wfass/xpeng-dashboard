.class public final Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuApEssentialMsg.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsgOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsgOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 9459
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$19200()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuApEssentialMsg$1;)V
    .locals 0

    .line 9452
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllTrainingfail(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;"
        }
    .end annotation

    .line 9918
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9919
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$23100(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addTrainingfail(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9909
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9910
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$23000(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;I)V

    return-object p0
.end method

.method public clearArrow()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9573
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9574
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$20200(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V

    return-object p0
.end method

.method public clearBdistancepercent()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9664
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9665
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$21000(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V

    return-object p0
.end method

.method public clearFailReason()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9550
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9551
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$20000(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V

    return-object p0
.end method

.method public clearFavoriteSlotReady()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9802
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9803
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$22200(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V

    return-object p0
.end method

.method public clearGlobalTrajectoryIndex()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9710
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9711
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$21400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V

    return-object p0
.end method

.method public clearHdmapId()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9779
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9780
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$22000(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V

    return-object p0
.end method

.method public clearIsHdmap()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9825
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9826
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$22400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V

    return-object p0
.end method

.method public clearMapPoseState()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9733
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9734
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$21600(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V

    return-object p0
.end method

.method public clearMapTime()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9995
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9996
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$23800(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V

    return-object p0
.end method

.method public clearParkState()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9687
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9688
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$21200(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V

    return-object p0
.end method

.method public clearRemainDistance()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9619
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9620
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$20600(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V

    return-object p0
.end method

.method public clearSilentFavoriteState()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9756
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9757
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$21800(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V

    return-object p0
.end method

.method public clearStatusIndicate()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9527
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9528
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$19800(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V

    return-object p0
.end method

.method public clearTerminalAttr()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9949
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9950
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$23400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V

    return-object p0
.end method

.method public clearTerminalFloor()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9972
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9973
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$23600(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V

    return-object p0
.end method

.method public clearTrainingTips()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9848
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9849
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$22600(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V

    return-object p0
.end method

.method public clearTrainingfail()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9926
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9927
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$23200(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V

    return-object p0
.end method

.method public clearTrainingst()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9871
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9872
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$22800(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V

    return-object p0
.end method

.method public clearVoice()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9596
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9597
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$20400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V

    return-object p0
.end method

.method public clearXpuAbnormal()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9504
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9505
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$19600(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V

    return-object p0
.end method

.method public clearXputips()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9481
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9482
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$19400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V

    return-object p0
.end method

.method public getArrow()I
    .locals 1

    .line 9559
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->getArrow()I

    move-result v0

    return v0
.end method

.method public getBdistancepercent()Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;
    .locals 1

    .line 9634
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->getBdistancepercent()Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    move-result-object v0

    return-object v0
.end method

.method public getFailReason()I
    .locals 1

    .line 9536
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->getFailReason()I

    move-result v0

    return v0
.end method

.method public getFavoriteSlotReady()I
    .locals 1

    .line 9788
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->getFavoriteSlotReady()I

    move-result v0

    return v0
.end method

.method public getGlobalTrajectoryIndex()I
    .locals 1

    .line 9696
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->getGlobalTrajectoryIndex()I

    move-result v0

    return v0
.end method

.method public getHdmapId()J
    .locals 2

    .line 9765
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->getHdmapId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIsHdmap()I
    .locals 1

    .line 9811
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->getIsHdmap()I

    move-result v0

    return v0
.end method

.method public getMapPoseState()I
    .locals 1

    .line 9719
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->getMapPoseState()I

    move-result v0

    return v0
.end method

.method public getMapTime()J
    .locals 2

    .line 9981
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->getMapTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getParkState()I
    .locals 1

    .line 9673
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->getParkState()I

    move-result v0

    return v0
.end method

.method public getRemainDistance()F
    .locals 1

    .line 9605
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->getRemainDistance()F

    move-result v0

    return v0
.end method

.method public getSilentFavoriteState()I
    .locals 1

    .line 9742
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->getSilentFavoriteState()I

    move-result v0

    return v0
.end method

.method public getStatusIndicate()I
    .locals 1

    .line 9513
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->getStatusIndicate()I

    move-result v0

    return v0
.end method

.method public getTerminalAttr()I
    .locals 1

    .line 9935
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->getTerminalAttr()I

    move-result v0

    return v0
.end method

.method public getTerminalFloor()I
    .locals 1

    .line 9958
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->getTerminalFloor()I

    move-result v0

    return v0
.end method

.method public getTrainingTips()I
    .locals 1

    .line 9834
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->getTrainingTips()I

    move-result v0

    return v0
.end method

.method public getTrainingfail(I)I
    .locals 1

    .line 9894
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->getTrainingfail(I)I

    move-result p1

    return p1
.end method

.method public getTrainingfailCount()I
    .locals 1

    .line 9888
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->getTrainingfailCount()I

    move-result v0

    return v0
.end method

.method public getTrainingfailList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 9881
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    .line 9882
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->getTrainingfailList()Ljava/util/List;

    move-result-object v0

    .line 9881
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTrainingst()I
    .locals 1

    .line 9857
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->getTrainingst()I

    move-result v0

    return v0
.end method

.method public getVoice()I
    .locals 1

    .line 9582
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->getVoice()I

    move-result v0

    return v0
.end method

.method public getXpuAbnormal()I
    .locals 1

    .line 9490
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->getXpuAbnormal()I

    move-result v0

    return v0
.end method

.method public getXputips()I
    .locals 1

    .line 9467
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->getXputips()I

    move-result v0

    return v0
.end method

.method public hasBdistancepercent()Z
    .locals 1

    .line 9628
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->hasBdistancepercent()Z

    move-result v0

    return v0
.end method

.method public mergeBdistancepercent(Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9657
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9658
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$20900(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;)V

    return-object p0
.end method

.method public setArrow(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9565
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9566
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$20100(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;I)V

    return-object p0
.end method

.method public setBdistancepercent(Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent$Builder;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9649
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9650
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$20800(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent$Builder;)V

    return-object p0
.end method

.method public setBdistancepercent(Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9640
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9641
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$20700(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;)V

    return-object p0
.end method

.method public setFailReason(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9542
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9543
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$19900(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;I)V

    return-object p0
.end method

.method public setFavoriteSlotReady(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9794
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9795
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$22100(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;I)V

    return-object p0
.end method

.method public setGlobalTrajectoryIndex(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9702
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9703
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$21300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;I)V

    return-object p0
.end method

.method public setHdmapId(J)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9771
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9772
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$21900(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;J)V

    return-object p0
.end method

.method public setIsHdmap(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9817
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9818
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$22300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;I)V

    return-object p0
.end method

.method public setMapPoseState(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9725
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9726
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$21500(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;I)V

    return-object p0
.end method

.method public setMapTime(J)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9987
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9988
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$23700(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;J)V

    return-object p0
.end method

.method public setParkState(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9679
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9680
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$21100(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;I)V

    return-object p0
.end method

.method public setRemainDistance(F)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9611
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9612
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$20500(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;F)V

    return-object p0
.end method

.method public setSilentFavoriteState(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9748
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9749
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$21700(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;I)V

    return-object p0
.end method

.method public setStatusIndicate(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9519
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9520
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$19700(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;I)V

    return-object p0
.end method

.method public setTerminalAttr(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9941
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9942
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$23300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;I)V

    return-object p0
.end method

.method public setTerminalFloor(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9964
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9965
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$23500(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;I)V

    return-object p0
.end method

.method public setTrainingTips(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9840
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9841
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$22500(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;I)V

    return-object p0
.end method

.method public setTrainingfail(II)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9901
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9902
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$22900(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;II)V

    return-object p0
.end method

.method public setTrainingst(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9863
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9864
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$22700(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;I)V

    return-object p0
.end method

.method public setVoice(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9588
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9589
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$20300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;I)V

    return-object p0
.end method

.method public setXpuAbnormal(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9496
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9497
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$19500(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;I)V

    return-object p0
.end method

.method public setXputips(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9473
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->copyOnWrite()V

    .line 9474
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->access$19300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;I)V

    return-object p0
.end method
