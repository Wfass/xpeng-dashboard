.class public final Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuXNgpNaviInfo.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4969
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->access$4600()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;)V
    .locals 0

    .line 4962
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearManeuverData()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;
    .locals 1

    .line 5050
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->copyOnWrite()V

    .line 5051
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->access$5000(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V

    return-object p0
.end method

.method public clearManeuverID()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;
    .locals 1

    .line 5003
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->copyOnWrite()V

    .line 5004
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->access$4800(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V

    return-object p0
.end method

.method public clearManeuverType()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;
    .locals 1

    .line 5086
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->copyOnWrite()V

    .line 5087
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->access$5300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V

    return-object p0
.end method

.method public clearNavigationId()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;
    .locals 1

    .line 5121
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->copyOnWrite()V

    .line 5122
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->access$5500(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V

    return-object p0
.end method

.method public clearPointIndex()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;
    .locals 1

    .line 5167
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->copyOnWrite()V

    .line 5168
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->access$5900(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V

    return-object p0
.end method

.method public clearSegmentIndex()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;
    .locals 1

    .line 5144
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->copyOnWrite()V

    .line 5145
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->access$5700(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V

    return-object p0
.end method

.method public getManeuverData()Ljava/lang/String;
    .locals 1

    .line 5016
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->getManeuverData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManeuverDataBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 5027
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->getManeuverDataBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getManeuverID()J
    .locals 2

    .line 4981
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->getManeuverID()J

    move-result-wide v0

    return-wide v0
.end method

.method public getManeuverType()I
    .locals 1

    .line 5072
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->getManeuverType()I

    move-result v0

    return v0
.end method

.method public getNavigationId()J
    .locals 2

    .line 5099
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->getNavigationId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPointIndex()J
    .locals 2

    .line 5153
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->getPointIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSegmentIndex()J
    .locals 2

    .line 5130
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->getSegmentIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public setManeuverData(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;
    .locals 1

    .line 5038
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->copyOnWrite()V

    .line 5039
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->access$4900(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setManeuverDataBytes(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;
    .locals 1

    .line 5063
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->copyOnWrite()V

    .line 5064
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->access$5100(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method

.method public setManeuverID(J)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;
    .locals 1

    .line 4991
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->copyOnWrite()V

    .line 4992
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->access$4700(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;J)V

    return-object p0
.end method

.method public setManeuverType(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;
    .locals 1

    .line 5078
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->copyOnWrite()V

    .line 5079
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->access$5200(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;I)V

    return-object p0
.end method

.method public setNavigationId(J)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;
    .locals 1

    .line 5109
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->copyOnWrite()V

    .line 5110
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->access$5400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;J)V

    return-object p0
.end method

.method public setPointIndex(J)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;
    .locals 1

    .line 5159
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->copyOnWrite()V

    .line 5160
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->access$5800(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;J)V

    return-object p0
.end method

.method public setSegmentIndex(J)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;
    .locals 1

    .line 5136
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->copyOnWrite()V

    .line 5137
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->access$5600(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;J)V

    return-object p0
.end method
