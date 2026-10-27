.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 18432
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->access$30600()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;)V
    .locals 0

    .line 18425
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearIsLockParkingTab()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;
    .locals 1

    .line 18685
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;->copyOnWrite()V

    .line 18686
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->access$32000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;)V

    return-object p0
.end method

.method public clearIsShowLeaveParking()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;
    .locals 1

    .line 18501
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;->copyOnWrite()V

    .line 18502
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->access$31000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;)V

    return-object p0
.end method

.method public clearIsShowParkingPerfer()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;
    .locals 1

    .line 18593
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;->copyOnWrite()V

    .line 18594
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->access$31500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;)V

    return-object p0
.end method

.method public clearIsShowParkingTab()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;
    .locals 1

    .line 18466
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;->copyOnWrite()V

    .line 18467
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->access$30800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;)V

    return-object p0
.end method

.method public clearSlotLeaveParkingType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;
    .locals 1

    .line 18558
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;->copyOnWrite()V

    .line 18559
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->access$31300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;)V

    return-object p0
.end method

.method public clearSlotPreferType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;
    .locals 1

    .line 18650
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;->copyOnWrite()V

    .line 18651
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->access$31800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;)V

    return-object p0
.end method

.method public getIsLockParkingTab()Z
    .locals 1

    .line 18663
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->getIsLockParkingTab()Z

    move-result v0

    return v0
.end method

.method public getIsShowLeaveParking()Z
    .locals 1

    .line 18479
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->getIsShowLeaveParking()Z

    move-result v0

    return v0
.end method

.method public getIsShowParkingPerfer()Z
    .locals 1

    .line 18571
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->getIsShowParkingPerfer()Z

    move-result v0

    return v0
.end method

.method public getIsShowParkingTab()Z
    .locals 1

    .line 18444
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->getIsShowParkingTab()Z

    move-result v0

    return v0
.end method

.method public getSlotLeaveParkingType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;
    .locals 1

    .line 18536
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->getSlotLeaveParkingType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;

    move-result-object v0

    return-object v0
.end method

.method public getSlotLeaveParkingTypeValue()I
    .locals 1

    .line 18514
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->getSlotLeaveParkingTypeValue()I

    move-result v0

    return v0
.end method

.method public getSlotPreferType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;
    .locals 1

    .line 18628
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->getSlotPreferType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;

    move-result-object v0

    return-object v0
.end method

.method public getSlotPreferTypeValue()I
    .locals 1

    .line 18606
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->getSlotPreferTypeValue()I

    move-result v0

    return v0
.end method

.method public setIsLockParkingTab(Z)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;
    .locals 1

    .line 18673
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;->copyOnWrite()V

    .line 18674
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->access$31900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;Z)V

    return-object p0
.end method

.method public setIsShowLeaveParking(Z)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;
    .locals 1

    .line 18489
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;->copyOnWrite()V

    .line 18490
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->access$30900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;Z)V

    return-object p0
.end method

.method public setIsShowParkingPerfer(Z)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;
    .locals 1

    .line 18581
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;->copyOnWrite()V

    .line 18582
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->access$31400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;Z)V

    return-object p0
.end method

.method public setIsShowParkingTab(Z)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;
    .locals 1

    .line 18454
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;->copyOnWrite()V

    .line 18455
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->access$30700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;Z)V

    return-object p0
.end method

.method public setSlotLeaveParkingType(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;
    .locals 1

    .line 18546
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;->copyOnWrite()V

    .line 18547
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->access$31200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;)V

    return-object p0
.end method

.method public setSlotLeaveParkingTypeValue(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;
    .locals 1

    .line 18524
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;->copyOnWrite()V

    .line 18525
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->access$31100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;I)V

    return-object p0
.end method

.method public setSlotPreferType(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;
    .locals 1

    .line 18638
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;->copyOnWrite()V

    .line 18639
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->access$31700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;)V

    return-object p0
.end method

.method public setSlotPreferTypeValue(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;
    .locals 1

    .line 18616
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;->copyOnWrite()V

    .line 18617
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->access$31600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;I)V

    return-object p0
.end method
