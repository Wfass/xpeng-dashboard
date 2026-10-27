.class public final Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuApEssentialMsg.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3fOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3fOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 783
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;->access$800()Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuApEssentialMsg$1;)V
    .locals 0

    .line 776
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPitch()Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;
    .locals 1

    .line 828
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;->copyOnWrite()V

    .line 829
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;->access$1200(Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;)V

    return-object p0
.end method

.method public clearRoll()Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;
    .locals 1

    .line 851
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;->copyOnWrite()V

    .line 852
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;->access$1400(Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;)V

    return-object p0
.end method

.method public clearTheta()Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;
    .locals 1

    .line 805
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;->copyOnWrite()V

    .line 806
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;->access$1000(Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;)V

    return-object p0
.end method

.method public getPitch()F
    .locals 1

    .line 814
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;->getPitch()F

    move-result v0

    return v0
.end method

.method public getRoll()F
    .locals 1

    .line 837
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;->getRoll()F

    move-result v0

    return v0
.end method

.method public getTheta()F
    .locals 1

    .line 791
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;->getTheta()F

    move-result v0

    return v0
.end method

.method public setPitch(F)Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;
    .locals 1

    .line 820
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;->copyOnWrite()V

    .line 821
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;->access$1100(Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;F)V

    return-object p0
.end method

.method public setRoll(F)Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;
    .locals 1

    .line 843
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;->copyOnWrite()V

    .line 844
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;->access$1300(Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;F)V

    return-object p0
.end method

.method public setTheta(F)Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;
    .locals 1

    .line 797
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;->copyOnWrite()V

    .line 798
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;->access$900(Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;F)V

    return-object p0
.end method
