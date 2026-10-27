.class public final Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuXNgpNaviInfo.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosListOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 10567
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->access$15000()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;)V
    .locals 0

    .line 10560
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllInfos(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;"
        }
    .end annotation

    .line 10687
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;->copyOnWrite()V

    .line 10688
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->access$15700(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;
    .locals 1

    .line 10674
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;->copyOnWrite()V

    .line 10675
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->access$15600(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;)V

    return-object p0
.end method

.method public addInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;
    .locals 1

    .line 10648
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;->copyOnWrite()V

    .line 10649
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->access$15400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;)V

    return-object p0
.end method

.method public addInfos(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;
    .locals 1

    .line 10661
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;->copyOnWrite()V

    .line 10662
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->access$15500(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;)V

    return-object p0
.end method

.method public addInfos(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;
    .locals 1

    .line 10635
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;->copyOnWrite()V

    .line 10636
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->access$15300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;)V

    return-object p0
.end method

.method public clearInfos()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;
    .locals 1

    .line 10699
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;->copyOnWrite()V

    .line 10700
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->access$15800(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;)V

    return-object p0
.end method

.method public clearNavigationId()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;
    .locals 1

    .line 10746
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;->copyOnWrite()V

    .line 10747
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->access$16100(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;)V

    return-object p0
.end method

.method public getInfos(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;
    .locals 1

    .line 10599
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->getInfos(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    move-result-object p1

    return-object p1
.end method

.method public getInfosCount()I
    .locals 1

    .line 10590
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->getInfosCount()I

    move-result v0

    return v0
.end method

.method public getInfosList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;",
            ">;"
        }
    .end annotation

    .line 10579
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    .line 10580
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->getInfosList()Ljava/util/List;

    move-result-object v0

    .line 10579
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationId()J
    .locals 2

    .line 10724
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->getNavigationId()J

    move-result-wide v0

    return-wide v0
.end method

.method public removeInfos(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;
    .locals 1

    .line 10711
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;->copyOnWrite()V

    .line 10712
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->access$15900(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;I)V

    return-object p0
.end method

.method public setInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;
    .locals 1

    .line 10623
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;->copyOnWrite()V

    .line 10624
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->access$15200(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;)V

    return-object p0
.end method

.method public setInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;
    .locals 1

    .line 10610
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;->copyOnWrite()V

    .line 10611
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->access$15100(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;)V

    return-object p0
.end method

.method public setNavigationId(J)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;
    .locals 1

    .line 10734
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;->copyOnWrite()V

    .line 10735
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->access$16000(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;J)V

    return-object p0
.end method
