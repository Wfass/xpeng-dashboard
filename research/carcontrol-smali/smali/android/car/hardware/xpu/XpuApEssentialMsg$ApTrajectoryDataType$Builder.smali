.class public final Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuApEssentialMsg.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataTypeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataTypeOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7894
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->access$17000()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuApEssentialMsg$1;)V
    .locals 0

    .line 7887
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllTrajectory(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;"
        }
    .end annotation

    .line 8046
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;->copyOnWrite()V

    .line 8047
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->access$18200(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addTrajectory(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;
    .locals 1

    .line 8037
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;->copyOnWrite()V

    .line 8038
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->access$18100(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;)V

    return-object p0
.end method

.method public addTrajectory(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;
    .locals 1

    .line 8019
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;->copyOnWrite()V

    .line 8020
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->access$17900(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V

    return-object p0
.end method

.method public addTrajectory(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;
    .locals 1

    .line 8028
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;->copyOnWrite()V

    .line 8029
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->access$18000(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;)V

    return-object p0
.end method

.method public addTrajectory(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;
    .locals 1

    .line 8010
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;->copyOnWrite()V

    .line 8011
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->access$17800(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V

    return-object p0
.end method

.method public clearId()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;
    .locals 1

    .line 7928
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;->copyOnWrite()V

    .line 7929
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->access$17200(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;)V

    return-object p0
.end method

.method public clearTrajectory()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;
    .locals 1

    .line 8054
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;->copyOnWrite()V

    .line 8055
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->access$18300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;)V

    return-object p0
.end method

.method public clearType()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;
    .locals 1

    .line 7965
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;->copyOnWrite()V

    .line 7966
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->access$17500(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;)V

    return-object p0
.end method

.method public getId()I
    .locals 1

    .line 7906
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->getId()I

    move-result v0

    return v0
.end method

.method public getTrajectory(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;
    .locals 1

    .line 7986
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->getTrajectory(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    move-result-object p1

    return-object p1
.end method

.method public getTrajectoryCount()I
    .locals 1

    .line 7981
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->getTrajectoryCount()I

    move-result v0

    return v0
.end method

.method public getTrajectoryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;",
            ">;"
        }
    .end annotation

    .line 7974
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    .line 7975
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->getTrajectoryList()Ljava/util/List;

    move-result-object v0

    .line 7974
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getType()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$ApTrajType;
    .locals 1

    .line 7951
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->getType()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$ApTrajType;

    move-result-object v0

    return-object v0
.end method

.method public getTypeValue()I
    .locals 1

    .line 7937
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->getTypeValue()I

    move-result v0

    return v0
.end method

.method public removeTrajectory(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;
    .locals 1

    .line 8062
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;->copyOnWrite()V

    .line 8063
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->access$18400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;I)V

    return-object p0
.end method

.method public setId(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;
    .locals 1

    .line 7916
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;->copyOnWrite()V

    .line 7917
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->access$17100(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;I)V

    return-object p0
.end method

.method public setTrajectory(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;
    .locals 1

    .line 8002
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;->copyOnWrite()V

    .line 8003
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->access$17700(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;)V

    return-object p0
.end method

.method public setTrajectory(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;
    .locals 1

    .line 7993
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;->copyOnWrite()V

    .line 7994
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->access$17600(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V

    return-object p0
.end method

.method public setType(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$ApTrajType;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;
    .locals 1

    .line 7957
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;->copyOnWrite()V

    .line 7958
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->access$17400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$ApTrajType;)V

    return-object p0
.end method

.method public setTypeValue(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;
    .locals 1

    .line 7943
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;->copyOnWrite()V

    .line 7944
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->access$17300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;I)V

    return-object p0
.end method
