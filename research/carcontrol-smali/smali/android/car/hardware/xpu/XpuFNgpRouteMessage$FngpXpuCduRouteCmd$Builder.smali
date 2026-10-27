.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 19910
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->access$33000()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;)V
    .locals 0

    .line 19903
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearData()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;
    .locals 1

    .line 20152
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->copyOnWrite()V

    .line 20153
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->access$34300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;)V

    return-object p0
.end method

.method public clearEndLonlatPoint()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;
    .locals 1

    .line 20105
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->copyOnWrite()V

    .line 20106
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->access$34100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;)V

    return-object p0
.end method

.method public clearFngpRouteCmd()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;
    .locals 1

    .line 20001
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->copyOnWrite()V

    .line 20002
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->access$33500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;)V

    return-object p0
.end method

.method public clearNavigationId()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;
    .locals 1

    .line 20200
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->copyOnWrite()V

    .line 20201
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->access$34600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;)V

    return-object p0
.end method

.method public clearRouteId()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;
    .locals 1

    .line 20036
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->copyOnWrite()V

    .line 20037
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->access$33700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;)V

    return-object p0
.end method

.method public clearSequenceNumber()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;
    .locals 1

    .line 19944
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->copyOnWrite()V

    .line 19945
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->access$33200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;)V

    return-object p0
.end method

.method public clearTimestamp()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;
    .locals 1

    .line 20235
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->copyOnWrite()V

    .line 20236
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->access$34800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;)V

    return-object p0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 20118
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 20129
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->getDataBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getEndLonlatPoint()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;
    .locals 1

    .line 20059
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->getEndLonlatPoint()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    move-result-object v0

    return-object v0
.end method

.method public getFngpRouteCmd()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;
    .locals 1

    .line 19979
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->getFngpRouteCmd()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

    move-result-object v0

    return-object v0
.end method

.method public getFngpRouteCmdValue()I
    .locals 1

    .line 19957
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->getFngpRouteCmdValue()I

    move-result v0

    return v0
.end method

.method public getNavigationId()J
    .locals 2

    .line 20178
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->getNavigationId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRouteId()J
    .locals 2

    .line 20014
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->getRouteId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .line 19922
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->getSequenceNumber()I

    move-result v0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 20213
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasEndLonlatPoint()Z
    .locals 1

    .line 20049
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->hasEndLonlatPoint()Z

    move-result v0

    return v0
.end method

.method public mergeEndLonlatPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;
    .locals 1

    .line 20094
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->copyOnWrite()V

    .line 20095
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->access$34000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V

    return-object p0
.end method

.method public setData(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;
    .locals 1

    .line 20140
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->copyOnWrite()V

    .line 20141
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->access$34200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDataBytes(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;
    .locals 1

    .line 20165
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->copyOnWrite()V

    .line 20166
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->access$34400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method

.method public setEndLonlatPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;
    .locals 1

    .line 20082
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->copyOnWrite()V

    .line 20083
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->access$33900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V

    return-object p0
.end method

.method public setEndLonlatPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;
    .locals 1

    .line 20069
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->copyOnWrite()V

    .line 20070
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->access$33800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V

    return-object p0
.end method

.method public setFngpRouteCmd(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;
    .locals 1

    .line 19989
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->copyOnWrite()V

    .line 19990
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->access$33400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;)V

    return-object p0
.end method

.method public setFngpRouteCmdValue(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;
    .locals 1

    .line 19967
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->copyOnWrite()V

    .line 19968
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->access$33300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;I)V

    return-object p0
.end method

.method public setNavigationId(J)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;
    .locals 1

    .line 20188
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->copyOnWrite()V

    .line 20189
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->access$34500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;J)V

    return-object p0
.end method

.method public setRouteId(J)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;
    .locals 1

    .line 20024
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->copyOnWrite()V

    .line 20025
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->access$33600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;J)V

    return-object p0
.end method

.method public setSequenceNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;
    .locals 1

    .line 19932
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->copyOnWrite()V

    .line 19933
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->access$33100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;I)V

    return-object p0
.end method

.method public setTimestamp(J)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;
    .locals 1

    .line 20223
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->copyOnWrite()V

    .line 20224
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->access$34700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;J)V

    return-object p0
.end method
