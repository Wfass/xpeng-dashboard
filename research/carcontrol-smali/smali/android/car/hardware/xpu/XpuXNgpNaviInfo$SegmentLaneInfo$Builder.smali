.class public final Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuXNgpNaviInfo.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 9905
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->access$13700()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;)V
    .locals 0

    .line 9898
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllLaneInfos(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;"
        }
    .end annotation

    .line 10025
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;->copyOnWrite()V

    .line 10026
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->access$14400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addLaneInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;
    .locals 1

    .line 10012
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;->copyOnWrite()V

    .line 10013
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->access$14300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;)V

    return-object p0
.end method

.method public addLaneInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;
    .locals 1

    .line 9986
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;->copyOnWrite()V

    .line 9987
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->access$14100(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V

    return-object p0
.end method

.method public addLaneInfos(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;
    .locals 1

    .line 9999
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;->copyOnWrite()V

    .line 10000
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->access$14200(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;)V

    return-object p0
.end method

.method public addLaneInfos(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;
    .locals 1

    .line 9973
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;->copyOnWrite()V

    .line 9974
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->access$14000(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V

    return-object p0
.end method

.method public clearLaneInfos()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;
    .locals 1

    .line 10037
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;->copyOnWrite()V

    .line 10038
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->access$14500(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;)V

    return-object p0
.end method

.method public clearSegmentIndex()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;
    .locals 1

    .line 10084
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;->copyOnWrite()V

    .line 10085
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->access$14800(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;)V

    return-object p0
.end method

.method public getLaneInfos(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;
    .locals 1

    .line 9937
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->getLaneInfos(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    move-result-object p1

    return-object p1
.end method

.method public getLaneInfosCount()I
    .locals 1

    .line 9928
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->getLaneInfosCount()I

    move-result v0

    return v0
.end method

.method public getLaneInfosList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;",
            ">;"
        }
    .end annotation

    .line 9917
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    .line 9918
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->getLaneInfosList()Ljava/util/List;

    move-result-object v0

    .line 9917
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSegmentIndex()I
    .locals 1

    .line 10062
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->getSegmentIndex()I

    move-result v0

    return v0
.end method

.method public removeLaneInfos(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;
    .locals 1

    .line 10049
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;->copyOnWrite()V

    .line 10050
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->access$14600(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;I)V

    return-object p0
.end method

.method public setLaneInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;
    .locals 1

    .line 9961
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;->copyOnWrite()V

    .line 9962
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->access$13900(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;)V

    return-object p0
.end method

.method public setLaneInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;
    .locals 1

    .line 9948
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;->copyOnWrite()V

    .line 9949
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->access$13800(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V

    return-object p0
.end method

.method public setSegmentIndex(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;
    .locals 1

    .line 10072
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;->copyOnWrite()V

    .line 10073
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->access$14700(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;I)V

    return-object p0
.end method
