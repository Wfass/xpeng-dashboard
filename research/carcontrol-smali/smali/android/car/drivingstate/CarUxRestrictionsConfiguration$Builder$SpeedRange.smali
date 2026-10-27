.class public final Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;
.super Ljava/lang/Object;
.source "CarUxRestrictionsConfiguration.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpeedRange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;",
        ">;"
    }
.end annotation


# static fields
.field public static final MAX_SPEED:F = Infinityf


# instance fields
.field private mMaxSpeed:F

.field private mMinSpeed:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 964
    invoke-direct {p0, p1, v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 3

    .line 968
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 969
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-ltz v1, :cond_2

    invoke-static {p2, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ltz v0, :cond_2

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    cmpl-float v0, p1, p2

    if-gtz v0, :cond_0

    .line 979
    iput p1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;->mMinSpeed:F

    .line 980
    iput p2, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;->mMaxSpeed:F

    return-void

    .line 976
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Min speed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " should not be greater than max speed "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 973
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Min speed cannot be MAX_SPEED."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 970
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Speed cannot be negative."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$400(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;)F
    .locals 0

    .line 954
    iget p0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;->mMinSpeed:F

    return p0
.end method

.method static synthetic access$500(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;)F
    .locals 0

    .line 954
    iget p0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;->mMaxSpeed:F

    return p0
.end method


# virtual methods
.method public compareTo(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;)I
    .locals 2

    .line 996
    iget v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;->mMinSpeed:F

    iget v1, p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;->mMinSpeed:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 1001
    :cond_0
    iget v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;->mMaxSpeed:F

    iget p1, p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;->mMaxSpeed:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 954
    check-cast p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    invoke-virtual {p0, p1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;->compareTo(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1014
    :cond_0
    instance-of v1, p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1017
    :cond_1
    check-cast p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    .line 1019
    invoke-virtual {p0, p1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;->compareTo(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1006
    iget v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;->mMinSpeed:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;->mMaxSpeed:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public includes(F)Z
    .locals 1

    .line 990
    iget v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;->mMinSpeed:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    iget v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;->mMaxSpeed:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[min: "

    .line 1025
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;->mMinSpeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; max: "

    .line 1026
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;->mMaxSpeed:F

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    const-string v1, "max_speed"

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    .line 1027
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1028
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
