.class public final Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "LocParallelRoadInfoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirmOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;",
        "Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirmOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2592
    invoke-static {}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->access$4100()Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$1;)V
    .locals 0

    .line 2585
    invoke-direct {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearErrorCode()Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm$Builder;
    .locals 1

    .line 2696
    invoke-virtual {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm$Builder;->copyOnWrite()V

    .line 2697
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    invoke-static {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->access$4700(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;)V

    return-object p0
.end method

.method public clearNavigationId()Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm$Builder;
    .locals 1

    .line 2661
    invoke-virtual {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm$Builder;->copyOnWrite()V

    .line 2662
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    invoke-static {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->access$4500(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;)V

    return-object p0
.end method

.method public clearRequestId()Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm$Builder;
    .locals 1

    .line 2626
    invoke-virtual {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm$Builder;->copyOnWrite()V

    .line 2627
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    invoke-static {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->access$4300(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;)V

    return-object p0
.end method

.method public getErrorCode()I
    .locals 1

    .line 2674
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->getErrorCode()I

    move-result v0

    return v0
.end method

.method public getNavigationId()J
    .locals 2

    .line 2639
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->getNavigationId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRequestId()I
    .locals 1

    .line 2604
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->getRequestId()I

    move-result v0

    return v0
.end method

.method public setErrorCode(I)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm$Builder;
    .locals 1

    .line 2684
    invoke-virtual {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm$Builder;->copyOnWrite()V

    .line 2685
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->access$4600(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;I)V

    return-object p0
.end method

.method public setNavigationId(J)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm$Builder;
    .locals 1

    .line 2649
    invoke-virtual {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm$Builder;->copyOnWrite()V

    .line 2650
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->access$4400(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;J)V

    return-object p0
.end method

.method public setRequestId(I)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm$Builder;
    .locals 1

    .line 2614
    invoke-virtual {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm$Builder;->copyOnWrite()V

    .line 2615
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->access$4200(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;I)V

    return-object p0
.end method
