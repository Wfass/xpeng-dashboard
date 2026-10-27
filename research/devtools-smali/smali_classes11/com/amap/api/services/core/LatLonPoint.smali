.class public Lcom/amap/api/services/core/LatLonPoint;
.super Ljava/lang/Object;
.source "LatLonPoint.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:D

.field private b:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    new-instance v0, Lcom/amap/api/services/core/LatLonPoint$1;

    invoke-direct {v0}, Lcom/amap/api/services/core/LatLonPoint$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/core/LatLonPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide p1, p0, Lcom/amap/api/services/core/LatLonPoint;->a:D

    .line 22
    iput-wide p3, p0, Lcom/amap/api/services/core/LatLonPoint;->b:D

    .line 23
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/services/core/LatLonPoint;->a:D

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/services/core/LatLonPoint;->b:D

    .line 112
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 86
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 87
    return v0

    .line 88
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 89
    return v1

    .line 90
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 91
    return v1

    .line 92
    :cond_2
    check-cast p1, Lcom/amap/api/services/core/LatLonPoint;

    .line 93
    iget-wide v2, p0, Lcom/amap/api/services/core/LatLonPoint;->a:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/amap/api/services/core/LatLonPoint;->a:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 94
    return v1

    .line 95
    :cond_3
    iget-wide v2, p0, Lcom/amap/api/services/core/LatLonPoint;->b:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/amap/api/services/core/LatLonPoint;->b:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-eqz p1, :cond_4

    .line 96
    return v1

    .line 97
    :cond_4
    return v0
.end method

.method public getLatitude()D
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/amap/api/services/core/LatLonPoint;->a:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/amap/api/services/core/LatLonPoint;->b:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .line 70
    nop

    .line 71
    nop

    .line 73
    iget-wide v0, p0, Lcom/amap/api/services/core/LatLonPoint;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 74
    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 75
    iget-wide v3, p0, Lcom/amap/api/services/core/LatLonPoint;->b:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 76
    mul-int/2addr v1, v0

    ushr-long v5, v3, v2

    xor-long v2, v3, v5

    long-to-int v0, v2

    add-int/2addr v1, v0

    .line 77
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amap/api/services/core/LatLonPoint;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amap/api/services/core/LatLonPoint;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 137
    iget-wide v0, p0, Lcom/amap/api/services/core/LatLonPoint;->a:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 138
    iget-wide v0, p0, Lcom/amap/api/services/core/LatLonPoint;->b:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 139
    return-void
.end method
