.class public Lcom/amap/api/services/core/LatLonSharePoint;
.super Lcom/amap/api/services/core/LatLonPoint;
.source "LatLonSharePoint.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amap/api/services/core/LatLonSharePoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lcom/amap/api/services/core/LatLonSharePoint$1;

    invoke-direct {v0}, Lcom/amap/api/services/core/LatLonSharePoint$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/core/LatLonSharePoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DDLjava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amap/api/services/core/LatLonPoint;-><init>(DD)V

    .line 22
    iput-object p5, p0, Lcom/amap/api/services/core/LatLonSharePoint;->a:Ljava/lang/String;

    .line 24
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/amap/api/services/core/LatLonPoint;-><init>(Landroid/os/Parcel;)V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/services/core/LatLonSharePoint;->a:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 87
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 88
    return v0

    .line 89
    :cond_0
    invoke-super {p0, p1}, Lcom/amap/api/services/core/LatLonPoint;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 90
    return v2

    .line 91
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_2

    .line 92
    return v2

    .line 93
    :cond_2
    check-cast p1, Lcom/amap/api/services/core/LatLonSharePoint;

    .line 94
    iget-object v1, p0, Lcom/amap/api/services/core/LatLonSharePoint;->a:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 95
    iget-object p1, p1, Lcom/amap/api/services/core/LatLonSharePoint;->a:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 96
    return v2

    .line 97
    :cond_3
    iget-object v1, p0, Lcom/amap/api/services/core/LatLonSharePoint;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/amap/api/services/core/LatLonSharePoint;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 98
    return v2

    .line 99
    :cond_4
    return v0
.end method

.method public getSharePointName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amap/api/services/core/LatLonSharePoint;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 72
    nop

    .line 73
    invoke-super {p0}, Lcom/amap/api/services/core/LatLonPoint;->hashCode()I

    move-result v0

    .line 74
    const/16 v1, 0x1f

    mul-int/2addr v1, v0

    iget-object v0, p0, Lcom/amap/api/services/core/LatLonSharePoint;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/core/LatLonSharePoint;->a:Ljava/lang/String;

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    .line 76
    return v1
.end method

.method public setSharePointName(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/amap/api/services/core/LatLonSharePoint;->a:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/amap/api/services/core/LatLonPoint;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/api/services/core/LatLonSharePoint;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 66
    invoke-super {p0, p1, p2}, Lcom/amap/api/services/core/LatLonPoint;->writeToParcel(Landroid/os/Parcel;I)V

    .line 67
    iget-object p2, p0, Lcom/amap/api/services/core/LatLonSharePoint;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    return-void
.end method
