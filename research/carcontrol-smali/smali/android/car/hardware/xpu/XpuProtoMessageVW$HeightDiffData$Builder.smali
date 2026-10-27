.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffDataOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4645
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;->access$7100()Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V
    .locals 0

    .line 4638
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDistToLinkStart()Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;
    .locals 1

    .line 4667
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;->copyOnWrite()V

    .line 4668
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;->access$7300(Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;)V

    return-object p0
.end method

.method public clearHeightDiffDist()Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;
    .locals 1

    .line 4690
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;->copyOnWrite()V

    .line 4691
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;->access$7500(Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;)V

    return-object p0
.end method

.method public clearHeightDiffParellel()Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;
    .locals 1

    .line 4736
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;->copyOnWrite()V

    .line 4737
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;->access$7900(Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;)V

    return-object p0
.end method

.method public clearHeightDiffStraight()Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;
    .locals 1

    .line 4713
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;->copyOnWrite()V

    .line 4714
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;->access$7700(Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;)V

    return-object p0
.end method

.method public getDistToLinkStart()I
    .locals 1

    .line 4653
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;->getDistToLinkStart()I

    move-result v0

    return v0
.end method

.method public getHeightDiffDist()I
    .locals 1

    .line 4676
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;->getHeightDiffDist()I

    move-result v0

    return v0
.end method

.method public getHeightDiffParellel()I
    .locals 1

    .line 4722
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;->getHeightDiffParellel()I

    move-result v0

    return v0
.end method

.method public getHeightDiffStraight()I
    .locals 1

    .line 4699
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;->getHeightDiffStraight()I

    move-result v0

    return v0
.end method

.method public setDistToLinkStart(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;
    .locals 1

    .line 4659
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;->copyOnWrite()V

    .line 4660
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;->access$7200(Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;I)V

    return-object p0
.end method

.method public setHeightDiffDist(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;
    .locals 1

    .line 4682
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;->copyOnWrite()V

    .line 4683
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;->access$7400(Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;I)V

    return-object p0
.end method

.method public setHeightDiffParellel(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;
    .locals 1

    .line 4728
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;->copyOnWrite()V

    .line 4729
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;->access$7800(Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;I)V

    return-object p0
.end method

.method public setHeightDiffStraight(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;
    .locals 1

    .line 4705
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;->copyOnWrite()V

    .line 4706
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;->access$7600(Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;I)V

    return-object p0
.end method
