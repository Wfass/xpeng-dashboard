.class final Lcom/amap/api/services/district/DistrictSearchQuery$1;
.super Ljava/lang/Object;
.source "DistrictSearchQuery.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/district/DistrictSearchQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amap/api/services/district/DistrictSearchQuery;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/amap/api/services/district/DistrictSearchQuery;
    .locals 4

    .line 368
    new-instance v0, Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-direct {v0}, Lcom/amap/api/services/district/DistrictSearchQuery;-><init>()V

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/district/DistrictSearchQuery;->setKeywords(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/district/DistrictSearchQuery;->setKeywordsLevel(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/district/DistrictSearchQuery;->setPageNum(I)V

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/district/DistrictSearchQuery;->setPageSize(I)V

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/amap/api/services/district/DistrictSearchQuery;->setShowChild(Z)V

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v3, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/amap/api/services/district/DistrictSearchQuery;->setShowBoundary(Z)V

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-ne p1, v3, :cond_2

    move v2, v3

    nop

    :cond_2
    invoke-virtual {v0, v2}, Lcom/amap/api/services/district/DistrictSearchQuery;->setShowBusinessArea(Z)V

    .line 376
    return-object v0
.end method

.method public a(I)[Lcom/amap/api/services/district/DistrictSearchQuery;
    .locals 0

    .line 381
    new-array p1, p1, [Lcom/amap/api/services/district/DistrictSearchQuery;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 364
    invoke-virtual {p0, p1}, Lcom/amap/api/services/district/DistrictSearchQuery$1;->a(Landroid/os/Parcel;)Lcom/amap/api/services/district/DistrictSearchQuery;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 364
    invoke-virtual {p0, p1}, Lcom/amap/api/services/district/DistrictSearchQuery$1;->a(I)[Lcom/amap/api/services/district/DistrictSearchQuery;

    move-result-object p1

    return-object p1
.end method
