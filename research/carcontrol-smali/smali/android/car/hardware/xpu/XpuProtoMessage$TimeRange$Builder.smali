.class public final Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$TimeRangeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$TimeRangeOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6969
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->access$12400()Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V
    .locals 0

    .line 6962
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEnd()Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;
    .locals 1

    .line 7058
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;->copyOnWrite()V

    .line 7059
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->access$13200(Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;)V

    return-object p0
.end method

.method public clearStart()Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;
    .locals 1

    .line 7013
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;->copyOnWrite()V

    .line 7014
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->access$12800(Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;)V

    return-object p0
.end method

.method public getEnd()Landroid/car/hardware/xpu/XpuProtoMessage$Time;
    .locals 1

    .line 7028
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->getEnd()Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    move-result-object v0

    return-object v0
.end method

.method public getStart()Landroid/car/hardware/xpu/XpuProtoMessage$Time;
    .locals 1

    .line 6983
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->getStart()Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    move-result-object v0

    return-object v0
.end method

.method public hasEnd()Z
    .locals 1

    .line 7022
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->hasEnd()Z

    move-result v0

    return v0
.end method

.method public hasStart()Z
    .locals 1

    .line 6977
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->hasStart()Z

    move-result v0

    return v0
.end method

.method public mergeEnd(Landroid/car/hardware/xpu/XpuProtoMessage$Time;)Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;
    .locals 1

    .line 7051
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;->copyOnWrite()V

    .line 7052
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->access$13100(Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;Landroid/car/hardware/xpu/XpuProtoMessage$Time;)V

    return-object p0
.end method

.method public mergeStart(Landroid/car/hardware/xpu/XpuProtoMessage$Time;)Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;
    .locals 1

    .line 7006
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;->copyOnWrite()V

    .line 7007
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->access$12700(Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;Landroid/car/hardware/xpu/XpuProtoMessage$Time;)V

    return-object p0
.end method

.method public setEnd(Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;
    .locals 1

    .line 7043
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;->copyOnWrite()V

    .line 7044
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->access$13000(Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;)V

    return-object p0
.end method

.method public setEnd(Landroid/car/hardware/xpu/XpuProtoMessage$Time;)Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;
    .locals 1

    .line 7034
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;->copyOnWrite()V

    .line 7035
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->access$12900(Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;Landroid/car/hardware/xpu/XpuProtoMessage$Time;)V

    return-object p0
.end method

.method public setStart(Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;
    .locals 1

    .line 6998
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;->copyOnWrite()V

    .line 6999
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->access$12600(Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;)V

    return-object p0
.end method

.method public setStart(Landroid/car/hardware/xpu/XpuProtoMessage$Time;)Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;
    .locals 1

    .line 6989
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;->copyOnWrite()V

    .line 6990
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->access$12500(Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;Landroid/car/hardware/xpu/XpuProtoMessage$Time;)V

    return-object p0
.end method
