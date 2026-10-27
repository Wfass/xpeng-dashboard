.class public Lcom/android/car/hal/PropertyHalServiceIds;
.super Ljava/lang/Object;
.source "PropertyHalServiceIds.java"


# instance fields
.field private final mProps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    .line 42
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_IDENTIFICATION"

    const-string v3, "android.car.permission.CAR_IDENTIFICATION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x11100100

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_INFO"

    const-string v3, "android.car.permission.CAR_INFO"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x11100101

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_INFO"

    const-string v3, "android.car.permission.CAR_INFO"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x11100102

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_INFO"

    const-string v3, "android.car.permission.CAR_INFO"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x11400103

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_INFO"

    const-string v3, "android.car.permission.CAR_INFO"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x11600104

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_INFO"

    const-string v3, "android.car.permission.CAR_INFO"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x11410105

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_INFO"

    const-string v3, "android.car.permission.CAR_INFO"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x11600106

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_INFO"

    const-string v3, "android.car.permission.CAR_INFO"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x11410107

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_INFO"

    const-string v3, "android.car.permission.CAR_INFO"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x11400108

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_INFO"

    const-string v3, "android.car.permission.CAR_INFO"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x11400109

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_INFO"

    const-string v3, "android.car.permission.CAR_INFO"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x1540010a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_MILEAGE"

    const-string v3, "android.car.permission.CAR_MILEAGE"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x11600204

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_SPEED"

    const-string v3, "android.car.permission.CAR_SPEED"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x11600207

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_ENGINE_DETAILED"

    const-string v3, "android.car.permission.CAR_ENGINE_DETAILED"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x11600301

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_ENGINE_DETAILED"

    const-string v3, "android.car.permission.CAR_ENGINE_DETAILED"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x11400303

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_ENGINE_DETAILED"

    const-string v3, "android.car.permission.CAR_ENGINE_DETAILED"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x11600304

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_ENGINE_DETAILED"

    const-string v3, "android.car.permission.CAR_ENGINE_DETAILED"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x11600305

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_SPEED"

    const-string v3, "android.car.permission.CAR_SPEED"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x11510306

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_ENERGY"

    const-string v3, "android.car.permission.CAR_ENERGY"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x11600307

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_ENERGY_PORTS"

    const-string v3, "android.car.permission.CAR_ENERGY_PORTS"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x11200308

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_ENERGY"

    const-string v3, "android.car.permission.CAR_ENERGY"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x11600309

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_ENERGY_PORTS"

    const-string v3, "android.car.permission.CAR_ENERGY_PORTS"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x1120030a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_ENERGY_PORTS"

    const-string v3, "android.car.permission.CAR_ENERGY_PORTS"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x1120030b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_ENERGY"

    const-string v3, "android.car.permission.CAR_ENERGY"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x1160030c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_ENERGY"

    const-string v3, "android.car.permission.CAR_ENERGY"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x11600308

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_TIRES"

    const-string v3, "android.car.permission.CAR_TIRES"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x17600309

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_POWERTRAIN"

    const-string v3, "android.car.permission.CAR_POWERTRAIN"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x11400400

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_POWERTRAIN"

    const-string v3, "android.car.permission.CAR_POWERTRAIN"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x11400401

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_POWERTRAIN"

    const-string v3, "android.car.permission.CAR_POWERTRAIN"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x11200402

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_POWERTRAIN"

    const-string v3, "android.car.permission.CAR_POWERTRAIN"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x11200403

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_ENERGY"

    const-string v3, "android.car.permission.CAR_ENERGY"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x11200405

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_EXTERIOR_ENVIRONMENT"

    const-string v3, "android.car.permission.CAR_EXTERIOR_ENVIRONMENT"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x11200407

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_EXTERIOR_LIGHTS"

    const-string v3, "android.car.permission.CAR_EXTERIOR_LIGHTS"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x11400408

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_POWER"

    const-string v3, "android.car.permission.CAR_POWER"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x11400409

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_DYNAMICS_STATE"

    const-string v3, "android.car.permission.CAR_DYNAMICS_STATE"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x1120040a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_DYNAMICS_STATE"

    const-string v3, "android.car.permission.CAR_DYNAMICS_STATE"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x1120040b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_EXTERIOR_LIGHTS"

    const-string v3, "android.car.permission.CAR_EXTERIOR_LIGHTS"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x11400e00

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_EXTERIOR_LIGHTS"

    const-string v3, "android.car.permission.CAR_EXTERIOR_LIGHTS"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x11400e02

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_EXTERIOR_LIGHTS"

    const-string v3, "android.car.permission.CAR_EXTERIOR_LIGHTS"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x11400e03

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 161
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_EXTERIOR_LIGHTS"

    const-string v3, "android.car.permission.CONTROL_CAR_EXTERIOR_LIGHTS"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x11400e10

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 164
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_EXTERIOR_LIGHTS"

    const-string v3, "android.car.permission.CONTROL_CAR_EXTERIOR_LIGHTS"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x11400e11

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_EXTERIOR_LIGHTS"

    const-string v3, "android.car.permission.CONTROL_CAR_EXTERIOR_LIGHTS"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x11400e12

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_EXTERIOR_LIGHTS"

    const-string v3, "android.car.permission.CONTROL_CAR_EXTERIOR_LIGHTS"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x11400e13

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2141200b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2141200a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402002

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21702001

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402003

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402006

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 193
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402008

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 196
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402009

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402007

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 202
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402005

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 205
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402004

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140200c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 214
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21701405

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 220
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21403005

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 223
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21603006

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 229
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21701809

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 232
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21701808

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 235
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21701807

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401805

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 241
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401806

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 244
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140180a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 247
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401802

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 250
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401803

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 253
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401804

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 256
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401801

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 259
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2170180e    # 8.1347E-19f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 262
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21411810

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 265
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401811

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21701812

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 271
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21701813

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 277
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140281f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 280
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402821

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 283
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402802

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 286
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402819

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 289
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402822

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 292
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402813

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 295
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402812

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 298
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402826

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 301
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402824

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 304
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140280f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 307
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402808

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 310
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140280a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 313
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402816

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 316
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140280e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 319
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402801

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 322
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402818

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 325
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402817

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 328
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402809

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 331
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402810

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 334
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140280c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 337
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140280b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 340
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140281b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 343
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402804

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 346
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402825

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 349
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402823

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 352
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140281d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 355
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140281c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 358
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402815

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 361
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402806

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 364
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402814

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 367
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402820

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 370
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140281a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 373
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402803

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 376
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402807

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 379
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402805

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 382
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140280d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 385
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140281e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 391
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402827

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 394
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402828

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 397
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402829

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 400
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140282a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 403
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140282b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 406
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140282c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 411
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2170142e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 414
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2170142d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 417
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2170142f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 422
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2110161b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 425
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2170160c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 428
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2141160a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 431
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401605

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 434
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21101616

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 437
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 440
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140163c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 443
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2170160b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 446
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21101618

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 449
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 452
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140160e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 455
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2170160d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 458
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140162a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 461
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140163a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 464
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401638

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 467
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21601635

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 470
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140162b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 473
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401639

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 476
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21101610

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 479
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21101613

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 482
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 485
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21101615

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 488
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 491
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21101614

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 494
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 497
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21101617

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 500
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401628

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 503
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401636

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 506
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21411626

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 509
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2170161d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 512
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21101612

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 515
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401633

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 518
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401634

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 521
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401637

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 524
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21701604

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 527
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21701602

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 530
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21701608

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 533
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21701601

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 536
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 539
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21701607

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 542
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21701606

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 545
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2170160f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 548
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401629

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 551
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21701609

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 554
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21701603

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 557
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2141162c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 560
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401622

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 563
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140162d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 566
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140161e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 569
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21101611

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 572
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2110161c

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 575
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401625

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 578
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401620

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 581
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2160162e

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 584
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21601631

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 587
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21601632

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 590
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21601630

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 593
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2160162f

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 596
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21101619

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 599
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2110161a

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 602
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140161f

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 605
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401624

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 608
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401621

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 611
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401627

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 614
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140163f

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 617
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140163e

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 620
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140163d

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 623
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140163b

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 626
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21101640

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 629
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401641

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 632
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401642

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 635
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21101643

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 638
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21101644

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 641
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21101645

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 644
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401647

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 647
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21101648

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 650
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401649

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 653
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2110164a

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 656
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140164c

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 659
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140164d

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 662
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140164b

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 665
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140164e

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 668
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 671
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2110165b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 674
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2110165c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 677
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2110165d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 680
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2110165f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 683
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401660

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 686
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21101661

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 689
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401662

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 692
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401663

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 695
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21101666

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 701
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402a01

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 704
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402a07

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 707
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402a03

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 710
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21602a05

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 713
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402a08

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 716
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402a06

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 719
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402a04

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 722
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402a02

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 728
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402e0d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 731
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402e07

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 734
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402e05

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 737
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402e0e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 740
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402e09

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 743
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402e0f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 746
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402e06

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 749
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402e10

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 752
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402e0b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 755
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402e03

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 758
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402e0c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 761
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402e04

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 764
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402e01

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 767
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402e0a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 770
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402e02

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 773
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21702e08

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 776
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402e11

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 779
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402e12

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 782
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21412e13

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 785
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21412e14

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 788
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402e15

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 791
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401442

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 794
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401443

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 797
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401444

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 800
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401445

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 803
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401446

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 806
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401447

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 809
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401448

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 812
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401449

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 815
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140144a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 818
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140144b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 821
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140144e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 824
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140144f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 827
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401450

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 830
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140145c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 833
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140145d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 836
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21701466

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 839
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21411465

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 842
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401cdd

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 848
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21701421

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 851
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21701422

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 854
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21701423

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 857
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21701424

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 860
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21701425

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 863
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21701426

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 866
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2170140c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 869
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21701408

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 872
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2110141e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 875
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21701404

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 878
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21701416

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 881
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21701419

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 884
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21701414

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 887
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21701413

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 890
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21701415

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 893
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21701417

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 896
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21701418

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 899
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2170141b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 902
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2170141c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 905
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21701420

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 908
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401430

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 911
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2170141f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 914
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401409

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 917
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21701412

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 920
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21701410

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 923
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21701411

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 926
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2170140a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 929
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2170140b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 932
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21701407

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 935
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401428

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 938
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401429

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 941
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2110142a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 944
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140142b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 947
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21701433

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 950
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21601434

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 953
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21601435

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 956
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21601436

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 959
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401437

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 962
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401438

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 965
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401439

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 968
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2170143a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 971
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2170143b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 974
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2170141d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 977
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140143c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 980
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140143d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 983
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140143e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 986
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21701431

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 989
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2141143f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 992
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401c7f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 995
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401c80

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 998
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401441

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1001
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401452

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1004
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401453

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1008
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21101454

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1012
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21411455

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1016
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401456

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1020
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401457

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1024
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2141145a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1027
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2141142c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1030
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140145b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1033
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2141145e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1036
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2170145f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1039
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401460

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1042
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21601461

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1045
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140144d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1048
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401462

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1051
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401463

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1054
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401464

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1057
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401467

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1060
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401468

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1063
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140146a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1066
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140146b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1069
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140146c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1072
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140146d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1075
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140146e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1078
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21701475

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1081
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401474

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1090
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21101483

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1096
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402634

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1099
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21702622

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1102
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402669

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1105
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1108
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402632

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1111
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2161265a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1114
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2161262c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1117
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402624

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1120
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402623

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1123
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402605

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1126
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21412653

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1129
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402613

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1132
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402604

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1135
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2170263a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1138
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1141
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2170263b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1144
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140266b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1147
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1150
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140266a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1153
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1156
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402608

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1159
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140260a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1162
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21612621

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1165
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140265f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1168
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402601

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1171
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2161265e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1174
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2141262b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1177
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21412636

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1180
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402648

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1183
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2161261c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1186
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21412649

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1189
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2141264a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1192
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21612631

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1195
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21612630

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1198
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140260f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1201
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402603

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1204
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140260d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1207
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402641

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1210
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2141265b

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1213
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402629

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1216
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21612662

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1219
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140260e

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1222
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402609

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1225
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402602

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1228
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21412656

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1231
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21412655

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1234
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2161263f

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1237
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21612640

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1240
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2170263c

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1243
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21412657

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1246
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21412658

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1249
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21412659

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1252
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402627

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1255
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140264b

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1258
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140261b

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1261
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21612661

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1264
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402647

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1267
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21412644

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1270
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21612642

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1273
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2161263e

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1276
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2161262e

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1279
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21612637

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1282
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21612633

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1285
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2161263d

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1288
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140262d

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1291
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2161261e

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1294
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402638

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1297
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402619

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1300
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402617

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1303
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402639

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1306
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402618

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1309
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21612620

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1312
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402646

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1315
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140264f

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1318
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21612663

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1321
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402625

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1324
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402626

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1327
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402606

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1330
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21412654

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1333
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402607

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1336
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140264c

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1339
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402612

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1342
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402615

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1345
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402616

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1348
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140261a

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1351
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402650

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1354
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402668

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1357
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v5, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1360
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140262a

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1363
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140260c

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1366
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21612664

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1369
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21412643

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1372
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140262f

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1375
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402614

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1378
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2161261d

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1381
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2141264d

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1384
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2141264e

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1387
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402635

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1390
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140260b

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1393
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402611

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1396
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402651

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1399
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2161261f

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1402
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402652

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1405
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402665

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1408
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402666

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1411
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402628

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1414
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2161266c

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1417
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140266d

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1420
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2141266f

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1423
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140266e

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1426
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2141267a

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1429
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140267b

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1432
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140267e

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1435
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140267f

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1438
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2161267c

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1441
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2161267d

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1444
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402687

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1447
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402681

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1450
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21412682

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1453
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402683

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1456
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402684

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1459
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402688

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1462
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402689

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1465
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402685

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1468
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402686

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1471
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140268a

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1474
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140268b

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1477
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402680

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1480
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140268c

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1483
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140268d

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1486
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21612645

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1489
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402670

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1492
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140268f

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1495
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402690

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1498
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402691

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1501
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402692

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1504
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402693

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1507
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21412694

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1510
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402695

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1513
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402696

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1516
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402697

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1519
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402698

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1522
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402699

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1525
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140269a

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1528
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2141269b

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1531
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2141269c

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1534
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2141269d

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1537
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140269e

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1540
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140269f

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1543
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026a0

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1546
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026a1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1549
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026a2

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1552
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026a3

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1555
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x217026a4

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1558
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x217026a5

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1561
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026a6

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1564
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026a9

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1567
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026aa

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1570
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026a8

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1573
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026ad

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1576
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026ae

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1579
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026af

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1582
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026b0

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1585
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026b1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1588
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026b2

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1591
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026b3

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1594
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026b4

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1597
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026b5

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1600
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026b6

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1603
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026b7

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1606
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026b8

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1609
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026b9

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1612
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026ba

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1615
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026bb

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1618
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026bc

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1621
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026bd    # 6.51034E-19f

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1624
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026be

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1627
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026bf

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1630
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026c0

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1633
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026c1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1636
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026c2

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1639
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026c3

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1642
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026c4

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1645
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026c5

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1648
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026c6

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1651
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026c7

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1654
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026c8

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1657
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026c9

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1660
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214126ca

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1663
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026cb

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1666
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026cc

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1669
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026cd

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1672
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026ce

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1675
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026cf

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1678
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026d1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1681
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026d2

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1684
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214126d5

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1687
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x216126d6

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1690
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026d9

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1693
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026e2

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1696
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026ea

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1699
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026eb

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1702
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214026ec

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1705
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214126f1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1708
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x214126f2

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1714
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2110101e

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1717
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401018

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1720
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21101015

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1723
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21101019

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1726
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21101016

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1729
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21101011

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1732
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2110101c

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1735
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21101013

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1738
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401017

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1741
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140100a

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1744
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140100b

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1747
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140100f

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1750
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2110100c

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1753
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2110101b

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1756
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401020

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1759
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2110100e

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1762
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21101009

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1765
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140100d

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1768
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21101008

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1771
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2110101d

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1774
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2110101f

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1777
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2110101a

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1780
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401005

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1783
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21501001

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1786
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401012

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1789
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21101007

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1792
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401014

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1795
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401010

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1798
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401025

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1801
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21101006

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1804
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21101004

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1807
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21101003

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1810
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401002

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1813
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140102a

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1816
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401029

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1819
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21101028

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1822
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140102b

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1825
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140102c

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1828
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2110102d

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1831
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140102e

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1834
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140102f

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1837
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401030

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1840
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21411031

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1843
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401032

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1846
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401033

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1849
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21411035

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1852
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2141103c

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1855
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140103d

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1858
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140103e

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1861
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140103f

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1864
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401040

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1867
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401458

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1870
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401041

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1873
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401042

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1876
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21411043

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1879
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401044

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1882
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401045

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1885
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21101046

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1888
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401047

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1891
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21101048

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1894
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21511049

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1897
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2141103b

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1900
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140104b

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1903
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2141104a

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1906
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140104c

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1909
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2110104e

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1912
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2110104f

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1915
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21101050

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1918
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21101052

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1924
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140265d

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1927
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140265c

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1933
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2141221f

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1936
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21412220

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1939
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21412221

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1942
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402222

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1945
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402223

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1948
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402224

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1951
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402225

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1954
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402226

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1957
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402229

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1960
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v5, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1963
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140221c

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1966
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402219

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1969
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140221a

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1972
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140221b

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1975
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140222b

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1978
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402228

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1984
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21613601

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1987
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21613602

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1990
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21613603

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1993
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21613604

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1996
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21613605

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1999
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21413606

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2002
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21513607

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2005
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21413608

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2008
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21613609

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2011
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2161360a

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2014
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140360b

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2017
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140360c

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2020
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2161360d

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2023
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2161360e

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2026
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2161360f

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2029
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21613610

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2035
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401cdc

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2038
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401cde

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2041
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401cdf

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2044
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401ce0

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2047
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401ce1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2050
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401ce2

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2053
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401ce3

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2056
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401ce4

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2059
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401ce8

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2062
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401cef

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2065
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401ce6

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2071
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401cf5

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2074
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21701d0c

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2077
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21701d0b

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2080
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401d16

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2083
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21411d17

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2086
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21411d18

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2089
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401d19

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2092
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21411d1a

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2095
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401d1b

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2098
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401d1c

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2101
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21411d1d

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2104
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401d1e

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2107
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401d1f

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2113
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401c86

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2116
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401c87

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2119
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401c88

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2122
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401c89

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2125
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401c8a

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2128
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401c8b

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2131
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401c8c

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2134
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401c8d

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2137
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401c8e

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2140
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402e16

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2143
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140180b

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2146
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401c8f

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2149
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401c90

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2152
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401c91

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2155
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401c92

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2158
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401c93

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2161
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140320f

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2164
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21403210

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2167
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21403211

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2170
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21403212

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2173
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21403217

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2176
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401e06

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2179
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401e07

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2182
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21411e0d

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2185
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21411e0e

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2188
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21411e0f

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2191
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21411e10

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2194
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401c22

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2197
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401c12

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2200
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401ca5

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2203
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21411ca8

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2206
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401ca6

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2209
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401cfe

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2212
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401cfd

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2215
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21411d2e

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2218
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140180c

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2221
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401c94

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2224
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401231

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2227
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401232

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2230
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401233

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2233
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401234

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2236
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401235

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2239
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401236

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2242
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401237

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2245
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401238

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2248
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401239

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2251
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140123a

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2254
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140123b

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2257
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140123f

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2260
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401240

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2263
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402409

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2266
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140240e

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2269
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140240f

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2272
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140240b

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2275
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402411

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2278
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140240d

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2281
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402413

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2284
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402414

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2287
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21602415

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2290
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402416

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2293
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402417

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2296
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402418    # 6.50999E-19f

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2299
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402678

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2302
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402679

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2305
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402674

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2308
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402675

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2311
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402676

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2314
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21402677

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2317
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2320
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402672

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2323
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402673

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2326
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x214026ee

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2329
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x214126ef

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2332
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x214126f0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2335
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140123e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2338
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140124f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2341
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401250

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2344
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21402c16

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2347
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401251

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2350
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401252

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2353
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401253

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2356
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401254

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2359
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401255

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2362
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401256

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2365
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401257

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2368
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401258

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2371
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21601259

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2374
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2160125a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2377
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140125b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2380
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140125c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2383
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140125d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2386
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140125e

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2389
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140125f

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2392
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401260

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2395
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401265

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2398
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2160126e

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2401
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2160126d

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2404
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x2140126f

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2407
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21101270

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2410
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401271

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2413
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401272

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2416
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401276

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2419
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401273

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2422
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21401274

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2425
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v3, 0x21601275

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2428
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v4, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2431
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140125e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2434
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140125f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2437
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401260

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2440
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401261

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2443
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401264

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2446
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401266

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2449
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401267

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2452
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401268

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2455
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401269

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2458
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140126a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2461
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140126b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2464
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140126c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2467
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401277

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2472
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2141222c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2476
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21103802

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2479
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21403803

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2482
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21403804

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2485
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21403805

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2488
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21403806

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2491
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21403807

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2494
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21403808

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2497
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21403809

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2500
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2140380a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2503
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2170380b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2506
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2170380c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2509
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2170380d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2512
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2170380e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2515
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2170380f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2518
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21703810

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2521
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21703811

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2524
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21703812

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2527
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21703813

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2530
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21403814

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2533
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21403815

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2536
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21403816

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2539
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21403817

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2542
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21403818

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2545
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21403819

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2548
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2110381d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2551
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2110381e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2554
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x2170381f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2557
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21703820

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2560
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21103824

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2563
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21103825

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2566
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21703842

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2569
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21703844

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2572
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21703845

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2575
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21103848

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2578
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21403847

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2584
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401cc8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2587
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401cc9

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2590
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401cca

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2593
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401cdb

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2596
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21401d2f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2602
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21403c01

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2605
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21603c02

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2608
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21603c03

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2611
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21603c04

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2617
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "android.car.permission.CAR_VENDOR_EXTENSION"

    const-string v3, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const v2, 0x21403e01

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2627
    return-void
.end method


# virtual methods
.method public getReadPermission(I)Ljava/lang/String;
    .locals 2
    .param p1, "propId"    # I

    .line 2634
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 2635
    .local v0, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 2637
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 2639
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getWritePermission(I)Ljava/lang/String;
    .locals 2
    .param p1, "propId"    # I

    .line 2648
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 2649
    .local v0, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 2651
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 2653
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public insertVendorProperty(I)Z
    .locals 1
    .param p1, "propId"    # I

    .line 2661
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportedProperty(I)Z
    .locals 1
    .param p1, "propId"    # I

    .line 2676
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalServiceIds;->mProps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2678
    const/4 v0, 0x1

    return v0

    .line 2681
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/car/hal/PropertyHalServiceIds;->insertVendorProperty(I)Z

    move-result v0

    return v0
.end method
