.class public final Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 18762
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->access$44000()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V
    .locals 0

    .line 18755
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllV2Points(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;"
        }
    .end annotation

    .line 18974
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;->copyOnWrite()V

    .line 18975
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->access$45200(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addV2Points(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;
    .locals 1

    .line 18961
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;->copyOnWrite()V

    .line 18962
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->access$45100(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V

    return-object p0
.end method

.method public addV2Points(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;
    .locals 1

    .line 18935
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;->copyOnWrite()V

    .line 18936
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->access$44900(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-object p0
.end method

.method public addV2Points(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;
    .locals 1

    .line 18948
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;->copyOnWrite()V

    .line 18949
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->access$45000(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V

    return-object p0
.end method

.method public addV2Points(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;
    .locals 1

    .line 18922
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;->copyOnWrite()V

    .line 18923
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->access$44800(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-object p0
.end method

.method public clearNavigationId()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;
    .locals 1

    .line 18853
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;->copyOnWrite()V

    .line 18854
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->access$44500(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;)V

    return-object p0
.end method

.method public clearNavigationStatus()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;
    .locals 1

    .line 18818
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;->copyOnWrite()V

    .line 18819
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->access$44300(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;)V

    return-object p0
.end method

.method public clearV2Points()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;
    .locals 1

    .line 18986
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;->copyOnWrite()V

    .line 18987
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->access$45300(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;)V

    return-object p0
.end method

.method public getNavigationId()J
    .locals 2

    .line 18831
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->getNavigationId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNavigationStatus()Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;
    .locals 1

    .line 18796
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->getNavigationStatus()Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationStatusValue()I
    .locals 1

    .line 18774
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->getNavigationStatusValue()I

    move-result v0

    return v0
.end method

.method public getV2Points(I)Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;
    .locals 1

    .line 18886
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->getV2Points(I)Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object p1

    return-object p1
.end method

.method public getV2PointsCount()I
    .locals 1

    .line 18877
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->getV2PointsCount()I

    move-result v0

    return v0
.end method

.method public getV2PointsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;",
            ">;"
        }
    .end annotation

    .line 18866
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    .line 18867
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->getV2PointsList()Ljava/util/List;

    move-result-object v0

    .line 18866
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeV2Points(I)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;
    .locals 1

    .line 18998
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;->copyOnWrite()V

    .line 18999
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->access$45400(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;I)V

    return-object p0
.end method

.method public setNavigationId(J)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;
    .locals 1

    .line 18841
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;->copyOnWrite()V

    .line 18842
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->access$44400(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;J)V

    return-object p0
.end method

.method public setNavigationStatus(Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;
    .locals 1

    .line 18806
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;->copyOnWrite()V

    .line 18807
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->access$44200(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;)V

    return-object p0
.end method

.method public setNavigationStatusValue(I)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;
    .locals 1

    .line 18784
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;->copyOnWrite()V

    .line 18785
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->access$44100(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;I)V

    return-object p0
.end method

.method public setV2Points(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;
    .locals 1

    .line 18910
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;->copyOnWrite()V

    .line 18911
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->access$44700(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V

    return-object p0
.end method

.method public setV2Points(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;
    .locals 1

    .line 18897
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;->copyOnWrite()V

    .line 18898
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->access$44600(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-object p0
.end method
