.class Lcom/android/car/xpeng/ai/pretreat/CarPretreatService$1;
.super Ljava/util/ArrayList;
.source "CarPretreatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/xpeng/ai/pretreat/CarPretreatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    const v0, 0x21401a27

    invoke-static {v0}, Landroid/hardware/automotive/vehicle/V2_0/VehicleProperty;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/car/xpeng/ai/pretreat/CarPretreatService$1;->add(Ljava/lang/Object;)Z

    .line 37
    const v0, 0x15400508

    invoke-static {v0}, Landroid/hardware/automotive/vehicle/V2_0/VehicleProperty;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/car/xpeng/ai/pretreat/CarPretreatService$1;->add(Ljava/lang/Object;)Z

    .line 38
    const v0, 0x21401a26

    invoke-static {v0}, Landroid/hardware/automotive/vehicle/V2_0/VehicleProperty;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/car/xpeng/ai/pretreat/CarPretreatService$1;->add(Ljava/lang/Object;)Z

    .line 39
    const v0, 0x21401c65

    invoke-static {v0}, Landroid/hardware/automotive/vehicle/V2_0/VehicleProperty;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/car/xpeng/ai/pretreat/CarPretreatService$1;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method
