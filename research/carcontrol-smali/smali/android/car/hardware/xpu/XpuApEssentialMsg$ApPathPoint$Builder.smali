.class public final Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuApEssentialMsg.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPointOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPointOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5670
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->access$11200()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuApEssentialMsg$1;)V
    .locals 0

    .line 5663
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBasePoint()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;
    .locals 1

    .line 5737
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->copyOnWrite()V

    .line 5738
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->access$11800(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V

    return-object p0
.end method

.method public clearConfidence()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;
    .locals 1

    .line 5692
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->copyOnWrite()V

    .line 5693
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->access$11400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V

    return-object p0
.end method

.method public clearDdkappa()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;
    .locals 1

    .line 5898
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->copyOnWrite()V

    .line 5899
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->access$13200(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V

    return-object p0
.end method

.method public clearDkappa()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;
    .locals 1

    .line 5875
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->copyOnWrite()V

    .line 5876
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->access$13000(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V

    return-object p0
.end method

.method public clearKappa()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;
    .locals 1

    .line 5783
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->copyOnWrite()V

    .line 5784
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->access$12200(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V

    return-object p0
.end method

.method public clearLaneWidth()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;
    .locals 1

    .line 5921
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->copyOnWrite()V

    .line 5922
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->access$13400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V

    return-object p0
.end method

.method public clearLeftWidth()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;
    .locals 1

    .line 5829
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->copyOnWrite()V

    .line 5830
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->access$12600(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V

    return-object p0
.end method

.method public clearRightWidth()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;
    .locals 1

    .line 5852
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->copyOnWrite()V

    .line 5853
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->access$12800(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V

    return-object p0
.end method

.method public clearS()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;
    .locals 1

    .line 5806
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->copyOnWrite()V

    .line 5807
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->access$12400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V

    return-object p0
.end method

.method public clearTheta()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;
    .locals 1

    .line 5760
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->copyOnWrite()V

    .line 5761
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->access$12000(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V

    return-object p0
.end method

.method public getBasePoint()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;
    .locals 1

    .line 5707
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->getBasePoint()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    move-result-object v0

    return-object v0
.end method

.method public getConfidence()F
    .locals 1

    .line 5678
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->getConfidence()F

    move-result v0

    return v0
.end method

.method public getDdkappa()F
    .locals 1

    .line 5884
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->getDdkappa()F

    move-result v0

    return v0
.end method

.method public getDkappa()F
    .locals 1

    .line 5861
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->getDkappa()F

    move-result v0

    return v0
.end method

.method public getKappa()F
    .locals 1

    .line 5769
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->getKappa()F

    move-result v0

    return v0
.end method

.method public getLaneWidth()F
    .locals 1

    .line 5907
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->getLaneWidth()F

    move-result v0

    return v0
.end method

.method public getLeftWidth()F
    .locals 1

    .line 5815
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->getLeftWidth()F

    move-result v0

    return v0
.end method

.method public getRightWidth()F
    .locals 1

    .line 5838
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->getRightWidth()F

    move-result v0

    return v0
.end method

.method public getS()F
    .locals 1

    .line 5792
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->getS()F

    move-result v0

    return v0
.end method

.method public getTheta()F
    .locals 1

    .line 5746
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->getTheta()F

    move-result v0

    return v0
.end method

.method public hasBasePoint()Z
    .locals 1

    .line 5701
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->hasBasePoint()Z

    move-result v0

    return v0
.end method

.method public mergeBasePoint(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;
    .locals 1

    .line 5730
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->copyOnWrite()V

    .line 5731
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->access$11700(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V

    return-object p0
.end method

.method public setBasePoint(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;
    .locals 1

    .line 5722
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->copyOnWrite()V

    .line 5723
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->access$11600(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;)V

    return-object p0
.end method

.method public setBasePoint(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;
    .locals 1

    .line 5713
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->copyOnWrite()V

    .line 5714
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->access$11500(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V

    return-object p0
.end method

.method public setConfidence(F)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;
    .locals 1

    .line 5684
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->copyOnWrite()V

    .line 5685
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->access$11300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;F)V

    return-object p0
.end method

.method public setDdkappa(F)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;
    .locals 1

    .line 5890
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->copyOnWrite()V

    .line 5891
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->access$13100(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;F)V

    return-object p0
.end method

.method public setDkappa(F)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;
    .locals 1

    .line 5867
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->copyOnWrite()V

    .line 5868
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->access$12900(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;F)V

    return-object p0
.end method

.method public setKappa(F)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;
    .locals 1

    .line 5775
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->copyOnWrite()V

    .line 5776
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->access$12100(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;F)V

    return-object p0
.end method

.method public setLaneWidth(F)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;
    .locals 1

    .line 5913
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->copyOnWrite()V

    .line 5914
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->access$13300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;F)V

    return-object p0
.end method

.method public setLeftWidth(F)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;
    .locals 1

    .line 5821
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->copyOnWrite()V

    .line 5822
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->access$12500(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;F)V

    return-object p0
.end method

.method public setRightWidth(F)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;
    .locals 1

    .line 5844
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->copyOnWrite()V

    .line 5845
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->access$12700(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;F)V

    return-object p0
.end method

.method public setS(F)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;
    .locals 1

    .line 5798
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->copyOnWrite()V

    .line 5799
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->access$12300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;F)V

    return-object p0
.end method

.method public setTheta(F)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;
    .locals 1

    .line 5752
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->copyOnWrite()V

    .line 5753
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->access$11900(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;F)V

    return-object p0
.end method
