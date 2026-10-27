.class public final Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "LocParallelRoadInfoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;",
        "Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 332
    invoke-static {}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->access$000()Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$1;)V
    .locals 0

    .line 325
    invoke-direct {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearFormway()Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;
    .locals 1

    .line 436
    invoke-virtual {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;->copyOnWrite()V

    .line 437
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    invoke-static {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->access$600(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;)V

    return-object p0
.end method

.method public clearLinkType()Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;
    .locals 1

    .line 471
    invoke-virtual {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;->copyOnWrite()V

    .line 472
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    invoke-static {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->access$800(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;)V

    return-object p0
.end method

.method public clearRoadId()Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;
    .locals 1

    .line 366
    invoke-virtual {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;->copyOnWrite()V

    .line 367
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    invoke-static {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->access$200(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;)V

    return-object p0
.end method

.method public clearType()Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;
    .locals 1

    .line 401
    invoke-virtual {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;->copyOnWrite()V

    .line 402
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    invoke-static {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->access$400(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;)V

    return-object p0
.end method

.method public getFormway()I
    .locals 1

    .line 414
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->getFormway()I

    move-result v0

    return v0
.end method

.method public getLinkType()I
    .locals 1

    .line 449
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->getLinkType()I

    move-result v0

    return v0
.end method

.method public getRoadId()J
    .locals 2

    .line 344
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->getRoadId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 379
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->getType()I

    move-result v0

    return v0
.end method

.method public setFormway(I)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;
    .locals 1

    .line 424
    invoke-virtual {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;->copyOnWrite()V

    .line 425
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->access$500(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;I)V

    return-object p0
.end method

.method public setLinkType(I)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;
    .locals 1

    .line 459
    invoke-virtual {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;->copyOnWrite()V

    .line 460
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->access$700(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;I)V

    return-object p0
.end method

.method public setRoadId(J)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;
    .locals 1

    .line 354
    invoke-virtual {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;->copyOnWrite()V

    .line 355
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->access$100(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;J)V

    return-object p0
.end method

.method public setType(I)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;
    .locals 1

    .line 389
    invoke-virtual {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;->copyOnWrite()V

    .line 390
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->access$300(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;I)V

    return-object p0
.end method
