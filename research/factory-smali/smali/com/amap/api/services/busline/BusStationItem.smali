.class public Lcom/amap/api/services/busline/BusStationItem;
.super Ljava/lang/Object;
.source "BusStationItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amap/api/services/busline/BusStationItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/amap/api/services/core/LatLonPoint;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/services/busline/BusLineItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 229
    new-instance v0, Lcom/amap/api/services/busline/BusStationItem$1;

    invoke-direct {v0}, Lcom/amap/api/services/busline/BusStationItem$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/busline/BusStationItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/busline/BusStationItem;->f:Ljava/util/List;

    .line 28
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/busline/BusStationItem;->f:Ljava/util/List;

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/busline/BusStationItem;->b:Ljava/lang/String;

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/busline/BusStationItem;->a:Ljava/lang/String;

    .line 223
    const-class v0, Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    iput-object v0, p0, Lcom/amap/api/services/busline/BusStationItem;->c:Lcom/amap/api/services/core/LatLonPoint;

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/busline/BusStationItem;->d:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/busline/BusStationItem;->e:Ljava/lang/String;

    .line 226
    const-class v0, Lcom/amap/api/services/busline/BusLineItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/services/busline/BusStationItem;->f:Ljava/util/List;

    .line 227
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/amap/api/services/busline/BusStationItem$1;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/amap/api/services/busline/BusStationItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/services/busline/BusLineItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 186
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 187
    if-eqz p1, :cond_1

    .line 188
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 189
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/services/busline/BusLineItem;

    invoke-virtual {v2}, Lcom/amap/api/services/busline/BusLineItem;->getBusLineName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 191
    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 146
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 147
    return v0

    .line 148
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 149
    return v1

    .line 150
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 151
    return v1

    .line 152
    :cond_2
    check-cast p1, Lcom/amap/api/services/busline/BusStationItem;

    .line 153
    iget-object v2, p0, Lcom/amap/api/services/busline/BusStationItem;->a:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 154
    iget-object p1, p1, Lcom/amap/api/services/busline/BusStationItem;->a:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 155
    return v1

    .line 156
    :cond_3
    iget-object v2, p0, Lcom/amap/api/services/busline/BusStationItem;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/amap/api/services/busline/BusStationItem;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 157
    return v1

    .line 158
    :cond_4
    return v0
.end method

.method public getAdCode()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationItem;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getBusLineItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/services/busline/BusLineItem;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationItem;->f:Ljava/util/List;

    return-object v0
.end method

.method public getBusStationId()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getBusStationName()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getCityCode()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationItem;->c:Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 166
    nop

    .line 167
    nop

    .line 168
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationItem;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationItem;->a:Ljava/lang/String;

    .line 169
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    .line 170
    return v1
.end method

.method public setAdCode(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/amap/api/services/busline/BusStationItem;->e:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setBusLineItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/services/busline/BusLineItem;",
            ">;)V"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lcom/amap/api/services/busline/BusStationItem;->f:Ljava/util/List;

    .line 136
    return-void
.end method

.method public setBusStationId(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/amap/api/services/busline/BusStationItem;->a:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setBusStationName(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/amap/api/services/busline/BusStationItem;->b:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setCityCode(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/amap/api/services/busline/BusStationItem;->d:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setLatLonPoint(Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/amap/api/services/busline/BusStationItem;->c:Lcom/amap/api/services/core/LatLonPoint;

    .line 82
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BusStationName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/api/services/busline/BusStationItem;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " LatLonPoint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/api/services/busline/BusStationItem;->c:Lcom/amap/api/services/core/LatLonPoint;

    .line 180
    invoke-virtual {v1}, Lcom/amap/api/services/core/LatLonPoint;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " BusLines: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/api/services/busline/BusStationItem;->f:Ljava/util/List;

    .line 181
    invoke-direct {p0, v1}, Lcom/amap/api/services/busline/BusStationItem;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " CityCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/api/services/busline/BusStationItem;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AdCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/api/services/busline/BusStationItem;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 211
    iget-object p2, p0, Lcom/amap/api/services/busline/BusStationItem;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    iget-object p2, p0, Lcom/amap/api/services/busline/BusStationItem;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    iget-object p2, p0, Lcom/amap/api/services/busline/BusStationItem;->c:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 214
    iget-object p2, p0, Lcom/amap/api/services/busline/BusStationItem;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    iget-object p2, p0, Lcom/amap/api/services/busline/BusStationItem;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    iget-object p2, p0, Lcom/amap/api/services/busline/BusStationItem;->f:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 217
    return-void
.end method
