.class public final Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "LocParallelRoadInfoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;",
        "Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1994
    invoke-static {}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->access$2900()Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$1;)V
    .locals 0

    .line 1987
    invoke-direct {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearFlag()Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;
    .locals 1

    .line 2107
    invoke-virtual {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;->copyOnWrite()V

    .line 2108
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    invoke-static {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->access$3500(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;)V

    return-object p0
.end method

.method public clearHwFlag()Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;
    .locals 1

    .line 2151
    invoke-virtual {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;->copyOnWrite()V

    .line 2152
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    invoke-static {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->access$3700(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;)V

    return-object p0
.end method

.method public clearNavigationId()Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;
    .locals 1

    .line 2063
    invoke-virtual {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;->copyOnWrite()V

    .line 2064
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    invoke-static {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->access$3300(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;)V

    return-object p0
.end method

.method public clearRefreshFlag()Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;
    .locals 1

    .line 2192
    invoke-virtual {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;->copyOnWrite()V

    .line 2193
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    invoke-static {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->access$3900(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;)V

    return-object p0
.end method

.method public clearRequestId()Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;
    .locals 1

    .line 2028
    invoke-virtual {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;->copyOnWrite()V

    .line 2029
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    invoke-static {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->access$3100(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;)V

    return-object p0
.end method

.method public getFlag()I
    .locals 1

    .line 2079
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->getFlag()I

    move-result v0

    return v0
.end method

.method public getHwFlag()I
    .locals 1

    .line 2123
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->getHwFlag()I

    move-result v0

    return v0
.end method

.method public getNavigationId()J
    .locals 2

    .line 2041
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->getNavigationId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRefreshFlag()I
    .locals 1

    .line 2166
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->getRefreshFlag()I

    move-result v0

    return v0
.end method

.method public getRequestId()I
    .locals 1

    .line 2006
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->getRequestId()I

    move-result v0

    return v0
.end method

.method public setFlag(I)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;
    .locals 1

    .line 2092
    invoke-virtual {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;->copyOnWrite()V

    .line 2093
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->access$3400(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;I)V

    return-object p0
.end method

.method public setHwFlag(I)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;
    .locals 1

    .line 2136
    invoke-virtual {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;->copyOnWrite()V

    .line 2137
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->access$3600(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;I)V

    return-object p0
.end method

.method public setNavigationId(J)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;
    .locals 1

    .line 2051
    invoke-virtual {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;->copyOnWrite()V

    .line 2052
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->access$3200(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;J)V

    return-object p0
.end method

.method public setRefreshFlag(I)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;
    .locals 1

    .line 2178
    invoke-virtual {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;->copyOnWrite()V

    .line 2179
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->access$3800(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;I)V

    return-object p0
.end method

.method public setRequestId(I)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;
    .locals 1

    .line 2016
    invoke-virtual {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;->copyOnWrite()V

    .line 2017
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->access$3000(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;I)V

    return-object p0
.end method
