.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$SegmentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$SegmentOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 12119
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;->access$25600()Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V
    .locals 0

    .line 12112
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllLinks(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;"
        }
    .end annotation

    .line 12199
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->copyOnWrite()V

    .line 12200
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;->access$26300(Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addLinks(ILandroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;
    .locals 1

    .line 12190
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->copyOnWrite()V

    .line 12191
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;->access$26200(Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;ILandroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;)V

    return-object p0
.end method

.method public addLinks(ILandroid/car/hardware/xpu/XpuProtoMessageVW$Link;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;
    .locals 1

    .line 12172
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->copyOnWrite()V

    .line 12173
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;->access$26000(Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;ILandroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V

    return-object p0
.end method

.method public addLinks(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;
    .locals 1

    .line 12181
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->copyOnWrite()V

    .line 12182
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;->access$26100(Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;)V

    return-object p0
.end method

.method public addLinks(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;
    .locals 1

    .line 12163
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->copyOnWrite()V

    .line 12164
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;->access$25900(Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V

    return-object p0
.end method

.method public clearAssistAction()Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;
    .locals 1

    .line 12429
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->copyOnWrite()V

    .line 12430
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;->access$28000(Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;)V

    return-object p0
.end method

.method public clearGuideboardName()Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;
    .locals 1

    .line 12327
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->copyOnWrite()V

    .line 12328
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;->access$27300(Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;)V

    return-object p0
.end method

.method public clearHasCrossImage()Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;
    .locals 1

    .line 12296
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->copyOnWrite()V

    .line 12297
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;->access$27100(Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;)V

    return-object p0
.end method

.method public clearLength()Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;
    .locals 1

    .line 12238
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->copyOnWrite()V

    .line 12239
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;->access$26700(Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;)V

    return-object p0
.end method

.method public clearLinks()Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;
    .locals 1

    .line 12207
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->copyOnWrite()V

    .line 12208
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;->access$26400(Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;)V

    return-object p0
.end method

.method public clearMainAction()Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;
    .locals 1

    .line 12394
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->copyOnWrite()V

    .line 12395
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;->access$27800(Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;)V

    return-object p0
.end method

.method public clearSlope()Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;
    .locals 1

    .line 12359
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->copyOnWrite()V

    .line 12360
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;->access$27600(Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;)V

    return-object p0
.end method

.method public clearTrafficLightNum()Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;
    .locals 1

    .line 12273
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->copyOnWrite()V

    .line 12274
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;->access$26900(Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;)V

    return-object p0
.end method

.method public getAssistAction()I
    .locals 1

    .line 12407
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;->getAssistAction()I

    move-result v0

    return v0
.end method

.method public getGuideboardName()Ljava/lang/String;
    .locals 1

    .line 12305
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;->getGuideboardName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGuideboardNameBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 12312
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;->getGuideboardNameBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getHasCrossImage()Z
    .locals 1

    .line 12282
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;->getHasCrossImage()Z

    move-result v0

    return v0
.end method

.method public getLength()D
    .locals 2

    .line 12224
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;->getLength()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLinks(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;
    .locals 1

    .line 12139
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;->getLinks(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    move-result-object p1

    return-object p1
.end method

.method public getLinksCount()I
    .locals 1

    .line 12134
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;->getLinksCount()I

    move-result v0

    return v0
.end method

.method public getLinksList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;",
            ">;"
        }
    .end annotation

    .line 12127
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;

    .line 12128
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;->getLinksList()Ljava/util/List;

    move-result-object v0

    .line 12127
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMainAction()I
    .locals 1

    .line 12372
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;->getMainAction()I

    move-result v0

    return v0
.end method

.method public getSlope()I
    .locals 1

    .line 12345
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;->getSlope()I

    move-result v0

    return v0
.end method

.method public getTrafficLightNum()J
    .locals 2

    .line 12251
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;->getTrafficLightNum()J

    move-result-wide v0

    return-wide v0
.end method

.method public removeLinks(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;
    .locals 1

    .line 12215
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->copyOnWrite()V

    .line 12216
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;->access$26500(Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;I)V

    return-object p0
.end method

.method public setAssistAction(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;
    .locals 1

    .line 12417
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->copyOnWrite()V

    .line 12418
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;->access$27900(Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;I)V

    return-object p0
.end method

.method public setGuideboardName(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;
    .locals 1

    .line 12319
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->copyOnWrite()V

    .line 12320
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;->access$27200(Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;Ljava/lang/String;)V

    return-object p0
.end method

.method public setGuideboardNameBytes(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;
    .locals 1

    .line 12336
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->copyOnWrite()V

    .line 12337
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;->access$27400(Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method

.method public setHasCrossImage(Z)Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;
    .locals 1

    .line 12288
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->copyOnWrite()V

    .line 12289
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;->access$27000(Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;Z)V

    return-object p0
.end method

.method public setLength(D)Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;
    .locals 1

    .line 12230
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->copyOnWrite()V

    .line 12231
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;->access$26600(Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;D)V

    return-object p0
.end method

.method public setLinks(ILandroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;
    .locals 1

    .line 12155
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->copyOnWrite()V

    .line 12156
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;->access$25800(Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;ILandroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;)V

    return-object p0
.end method

.method public setLinks(ILandroid/car/hardware/xpu/XpuProtoMessageVW$Link;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;
    .locals 1

    .line 12146
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->copyOnWrite()V

    .line 12147
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;->access$25700(Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;ILandroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V

    return-object p0
.end method

.method public setMainAction(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;
    .locals 1

    .line 12382
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->copyOnWrite()V

    .line 12383
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;->access$27700(Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;I)V

    return-object p0
.end method

.method public setSlope(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;
    .locals 1

    .line 12351
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->copyOnWrite()V

    .line 12352
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;->access$27500(Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;I)V

    return-object p0
.end method

.method public setTrafficLightNum(J)Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;
    .locals 1

    .line 12261
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->copyOnWrite()V

    .line 12262
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;->access$26800(Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;J)V

    return-object p0
.end method
