.class public final Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuApEssentialMsg.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMappingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMappingOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 11035
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->access$25400()Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuApEssentialMsg$1;)V
    .locals 0

    .line 11028
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAvmSlotId()Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;
    .locals 1

    .line 11057
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;->copyOnWrite()V

    .line 11058
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->access$25600(Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;)V

    return-object p0
.end method

.method public clearParkSlotId()Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;
    .locals 1

    .line 11080
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;->copyOnWrite()V

    .line 11081
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->access$25800(Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;)V

    return-object p0
.end method

.method public getAvmSlotId()I
    .locals 1

    .line 11043
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->getAvmSlotId()I

    move-result v0

    return v0
.end method

.method public getParkSlotId()I
    .locals 1

    .line 11066
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->getParkSlotId()I

    move-result v0

    return v0
.end method

.method public setAvmSlotId(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;
    .locals 1

    .line 11049
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;->copyOnWrite()V

    .line 11050
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->access$25500(Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;I)V

    return-object p0
.end method

.method public setParkSlotId(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;
    .locals 1

    .line 11072
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;->copyOnWrite()V

    .line 11073
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->access$25700(Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;I)V

    return-object p0
.end method
