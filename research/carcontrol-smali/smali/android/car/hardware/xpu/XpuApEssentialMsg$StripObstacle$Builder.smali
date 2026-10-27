.class public final Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuApEssentialMsg.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacleOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4719
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->access$9400()Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuApEssentialMsg$1;)V
    .locals 0

    .line 4712
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllSegment(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Float;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;"
        }
    .end annotation

    .line 4789
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->copyOnWrite()V

    .line 4790
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->access$9700(Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addSegment(F)Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;
    .locals 1

    .line 4776
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->copyOnWrite()V

    .line 4777
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->access$9600(Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;F)V

    return-object p0
.end method

.method public clearAttri()Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;
    .locals 1

    .line 5010
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->copyOnWrite()V

    .line 5011
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->access$11000(Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;)V

    return-object p0
.end method

.method public clearColor()Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;
    .locals 1

    .line 4940
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->copyOnWrite()V

    .line 4941
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->access$10600(Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;)V

    return-object p0
.end method

.method public clearId()Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;
    .locals 1

    .line 4975
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->copyOnWrite()V

    .line 4976
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->access$10800(Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;)V

    return-object p0
.end method

.method public clearSegment()Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;
    .locals 1

    .line 4801
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->copyOnWrite()V

    .line 4802
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->access$9800(Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;)V

    return-object p0
.end method

.method public clearSize()Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;
    .locals 1

    .line 4905
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->copyOnWrite()V

    .line 4906
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->access$10400(Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;)V

    return-object p0
.end method

.method public clearType()Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;
    .locals 1

    .line 4836
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->copyOnWrite()V

    .line 4837
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->access$10000(Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;)V

    return-object p0
.end method

.method public getAttri()I
    .locals 1

    .line 4988
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->getAttri()I

    move-result v0

    return v0
.end method

.method public getColor()I
    .locals 1

    .line 4918
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->getColor()I

    move-result v0

    return v0
.end method

.method public getId()I
    .locals 1

    .line 4953
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->getId()I

    move-result v0

    return v0
.end method

.method public getSegment(I)F
    .locals 1

    .line 4753
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->getSegment(I)F

    move-result p1

    return p1
.end method

.method public getSegmentCount()I
    .locals 1

    .line 4743
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->getSegmentCount()I

    move-result v0

    return v0
.end method

.method public getSegmentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 4732
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    .line 4733
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->getSegmentList()Ljava/util/List;

    move-result-object v0

    .line 4732
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSize()Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;
    .locals 1

    .line 4859
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->getSize()Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 4814
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->getType()I

    move-result v0

    return v0
.end method

.method public hasSize()Z
    .locals 1

    .line 4849
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->hasSize()Z

    move-result v0

    return v0
.end method

.method public mergeSize(Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;)Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;
    .locals 1

    .line 4894
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->copyOnWrite()V

    .line 4895
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->access$10300(Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;)V

    return-object p0
.end method

.method public setAttri(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;
    .locals 1

    .line 4998
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->copyOnWrite()V

    .line 4999
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->access$10900(Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;I)V

    return-object p0
.end method

.method public setColor(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;
    .locals 1

    .line 4928
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->copyOnWrite()V

    .line 4929
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->access$10500(Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;I)V

    return-object p0
.end method

.method public setId(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;
    .locals 1

    .line 4963
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->copyOnWrite()V

    .line 4964
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->access$10700(Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;I)V

    return-object p0
.end method

.method public setSegment(IF)Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;
    .locals 1

    .line 4764
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->copyOnWrite()V

    .line 4765
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->access$9500(Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;IF)V

    return-object p0
.end method

.method public setSize(Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;)Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;
    .locals 1

    .line 4882
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->copyOnWrite()V

    .line 4883
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->access$10200(Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;)V

    return-object p0
.end method

.method public setSize(Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;)Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;
    .locals 1

    .line 4869
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->copyOnWrite()V

    .line 4870
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->access$10100(Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;)V

    return-object p0
.end method

.method public setType(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;
    .locals 1

    .line 4824
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->copyOnWrite()V

    .line 4825
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->access$9900(Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;I)V

    return-object p0
.end method
