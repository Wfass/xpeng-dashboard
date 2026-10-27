.class public Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;
.super Ljava/lang/Object;
.source "NearbySearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/nearby/NearbySearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NearbyQuery"
.end annotation


# instance fields
.field private a:Lcom/amap/api/services/core/LatLonPoint;

.field private b:Lcom/amap/api/services/nearby/NearbySearchFunctionType;

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    sget-object v0, Lcom/amap/api/services/nearby/NearbySearchFunctionType;->DISTANCE_SEARCH:Lcom/amap/api/services/nearby/NearbySearchFunctionType;

    iput-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->b:Lcom/amap/api/services/nearby/NearbySearchFunctionType;

    .line 183
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->c:I

    .line 185
    const/16 v0, 0x708

    iput v0, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->d:I

    .line 187
    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->e:I

    return-void
.end method


# virtual methods
.method public getCenterPoint()Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->a:Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method public getCoordType()I
    .locals 1

    .line 276
    iget v0, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->e:I

    return v0
.end method

.method public getRadius()I
    .locals 1

    .line 212
    iget v0, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->c:I

    return v0
.end method

.method public getTimeRange()I
    .locals 1

    .line 298
    iget v0, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->d:I

    return v0
.end method

.method public getType()I
    .locals 2

    .line 245
    nop

    .line 246
    sget-object v0, Lcom/amap/api/services/nearby/NearbySearch$1;->a:[I

    iget-object v1, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->b:Lcom/amap/api/services/nearby/NearbySearchFunctionType;

    invoke-virtual {v1}, Lcom/amap/api/services/nearby/NearbySearchFunctionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 252
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 248
    :pswitch_1
    nop

    .line 249
    nop

    .line 255
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCenterPoint(Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->a:Lcom/amap/api/services/core/LatLonPoint;

    .line 195
    return-void
.end method

.method public setCoordType(I)V
    .locals 1

    .line 263
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 264
    iput v0, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->e:I

    goto :goto_0

    .line 266
    :cond_0
    iput p1, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->e:I

    .line 268
    :goto_0
    return-void
.end method

.method public setRadius(I)V
    .locals 1

    .line 220
    const/16 v0, 0x2710

    if-le p1, v0, :cond_0

    .line 221
    nop

    .line 223
    move p1, v0

    :cond_0
    iput p1, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->c:I

    .line 225
    return-void
.end method

.method public setTimeRange(I)V
    .locals 2

    .line 284
    const v0, 0x15180

    const/4 v1, 0x5

    if-ge p1, v1, :cond_0

    .line 285
    nop

    .line 289
    move p1, v1

    goto :goto_0

    .line 286
    :cond_0
    if-le p1, v0, :cond_1

    .line 287
    nop

    .line 289
    move p1, v0

    :cond_1
    :goto_0
    iput p1, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->d:I

    .line 290
    return-void
.end method

.method public setType(Lcom/amap/api/services/nearby/NearbySearchFunctionType;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->b:Lcom/amap/api/services/nearby/NearbySearchFunctionType;

    .line 233
    return-void
.end method
