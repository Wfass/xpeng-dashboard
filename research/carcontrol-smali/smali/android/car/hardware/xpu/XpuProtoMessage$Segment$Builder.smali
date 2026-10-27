.class public final Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$SegmentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage$Segment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$Segment;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$SegmentOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 11816
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->access$24700()Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V
    .locals 0

    .line 11809
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllLinks(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$Link;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;"
        }
    .end annotation

    .line 11896
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->copyOnWrite()V

    .line 11897
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->access$25400(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addLinks(ILandroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;
    .locals 1

    .line 11887
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->copyOnWrite()V

    .line 11888
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->access$25300(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;ILandroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;)V

    return-object p0
.end method

.method public addLinks(ILandroid/car/hardware/xpu/XpuProtoMessage$Link;)Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;
    .locals 1

    .line 11869
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->copyOnWrite()V

    .line 11870
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->access$25100(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;ILandroid/car/hardware/xpu/XpuProtoMessage$Link;)V

    return-object p0
.end method

.method public addLinks(Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;
    .locals 1

    .line 11878
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->copyOnWrite()V

    .line 11879
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->access$25200(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;)V

    return-object p0
.end method

.method public addLinks(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;
    .locals 1

    .line 11860
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->copyOnWrite()V

    .line 11861
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->access$25000(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V

    return-object p0
.end method

.method public clearGuideboardName()Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;
    .locals 1

    .line 12024
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->copyOnWrite()V

    .line 12025
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->access$26400(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;)V

    return-object p0
.end method

.method public clearHasCrossImage()Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;
    .locals 1

    .line 11993
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->copyOnWrite()V

    .line 11994
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->access$26200(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;)V

    return-object p0
.end method

.method public clearLength()Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;
    .locals 1

    .line 11935
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->copyOnWrite()V

    .line 11936
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->access$25800(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;)V

    return-object p0
.end method

.method public clearLinks()Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;
    .locals 1

    .line 11904
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->copyOnWrite()V

    .line 11905
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->access$25500(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;)V

    return-object p0
.end method

.method public clearSlope()Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;
    .locals 1

    .line 12056
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->copyOnWrite()V

    .line 12057
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->access$26700(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;)V

    return-object p0
.end method

.method public clearTrafficLightNum()Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;
    .locals 1

    .line 11970
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->copyOnWrite()V

    .line 11971
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->access$26000(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;)V

    return-object p0
.end method

.method public getGuideboardName()Ljava/lang/String;
    .locals 1

    .line 12002
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->getGuideboardName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGuideboardNameBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 12009
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->getGuideboardNameBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getHasCrossImage()Z
    .locals 1

    .line 11979
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->getHasCrossImage()Z

    move-result v0

    return v0
.end method

.method public getLength()D
    .locals 2

    .line 11921
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->getLength()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLinks(I)Landroid/car/hardware/xpu/XpuProtoMessage$Link;
    .locals 1

    .line 11836
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->getLinks(I)Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    move-result-object p1

    return-object p1
.end method

.method public getLinksCount()I
    .locals 1

    .line 11831
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->getLinksCount()I

    move-result v0

    return v0
.end method

.method public getLinksList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$Link;",
            ">;"
        }
    .end annotation

    .line 11824
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    .line 11825
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->getLinksList()Ljava/util/List;

    move-result-object v0

    .line 11824
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSlope()I
    .locals 1

    .line 12042
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->getSlope()I

    move-result v0

    return v0
.end method

.method public getTrafficLightNum()J
    .locals 2

    .line 11948
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->getTrafficLightNum()J

    move-result-wide v0

    return-wide v0
.end method

.method public removeLinks(I)Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;
    .locals 1

    .line 11912
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->copyOnWrite()V

    .line 11913
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->access$25600(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;I)V

    return-object p0
.end method

.method public setGuideboardName(Ljava/lang/String;)Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;
    .locals 1

    .line 12016
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->copyOnWrite()V

    .line 12017
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->access$26300(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;Ljava/lang/String;)V

    return-object p0
.end method

.method public setGuideboardNameBytes(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;
    .locals 1

    .line 12033
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->copyOnWrite()V

    .line 12034
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->access$26500(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;Lcom/android/carsdk/protobuf/ByteString;)V

    return-object p0
.end method

.method public setHasCrossImage(Z)Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;
    .locals 1

    .line 11985
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->copyOnWrite()V

    .line 11986
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->access$26100(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;Z)V

    return-object p0
.end method

.method public setLength(D)Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;
    .locals 1

    .line 11927
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->copyOnWrite()V

    .line 11928
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->access$25700(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;D)V

    return-object p0
.end method

.method public setLinks(ILandroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;)Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;
    .locals 1

    .line 11852
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->copyOnWrite()V

    .line 11853
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->access$24900(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;ILandroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;)V

    return-object p0
.end method

.method public setLinks(ILandroid/car/hardware/xpu/XpuProtoMessage$Link;)Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;
    .locals 1

    .line 11843
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->copyOnWrite()V

    .line 11844
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->access$24800(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;ILandroid/car/hardware/xpu/XpuProtoMessage$Link;)V

    return-object p0
.end method

.method public setSlope(I)Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;
    .locals 1

    .line 12048
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->copyOnWrite()V

    .line 12049
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->access$26600(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;I)V

    return-object p0
.end method

.method public setTrafficLightNum(J)Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;
    .locals 1

    .line 11958
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->copyOnWrite()V

    .line 11959
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->access$25900(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;J)V

    return-object p0
.end method
