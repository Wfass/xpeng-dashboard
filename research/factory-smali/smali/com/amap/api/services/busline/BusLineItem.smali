.class public Lcom/amap/api/services/busline/BusLineItem;
.super Ljava/lang/Object;
.source "BusLineItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amap/api/services/busline/BusLineItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:F

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/Date;

.field private k:Ljava/util/Date;

.field private l:Ljava/lang/String;

.field private m:F

.field private n:F

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/services/busline/BusStationItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 429
    new-instance v0, Lcom/amap/api/services/busline/BusLineItem$1;

    invoke-direct {v0}, Lcom/amap/api/services/busline/BusLineItem$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/busline/BusLineItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/busline/BusLineItem;->e:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/busline/BusLineItem;->f:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/busline/BusLineItem;->o:Ljava/util/List;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/busline/BusLineItem;->e:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/busline/BusLineItem;->f:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/busline/BusLineItem;->o:Ljava/util/List;

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/amap/api/services/busline/BusLineItem;->a:F

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/busline/BusLineItem;->b:Ljava/lang/String;

    .line 412
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/busline/BusLineItem;->c:Ljava/lang/String;

    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/busline/BusLineItem;->d:Ljava/lang/String;

    .line 414
    const-class v0, Lcom/amap/api/services/core/LatLonPoint;

    .line 415
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 414
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/busline/BusLineItem;->e:Ljava/util/List;

    .line 416
    const-class v0, Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/busline/BusLineItem;->f:Ljava/util/List;

    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/busline/BusLineItem;->g:Ljava/lang/String;

    .line 418
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/busline/BusLineItem;->h:Ljava/lang/String;

    .line 419
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/busline/BusLineItem;->i:Ljava/lang/String;

    .line 420
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/i;->d(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/busline/BusLineItem;->j:Ljava/util/Date;

    .line 421
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/i;->d(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/busline/BusLineItem;->k:Ljava/util/Date;

    .line 422
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/busline/BusLineItem;->l:Ljava/lang/String;

    .line 423
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/amap/api/services/busline/BusLineItem;->m:F

    .line 424
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/amap/api/services/busline/BusLineItem;->n:F

    .line 425
    const-class v0, Lcom/amap/api/services/busline/BusStationItem;

    .line 426
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 425
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/services/busline/BusLineItem;->o:Ljava/util/List;

    .line 427
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 378
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 337
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 338
    return v0

    .line 339
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 340
    return v1

    .line 341
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 342
    return v1

    .line 343
    :cond_2
    check-cast p1, Lcom/amap/api/services/busline/BusLineItem;

    .line 344
    iget-object v2, p0, Lcom/amap/api/services/busline/BusLineItem;->g:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 345
    iget-object p1, p1, Lcom/amap/api/services/busline/BusLineItem;->g:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 346
    return v1

    .line 347
    :cond_3
    iget-object v2, p0, Lcom/amap/api/services/busline/BusLineItem;->g:Ljava/lang/String;

    iget-object p1, p1, Lcom/amap/api/services/busline/BusLineItem;->g:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 348
    return v1

    .line 349
    :cond_4
    return v0
.end method

.method public getBasicPrice()F
    .locals 1

    .line 281
    iget v0, p0, Lcom/amap/api/services/busline/BusLineItem;->m:F

    return v0
.end method

.method public getBounds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineItem;->f:Ljava/util/List;

    return-object v0
.end method

.method public getBusCompany()Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineItem;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getBusLineId()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineItem;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getBusLineName()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getBusLineType()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getBusStations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/services/busline/BusStationItem;",
            ">;"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineItem;->o:Ljava/util/List;

    return-object v0
.end method

.method public getCityCode()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectionsCoordinates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineItem;->e:Ljava/util/List;

    return-object v0
.end method

.method public getDistance()F
    .locals 1

    .line 48
    iget v0, p0, Lcom/amap/api/services/busline/BusLineItem;->a:F

    return v0
.end method

.method public getFirstBusTime()Ljava/util/Date;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineItem;->j:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 212
    const/4 v0, 0x0

    return-object v0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineItem;->j:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getLastBusTime()Ljava/util/Date;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineItem;->k:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 238
    const/4 v0, 0x0

    return-object v0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineItem;->k:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getOriginatingStation()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineItem;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getTerminalStation()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineItem;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalPrice()F
    .locals 1

    .line 299
    iget v0, p0, Lcom/amap/api/services/busline/BusLineItem;->n:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 357
    nop

    .line 358
    nop

    .line 359
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineItem;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineItem;->g:Ljava/lang/String;

    .line 360
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    .line 361
    return v1
.end method

.method public setBasicPrice(F)V
    .locals 0

    .line 290
    iput p1, p0, Lcom/amap/api/services/busline/BusLineItem;->m:F

    .line 291
    return-void
.end method

.method public setBounds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;)V"
        }
    .end annotation

    .line 148
    iput-object p1, p0, Lcom/amap/api/services/busline/BusLineItem;->f:Ljava/util/List;

    .line 149
    return-void
.end method

.method public setBusCompany(Ljava/lang/String;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/amap/api/services/busline/BusLineItem;->l:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public setBusLineId(Ljava/lang/String;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/amap/api/services/busline/BusLineItem;->g:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setBusLineName(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/amap/api/services/busline/BusLineItem;->b:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setBusLineType(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/amap/api/services/busline/BusLineItem;->c:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setBusStations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/services/busline/BusStationItem;",
            ">;)V"
        }
    .end annotation

    .line 326
    iput-object p1, p0, Lcom/amap/api/services/busline/BusLineItem;->o:Ljava/util/List;

    .line 327
    return-void
.end method

.method public setCityCode(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/amap/api/services/busline/BusLineItem;->d:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setDirectionsCoordinates(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;)V"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lcom/amap/api/services/busline/BusLineItem;->e:Ljava/util/List;

    .line 131
    return-void
.end method

.method public setDistance(F)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/amap/api/services/busline/BusLineItem;->a:F

    .line 58
    return-void
.end method

.method public setFirstBusTime(Ljava/util/Date;)V
    .locals 0

    .line 224
    if-nez p1, :cond_0

    .line 225
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/amap/api/services/busline/BusLineItem;->j:Ljava/util/Date;

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    iput-object p1, p0, Lcom/amap/api/services/busline/BusLineItem;->j:Ljava/util/Date;

    .line 229
    :goto_0
    return-void
.end method

.method public setLastBusTime(Ljava/util/Date;)V
    .locals 0

    .line 250
    if-nez p1, :cond_0

    .line 251
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/amap/api/services/busline/BusLineItem;->k:Ljava/util/Date;

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    iput-object p1, p0, Lcom/amap/api/services/busline/BusLineItem;->k:Ljava/util/Date;

    .line 255
    :goto_0
    return-void
.end method

.method public setOriginatingStation(Ljava/lang/String;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/amap/api/services/busline/BusLineItem;->h:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setTerminalStation(Ljava/lang/String;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/amap/api/services/busline/BusLineItem;->i:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setTotalPrice(F)V
    .locals 0

    .line 308
    iput p1, p0, Lcom/amap/api/services/busline/BusLineItem;->n:F

    .line 309
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amap/api/services/busline/BusLineItem;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/api/services/busline/BusLineItem;->j:Ljava/util/Date;

    invoke-static {v1}, Lcom/amap/api/services/a/i;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/api/services/busline/BusLineItem;->k:Ljava/util/Date;

    .line 370
    invoke-static {v1}, Lcom/amap/api/services/a/i;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 387
    iget p2, p0, Lcom/amap/api/services/busline/BusLineItem;->a:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 388
    iget-object p2, p0, Lcom/amap/api/services/busline/BusLineItem;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 389
    iget-object p2, p0, Lcom/amap/api/services/busline/BusLineItem;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 390
    iget-object p2, p0, Lcom/amap/api/services/busline/BusLineItem;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 391
    iget-object p2, p0, Lcom/amap/api/services/busline/BusLineItem;->e:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 392
    iget-object p2, p0, Lcom/amap/api/services/busline/BusLineItem;->f:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 393
    iget-object p2, p0, Lcom/amap/api/services/busline/BusLineItem;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 394
    iget-object p2, p0, Lcom/amap/api/services/busline/BusLineItem;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 395
    iget-object p2, p0, Lcom/amap/api/services/busline/BusLineItem;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 396
    iget-object p2, p0, Lcom/amap/api/services/busline/BusLineItem;->j:Ljava/util/Date;

    invoke-static {p2}, Lcom/amap/api/services/a/i;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 397
    iget-object p2, p0, Lcom/amap/api/services/busline/BusLineItem;->k:Ljava/util/Date;

    invoke-static {p2}, Lcom/amap/api/services/a/i;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 398
    iget-object p2, p0, Lcom/amap/api/services/busline/BusLineItem;->l:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 399
    iget p2, p0, Lcom/amap/api/services/busline/BusLineItem;->m:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 400
    iget p2, p0, Lcom/amap/api/services/busline/BusLineItem;->n:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 401
    iget-object p2, p0, Lcom/amap/api/services/busline/BusLineItem;->o:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 402
    return-void
.end method
