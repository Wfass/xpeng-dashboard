.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_PointOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_PointOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4241
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->access$6500()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V
    .locals 0

    .line 4234
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearLat()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;
    .locals 1

    .line 4263
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->copyOnWrite()V

    .line 4264
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->access$6700(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-object p0
.end method

.method public clearLon()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;
    .locals 1

    .line 4286
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->copyOnWrite()V

    .line 4287
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->access$6900(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-object p0
.end method

.method public getLat()F
    .locals 1

    .line 4249
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->getLat()F

    move-result v0

    return v0
.end method

.method public getLon()F
    .locals 1

    .line 4272
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->getLon()F

    move-result v0

    return v0
.end method

.method public setLat(F)Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;
    .locals 1

    .line 4255
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->copyOnWrite()V

    .line 4256
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->access$6600(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;F)V

    return-object p0
.end method

.method public setLon(F)Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;
    .locals 1

    .line 4278
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->copyOnWrite()V

    .line 4279
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->access$6800(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;F)V

    return-object p0
.end method
