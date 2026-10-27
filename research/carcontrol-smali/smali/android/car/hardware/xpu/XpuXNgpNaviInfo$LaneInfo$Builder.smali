.class public final Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuXNgpNaviInfo.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 8273
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$8700()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;)V
    .locals 0

    .line 8266
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllBackExtenLane(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;"
        }
    .end annotation

    .line 8532
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 8533
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$10000(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllBackLane(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;"
        }
    .end annotation

    .line 8366
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 8367
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$9200(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllBackLaneType(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;"
        }
    .end annotation

    .line 9086
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 9087
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$12800(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllExtensionLane(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;"
        }
    .end annotation

    .line 8698
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 8699
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$10800(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllFrontExtenLane(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;"
        }
    .end annotation

    .line 8615
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 8616
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$10400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllFrontLane(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;"
        }
    .end annotation

    .line 8449
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 8450
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$9600(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllFrontLaneType(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;"
        }
    .end annotation

    .line 9003
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 9004
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$12400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllOptimalLane(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;"
        }
    .end annotation

    .line 8920
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 8921
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$12000(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addBackExtenLane(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1

    .line 8519
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 8520
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$9900(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;I)V

    return-object p0
.end method

.method public addBackLane(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1

    .line 8353
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 8354
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$9100(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;I)V

    return-object p0
.end method

.method public addBackLaneType(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1

    .line 9073
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 9074
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$12700(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;I)V

    return-object p0
.end method

.method public addExtensionLane(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1

    .line 8685
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 8686
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$10700(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;I)V

    return-object p0
.end method

.method public addFrontExtenLane(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1

    .line 8602
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 8603
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$10300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;I)V

    return-object p0
.end method

.method public addFrontLane(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1

    .line 8436
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 8437
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$9500(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;I)V

    return-object p0
.end method

.method public addFrontLaneType(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1

    .line 8990
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 8991
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$12300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;I)V

    return-object p0
.end method

.method public addOptimalLane(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1

    .line 8907
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 8908
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$11900(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;I)V

    return-object p0
.end method

.method public clearBackExtenLane()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1

    .line 8544
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 8545
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$10100(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V

    return-object p0
.end method

.method public clearBackLane()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1

    .line 8378
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 8379
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$9300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V

    return-object p0
.end method

.method public clearBackLaneType()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1

    .line 9098
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 9099
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$12900(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V

    return-object p0
.end method

.method public clearExtensionLane()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1

    .line 8710
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 8711
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$10900(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V

    return-object p0
.end method

.method public clearFrontExtenLane()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1

    .line 8627
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 8628
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$10500(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V

    return-object p0
.end method

.method public clearFrontLane()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1

    .line 8461
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 8462
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$9700(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V

    return-object p0
.end method

.method public clearFrontLaneType()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1

    .line 9015
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 9016
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$12500(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V

    return-object p0
.end method

.method public clearLaneType()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1

    .line 8295
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 8296
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$8900(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V

    return-object p0
.end method

.method public clearLinkIdx()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1

    .line 8849
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 8850
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$11700(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V

    return-object p0
.end method

.method public clearNavigationId()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1

    .line 9133
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 9134
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$13100(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V

    return-object p0
.end method

.method public clearOptimalLane()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1

    .line 8932
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 8933
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$12100(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V

    return-object p0
.end method

.method public clearPoint()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1

    .line 8779
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 8780
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$11300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V

    return-object p0
.end method

.method public clearPointEndIdx()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1

    .line 9200
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 9201
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$13500(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V

    return-object p0
.end method

.method public clearPointStartIdx()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1

    .line 9156
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 9157
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$13300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V

    return-object p0
.end method

.method public clearSegmentIdx()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1

    .line 8814
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 8815
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$11500(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V

    return-object p0
.end method

.method public getBackExtenLane(I)I
    .locals 1

    .line 8496
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getBackExtenLane(I)I

    move-result p1

    return p1
.end method

.method public getBackExtenLaneCount()I
    .locals 1

    .line 8486
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getBackExtenLaneCount()I

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

    .line 8475
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    .line 8476
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getBackExtenLaneList()Ljava/util/List;

    move-result-object v0

    .line 8475
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBackLane(I)I
    .locals 1

    .line 8330
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getBackLane(I)I

    move-result p1

    return p1
.end method

.method public getBackLaneCount()I
    .locals 1

    .line 8320
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getBackLaneCount()I

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

    .line 8309
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    .line 8310
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getBackLaneList()Ljava/util/List;

    move-result-object v0

    .line 8309
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBackLaneType(I)I
    .locals 1

    .line 9050
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getBackLaneType(I)I

    move-result p1

    return p1
.end method

.method public getBackLaneTypeCount()I
    .locals 1

    .line 9040
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getBackLaneTypeCount()I

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

    .line 9029
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    .line 9030
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getBackLaneTypeList()Ljava/util/List;

    move-result-object v0

    .line 9029
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionLane(I)I
    .locals 1

    .line 8662
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getExtensionLane(I)I

    move-result p1

    return p1
.end method

.method public getExtensionLaneCount()I
    .locals 1

    .line 8652
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getExtensionLaneCount()I

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

    .line 8641
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    .line 8642
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getExtensionLaneList()Ljava/util/List;

    move-result-object v0

    .line 8641
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFrontExtenLane(I)I
    .locals 1

    .line 8579
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getFrontExtenLane(I)I

    move-result p1

    return p1
.end method

.method public getFrontExtenLaneCount()I
    .locals 1

    .line 8569
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getFrontExtenLaneCount()I

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

    .line 8558
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    .line 8559
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getFrontExtenLaneList()Ljava/util/List;

    move-result-object v0

    .line 8558
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFrontLane(I)I
    .locals 1

    .line 8413
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getFrontLane(I)I

    move-result p1

    return p1
.end method

.method public getFrontLaneCount()I
    .locals 1

    .line 8403
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getFrontLaneCount()I

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

    .line 8392
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    .line 8393
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getFrontLaneList()Ljava/util/List;

    move-result-object v0

    .line 8392
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFrontLaneType(I)I
    .locals 1

    .line 8967
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getFrontLaneType(I)I

    move-result p1

    return p1
.end method

.method public getFrontLaneTypeCount()I
    .locals 1

    .line 8957
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getFrontLaneTypeCount()I

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

    .line 8946
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    .line 8947
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getFrontLaneTypeList()Ljava/util/List;

    move-result-object v0

    .line 8946
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLaneType()I
    .locals 1

    .line 8281
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getLaneType()I

    move-result v0

    return v0
.end method

.method public getLinkIdx()I
    .locals 1

    .line 8827
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getLinkIdx()I

    move-result v0

    return v0
.end method

.method public getNavigationId()J
    .locals 2

    .line 9111
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getNavigationId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOptimalLane(I)I
    .locals 1

    .line 8884
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getOptimalLane(I)I

    move-result p1

    return p1
.end method

.method public getOptimalLaneCount()I
    .locals 1

    .line 8874
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getOptimalLaneCount()I

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

    .line 8863
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    .line 8864
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getOptimalLaneList()Ljava/util/List;

    move-result-object v0

    .line 8863
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPoint()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;
    .locals 1

    .line 8733
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getPoint()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    move-result-object v0

    return-object v0
.end method

.method public getPointEndIdx()J
    .locals 2

    .line 9172
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getPointEndIdx()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPointStartIdx()J
    .locals 2

    .line 9142
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getPointStartIdx()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSegmentIdx()I
    .locals 1

    .line 8792
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getSegmentIdx()I

    move-result v0

    return v0
.end method

.method public hasPoint()Z
    .locals 1

    .line 8723
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->hasPoint()Z

    move-result v0

    return v0
.end method

.method public mergePoint(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1

    .line 8768
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 8769
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$11200(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;)V

    return-object p0
.end method

.method public setBackExtenLane(II)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1

    .line 8507
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 8508
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$9800(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;II)V

    return-object p0
.end method

.method public setBackLane(II)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1

    .line 8341
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 8342
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$9000(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;II)V

    return-object p0
.end method

.method public setBackLaneType(II)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1

    .line 9061
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 9062
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$12600(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;II)V

    return-object p0
.end method

.method public setExtensionLane(II)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1

    .line 8673
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 8674
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$10600(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;II)V

    return-object p0
.end method

.method public setFrontExtenLane(II)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1

    .line 8590
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 8591
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$10200(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;II)V

    return-object p0
.end method

.method public setFrontLane(II)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1

    .line 8424
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 8425
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$9400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;II)V

    return-object p0
.end method

.method public setFrontLaneType(II)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1

    .line 8978
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 8979
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$12200(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;II)V

    return-object p0
.end method

.method public setLaneType(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1

    .line 8287
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 8288
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$8800(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;I)V

    return-object p0
.end method

.method public setLinkIdx(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1

    .line 8837
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 8838
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$11600(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;I)V

    return-object p0
.end method

.method public setNavigationId(J)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1

    .line 9121
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 9122
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$13000(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;J)V

    return-object p0
.end method

.method public setOptimalLane(II)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1

    .line 8895
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 8896
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$11800(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;II)V

    return-object p0
.end method

.method public setPoint(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1

    .line 8756
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 8757
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$11100(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;)V

    return-object p0
.end method

.method public setPoint(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1

    .line 8743
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 8744
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$11000(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;)V

    return-object p0
.end method

.method public setPointEndIdx(J)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1

    .line 9185
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 9186
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$13400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;J)V

    return-object p0
.end method

.method public setPointStartIdx(J)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1

    .line 9148
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 9149
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$13200(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;J)V

    return-object p0
.end method

.method public setSegmentIdx(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1

    .line 8802
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->copyOnWrite()V

    .line 8803
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->access$11400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;I)V

    return-object p0
.end method
