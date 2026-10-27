.class public final Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 15122
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->access$33500()Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V
    .locals 0

    .line 15115
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDirection()Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;
    .locals 1

    .line 15234
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;->copyOnWrite()V

    .line 15235
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->access$34500(Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;)V

    return-object p0
.end method

.method public clearProjective()Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;
    .locals 1

    .line 15211
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;->copyOnWrite()V

    .line 15212
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->access$34300(Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;)V

    return-object p0
.end method

.method public clearShow()Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;
    .locals 1

    .line 15166
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;->copyOnWrite()V

    .line 15167
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->access$33900(Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;)V

    return-object p0
.end method

.method public getDirection()I
    .locals 1

    .line 15220
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->getDirection()I

    move-result v0

    return v0
.end method

.method public getProjective()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;
    .locals 1

    .line 15181
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->getProjective()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v0

    return-object v0
.end method

.method public getShow()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;
    .locals 1

    .line 15136
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->getShow()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v0

    return-object v0
.end method

.method public hasProjective()Z
    .locals 1

    .line 15175
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->hasProjective()Z

    move-result v0

    return v0
.end method

.method public hasShow()Z
    .locals 1

    .line 15130
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->hasShow()Z

    move-result v0

    return v0
.end method

.method public mergeProjective(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;
    .locals 1

    .line 15204
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;->copyOnWrite()V

    .line 15205
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->access$34200(Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-object p0
.end method

.method public mergeShow(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;
    .locals 1

    .line 15159
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;->copyOnWrite()V

    .line 15160
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->access$33800(Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-object p0
.end method

.method public setDirection(I)Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;
    .locals 1

    .line 15226
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;->copyOnWrite()V

    .line 15227
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->access$34400(Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;I)V

    return-object p0
.end method

.method public setProjective(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;
    .locals 1

    .line 15196
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;->copyOnWrite()V

    .line 15197
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->access$34100(Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V

    return-object p0
.end method

.method public setProjective(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;
    .locals 1

    .line 15187
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;->copyOnWrite()V

    .line 15188
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->access$34000(Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-object p0
.end method

.method public setShow(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;
    .locals 1

    .line 15151
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;->copyOnWrite()V

    .line 15152
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->access$33700(Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V

    return-object p0
.end method

.method public setShow(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;
    .locals 1

    .line 15142
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;->copyOnWrite()V

    .line 15143
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->access$33600(Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-object p0
.end method
