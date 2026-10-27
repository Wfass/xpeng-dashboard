.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBumpOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBumpOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 23931
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->access$41400()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;)V
    .locals 0

    .line 23924
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearId()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;
    .locals 1

    .line 23961
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;->copyOnWrite()V

    .line 23962
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->access$41600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;)V

    return-object p0
.end method

.method public clearPolygon()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;
    .locals 1

    .line 24015
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;->copyOnWrite()V

    .line 24016
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->access$42100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;)V

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 23939
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 23946
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->getIdBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPolygon()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;
    .locals 1

    .line 23985
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->getPolygon()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    move-result-object v0

    return-object v0
.end method

.method public hasPolygon()Z
    .locals 1

    .line 23979
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->hasPolygon()Z

    move-result v0

    return v0
.end method

.method public mergePolygon(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;
    .locals 1

    .line 24008
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;->copyOnWrite()V

    .line 24009
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->access$42000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;)V

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;
    .locals 1

    .line 23953
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;->copyOnWrite()V

    .line 23954
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->access$41500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;Ljava/lang/String;)V

    return-object p0
.end method

.method public setIdBytes(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;
    .locals 1

    .line 23970
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;->copyOnWrite()V

    .line 23971
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->access$41700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPolygon(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;
    .locals 1

    .line 24000
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;->copyOnWrite()V

    .line 24001
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->access$41900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;)V

    return-object p0
.end method

.method public setPolygon(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;
    .locals 1

    .line 23991
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;->copyOnWrite()V

    .line 23992
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->access$41800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;)V

    return-object p0
.end method
