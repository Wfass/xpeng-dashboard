.class public Landroid/car/hardware/condition/CarConditionInfo;
.super Ljava/lang/Object;
.source "CarConditionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/condition/CarConditionInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/hardware/condition/CarConditionInfo;",
            ">;"
        }
    .end annotation
.end field


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
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Landroid/car/hardware/condition/CarConditionInfo$1;

    invoke-direct {v0}, Landroid/car/hardware/condition/CarConditionInfo$1;-><init>()V

    sput-object v0, Landroid/car/hardware/condition/CarConditionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/car/hardware/condition/CarConditionInfo$Builder;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Landroid/car/hardware/condition/CarConditionInfo$Builder;->access$000(Landroid/car/hardware/condition/CarConditionInfo$Builder;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/condition/CarConditionInfo;->mLimitsArray:Landroid/util/SparseArray;

    .line 40
    invoke-static {p1}, Landroid/car/hardware/condition/CarConditionInfo$Builder;->access$100(Landroid/car/hardware/condition/CarConditionInfo$Builder;)Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/condition/CarConditionInfo;->mClassArray:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/condition/CarConditionInfo$Builder;Landroid/car/hardware/condition/CarConditionInfo$1;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/car/hardware/condition/CarConditionInfo;-><init>(Landroid/car/hardware/condition/CarConditionInfo$Builder;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 27
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Landroid/car/hardware/condition/CarConditionInfo;->mLimitsArray:Landroid/util/SparseArray;

    .line 28
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Landroid/car/hardware/condition/CarConditionInfo;->mClassArray:Landroid/util/SparseArray;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 32
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v4

    .line 33
    iget-object v5, p0, Landroid/car/hardware/condition/CarConditionInfo;->mLimitsArray:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    iget-object v4, p0, Landroid/car/hardware/condition/CarConditionInfo;->mClassArray:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/car/hardware/condition/CarConditionInfo$1;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/car/hardware/condition/CarConditionInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 100
    :cond_1
    check-cast p1, Landroid/car/hardware/condition/CarConditionInfo;

    .line 101
    iget-object v2, p0, Landroid/car/hardware/condition/CarConditionInfo;->mLimitsArray:Landroid/util/SparseArray;

    iget-object v3, p1, Landroid/car/hardware/condition/CarConditionInfo;->mLimitsArray:Landroid/util/SparseArray;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/car/hardware/condition/CarConditionInfo;->mClassArray:Landroid/util/SparseArray;

    iget-object p1, p1, Landroid/car/hardware/condition/CarConditionInfo;->mClassArray:Landroid/util/SparseArray;

    .line 102
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getClassArray()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Landroid/car/hardware/condition/CarConditionInfo;->mClassArray:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getLimitsArray()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Number;",
            ">;>;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Landroid/car/hardware/condition/CarConditionInfo;->mLimitsArray:Landroid/util/SparseArray;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 107
    iget-object v1, p0, Landroid/car/hardware/condition/CarConditionInfo;->mLimitsArray:Landroid/util/SparseArray;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/car/hardware/condition/CarConditionInfo;->mClassArray:Landroid/util/SparseArray;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    iget-object v1, p0, Landroid/car/hardware/condition/CarConditionInfo;->mLimitsArray:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const-string v2, "\n"

    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 79
    iget-object v4, p0, Landroid/car/hardware/condition/CarConditionInfo;->mLimitsArray:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    const-string v5, "\t\t"

    .line 80
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/car/XpDebugLog;->getPropertyName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    .line 81
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/car/hardware/condition/CarConditionInfo;->mLimitsArray:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 62
    iget-object p2, p0, Landroid/car/hardware/condition/CarConditionInfo;->mLimitsArray:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    .line 63
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 65
    iget-object v1, p0, Landroid/car/hardware/condition/CarConditionInfo;->mLimitsArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 66
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget-object v2, p0, Landroid/car/hardware/condition/CarConditionInfo;->mClassArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/Serializable;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 68
    iget-object v2, p0, Landroid/car/hardware/condition/CarConditionInfo;->mLimitsArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
