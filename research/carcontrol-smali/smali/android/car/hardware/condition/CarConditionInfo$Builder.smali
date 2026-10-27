.class public final Landroid/car/hardware/condition/CarConditionInfo$Builder;
.super Ljava/lang/Object;
.source "CarConditionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/condition/CarConditionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mClassArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private final mLimitsArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Number;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/car/hardware/condition/CarConditionInfo$Builder;->mLimitsArray:Landroid/util/SparseArray;

    .line 112
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/car/hardware/condition/CarConditionInfo$Builder;->mClassArray:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$000(Landroid/car/hardware/condition/CarConditionInfo$Builder;)Landroid/util/SparseArray;
    .locals 0

    .line 110
    iget-object p0, p0, Landroid/car/hardware/condition/CarConditionInfo$Builder;->mLimitsArray:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$100(Landroid/car/hardware/condition/CarConditionInfo$Builder;)Landroid/util/SparseArray;
    .locals 0

    .line 110
    iget-object p0, p0, Landroid/car/hardware/condition/CarConditionInfo$Builder;->mClassArray:Landroid/util/SparseArray;

    return-object p0
.end method


# virtual methods
.method public build()Landroid/car/hardware/condition/CarConditionInfo;
    .locals 2

    .line 174
    new-instance v0, Landroid/car/hardware/condition/CarConditionInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/car/hardware/condition/CarConditionInfo;-><init>(Landroid/car/hardware/condition/CarConditionInfo$Builder;Landroid/car/hardware/condition/CarConditionInfo$1;)V

    return-object v0
.end method

.method public varargs setCarPedalLimit([Ljava/lang/Integer;)Landroid/car/hardware/condition/CarConditionInfo$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_1

    .line 141
    array-length v0, p1

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string/jumbo v1, "ro.boot.xp_product_major"

    .line 144
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x21401218

    .line 146
    invoke-virtual {p0, v0, p1}, Landroid/car/hardware/condition/CarConditionInfo$Builder;->setLimit(I[Ljava/lang/Number;)Landroid/car/hardware/condition/CarConditionInfo$Builder;

    goto :goto_0

    :cond_0
    const v0, 0x21401277

    .line 149
    invoke-virtual {p0, v0, p1}, Landroid/car/hardware/condition/CarConditionInfo$Builder;->setLimit(I[Ljava/lang/Number;)Landroid/car/hardware/condition/CarConditionInfo$Builder;

    :goto_0
    return-object p0

    .line 142
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "pedal limit can not be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs setCarSpeedLimit([Ljava/lang/Float;)Landroid/car/hardware/condition/CarConditionInfo$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 124
    array-length v0, p1

    if-eqz v0, :cond_0

    const v0, 0x21601225

    .line 127
    invoke-virtual {p0, v0, p1}, Landroid/car/hardware/condition/CarConditionInfo$Builder;->setLimit(I[Ljava/lang/Number;)Landroid/car/hardware/condition/CarConditionInfo$Builder;

    return-object p0

    .line 125
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "speed limit can not be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs setLimit(I[Ljava/lang/Number;)Landroid/car/hardware/condition/CarConditionInfo$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ":",
            "Ljava/lang/Comparable<",
            "-TT;>;>(I[TT;)",
            "Landroid/car/hardware/condition/CarConditionInfo$Builder;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 161
    array-length v0, p2

    if-eqz v0, :cond_0

    .line 164
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 165
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 166
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 167
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 168
    iget-object v0, p0, Landroid/car/hardware/condition/CarConditionInfo$Builder;->mLimitsArray:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 169
    iget-object v0, p0, Landroid/car/hardware/condition/CarConditionInfo$Builder;->mClassArray:Landroid/util/SparseArray;

    const/4 v1, 0x0

    aget-object p2, p2, v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0

    .line 162
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "float limit can not be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
