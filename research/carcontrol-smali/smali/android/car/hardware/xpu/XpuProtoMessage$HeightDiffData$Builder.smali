.class public final Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffDataOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4906
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->access$7300()Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V
    .locals 0

    .line 4899
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDistToLinkStart()Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;
    .locals 1

    .line 4928
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;->copyOnWrite()V

    .line 4929
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->access$7500(Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;)V

    return-object p0
.end method

.method public clearHeightDiffDist()Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;
    .locals 1

    .line 4951
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;->copyOnWrite()V

    .line 4952
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->access$7700(Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;)V

    return-object p0
.end method

.method public clearHeightDiffParellel()Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;
    .locals 1

    .line 4997
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;->copyOnWrite()V

    .line 4998
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->access$8100(Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;)V

    return-object p0
.end method

.method public clearHeightDiffStraight()Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;
    .locals 1

    .line 4974
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;->copyOnWrite()V

    .line 4975
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->access$7900(Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;)V

    return-object p0
.end method

.method public getDistToLinkStart()I
    .locals 1

    .line 4914
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->getDistToLinkStart()I

    move-result v0

    return v0
.end method

.method public getHeightDiffDist()I
    .locals 1

    .line 4937
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->getHeightDiffDist()I

    move-result v0

    return v0
.end method

.method public getHeightDiffParellel()I
    .locals 1

    .line 4983
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->getHeightDiffParellel()I

    move-result v0

    return v0
.end method

.method public getHeightDiffStraight()I
    .locals 1

    .line 4960
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->getHeightDiffStraight()I

    move-result v0

    return v0
.end method

.method public setDistToLinkStart(I)Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;
    .locals 1

    .line 4920
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;->copyOnWrite()V

    .line 4921
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->access$7400(Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;I)V

    return-object p0
.end method

.method public setHeightDiffDist(I)Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;
    .locals 1

    .line 4943
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;->copyOnWrite()V

    .line 4944
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->access$7600(Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;I)V

    return-object p0
.end method

.method public setHeightDiffParellel(I)Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;
    .locals 1

    .line 4989
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;->copyOnWrite()V

    .line 4990
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->access$8000(Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;I)V

    return-object p0
.end method

.method public setHeightDiffStraight(I)Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;
    .locals 1

    .line 4966
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;->copyOnWrite()V

    .line 4967
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->access$7800(Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;I)V

    return-object p0
.end method
