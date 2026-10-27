.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 11709
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->access$17000()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;)V
    .locals 0

    .line 11702
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllSegmentList(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;"
        }
    .end annotation

    .line 12043
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->copyOnWrite()V

    .line 12044
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->access$19000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllV2PointList(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;"
        }
    .end annotation

    .line 11898
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->copyOnWrite()V

    .line 11899
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->access$18100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addSegmentList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;
    .locals 1

    .line 12030
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->copyOnWrite()V

    .line 12031
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->access$18900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;)V

    return-object p0
.end method

.method public addSegmentList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;
    .locals 1

    .line 12004
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->copyOnWrite()V

    .line 12005
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->access$18700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)V

    return-object p0
.end method

.method public addSegmentList(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;
    .locals 1

    .line 12017
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->copyOnWrite()V

    .line 12018
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->access$18800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;)V

    return-object p0
.end method

.method public addSegmentList(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;
    .locals 1

    .line 11991
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->copyOnWrite()V

    .line 11992
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->access$18600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)V

    return-object p0
.end method

.method public addV2PointList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;
    .locals 1

    .line 11885
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->copyOnWrite()V

    .line 11886
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->access$18000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V

    return-object p0
.end method

.method public addV2PointList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;
    .locals 1

    .line 11859
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->copyOnWrite()V

    .line 11860
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->access$17800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V

    return-object p0
.end method

.method public addV2PointList(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;
    .locals 1

    .line 11872
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->copyOnWrite()V

    .line 11873
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->access$17900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V

    return-object p0
.end method

.method public addV2PointList(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;
    .locals 1

    .line 11846
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->copyOnWrite()V

    .line 11847
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->access$17700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V

    return-object p0
.end method

.method public clearFngpRouteBrief()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;
    .locals 1

    .line 11777
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->copyOnWrite()V

    .line 11778
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->access$17400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;)V

    return-object p0
.end method

.method public clearSegmentList()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;
    .locals 1

    .line 12055
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->copyOnWrite()V

    .line 12056
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->access$19100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;)V

    return-object p0
.end method

.method public clearV2PointList()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;
    .locals 1

    .line 11910
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->copyOnWrite()V

    .line 11911
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->access$18200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;)V

    return-object p0
.end method

.method public getFngpRouteBrief()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;
    .locals 1

    .line 11731
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->getFngpRouteBrief()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    move-result-object v0

    return-object v0
.end method

.method public getSegmentList(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;
    .locals 1

    .line 11955
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->getSegmentList(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    move-result-object p1

    return-object p1
.end method

.method public getSegmentListCount()I
    .locals 1

    .line 11946
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->getSegmentListCount()I

    move-result v0

    return v0
.end method

.method public getSegmentListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;",
            ">;"
        }
    .end annotation

    .line 11935
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    .line 11936
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->getSegmentListList()Ljava/util/List;

    move-result-object v0

    .line 11935
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getV2PointList(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;
    .locals 1

    .line 11810
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->getV2PointList(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    move-result-object p1

    return-object p1
.end method

.method public getV2PointListCount()I
    .locals 1

    .line 11801
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->getV2PointListCount()I

    move-result v0

    return v0
.end method

.method public getV2PointListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;",
            ">;"
        }
    .end annotation

    .line 11790
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    .line 11791
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->getV2PointListList()Ljava/util/List;

    move-result-object v0

    .line 11790
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasFngpRouteBrief()Z
    .locals 1

    .line 11721
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->hasFngpRouteBrief()Z

    move-result v0

    return v0
.end method

.method public mergeFngpRouteBrief(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;
    .locals 1

    .line 11766
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->copyOnWrite()V

    .line 11767
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->access$17300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-object p0
.end method

.method public removeSegmentList(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;
    .locals 1

    .line 12067
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->copyOnWrite()V

    .line 12068
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->access$19200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;I)V

    return-object p0
.end method

.method public removeV2PointList(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;
    .locals 1

    .line 11922
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->copyOnWrite()V

    .line 11923
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->access$18300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;I)V

    return-object p0
.end method

.method public setFngpRouteBrief(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;
    .locals 1

    .line 11754
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->copyOnWrite()V

    .line 11755
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->access$17200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;)V

    return-object p0
.end method

.method public setFngpRouteBrief(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;
    .locals 1

    .line 11741
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->copyOnWrite()V

    .line 11742
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->access$17100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-object p0
.end method

.method public setSegmentList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;
    .locals 1

    .line 11979
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->copyOnWrite()V

    .line 11980
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->access$18500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;)V

    return-object p0
.end method

.method public setSegmentList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;
    .locals 1

    .line 11966
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->copyOnWrite()V

    .line 11967
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->access$18400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)V

    return-object p0
.end method

.method public setV2PointList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;
    .locals 1

    .line 11834
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->copyOnWrite()V

    .line 11835
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->access$17600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V

    return-object p0
.end method

.method public setV2PointList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;
    .locals 1

    .line 11821
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->copyOnWrite()V

    .line 11822
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->access$17500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V

    return-object p0
.end method
