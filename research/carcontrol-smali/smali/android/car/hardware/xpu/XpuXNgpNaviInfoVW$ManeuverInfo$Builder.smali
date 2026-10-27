.class public final Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuXNgpNaviInfoVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5215
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->access$5200()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$1;)V
    .locals 0

    .line 5208
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearManeuverData()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;
    .locals 1

    .line 5296
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;->copyOnWrite()V

    .line 5297
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->access$5600(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;)V

    return-object p0
.end method

.method public clearManeuverID()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;
    .locals 1

    .line 5249
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;->copyOnWrite()V

    .line 5250
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->access$5400(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;)V

    return-object p0
.end method

.method public clearManeuverType()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;
    .locals 1

    .line 5332
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;->copyOnWrite()V

    .line 5333
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->access$5900(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;)V

    return-object p0
.end method

.method public clearNavigationId()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;
    .locals 1

    .line 5367
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;->copyOnWrite()V

    .line 5368
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->access$6100(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;)V

    return-object p0
.end method

.method public clearSegmentIndex()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;
    .locals 1

    .line 5390
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;->copyOnWrite()V

    .line 5391
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->access$6300(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;)V

    return-object p0
.end method

.method public getManeuverData()Ljava/lang/String;
    .locals 1

    .line 5262
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->getManeuverData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManeuverDataBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 5273
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->getManeuverDataBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getManeuverID()J
    .locals 2

    .line 5227
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->getManeuverID()J

    move-result-wide v0

    return-wide v0
.end method

.method public getManeuverType()I
    .locals 1

    .line 5318
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->getManeuverType()I

    move-result v0

    return v0
.end method

.method public getNavigationId()J
    .locals 2

    .line 5345
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->getNavigationId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSegmentIndex()J
    .locals 2

    .line 5376
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->getSegmentIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public setManeuverData(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;
    .locals 1

    .line 5284
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;->copyOnWrite()V

    .line 5285
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->access$5500(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setManeuverDataBytes(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;
    .locals 1

    .line 5309
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;->copyOnWrite()V

    .line 5310
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->access$5700(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method

.method public setManeuverID(J)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;
    .locals 1

    .line 5237
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;->copyOnWrite()V

    .line 5238
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->access$5300(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;J)V

    return-object p0
.end method

.method public setManeuverType(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;
    .locals 1

    .line 5324
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;->copyOnWrite()V

    .line 5325
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->access$5800(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;I)V

    return-object p0
.end method

.method public setNavigationId(J)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;
    .locals 1

    .line 5355
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;->copyOnWrite()V

    .line 5356
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->access$6000(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;J)V

    return-object p0
.end method

.method public setSegmentIndex(J)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;
    .locals 1

    .line 5382
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;->copyOnWrite()V

    .line 5383
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->access$6200(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;J)V

    return-object p0
.end method
