.class public final Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirmOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirmOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4104
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->access$5900()Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V
    .locals 0

    .line 4097
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearNaviAction()Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm$Builder;
    .locals 1

    .line 4208
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm$Builder;->copyOnWrite()V

    .line 4209
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->access$6500(Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;)V

    return-object p0
.end method

.method public clearNavigationId()Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm$Builder;
    .locals 1

    .line 4138
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm$Builder;->copyOnWrite()V

    .line 4139
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->access$6100(Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;)V

    return-object p0
.end method

.method public clearOddFlag()Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm$Builder;
    .locals 1

    .line 4173
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm$Builder;->copyOnWrite()V

    .line 4174
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->access$6300(Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;)V

    return-object p0
.end method

.method public getNaviAction()I
    .locals 1

    .line 4186
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->getNaviAction()I

    move-result v0

    return v0
.end method

.method public getNavigationId()J
    .locals 2

    .line 4116
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->getNavigationId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOddFlag()I
    .locals 1

    .line 4151
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->getOddFlag()I

    move-result v0

    return v0
.end method

.method public setNaviAction(I)Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm$Builder;
    .locals 1

    .line 4196
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm$Builder;->copyOnWrite()V

    .line 4197
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->access$6400(Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;I)V

    return-object p0
.end method

.method public setNavigationId(J)Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm$Builder;
    .locals 1

    .line 4126
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm$Builder;->copyOnWrite()V

    .line 4127
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->access$6000(Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;J)V

    return-object p0
.end method

.method public setOddFlag(I)Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm$Builder;
    .locals 1

    .line 4161
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm$Builder;->copyOnWrite()V

    .line 4162
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->access$6200(Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;I)V

    return-object p0
.end method
