.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 18673
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;->access$43500()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V
    .locals 0

    .line 18666
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllV2Points(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;"
        }
    .end annotation

    .line 18885
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;->copyOnWrite()V

    .line 18886
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;->access$44700(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addV2Points(ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;
    .locals 1

    .line 18872
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;->copyOnWrite()V

    .line 18873
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;->access$44600(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V

    return-object p0
.end method

.method public addV2Points(ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;
    .locals 1

    .line 18846
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;->copyOnWrite()V

    .line 18847
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;->access$44400(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-object p0
.end method

.method public addV2Points(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;
    .locals 1

    .line 18859
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;->copyOnWrite()V

    .line 18860
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;->access$44500(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V

    return-object p0
.end method

.method public addV2Points(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;
    .locals 1

    .line 18833
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;->copyOnWrite()V

    .line 18834
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;->access$44300(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-object p0
.end method

.method public clearNavigationId()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;
    .locals 1

    .line 18764
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;->copyOnWrite()V

    .line 18765
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;->access$44000(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;)V

    return-object p0
.end method

.method public clearNavigationStatus()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;
    .locals 1

    .line 18729
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;->copyOnWrite()V

    .line 18730
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;->access$43800(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;)V

    return-object p0
.end method

.method public clearV2Points()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;
    .locals 1

    .line 18897
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;->copyOnWrite()V

    .line 18898
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;->access$44800(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;)V

    return-object p0
.end method

.method public getNavigationId()J
    .locals 2

    .line 18742
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;->getNavigationId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNavigationStatus()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviStatus;
    .locals 1

    .line 18707
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;->getNavigationStatus()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviStatus;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationStatusValue()I
    .locals 1

    .line 18685
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;->getNavigationStatusValue()I

    move-result v0

    return v0
.end method

.method public getV2Points(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;
    .locals 1

    .line 18797
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;->getV2Points(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    move-result-object p1

    return-object p1
.end method

.method public getV2PointsCount()I
    .locals 1

    .line 18788
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;->getV2PointsCount()I

    move-result v0

    return v0
.end method

.method public getV2PointsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;",
            ">;"
        }
    .end annotation

    .line 18777
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;

    .line 18778
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;->getV2PointsList()Ljava/util/List;

    move-result-object v0

    .line 18777
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeV2Points(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;
    .locals 1

    .line 18909
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;->copyOnWrite()V

    .line 18910
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;->access$44900(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;I)V

    return-object p0
.end method

.method public setNavigationId(J)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;
    .locals 1

    .line 18752
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;->copyOnWrite()V

    .line 18753
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;->access$43900(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;J)V

    return-object p0
.end method

.method public setNavigationStatus(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviStatus;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;
    .locals 1

    .line 18717
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;->copyOnWrite()V

    .line 18718
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;->access$43700(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviStatus;)V

    return-object p0
.end method

.method public setNavigationStatusValue(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;
    .locals 1

    .line 18695
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;->copyOnWrite()V

    .line 18696
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;->access$43600(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;I)V

    return-object p0
.end method

.method public setV2Points(ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;
    .locals 1

    .line 18821
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;->copyOnWrite()V

    .line 18822
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;->access$44200(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V

    return-object p0
.end method

.method public setV2Points(ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;
    .locals 1

    .line 18808
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;->copyOnWrite()V

    .line 18809
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;->access$44100(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfo;ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-object p0
.end method
