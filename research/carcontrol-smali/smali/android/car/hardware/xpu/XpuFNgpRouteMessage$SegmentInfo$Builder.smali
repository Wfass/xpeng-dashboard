.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3628
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->access$800()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;)V
    .locals 0

    .line 3621
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBeginIndex()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;
    .locals 1

    .line 3754
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->copyOnWrite()V

    .line 3755
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->access$1500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)V

    return-object p0
.end method

.method public clearBeginOffset()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;
    .locals 1

    .line 3859
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->copyOnWrite()V

    .line 3860
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->access$2100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)V

    return-object p0
.end method

.method public clearDesc()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;
    .locals 1

    .line 3824
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->copyOnWrite()V

    .line 3825
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->access$1900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)V

    return-object p0
.end method

.method public clearEndIndex()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;
    .locals 1

    .line 3789
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->copyOnWrite()V

    .line 3790
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->access$1700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)V

    return-object p0
.end method

.method public clearEndOffset()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;
    .locals 1

    .line 3894
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->copyOnWrite()V

    .line 3895
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->access$2300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)V

    return-object p0
.end method

.method public clearMileage()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;
    .locals 1

    .line 3662
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->copyOnWrite()V

    .line 3663
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->access$1000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)V

    return-object p0
.end method

.method public clearStatus()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;
    .locals 1

    .line 3719
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->copyOnWrite()V

    .line 3720
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->access$1300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)V

    return-object p0
.end method

.method public getBeginIndex()I
    .locals 1

    .line 3732
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->getBeginIndex()I

    move-result v0

    return v0
.end method

.method public getBeginOffset()I
    .locals 1

    .line 3837
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->getBeginOffset()I

    move-result v0

    return v0
.end method

.method public getDesc()I
    .locals 1

    .line 3802
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->getDesc()I

    move-result v0

    return v0
.end method

.method public getEndIndex()I
    .locals 1

    .line 3767
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->getEndIndex()I

    move-result v0

    return v0
.end method

.method public getEndOffset()I
    .locals 1

    .line 3872
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->getEndOffset()I

    move-result v0

    return v0
.end method

.method public getMileage()I
    .locals 1

    .line 3640
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->getMileage()I

    move-result v0

    return v0
.end method

.method public getStatus()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentAvailableStatus;
    .locals 1

    .line 3697
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->getStatus()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentAvailableStatus;

    move-result-object v0

    return-object v0
.end method

.method public getStatusValue()I
    .locals 1

    .line 3675
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->getStatusValue()I

    move-result v0

    return v0
.end method

.method public setBeginIndex(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;
    .locals 1

    .line 3742
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->copyOnWrite()V

    .line 3743
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->access$1400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;I)V

    return-object p0
.end method

.method public setBeginOffset(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;
    .locals 1

    .line 3847
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->copyOnWrite()V

    .line 3848
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->access$2000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;I)V

    return-object p0
.end method

.method public setDesc(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;
    .locals 1

    .line 3812
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->copyOnWrite()V

    .line 3813
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->access$1800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;I)V

    return-object p0
.end method

.method public setEndIndex(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;
    .locals 1

    .line 3777
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->copyOnWrite()V

    .line 3778
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->access$1600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;I)V

    return-object p0
.end method

.method public setEndOffset(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;
    .locals 1

    .line 3882
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->copyOnWrite()V

    .line 3883
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->access$2200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;I)V

    return-object p0
.end method

.method public setMileage(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;
    .locals 1

    .line 3650
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->copyOnWrite()V

    .line 3651
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->access$900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;I)V

    return-object p0
.end method

.method public setStatus(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentAvailableStatus;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;
    .locals 1

    .line 3707
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->copyOnWrite()V

    .line 3708
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->access$1200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentAvailableStatus;)V

    return-object p0
.end method

.method public setStatusValue(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;
    .locals 1

    .line 3685
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->copyOnWrite()V

    .line 3686
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->access$1100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;I)V

    return-object p0
.end method
