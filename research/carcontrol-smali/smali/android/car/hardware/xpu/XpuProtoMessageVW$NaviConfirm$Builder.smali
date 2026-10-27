.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirmOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirmOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3885
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->access$5900()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V
    .locals 0

    .line 3878
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearNavigationId()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm$Builder;
    .locals 1

    .line 3919
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm$Builder;->copyOnWrite()V

    .line 3920
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->access$6100(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;)V

    return-object p0
.end method

.method public clearOddFlag()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm$Builder;
    .locals 1

    .line 3954
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm$Builder;->copyOnWrite()V

    .line 3955
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->access$6300(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;)V

    return-object p0
.end method

.method public getNavigationId()J
    .locals 2

    .line 3897
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->getNavigationId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOddFlag()I
    .locals 1

    .line 3932
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->getOddFlag()I

    move-result v0

    return v0
.end method

.method public setNavigationId(J)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm$Builder;
    .locals 1

    .line 3907
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm$Builder;->copyOnWrite()V

    .line 3908
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->access$6000(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;J)V

    return-object p0
.end method

.method public setOddFlag(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm$Builder;
    .locals 1

    .line 3942
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm$Builder;->copyOnWrite()V

    .line 3943
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->access$6200(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;I)V

    return-object p0
.end method
