.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 14413
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->access$32200()Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V
    .locals 0

    .line 14406
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllTimeDescription(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;"
        }
    .end annotation

    .line 14551
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;->copyOnWrite()V

    .line 14552
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->access$33300(Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addTimeDescription(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;
    .locals 1

    .line 14542
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;->copyOnWrite()V

    .line 14543
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->access$33200(Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;I)V

    return-object p0
.end method

.method public clearLinkIndex()Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;
    .locals 1

    .line 14504
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;->copyOnWrite()V

    .line 14505
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->access$33000(Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;)V

    return-object p0
.end method

.method public clearSegIndex()Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;
    .locals 1

    .line 14481
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;->copyOnWrite()V

    .line 14482
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->access$32800(Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;)V

    return-object p0
.end method

.method public clearTimeDescription()Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;
    .locals 1

    .line 14559
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;->copyOnWrite()V

    .line 14560
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->access$33400(Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;)V

    return-object p0
.end method

.method public clearType()Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;
    .locals 1

    .line 14435
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;->copyOnWrite()V

    .line 14436
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->access$32400(Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;)V

    return-object p0
.end method

.method public clearVehicleType()Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;
    .locals 1

    .line 14458
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;->copyOnWrite()V

    .line 14459
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->access$32600(Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;)V

    return-object p0
.end method

.method public getLinkIndex()J
    .locals 2

    .line 14490
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->getLinkIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSegIndex()J
    .locals 2

    .line 14467
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->getSegIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeDescription(I)I
    .locals 1

    .line 14527
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->getTimeDescription(I)I

    move-result p1

    return p1
.end method

.method public getTimeDescriptionCount()I
    .locals 1

    .line 14521
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->getTimeDescriptionCount()I

    move-result v0

    return v0
.end method

.method public getTimeDescriptionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 14514
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    .line 14515
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->getTimeDescriptionList()Ljava/util/List;

    move-result-object v0

    .line 14514
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 14421
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->getType()I

    move-result v0

    return v0
.end method

.method public getVehicleType()I
    .locals 1

    .line 14444
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->getVehicleType()I

    move-result v0

    return v0
.end method

.method public setLinkIndex(J)Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;
    .locals 1

    .line 14496
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;->copyOnWrite()V

    .line 14497
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->access$32900(Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;J)V

    return-object p0
.end method

.method public setSegIndex(J)Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;
    .locals 1

    .line 14473
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;->copyOnWrite()V

    .line 14474
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->access$32700(Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;J)V

    return-object p0
.end method

.method public setTimeDescription(II)Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;
    .locals 1

    .line 14534
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;->copyOnWrite()V

    .line 14535
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->access$33100(Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;II)V

    return-object p0
.end method

.method public setType(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;
    .locals 1

    .line 14427
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;->copyOnWrite()V

    .line 14428
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->access$32300(Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;I)V

    return-object p0
.end method

.method public setVehicleType(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;
    .locals 1

    .line 14450
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;->copyOnWrite()V

    .line 14451
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->access$32500(Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;I)V

    return-object p0
.end method
