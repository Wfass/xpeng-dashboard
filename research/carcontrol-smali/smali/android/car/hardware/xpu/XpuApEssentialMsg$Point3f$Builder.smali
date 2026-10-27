.class public final Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuApEssentialMsg.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3fOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3fOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 385
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->access$000()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuApEssentialMsg$1;)V
    .locals 0

    .line 378
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearX()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;
    .locals 1

    .line 407
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->copyOnWrite()V

    .line 408
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->access$200(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V

    return-object p0
.end method

.method public clearY()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;
    .locals 1

    .line 430
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->copyOnWrite()V

    .line 431
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->access$400(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V

    return-object p0
.end method

.method public clearZ()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;
    .locals 1

    .line 453
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->copyOnWrite()V

    .line 454
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->access$600(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V

    return-object p0
.end method

.method public getX()F
    .locals 1

    .line 393
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->getX()F

    move-result v0

    return v0
.end method

.method public getY()F
    .locals 1

    .line 416
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->getY()F

    move-result v0

    return v0
.end method

.method public getZ()F
    .locals 1

    .line 439
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->getZ()F

    move-result v0

    return v0
.end method

.method public setX(F)Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;
    .locals 1

    .line 399
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->copyOnWrite()V

    .line 400
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->access$100(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;F)V

    return-object p0
.end method

.method public setY(F)Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;
    .locals 1

    .line 422
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->copyOnWrite()V

    .line 423
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->access$300(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;F)V

    return-object p0
.end method

.method public setZ(F)Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;
    .locals 1

    .line 445
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->copyOnWrite()V

    .line 446
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->access$500(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;F)V

    return-object p0
.end method
