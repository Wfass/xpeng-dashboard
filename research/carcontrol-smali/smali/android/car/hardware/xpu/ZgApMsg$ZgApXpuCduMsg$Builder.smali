.class public final Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "ZgApMsg.java"

# interfaces
.implements Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsgOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;",
        "Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsgOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 870
    invoke-static {}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->access$800()Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/ZgApMsg$1;)V
    .locals 0

    .line 863
    invoke-direct {p0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearXPUCDURemoteAPEnterfailReason()Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;
    .locals 1

    .line 915
    invoke-virtual {p0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->copyOnWrite()V

    .line 916
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-static {v0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->access$1200(Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;)V

    return-object p0
.end method

.method public clearXPUCDURemoteAPGearLev()Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;
    .locals 1

    .line 961
    invoke-virtual {p0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->copyOnWrite()V

    .line 962
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-static {v0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->access$1600(Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;)V

    return-object p0
.end method

.method public clearXPUCDURemoteAPParkingGif()Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;
    .locals 1

    .line 1030
    invoke-virtual {p0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->copyOnWrite()V

    .line 1031
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-static {v0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->access$2200(Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;)V

    return-object p0
.end method

.method public clearXPUCDURemoteAPProgressRate()Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;
    .locals 1

    .line 1007
    invoke-virtual {p0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->copyOnWrite()V

    .line 1008
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-static {v0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->access$2000(Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;)V

    return-object p0
.end method

.method public clearXPUCDURemoteAPRestDist()Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;
    .locals 1

    .line 1053
    invoke-virtual {p0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->copyOnWrite()V

    .line 1054
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-static {v0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->access$2400(Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;)V

    return-object p0
.end method

.method public clearXPUCDURemoteAPState()Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;
    .locals 1

    .line 892
    invoke-virtual {p0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->copyOnWrite()V

    .line 893
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-static {v0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->access$1000(Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;)V

    return-object p0
.end method

.method public clearXPUCDURemoteAPTips()Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;
    .locals 1

    .line 938
    invoke-virtual {p0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->copyOnWrite()V

    .line 939
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-static {v0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->access$1400(Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;)V

    return-object p0
.end method

.method public clearXPUCDURemoteAPVehSpd()Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;
    .locals 1

    .line 984
    invoke-virtual {p0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->copyOnWrite()V

    .line 985
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-static {v0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->access$1800(Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;)V

    return-object p0
.end method

.method public clearXPUCDUSmartPkoutMsg()Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;
    .locals 1

    .line 1098
    invoke-virtual {p0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->copyOnWrite()V

    .line 1099
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-static {v0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->access$2800(Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;)V

    return-object p0
.end method

.method public getXPUCDURemoteAPEnterfailReason()I
    .locals 1

    .line 901
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->getXPUCDURemoteAPEnterfailReason()I

    move-result v0

    return v0
.end method

.method public getXPUCDURemoteAPGearLev()I
    .locals 1

    .line 947
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->getXPUCDURemoteAPGearLev()I

    move-result v0

    return v0
.end method

.method public getXPUCDURemoteAPParkingGif()I
    .locals 1

    .line 1016
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->getXPUCDURemoteAPParkingGif()I

    move-result v0

    return v0
.end method

.method public getXPUCDURemoteAPProgressRate()I
    .locals 1

    .line 993
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->getXPUCDURemoteAPProgressRate()I

    move-result v0

    return v0
.end method

.method public getXPUCDURemoteAPRestDist()I
    .locals 1

    .line 1039
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->getXPUCDURemoteAPRestDist()I

    move-result v0

    return v0
.end method

.method public getXPUCDURemoteAPState()I
    .locals 1

    .line 878
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->getXPUCDURemoteAPState()I

    move-result v0

    return v0
.end method

.method public getXPUCDURemoteAPTips()I
    .locals 1

    .line 924
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->getXPUCDURemoteAPTips()I

    move-result v0

    return v0
.end method

.method public getXPUCDURemoteAPVehSpd()F
    .locals 1

    .line 970
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->getXPUCDURemoteAPVehSpd()F

    move-result v0

    return v0
.end method

.method public getXPUCDUSmartPkoutMsg()Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;
    .locals 1

    .line 1068
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->getXPUCDUSmartPkoutMsg()Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    move-result-object v0

    return-object v0
.end method

.method public hasXPUCDUSmartPkoutMsg()Z
    .locals 1

    .line 1062
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->hasXPUCDUSmartPkoutMsg()Z

    move-result v0

    return v0
.end method

.method public mergeXPUCDUSmartPkoutMsg(Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;)Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;
    .locals 1

    .line 1091
    invoke-virtual {p0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->copyOnWrite()V

    .line 1092
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->access$2700(Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;)V

    return-object p0
.end method

.method public setXPUCDURemoteAPEnterfailReason(I)Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;
    .locals 1

    .line 907
    invoke-virtual {p0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->copyOnWrite()V

    .line 908
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->access$1100(Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;I)V

    return-object p0
.end method

.method public setXPUCDURemoteAPGearLev(I)Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;
    .locals 1

    .line 953
    invoke-virtual {p0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->copyOnWrite()V

    .line 954
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->access$1500(Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;I)V

    return-object p0
.end method

.method public setXPUCDURemoteAPParkingGif(I)Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;
    .locals 1

    .line 1022
    invoke-virtual {p0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->copyOnWrite()V

    .line 1023
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->access$2100(Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;I)V

    return-object p0
.end method

.method public setXPUCDURemoteAPProgressRate(I)Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;
    .locals 1

    .line 999
    invoke-virtual {p0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->copyOnWrite()V

    .line 1000
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->access$1900(Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;I)V

    return-object p0
.end method

.method public setXPUCDURemoteAPRestDist(I)Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;
    .locals 1

    .line 1045
    invoke-virtual {p0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->copyOnWrite()V

    .line 1046
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->access$2300(Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;I)V

    return-object p0
.end method

.method public setXPUCDURemoteAPState(I)Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;
    .locals 1

    .line 884
    invoke-virtual {p0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->copyOnWrite()V

    .line 885
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->access$900(Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;I)V

    return-object p0
.end method

.method public setXPUCDURemoteAPTips(I)Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;
    .locals 1

    .line 930
    invoke-virtual {p0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->copyOnWrite()V

    .line 931
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->access$1300(Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;I)V

    return-object p0
.end method

.method public setXPUCDURemoteAPVehSpd(F)Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;
    .locals 1

    .line 976
    invoke-virtual {p0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->copyOnWrite()V

    .line 977
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->access$1700(Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;F)V

    return-object p0
.end method

.method public setXPUCDUSmartPkoutMsg(Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;)Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;
    .locals 1

    .line 1083
    invoke-virtual {p0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->copyOnWrite()V

    .line 1084
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->access$2600(Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;)V

    return-object p0
.end method

.method public setXPUCDUSmartPkoutMsg(Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;)Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;
    .locals 1

    .line 1074
    invoke-virtual {p0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->copyOnWrite()V

    .line 1075
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->access$2500(Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;)V

    return-object p0
.end method
