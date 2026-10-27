.class public final Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncidentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncidentOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 13013
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->access$26900()Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V
    .locals 0

    .line 13006
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCredibility()Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;
    .locals 1

    .line 13206
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->copyOnWrite()V

    .line 13207
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->access$28500(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V

    return-object p0
.end method

.method public clearDesc()Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;
    .locals 1

    .line 13128
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->copyOnWrite()V

    .line 13129
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->access$27800(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V

    return-object p0
.end method

.method public clearEventType()Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;
    .locals 1

    .line 13275
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->copyOnWrite()V

    .line 13276
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->access$29100(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V

    return-object p0
.end method

.method public clearId()Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;
    .locals 1

    .line 13252
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->copyOnWrite()V

    .line 13253
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->access$28900(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V

    return-object p0
.end method

.method public clearLane()Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;
    .locals 1

    .line 13436
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->copyOnWrite()V

    .line 13437
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->access$30500(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V

    return-object p0
.end method

.method public clearLayerId()Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;
    .locals 1

    .line 13298
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->copyOnWrite()V

    .line 13299
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->access$29300(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V

    return-object p0
.end method

.method public clearLayerTag()Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;
    .locals 1

    .line 13321
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->copyOnWrite()V

    .line 13322
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->access$29500(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V

    return-object p0
.end method

.method public clearLinkIndex()Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;
    .locals 1

    .line 13367
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->copyOnWrite()V

    .line 13368
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->access$29900(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V

    return-object p0
.end method

.method public clearPos()Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;
    .locals 1

    .line 13057
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->copyOnWrite()V

    .line 13058
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->access$27300(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V

    return-object p0
.end method

.method public clearPriority()Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;
    .locals 1

    .line 13183
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->copyOnWrite()V

    .line 13184
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->access$28300(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V

    return-object p0
.end method

.method public clearReversed()Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;
    .locals 1

    .line 13413
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->copyOnWrite()V

    .line 13414
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->access$30300(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V

    return-object p0
.end method

.method public clearRoadClass()Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;
    .locals 1

    .line 13459
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->copyOnWrite()V

    .line 13460
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->access$30700(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V

    return-object p0
.end method

.method public clearSegIndex()Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;
    .locals 1

    .line 13344
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->copyOnWrite()V

    .line 13345
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->access$29700(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V

    return-object p0
.end method

.method public clearSource()Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;
    .locals 1

    .line 13229
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->copyOnWrite()V

    .line 13230
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->access$28700(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V

    return-object p0
.end method

.method public clearTitle()Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;
    .locals 1

    .line 13088
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->copyOnWrite()V

    .line 13089
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->access$27500(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V

    return-object p0
.end method

.method public clearTitleType()Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;
    .locals 1

    .line 13390
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->copyOnWrite()V

    .line 13391
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->access$30100(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V

    return-object p0
.end method

.method public clearType()Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;
    .locals 1

    .line 13160
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->copyOnWrite()V

    .line 13161
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->access$28100(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V

    return-object p0
.end method

.method public getCredibility()I
    .locals 1

    .line 13192
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->getCredibility()I

    move-result v0

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 13106
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->getDesc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 13113
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->getDescBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getEventType()J
    .locals 2

    .line 13261
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->getEventType()J

    move-result-wide v0

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .line 13238
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLane()I
    .locals 1

    .line 13422
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->getLane()I

    move-result v0

    return v0
.end method

.method public getLayerId()J
    .locals 2

    .line 13284
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->getLayerId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLayerTag()J
    .locals 2

    .line 13307
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->getLayerTag()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLinkIndex()I
    .locals 1

    .line 13353
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->getLinkIndex()I

    move-result v0

    return v0
.end method

.method public getPos()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;
    .locals 1

    .line 13027
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->getPos()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 13169
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->getPriority()I

    move-result v0

    return v0
.end method

.method public getReversed()I
    .locals 1

    .line 13399
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->getReversed()I

    move-result v0

    return v0
.end method

.method public getRoadClass()I
    .locals 1

    .line 13445
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->getRoadClass()I

    move-result v0

    return v0
.end method

.method public getSegIndex()I
    .locals 1

    .line 13330
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->getSegIndex()I

    move-result v0

    return v0
.end method

.method public getSource()I
    .locals 1

    .line 13215
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->getSource()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 13066
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 13073
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->getTitleBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTitleType()I
    .locals 1

    .line 13376
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->getTitleType()I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 1

    .line 13146
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->getType()I

    move-result v0

    return v0
.end method

.method public hasPos()Z
    .locals 1

    .line 13021
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->hasPos()Z

    move-result v0

    return v0
.end method

.method public mergePos(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;
    .locals 1

    .line 13050
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->copyOnWrite()V

    .line 13051
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->access$27200(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-object p0
.end method

.method public setCredibility(I)Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;
    .locals 1

    .line 13198
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->copyOnWrite()V

    .line 13199
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->access$28400(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;I)V

    return-object p0
.end method

.method public setDesc(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;
    .locals 1

    .line 13120
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->copyOnWrite()V

    .line 13121
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->access$27700(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDescBytes(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;
    .locals 1

    .line 13137
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->copyOnWrite()V

    .line 13138
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->access$27900(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method

.method public setEventType(J)Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;
    .locals 1

    .line 13267
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->copyOnWrite()V

    .line 13268
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->access$29000(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;J)V

    return-object p0
.end method

.method public setId(J)Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;
    .locals 1

    .line 13244
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->copyOnWrite()V

    .line 13245
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->access$28800(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;J)V

    return-object p0
.end method

.method public setLane(I)Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;
    .locals 1

    .line 13428
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->copyOnWrite()V

    .line 13429
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->access$30400(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;I)V

    return-object p0
.end method

.method public setLayerId(J)Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;
    .locals 1

    .line 13290
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->copyOnWrite()V

    .line 13291
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->access$29200(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;J)V

    return-object p0
.end method

.method public setLayerTag(J)Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;
    .locals 1

    .line 13313
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->copyOnWrite()V

    .line 13314
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->access$29400(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;J)V

    return-object p0
.end method

.method public setLinkIndex(I)Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;
    .locals 1

    .line 13359
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->copyOnWrite()V

    .line 13360
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->access$29800(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;I)V

    return-object p0
.end method

.method public setPos(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;
    .locals 1

    .line 13042
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->copyOnWrite()V

    .line 13043
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->access$27100(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V

    return-object p0
.end method

.method public setPos(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;
    .locals 1

    .line 13033
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->copyOnWrite()V

    .line 13034
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->access$27000(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-object p0
.end method

.method public setPriority(I)Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;
    .locals 1

    .line 13175
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->copyOnWrite()V

    .line 13176
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->access$28200(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;I)V

    return-object p0
.end method

.method public setReversed(I)Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;
    .locals 1

    .line 13405
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->copyOnWrite()V

    .line 13406
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->access$30200(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;I)V

    return-object p0
.end method

.method public setRoadClass(I)Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;
    .locals 1

    .line 13451
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->copyOnWrite()V

    .line 13452
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->access$30600(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;I)V

    return-object p0
.end method

.method public setSegIndex(I)Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;
    .locals 1

    .line 13336
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->copyOnWrite()V

    .line 13337
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->access$29600(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;I)V

    return-object p0
.end method

.method public setSource(I)Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;
    .locals 1

    .line 13221
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->copyOnWrite()V

    .line 13222
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->access$28600(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;I)V

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;
    .locals 1

    .line 13080
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->copyOnWrite()V

    .line 13081
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->access$27400(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTitleBytes(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;
    .locals 1

    .line 13097
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->copyOnWrite()V

    .line 13098
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->access$27600(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTitleType(I)Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;
    .locals 1

    .line 13382
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->copyOnWrite()V

    .line 13383
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->access$30000(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;I)V

    return-object p0
.end method

.method public setType(I)Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;
    .locals 1

    .line 13152
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->copyOnWrite()V

    .line 13153
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->access$28000(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;I)V

    return-object p0
.end method
