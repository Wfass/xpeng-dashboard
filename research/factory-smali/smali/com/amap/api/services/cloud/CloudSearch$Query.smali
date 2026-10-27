.class public Lcom/amap/api/services/cloud/CloudSearch$Query;
.super Ljava/lang/Object;
.source "CloudSearch.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/cloud/CloudSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Query"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

.field private f:Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/services/a/x;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->b:I

    .line 91
    const/16 v0, 0x14

    iput v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->c:I

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->g:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->h:Ljava/util/HashMap;

    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/services/cloud/CloudSearch$SearchBound;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->b:I

    .line 91
    const/16 v0, 0x14

    iput v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->c:I

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->g:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->h:Ljava/util/HashMap;

    .line 123
    invoke-static {p1}, Lcom/amap/api/services/a/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 126
    iput-object p1, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->d:Ljava/lang/String;

    .line 127
    iput-object p2, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->a:Ljava/lang/String;

    .line 128
    iput-object p3, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->e:Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    .line 129
    return-void

    .line 124
    :cond_0
    new-instance p1, Lcom/amap/api/services/core/AMapException;

    const-string p2, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {p1, p2}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/services/a/x;",
            ">;"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 294
    const/4 v0, 0x0

    return-object v0

    .line 296
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 297
    iget-object v1, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 298
    return-object v0
.end method

.method private a(Lcom/amap/api/services/cloud/CloudSearch$SearchBound;Lcom/amap/api/services/cloud/CloudSearch$SearchBound;)Z
    .locals 0

    .line 355
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 356
    const/4 p1, 0x1

    return p1

    .line 358
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 359
    invoke-virtual {p1, p2}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 361
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private a(Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;)Z
    .locals 0

    .line 366
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 367
    const/4 p1, 0x1

    return p1

    .line 369
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 370
    invoke-virtual {p1, p2}, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 372
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private b()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->h:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 303
    const/4 v0, 0x0

    return-object v0

    .line 305
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 306
    iget-object v1, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->h:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 307
    return-object v0
.end method


# virtual methods
.method public addFilterNum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 282
    new-instance v0, Lcom/amap/api/services/a/x;

    invoke-direct {v0, p1, p2, p3}, Lcom/amap/api/services/a/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object p1, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    return-void
.end method

.method public addFilterString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    return-void
.end method

.method public clone()Lcom/amap/api/services/cloud/CloudSearch$Query;
    .locals 6

    .line 447
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    goto :goto_0

    .line 448
    :catch_0
    move-exception v0

    .line 450
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 452
    :goto_0
    const/4 v0, 0x0

    .line 454
    :try_start_1
    new-instance v1, Lcom/amap/api/services/cloud/CloudSearch$Query;

    iget-object v2, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->e:Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    invoke-direct {v1, v2, v3, v4}, Lcom/amap/api/services/cloud/CloudSearch$Query;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/services/cloud/CloudSearch$SearchBound;)V
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_2

    .line 455
    :try_start_2
    iget v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->b:I

    invoke-virtual {v1, v0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->setPageNum(I)V

    .line 456
    iget v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->c:I

    invoke-virtual {v1, v0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->setPageSize(I)V

    .line 457
    invoke-virtual {p0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getSortingrules()Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->setSortingrules(Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;)V

    .line 458
    invoke-direct {p0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/services/cloud/CloudSearch$Query;->g:Ljava/util/ArrayList;

    .line 459
    invoke-direct {p0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/services/cloud/CloudSearch$Query;->h:Ljava/util/HashMap;
    :try_end_2
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_2 .. :try_end_2} :catch_1

    .line 462
    goto :goto_2

    .line 460
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 461
    :goto_1
    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->printStackTrace()V

    .line 463
    :goto_2
    if-nez v1, :cond_0

    .line 464
    new-instance v0, Lcom/amap/api/services/cloud/CloudSearch$Query;

    invoke-direct {v0}, Lcom/amap/api/services/cloud/CloudSearch$Query;-><init>()V

    return-object v0

    .line 466
    :cond_0
    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->clone()Lcom/amap/api/services/cloud/CloudSearch$Query;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 431
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    instance-of v1, p1, Lcom/amap/api/services/cloud/CloudSearch$Query;

    if-nez v1, :cond_0

    goto :goto_0

    .line 434
    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    .line 435
    return v1

    .line 437
    :cond_1
    check-cast p1, Lcom/amap/api/services/cloud/CloudSearch$Query;

    .line 438
    invoke-virtual {p0, p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->queryEquals(Lcom/amap/api/services/cloud/CloudSearch$Query;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget p1, p1, Lcom/amap/api/services/cloud/CloudSearch$Query;->b:I

    iget v2, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->b:I

    if-ne p1, v2, :cond_2

    move v0, v1

    nop

    :cond_2
    return v0

    .line 432
    :cond_3
    :goto_0
    return v0
.end method

.method public getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->e:Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    return-object v0
.end method

.method public getFilterNumString()Ljava/lang/String;
    .locals 4

    .line 316
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 318
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/services/a/x;

    .line 319
    invoke-virtual {v2}, Lcom/amap/api/services/a/x;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    const-string v3, ":["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    invoke-virtual {v2}, Lcom/amap/api/services/a/x;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    invoke-virtual {v2}, Lcom/amap/api/services/a/x;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    const-string v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    goto :goto_0

    .line 327
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 328
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :cond_1
    goto :goto_1

    .line 330
    :catch_0
    move-exception v1

    .line 331
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 333
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilterString()Ljava/lang/String;
    .locals 4

    .line 245
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->h:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 248
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 249
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 251
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 252
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 253
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 257
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :cond_1
    goto :goto_1

    .line 259
    :catch_0
    move-exception v1

    .line 260
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 262
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageNum()I
    .locals 1

    .line 168
    iget v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->b:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .line 200
    iget v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->c:I

    return v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSortingrules()Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->f:Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;

    return-object v0
.end method

.method public getTableID()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->d:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 405
    nop

    .line 406
    nop

    .line 407
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 408
    move v0, v1

    goto :goto_0

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->g:Ljava/util/ArrayList;

    .line 408
    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    .line 409
    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->h:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 410
    move v3, v1

    goto :goto_1

    .line 409
    :cond_1
    iget-object v3, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->h:Ljava/util/HashMap;

    .line 410
    invoke-virtual {v3}, Ljava/util/HashMap;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    .line 411
    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->e:Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    if-nez v3, :cond_2

    .line 412
    move v3, v1

    goto :goto_2

    .line 411
    :cond_2
    iget-object v3, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->e:Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    .line 412
    invoke-virtual {v3}, Lcom/amap/api/services/cloud/CloudSearch$SearchBound;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    .line 413
    mul-int/2addr v0, v2

    iget v3, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->b:I

    add-int/2addr v0, v3

    .line 414
    mul-int/2addr v0, v2

    iget v3, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->c:I

    add-int/2addr v0, v3

    .line 415
    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->a:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 416
    move v3, v1

    goto :goto_3

    .line 415
    :cond_3
    iget-object v3, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->a:Ljava/lang/String;

    .line 416
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    .line 417
    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->f:Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;

    if-nez v3, :cond_4

    .line 418
    move v3, v1

    goto :goto_4

    .line 417
    :cond_4
    iget-object v3, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->f:Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;

    .line 418
    invoke-virtual {v3}, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    .line 419
    mul-int/2addr v2, v0

    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->d:Ljava/lang/String;

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->d:Ljava/lang/String;

    .line 420
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v2, v1

    .line 421
    return v2
.end method

.method public queryEquals(Lcom/amap/api/services/cloud/CloudSearch$Query;)Z
    .locals 4

    .line 382
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 383
    return v0

    .line 385
    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    .line 386
    return v1

    .line 388
    :cond_1
    iget-object v2, p1, Lcom/amap/api/services/cloud/CloudSearch$Query;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amap/api/services/cloud/CloudSearch;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 389
    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getTableID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getTableID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amap/api/services/cloud/CloudSearch;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 390
    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getFilterString()Ljava/lang/String;

    move-result-object v2

    .line 391
    invoke-virtual {p0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getFilterString()Ljava/lang/String;

    move-result-object v3

    .line 390
    invoke-static {v2, v3}, Lcom/amap/api/services/cloud/CloudSearch;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 392
    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getFilterNumString()Ljava/lang/String;

    move-result-object v2

    .line 393
    invoke-virtual {p0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getFilterNumString()Ljava/lang/String;

    move-result-object v3

    .line 392
    invoke-static {v2, v3}, Lcom/amap/api/services/cloud/CloudSearch;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p1, Lcom/amap/api/services/cloud/CloudSearch$Query;->c:I

    iget v3, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->c:I

    if-ne v2, v3, :cond_2

    .line 395
    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getBound()Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/amap/api/services/cloud/CloudSearch$Query;->a(Lcom/amap/api/services/cloud/CloudSearch$SearchBound;Lcom/amap/api/services/cloud/CloudSearch$SearchBound;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 396
    invoke-virtual {p1}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getSortingrules()Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;

    move-result-object p1

    .line 397
    invoke-virtual {p0}, Lcom/amap/api/services/cloud/CloudSearch$Query;->getSortingrules()Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;

    move-result-object v2

    .line 396
    invoke-direct {p0, p1, v2}, Lcom/amap/api/services/cloud/CloudSearch$Query;->a(Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v0, v1

    nop

    :cond_2
    return v0
.end method

.method public setBound(Lcom/amap/api/services/cloud/CloudSearch$SearchBound;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->e:Lcom/amap/api/services/cloud/CloudSearch$SearchBound;

    .line 210
    return-void
.end method

.method public setPageNum(I)V
    .locals 0

    .line 177
    iput p1, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->b:I

    .line 178
    return-void
.end method

.method public setPageSize(I)V
    .locals 1

    .line 185
    if-gtz p1, :cond_0

    .line 186
    const/16 p1, 0x14

    iput p1, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->c:I

    goto :goto_0

    .line 187
    :cond_0
    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 188
    iput v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->c:I

    goto :goto_0

    .line 190
    :cond_1
    iput p1, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->c:I

    .line 192
    :goto_0
    return-void
.end method

.method public setSortingrules(Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->f:Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;

    .line 343
    return-void
.end method

.method public setTableID(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/amap/api/services/cloud/CloudSearch$Query;->d:Ljava/lang/String;

    .line 151
    return-void
.end method
