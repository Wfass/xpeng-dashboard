.class public Lcom/amap/api/services/route/RouteBusLineItem;
.super Lcom/amap/api/services/busline/BusLineItem;
.source "RouteBusLineItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amap/api/services/route/RouteBusLineItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/services/busline/BusStationItem;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private hg:F

.field private hj:Lcom/amap/api/services/busline/BusStationItem;

.field private hk:Lcom/amap/api/services/busline/BusStationItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 179
    new-instance v0, Lcom/amap/api/services/route/RouteBusLineItem$1;

    invoke-direct {v0}, Lcom/amap/api/services/route/RouteBusLineItem$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/route/RouteBusLineItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 176
    invoke-direct {p0}, Lcom/amap/api/services/busline/BusLineItem;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->c:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->bo:Ljava/util/List;

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 160
    invoke-direct {p0, p1}, Lcom/amap/api/services/busline/BusLineItem;-><init>(Landroid/os/Parcel;)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->c:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->bo:Ljava/util/List;

    .line 161
    const-class v0, Lcom/amap/api/services/busline/BusStationItem;

    .line 162
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 161
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/busline/BusStationItem;

    iput-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->hj:Lcom/amap/api/services/busline/BusStationItem;

    .line 163
    const-class v0, Lcom/amap/api/services/busline/BusStationItem;

    .line 164
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 163
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/busline/BusStationItem;

    iput-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->hk:Lcom/amap/api/services/busline/BusStationItem;

    .line 165
    sget-object v0, Lcom/amap/api/services/core/LatLonPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->c:Ljava/util/List;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->d:I

    .line 167
    sget-object v0, Lcom/amap/api/services/busline/BusStationItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->bo:Ljava/util/List;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/amap/api/services/route/RouteBusLineItem;->hg:F

    .line 169
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 217
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 218
    return v0

    .line 219
    :cond_0
    invoke-super {p0, p1}, Lcom/amap/api/services/busline/BusLineItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 220
    return v2

    .line 221
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_2

    .line 222
    return v2

    .line 223
    :cond_2
    check-cast p1, Lcom/amap/api/services/route/RouteBusLineItem;

    .line 224
    iget-object v1, p0, Lcom/amap/api/services/route/RouteBusLineItem;->hk:Lcom/amap/api/services/busline/BusStationItem;

    if-nez v1, :cond_3

    .line 225
    iget-object v1, p1, Lcom/amap/api/services/route/RouteBusLineItem;->hk:Lcom/amap/api/services/busline/BusStationItem;

    if-eqz v1, :cond_4

    .line 226
    return v2

    .line 227
    :cond_3
    iget-object v1, p0, Lcom/amap/api/services/route/RouteBusLineItem;->hk:Lcom/amap/api/services/busline/BusStationItem;

    iget-object v3, p1, Lcom/amap/api/services/route/RouteBusLineItem;->hk:Lcom/amap/api/services/busline/BusStationItem;

    invoke-virtual {v1, v3}, Lcom/amap/api/services/busline/BusStationItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 228
    return v2

    .line 229
    :cond_4
    iget-object v1, p0, Lcom/amap/api/services/route/RouteBusLineItem;->hj:Lcom/amap/api/services/busline/BusStationItem;

    if-nez v1, :cond_5

    .line 230
    iget-object p1, p1, Lcom/amap/api/services/route/RouteBusLineItem;->hj:Lcom/amap/api/services/busline/BusStationItem;

    if-eqz p1, :cond_6

    .line 231
    return v2

    .line 232
    :cond_5
    iget-object v1, p0, Lcom/amap/api/services/route/RouteBusLineItem;->hj:Lcom/amap/api/services/busline/BusStationItem;

    iget-object p1, p1, Lcom/amap/api/services/route/RouteBusLineItem;->hj:Lcom/amap/api/services/busline/BusStationItem;

    invoke-virtual {v1, p1}, Lcom/amap/api/services/busline/BusStationItem;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 233
    return v2

    .line 234
    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 197
    nop

    .line 198
    invoke-super {p0}, Lcom/amap/api/services/busline/BusLineItem;->hashCode()I

    move-result v0

    .line 199
    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/amap/api/services/route/RouteBusLineItem;->hk:Lcom/amap/api/services/busline/BusStationItem;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 202
    move v2, v3

    goto :goto_0

    .line 199
    :cond_0
    iget-object v2, p0, Lcom/amap/api/services/route/RouteBusLineItem;->hk:Lcom/amap/api/services/busline/BusStationItem;

    .line 202
    invoke-virtual {v2}, Lcom/amap/api/services/busline/BusStationItem;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    .line 203
    mul-int/2addr v1, v0

    iget-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->hj:Lcom/amap/api/services/busline/BusStationItem;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->hj:Lcom/amap/api/services/busline/BusStationItem;

    .line 206
    invoke-virtual {v0}, Lcom/amap/api/services/busline/BusStationItem;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    .line 207
    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 146
    invoke-super {p0, p1, p2}, Lcom/amap/api/services/busline/BusLineItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 147
    iget-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->hj:Lcom/amap/api/services/busline/BusStationItem;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 148
    iget-object v0, p0, Lcom/amap/api/services/route/RouteBusLineItem;->hk:Lcom/amap/api/services/busline/BusStationItem;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 149
    iget-object p2, p0, Lcom/amap/api/services/route/RouteBusLineItem;->c:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 150
    iget p2, p0, Lcom/amap/api/services/route/RouteBusLineItem;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-object p2, p0, Lcom/amap/api/services/route/RouteBusLineItem;->bo:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 152
    iget p2, p0, Lcom/amap/api/services/route/RouteBusLineItem;->hg:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 153
    return-void
.end method
