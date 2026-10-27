.class public Lcom/amap/api/services/poisearch/PoiSearch$Query;
.super Ljava/lang/Object;
.source "PoiSearch.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/poisearch/PoiSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Query"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 226
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/amap/api/services/poisearch/PoiSearch$Query;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->d:I

    .line 209
    const/16 v1, 0x14

    iput v1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->e:I

    .line 210
    const-string v1, "zh-CN"

    iput-object v1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->f:Ljava/lang/String;

    .line 211
    iput-boolean v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->g:Z

    .line 212
    iput-boolean v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->h:Z

    .line 243
    iput-object p1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->a:Ljava/lang/String;

    .line 244
    iput-object p2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    .line 245
    iput-object p3, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->c:Ljava/lang/String;

    .line 246
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .line 285
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/amap/api/services/poisearch/PoiSearch$Query;
    .locals 4

    .line 464
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    goto :goto_0

    .line 465
    :catch_0
    move-exception v0

    .line 466
    const-string v1, "PoiSearch"

    const-string v2, "queryclone"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :goto_0
    new-instance v0, Lcom/amap/api/services/poisearch/PoiSearch$Query;

    iget-object v1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/services/poisearch/PoiSearch$Query;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget v1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->d:I

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->setPageNum(I)V

    .line 470
    iget v1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->e:I

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->setPageSize(I)V

    .line 471
    iget-object v1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->setQueryLanguage(Ljava/lang/String;)V

    .line 472
    iget-boolean v1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->g:Z

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->setCityLimit(Z)V

    .line 473
    iget-boolean v1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->h:Z

    invoke-virtual {v0, v1}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->requireSubPois(Z)V

    .line 474
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 204
    invoke-virtual {p0}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->clone()Lcom/amap/api/services/poisearch/PoiSearch$Query;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 418
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 419
    return v0

    .line 420
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 421
    return v1

    .line 422
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 423
    return v1

    .line 424
    :cond_2
    check-cast p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;

    .line 425
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 426
    iget-object v2, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 427
    return v1

    .line 428
    :cond_3
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 429
    return v1

    .line 430
    :cond_4
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->c:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 431
    iget-object v2, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->c:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 432
    return v1

    .line 433
    :cond_5
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 434
    return v1

    .line 435
    :cond_6
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->f:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 436
    iget-object v2, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->f:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 437
    return v1

    .line 438
    :cond_7
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 439
    return v1

    .line 440
    :cond_8
    iget v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->d:I

    iget v3, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->d:I

    if-eq v2, v3, :cond_9

    .line 441
    return v1

    .line 442
    :cond_9
    iget v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->e:I

    iget v3, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->e:I

    if-eq v2, v3, :cond_a

    .line 443
    return v1

    .line 444
    :cond_a
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->a:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 445
    iget-object v2, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->a:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 446
    return v1

    .line 447
    :cond_b
    iget-object v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 448
    return v1

    .line 449
    :cond_c
    iget-boolean v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->g:Z

    iget-boolean v3, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->g:Z

    if-eq v2, v3, :cond_d

    .line 450
    return v1

    .line 452
    :cond_d
    iget-boolean v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->h:Z

    iget-boolean p1, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->h:Z

    if-eq v2, p1, :cond_e

    .line 453
    return v1

    .line 455
    :cond_e
    return v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    const-string v1, "00|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    return-object v0

    .line 279
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/amap/api/services/poisearch/PoiSearch$Query;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getCityLimit()Z
    .locals 1

    .line 361
    iget-boolean v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->g:Z

    return v0
.end method

.method public getPageNum()I
    .locals 1

    .line 304
    iget v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->d:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .line 342
    iget v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->e:I

    return v0
.end method

.method protected getQueryLanguage()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 395
    nop

    .line 396
    nop

    .line 397
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    .line 398
    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->c:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    .line 399
    mul-int/2addr v0, v2

    iget-boolean v3, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->g:Z

    const/16 v4, 0x4d5

    const/16 v5, 0x4cf

    if-eqz v3, :cond_2

    move v3, v5

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    add-int/2addr v0, v3

    .line 400
    mul-int/2addr v0, v2

    iget-boolean v3, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->h:Z

    if-eqz v3, :cond_3

    move v4, v5

    nop

    :cond_3
    add-int/2addr v0, v4

    .line 401
    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->f:Ljava/lang/String;

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->f:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    .line 402
    mul-int/2addr v0, v2

    iget v3, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->d:I

    add-int/2addr v0, v3

    .line 403
    mul-int/2addr v0, v2

    iget v3, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->e:I

    add-int/2addr v0, v3

    .line 404
    mul-int/2addr v2, v0

    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->a:Ljava/lang/String;

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v2, v1

    .line 405
    return v2
.end method

.method public isRequireSubPois()Z
    .locals 1

    .line 369
    iget-boolean v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->h:Z

    return v0
.end method

.method public queryEquals(Lcom/amap/api/services/poisearch/PoiSearch$Query;)Z
    .locals 4

    .line 380
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 381
    return v0

    .line 383
    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    .line 384
    return v1

    .line 386
    :cond_1
    iget-object v2, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amap/api/services/poisearch/PoiSearch;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amap/api/services/poisearch/PoiSearch;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amap/api/services/poisearch/PoiSearch;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amap/api/services/poisearch/PoiSearch;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->g:Z

    iget-boolean v3, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->g:Z

    if-ne v2, v3, :cond_2

    iget p1, p1, Lcom/amap/api/services/poisearch/PoiSearch$Query;->e:I

    iget v2, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->e:I

    if-ne p1, v2, :cond_2

    move v0, v1

    nop

    :cond_2
    return v0
.end method

.method public requireSubPois(Z)V
    .locals 0

    .line 365
    iput-boolean p1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->h:Z

    .line 366
    return-void
.end method

.method public setCityLimit(Z)V
    .locals 0

    .line 352
    iput-boolean p1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->g:Z

    .line 353
    return-void
.end method

.method public setPageNum(I)V
    .locals 0

    .line 315
    iput p1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->d:I

    .line 316
    return-void
.end method

.method public setPageSize(I)V
    .locals 1

    .line 326
    if-gtz p1, :cond_0

    .line 327
    const/16 p1, 0x14

    iput p1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->e:I

    goto :goto_0

    .line 328
    :cond_0
    const/16 v0, 0x1e

    if-le p1, v0, :cond_1

    .line 329
    iput v0, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->e:I

    goto :goto_0

    .line 331
    :cond_1
    iput p1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->e:I

    .line 333
    :goto_0
    return-void
.end method

.method public setQueryLanguage(Ljava/lang/String;)V
    .locals 1

    .line 261
    const-string v0, "en"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 262
    const-string p1, "en"

    iput-object p1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->f:Ljava/lang/String;

    goto :goto_0

    .line 264
    :cond_0
    const-string p1, "zh-CN"

    iput-object p1, p0, Lcom/amap/api/services/poisearch/PoiSearch$Query;->f:Ljava/lang/String;

    .line 266
    :goto_0
    return-void
.end method
