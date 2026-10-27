.class public final Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuXNgpNaviInfoVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7823
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$8000()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$1;)V
    .locals 0

    .line 7816
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllBackExtenLane(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;"
        }
    .end annotation

    .line 8082
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 8083
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$9300(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllBackLane(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;"
        }
    .end annotation

    .line 7916
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 7917
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$8500(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllBackLaneType(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;"
        }
    .end annotation

    .line 8636
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 8637
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$12100(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllExtensionLane(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;"
        }
    .end annotation

    .line 8248
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 8249
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$10100(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllFrontExtenLane(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;"
        }
    .end annotation

    .line 8165
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 8166
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$9700(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllFrontLane(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;"
        }
    .end annotation

    .line 7999
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 8000
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$8900(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllFrontLaneType(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;"
        }
    .end annotation

    .line 8553
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 8554
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$11700(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllOptimalLane(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;"
        }
    .end annotation

    .line 8470
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 8471
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$11300(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addBackExtenLane(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1

    .line 8069
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 8070
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$9200(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;I)V

    return-object p0
.end method

.method public addBackLane(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1

    .line 7903
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 7904
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$8400(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;I)V

    return-object p0
.end method

.method public addBackLaneType(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1

    .line 8623
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 8624
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$12000(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;I)V

    return-object p0
.end method

.method public addExtensionLane(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1

    .line 8235
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 8236
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$10000(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;I)V

    return-object p0
.end method

.method public addFrontExtenLane(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1

    .line 8152
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 8153
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$9600(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;I)V

    return-object p0
.end method

.method public addFrontLane(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1

    .line 7986
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 7987
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$8800(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;I)V

    return-object p0
.end method

.method public addFrontLaneType(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1

    .line 8540
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 8541
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$11600(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;I)V

    return-object p0
.end method

.method public addOptimalLane(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1

    .line 8457
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 8458
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$11200(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;I)V

    return-object p0
.end method

.method public clearBackExtenLane()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1

    .line 8094
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 8095
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$9400(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;)V

    return-object p0
.end method

.method public clearBackLane()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1

    .line 7928
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 7929
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$8600(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;)V

    return-object p0
.end method

.method public clearBackLaneType()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1

    .line 8648
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 8649
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$12200(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;)V

    return-object p0
.end method

.method public clearExtensionLane()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1

    .line 8260
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 8261
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$10200(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;)V

    return-object p0
.end method

.method public clearFrontExtenLane()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1

    .line 8177
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 8178
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$9800(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;)V

    return-object p0
.end method

.method public clearFrontLane()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1

    .line 8011
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 8012
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$9000(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;)V

    return-object p0
.end method

.method public clearFrontLaneType()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1

    .line 8565
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 8566
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$11800(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;)V

    return-object p0
.end method

.method public clearLaneType()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1

    .line 7845
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 7846
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$8200(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;)V

    return-object p0
.end method

.method public clearLinkIdx()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1

    .line 8399
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 8400
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$11000(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;)V

    return-object p0
.end method

.method public clearNavigationId()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1

    .line 8683
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 8684
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$12400(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;)V

    return-object p0
.end method

.method public clearOptimalLane()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1

    .line 8482
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 8483
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$11400(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;)V

    return-object p0
.end method

.method public clearPoint()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1

    .line 8329
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 8330
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$10600(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;)V

    return-object p0
.end method

.method public clearSegmentIdx()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1

    .line 8364
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 8365
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$10800(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;)V

    return-object p0
.end method

.method public getBackExtenLane(I)I
    .locals 1

    .line 8046
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getBackExtenLane(I)I

    move-result p1

    return p1
.end method

.method public getBackExtenLaneCount()I
    .locals 1

    .line 8036
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getBackExtenLaneCount()I

    move-result v0

    return v0
.end method

.method public getBackExtenLaneList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 8025
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    .line 8026
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getBackExtenLaneList()Ljava/util/List;

    move-result-object v0

    .line 8025
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBackLane(I)I
    .locals 1

    .line 7880
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getBackLane(I)I

    move-result p1

    return p1
.end method

.method public getBackLaneCount()I
    .locals 1

    .line 7870
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getBackLaneCount()I

    move-result v0

    return v0
.end method

.method public getBackLaneList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 7859
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    .line 7860
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getBackLaneList()Ljava/util/List;

    move-result-object v0

    .line 7859
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBackLaneType(I)I
    .locals 1

    .line 8600
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getBackLaneType(I)I

    move-result p1

    return p1
.end method

.method public getBackLaneTypeCount()I
    .locals 1

    .line 8590
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getBackLaneTypeCount()I

    move-result v0

    return v0
.end method

.method public getBackLaneTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 8579
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    .line 8580
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getBackLaneTypeList()Ljava/util/List;

    move-result-object v0

    .line 8579
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionLane(I)I
    .locals 1

    .line 8212
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getExtensionLane(I)I

    move-result p1

    return p1
.end method

.method public getExtensionLaneCount()I
    .locals 1

    .line 8202
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getExtensionLaneCount()I

    move-result v0

    return v0
.end method

.method public getExtensionLaneList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 8191
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    .line 8192
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getExtensionLaneList()Ljava/util/List;

    move-result-object v0

    .line 8191
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFrontExtenLane(I)I
    .locals 1

    .line 8129
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getFrontExtenLane(I)I

    move-result p1

    return p1
.end method

.method public getFrontExtenLaneCount()I
    .locals 1

    .line 8119
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getFrontExtenLaneCount()I

    move-result v0

    return v0
.end method

.method public getFrontExtenLaneList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 8108
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    .line 8109
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getFrontExtenLaneList()Ljava/util/List;

    move-result-object v0

    .line 8108
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFrontLane(I)I
    .locals 1

    .line 7963
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getFrontLane(I)I

    move-result p1

    return p1
.end method

.method public getFrontLaneCount()I
    .locals 1

    .line 7953
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getFrontLaneCount()I

    move-result v0

    return v0
.end method

.method public getFrontLaneList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 7942
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    .line 7943
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getFrontLaneList()Ljava/util/List;

    move-result-object v0

    .line 7942
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFrontLaneType(I)I
    .locals 1

    .line 8517
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getFrontLaneType(I)I

    move-result p1

    return p1
.end method

.method public getFrontLaneTypeCount()I
    .locals 1

    .line 8507
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getFrontLaneTypeCount()I

    move-result v0

    return v0
.end method

.method public getFrontLaneTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 8496
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    .line 8497
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getFrontLaneTypeList()Ljava/util/List;

    move-result-object v0

    .line 8496
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLaneType()I
    .locals 1

    .line 7831
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getLaneType()I

    move-result v0

    return v0
.end method

.method public getLinkIdx()I
    .locals 1

    .line 8377
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getLinkIdx()I

    move-result v0

    return v0
.end method

.method public getNavigationId()J
    .locals 2

    .line 8661
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getNavigationId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOptimalLane(I)I
    .locals 1

    .line 8434
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getOptimalLane(I)I

    move-result p1

    return p1
.end method

.method public getOptimalLaneCount()I
    .locals 1

    .line 8424
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getOptimalLaneCount()I

    move-result v0

    return v0
.end method

.method public getOptimalLaneList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 8413
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    .line 8414
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getOptimalLaneList()Ljava/util/List;

    move-result-object v0

    .line 8413
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPoint()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;
    .locals 1

    .line 8283
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getPoint()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;

    move-result-object v0

    return-object v0
.end method

.method public getSegmentIdx()I
    .locals 1

    .line 8342
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getSegmentIdx()I

    move-result v0

    return v0
.end method

.method public hasPoint()Z
    .locals 1

    .line 8273
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->hasPoint()Z

    move-result v0

    return v0
.end method

.method public mergePoint(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1

    .line 8318
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 8319
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$10500(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;)V

    return-object p0
.end method

.method public setBackExtenLane(II)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1

    .line 8057
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 8058
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$9100(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;II)V

    return-object p0
.end method

.method public setBackLane(II)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1

    .line 7891
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 7892
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$8300(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;II)V

    return-object p0
.end method

.method public setBackLaneType(II)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1

    .line 8611
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 8612
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$11900(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;II)V

    return-object p0
.end method

.method public setExtensionLane(II)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1

    .line 8223
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 8224
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$9900(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;II)V

    return-object p0
.end method

.method public setFrontExtenLane(II)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1

    .line 8140
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 8141
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$9500(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;II)V

    return-object p0
.end method

.method public setFrontLane(II)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1

    .line 7974
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 7975
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$8700(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;II)V

    return-object p0
.end method

.method public setFrontLaneType(II)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1

    .line 8528
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 8529
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$11500(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;II)V

    return-object p0
.end method

.method public setLaneType(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1

    .line 7837
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 7838
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$8100(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;I)V

    return-object p0
.end method

.method public setLinkIdx(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1

    .line 8387
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 8388
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$10900(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;I)V

    return-object p0
.end method

.method public setNavigationId(J)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1

    .line 8671
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 8672
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$12300(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;J)V

    return-object p0
.end method

.method public setOptimalLane(II)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1

    .line 8445
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 8446
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$11100(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;II)V

    return-object p0
.end method

.method public setPoint(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble$Builder;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1

    .line 8306
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 8307
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$10400(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble$Builder;)V

    return-object p0
.end method

.method public setPoint(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1

    .line 8293
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 8294
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$10300(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;)V

    return-object p0
.end method

.method public setSegmentIdx(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1

    .line 8352
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->copyOnWrite()V

    .line 8353
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->access$10700(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;I)V

    return-object p0
.end method
