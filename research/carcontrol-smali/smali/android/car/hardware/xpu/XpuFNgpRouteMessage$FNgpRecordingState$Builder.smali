.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingStateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingStateOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 16373
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->access$27100()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;)V
    .locals 0

    .line 16366
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAutoSaveType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;
    .locals 1

    .line 16594
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;->copyOnWrite()V

    .line 16595
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->access$28300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;)V

    return-object p0
.end method

.method public clearName()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;
    .locals 1

    .line 16524
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;->copyOnWrite()V

    .line 16525
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->access$27900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;)V

    return-object p0
.end method

.method public clearRecordingStatus()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;
    .locals 1

    .line 16442
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;->copyOnWrite()V

    .line 16443
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->access$27500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;)V

    return-object p0
.end method

.method public clearRouteId()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;
    .locals 1

    .line 16407
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;->copyOnWrite()V

    .line 16408
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->access$27300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;)V

    return-object p0
.end method

.method public clearTimestamp()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;
    .locals 1

    .line 16477
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;->copyOnWrite()V

    .line 16478
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->access$27700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;)V

    return-object p0
.end method

.method public getAutoSaveType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;
    .locals 1

    .line 16572
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->getAutoSaveType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;

    move-result-object v0

    return-object v0
.end method

.method public getAutoSaveTypeValue()I
    .locals 1

    .line 16550
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->getAutoSaveTypeValue()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 16490
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 16501
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->getNameBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRecordingStatus()I
    .locals 1

    .line 16420
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->getRecordingStatus()I

    move-result v0

    return v0
.end method

.method public getRouteId()J
    .locals 2

    .line 16385
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->getRouteId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 16455
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public setAutoSaveType(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;
    .locals 1

    .line 16582
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;->copyOnWrite()V

    .line 16583
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->access$28200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;)V

    return-object p0
.end method

.method public setAutoSaveTypeValue(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;
    .locals 1

    .line 16560
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;->copyOnWrite()V

    .line 16561
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->access$28100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;I)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;
    .locals 1

    .line 16512
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;->copyOnWrite()V

    .line 16513
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->access$27800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;
    .locals 1

    .line 16537
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;->copyOnWrite()V

    .line 16538
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->access$28000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRecordingStatus(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;
    .locals 1

    .line 16430
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;->copyOnWrite()V

    .line 16431
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->access$27400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;I)V

    return-object p0
.end method

.method public setRouteId(J)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;
    .locals 1

    .line 16395
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;->copyOnWrite()V

    .line 16396
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->access$27200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;J)V

    return-object p0
.end method

.method public setTimestamp(J)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;
    .locals 1

    .line 16465
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;->copyOnWrite()V

    .line 16466
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->access$27600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;J)V

    return-object p0
.end method
