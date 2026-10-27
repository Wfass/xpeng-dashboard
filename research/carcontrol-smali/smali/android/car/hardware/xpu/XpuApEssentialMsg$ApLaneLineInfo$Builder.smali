.class public final Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuApEssentialMsg.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6378
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->access$13600()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuApEssentialMsg$1;)V
    .locals 0

    .line 6371
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllPathPoints(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;"
        }
    .end annotation

    .line 6481
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;->copyOnWrite()V

    .line 6482
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->access$14500(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addPathPoints(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;
    .locals 1

    .line 6472
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;->copyOnWrite()V

    .line 6473
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->access$14400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;)V

    return-object p0
.end method

.method public addPathPoints(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;
    .locals 1

    .line 6454
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;->copyOnWrite()V

    .line 6455
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->access$14200(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V

    return-object p0
.end method

.method public addPathPoints(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;
    .locals 1

    .line 6463
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;->copyOnWrite()V

    .line 6464
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->access$14300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;)V

    return-object p0
.end method

.method public addPathPoints(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;
    .locals 1

    .line 6445
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;->copyOnWrite()V

    .line 6446
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->access$14100(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V

    return-object p0
.end method

.method public clearAttri()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;
    .locals 1

    .line 6400
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;->copyOnWrite()V

    .line 6401
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->access$13800(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;)V

    return-object p0
.end method

.method public clearPathPoints()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;
    .locals 1

    .line 6489
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;->copyOnWrite()V

    .line 6490
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->access$14600(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;)V

    return-object p0
.end method

.method public getAttri()I
    .locals 1

    .line 6386
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->getAttri()I

    move-result v0

    return v0
.end method

.method public getPathPoints(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;
    .locals 1

    .line 6421
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->getPathPoints(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    move-result-object p1

    return-object p1
.end method

.method public getPathPointsCount()I
    .locals 1

    .line 6416
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->getPathPointsCount()I

    move-result v0

    return v0
.end method

.method public getPathPointsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;",
            ">;"
        }
    .end annotation

    .line 6409
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    .line 6410
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->getPathPointsList()Ljava/util/List;

    move-result-object v0

    .line 6409
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removePathPoints(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;
    .locals 1

    .line 6497
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;->copyOnWrite()V

    .line 6498
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->access$14700(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;I)V

    return-object p0
.end method

.method public setAttri(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;
    .locals 1

    .line 6392
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;->copyOnWrite()V

    .line 6393
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->access$13700(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;I)V

    return-object p0
.end method

.method public setPathPoints(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;
    .locals 1

    .line 6437
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;->copyOnWrite()V

    .line 6438
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->access$14000(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;)V

    return-object p0
.end method

.method public setPathPoints(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;
    .locals 1

    .line 6428
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;->copyOnWrite()V

    .line 6429
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->access$13900(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V

    return-object p0
.end method
