.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRangeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRangeOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6708
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->access$12200()Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V
    .locals 0

    .line 6701
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEnd()Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;
    .locals 1

    .line 6797
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;->copyOnWrite()V

    .line 6798
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->access$13000(Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;)V

    return-object p0
.end method

.method public clearStart()Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;
    .locals 1

    .line 6752
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;->copyOnWrite()V

    .line 6753
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->access$12600(Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;)V

    return-object p0
.end method

.method public getEnd()Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;
    .locals 1

    .line 6767
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->getEnd()Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    move-result-object v0

    return-object v0
.end method

.method public getStart()Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;
    .locals 1

    .line 6722
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->getStart()Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    move-result-object v0

    return-object v0
.end method

.method public hasEnd()Z
    .locals 1

    .line 6761
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->hasEnd()Z

    move-result v0

    return v0
.end method

.method public hasStart()Z
    .locals 1

    .line 6716
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->hasStart()Z

    move-result v0

    return v0
.end method

.method public mergeEnd(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;)Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;
    .locals 1

    .line 6790
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;->copyOnWrite()V

    .line 6791
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->access$12900(Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;)V

    return-object p0
.end method

.method public mergeStart(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;)Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;
    .locals 1

    .line 6745
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;->copyOnWrite()V

    .line 6746
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->access$12500(Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;)V

    return-object p0
.end method

.method public setEnd(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;
    .locals 1

    .line 6782
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;->copyOnWrite()V

    .line 6783
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->access$12800(Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;)V

    return-object p0
.end method

.method public setEnd(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;)Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;
    .locals 1

    .line 6773
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;->copyOnWrite()V

    .line 6774
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->access$12700(Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;)V

    return-object p0
.end method

.method public setStart(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;
    .locals 1

    .line 6737
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;->copyOnWrite()V

    .line 6738
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->access$12400(Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;)V

    return-object p0
.end method

.method public setStart(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;)Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;
    .locals 1

    .line 6728
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;->copyOnWrite()V

    .line 6729
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->access$12300(Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;)V

    return-object p0
.end method
