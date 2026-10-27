.class public final Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuApEssentialMsg.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3fOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3fOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1181
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->access$1600()Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuApEssentialMsg$1;)V
    .locals 0

    .line 1174
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearHeigh()Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;
    .locals 1

    .line 1249
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;->copyOnWrite()V

    .line 1250
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->access$2200(Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;)V

    return-object p0
.end method

.method public clearLength()Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;
    .locals 1

    .line 1203
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;->copyOnWrite()V

    .line 1204
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->access$1800(Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;)V

    return-object p0
.end method

.method public clearWidth()Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;
    .locals 1

    .line 1226
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;->copyOnWrite()V

    .line 1227
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->access$2000(Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;)V

    return-object p0
.end method

.method public getHeigh()F
    .locals 1

    .line 1235
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->getHeigh()F

    move-result v0

    return v0
.end method

.method public getLength()F
    .locals 1

    .line 1189
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->getLength()F

    move-result v0

    return v0
.end method

.method public getWidth()F
    .locals 1

    .line 1212
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->getWidth()F

    move-result v0

    return v0
.end method

.method public setHeigh(F)Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;
    .locals 1

    .line 1241
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;->copyOnWrite()V

    .line 1242
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->access$2100(Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;F)V

    return-object p0
.end method

.method public setLength(F)Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;
    .locals 1

    .line 1195
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;->copyOnWrite()V

    .line 1196
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->access$1700(Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;F)V

    return-object p0
.end method

.method public setWidth(F)Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;
    .locals 1

    .line 1218
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;->copyOnWrite()V

    .line 1219
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->access$1900(Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;F)V

    return-object p0
.end method
