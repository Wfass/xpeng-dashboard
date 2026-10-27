.class public Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;
.super Ljava/lang/Object;
.source "OSSUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$MetadataDirective;
    }
.end annotation


# static fields
.field private static final NEW_LINE:Ljava/lang/String; = "\n"

.field private static final SIGNED_PARAMTERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 101
    const-string v0, "bucketInfo"

    const-string v1, "acl"

    const-string v2, "uploads"

    const-string v3, "location"

    const-string v4, "cors"

    const-string v5, "logging"

    const-string v6, "website"

    const-string v7, "referer"

    const-string v8, "lifecycle"

    const-string v9, "delete"

    const-string v10, "append"

    const-string v11, "uploadId"

    const-string v12, "partNumber"

    const-string v13, "security-token"

    const-string v14, "position"

    const-string v15, "response-cache-control"

    const-string v16, "response-content-disposition"

    const-string v17, "response-content-encoding"

    const-string v18, "response-content-language"

    const-string v19, "response-content-type"

    const-string v20, "response-expires"

    const-string v21, "x-oss-process"

    const-string v22, "sequential"

    const-string v23, "symlink"

    const-string v24, "restore"

    filled-new-array/range {v0 .. v24}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->SIGNED_PARAMTERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDateHeader(Ljava/util/Map;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .line 289
    if-eqz p2, :cond_0

    .line 290
    invoke-static {p2}, Lcom/alibaba/sdk/android/oss/common/utils/DateUtil;->formatRfc822Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_0
    return-void
.end method

.method public static addHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 283
    if-eqz p2, :cond_0

    .line 284
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_0
    return-void
.end method

.method public static addStringListHeader(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 296
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    invoke-static {p2}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_0
    return-void
.end method

.method public static assertTrue(ZLjava/lang/String;)V
    .locals 0

    .line 524
    if-eqz p0, :cond_0

    .line 527
    return-void

    .line 525
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static buildBaseLogInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 713
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 714
    const-string v0, "=====[device info]=====\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[INFO]: android_version\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[INFO]: mobile_model\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildCanonicalString(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)Ljava/lang/String;
    .locals 6

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getMethod()Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v1

    .line 338
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 340
    if-eqz v1, :cond_3

    .line 341
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 342
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 343
    goto :goto_0

    .line 346
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 347
    const-string v5, "Content-Type"

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "Content-MD5"

    .line 348
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "Date"

    .line 349
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "x-oss-"

    .line 350
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 351
    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    :cond_2
    goto :goto_0

    .line 356
    :cond_3
    const-string v1, "Content-Type"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 357
    const-string v1, "Content-Type"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    :cond_4
    const-string v1, "Content-MD5"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 360
    const-string v1, "Content-MD5"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    :cond_5
    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 365
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 366
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 368
    const-string v4, "x-oss-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 369
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 371
    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 374
    :goto_2
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    goto :goto_1

    .line 378
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->buildCanonicalizedResource(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildCanonicalizedResource(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 385
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 386
    const-string p0, "/"

    goto :goto_0

    .line 387
    :cond_0
    if-nez p1, :cond_1

    .line 388
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 390
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 393
    :goto_0
    invoke-static {p0, p2}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->buildCanonicalizedResource(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildCanonicalizedResource(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    if-eqz p1, :cond_2

    .line 402
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    .line 403
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 402
    invoke-interface {p0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 404
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 406
    const/16 v1, 0x3f

    .line 407
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    .line 408
    sget-object v5, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->SIGNED_PARAMTERS:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 409
    goto :goto_1

    .line 412
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 415
    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 416
    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    :cond_1
    const/16 v1, 0x26

    .line 407
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 423
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildImagePersistentBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 804
    const-string v1, "x-oss-process="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    const-string v1, "image/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 806
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 808
    :cond_0
    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    :goto_0
    const-string p2, "|sys/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 813
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 p2, 0x2

    invoke-static {p0, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    .line 814
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 815
    const-string p2, "saveas,o_"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    const-string p1, ",b_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 821
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ImagePersistent body : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    .line 822
    return-object p0
.end method

.method public static buildTriggerCallbackBody(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 784
    const-string v1, "x-oss-process=trigger/callback,callback_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    const/4 v1, 0x2

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 787
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 788
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    .line 789
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    :cond_0
    const-string p0, ",callback-var_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_1

    .line 794
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 795
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    .line 796
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildXMLFromPartEtagList(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/oss/model/PartETag;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    const-string v1, "<CompleteMultipartUpload>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/sdk/android/oss/model/PartETag;

    .line 273
    const-string v2, "<Part>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<PartNumber>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/PartETag;->getPartNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "</PartNumber>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<ETag>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/PartETag;->getETag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</ETag>\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    const-string v1, "</Part>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    goto :goto_0

    .line 278
    :cond_0
    const-string p0, "</CompleteMultipartUpload>\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static checkChecksum(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/exception/InconsistentException;
        }
    .end annotation

    .line 724
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 725
    invoke-virtual {p0, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 726
    :cond_0
    new-instance v0, Lcom/alibaba/sdk/android/oss/exception/InconsistentException;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/sdk/android/oss/exception/InconsistentException;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    throw v0

    .line 728
    :cond_1
    :goto_0
    return-void
.end method

.method public static checkParamRange(JJZJZ)Z
    .locals 2

    .line 208
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p4, :cond_1

    if-eqz p7, :cond_1

    .line 209
    cmp-long p2, p2, p0

    if-gtz p2, :cond_0

    cmp-long p0, p0, p5

    if-gtz p0, :cond_0

    .line 210
    return v1

    .line 212
    :cond_0
    return v0

    .line 214
    :cond_1
    if-eqz p4, :cond_3

    if-nez p7, :cond_3

    .line 215
    cmp-long p2, p2, p0

    if-gtz p2, :cond_2

    cmp-long p0, p0, p5

    if-gez p0, :cond_2

    .line 216
    return v1

    .line 218
    :cond_2
    return v0

    .line 220
    :cond_3
    if-nez p4, :cond_5

    if-nez p7, :cond_5

    .line 221
    cmp-long p2, p2, p0

    if-gez p2, :cond_4

    cmp-long p0, p0, p5

    if-gez p0, :cond_4

    .line 222
    return v1

    .line 224
    :cond_4
    return v0

    .line 227
    :cond_5
    cmp-long p2, p2, p0

    if-gez p2, :cond_6

    cmp-long p0, p0, p5

    if-gtz p0, :cond_6

    .line 228
    return v1

    .line 230
    :cond_6
    return v0
.end method

.method public static determineContentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 642
    if-eqz p0, :cond_0

    .line 643
    return-object p0

    .line 646
    :cond_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object p0

    .line 647
    const/16 v0, 0x2e

    if-eqz p1, :cond_1

    .line 648
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 649
    invoke-virtual {p0, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 650
    if-eqz p1, :cond_1

    .line 651
    return-object p1

    .line 655
    :cond_1
    if-eqz p2, :cond_2

    .line 656
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 657
    invoke-virtual {p0, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 658
    if-eqz p0, :cond_2

    .line 659
    return-object p0

    .line 663
    :cond_2
    const-string p0, "application/octet-stream"

    return-object p0
.end method

.method public static doesBucketNameValid(Lcom/alibaba/sdk/android/oss/model/OSSRequest;)Z
    .locals 0

    .line 621
    instance-of p0, p0, Lcom/alibaba/sdk/android/oss/model/ListBucketsRequest;

    if-eqz p0, :cond_0

    .line 622
    const/4 p0, 0x0

    return p0

    .line 624
    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static doesRequestNeedObjectKey(Lcom/alibaba/sdk/android/oss/model/OSSRequest;)Z
    .locals 2

    .line 596
    instance-of v0, p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/alibaba/sdk/android/oss/model/ListBucketsRequest;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/alibaba/sdk/android/oss/model/DeleteBucketRequest;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketInfoRequest;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketACLRequest;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectRequest;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketRefererRequest;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/alibaba/sdk/android/oss/model/PutBucketRefererRequest;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/alibaba/sdk/android/oss/model/PutBucketLoggingRequest;

    if-nez v0, :cond_1

    instance-of v1, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketLoggingRequest;

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    instance-of v0, p0, Lcom/alibaba/sdk/android/oss/model/DeleteBucketLoggingRequest;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/alibaba/sdk/android/oss/model/PutBucketLifecycleRequest;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketLifecycleRequest;

    if-nez v0, :cond_1

    instance-of p0, p0, Lcom/alibaba/sdk/android/oss/model/DeleteBucketLifecycleRequest;

    if-eqz p0, :cond_0

    goto :goto_0

    .line 616
    :cond_0
    const/4 p0, 0x1

    return p0

    .line 614
    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static ensureBucketNameValid(Ljava/lang/String;)V
    .locals 1

    .line 544
    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->validateBucketName(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 551
    return-void

    .line 545
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The bucket name is invalid. \nA bucket name must: \n1) be comprised of lower-case characters, numbers or dash(-); \n2) start with lower case or numbers; \n3) be between 3-63 characters long. "

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ensureObjectKeyValid(Ljava/lang/String;)V
    .locals 1

    .line 586
    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->validateObjectKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 593
    return-void

    .line 587
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The object key is invalid. \nAn object name should be: \n1) between 1 - 1023 bytes long when encoded as UTF-8 \n2) cannot contain LF or CR or unsupported chars in XML1.0, \n3) cannot begin with \"/\" or \"\\\"."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ensureRequestValid(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V
    .locals 1

    .line 629
    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->doesBucketNameValid(Lcom/alibaba/sdk/android/oss/model/OSSRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    .line 632
    :cond_0
    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->doesRequestNeedObjectKey(Lcom/alibaba/sdk/android/oss/model/OSSRequest;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 633
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getObjectKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->ensureObjectKeyValid(Ljava/lang/String;)V

    .line 636
    :cond_1
    instance-of p1, p0, Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;

    if-eqz p1, :cond_2

    .line 637
    check-cast p0, Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;->getDestinationKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->ensureObjectKeyValid(Ljava/lang/String;)V

    .line 639
    :cond_2
    return-void
.end method

.method public static isCname(Ljava/lang/String;)Z
    .locals 6

    .line 503
    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSConstants;->DEFAULT_CNAME_EXCLUDE_LIST:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 504
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 505
    return v2

    .line 503
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 508
    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isEmptyString(Ljava/lang/String;)Z
    .locals 0

    .line 328
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isInCustomCnameExcludeList(Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 515
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 516
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    const/4 p0, 0x1

    return p0

    .line 519
    :cond_0
    goto :goto_0

    .line 520
    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isOssOriginHost(Ljava/lang/String;)Z
    .locals 6

    .line 488
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 489
    return v1

    .line 491
    :cond_0
    sget-object v0, Lcom/alibaba/sdk/android/oss/common/OSSConstants;->OSS_ORIGN_HOST:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 492
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 493
    const/4 p0, 0x1

    return p0

    .line 491
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 496
    :cond_2
    return v1
.end method

.method public static isValidateIP(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 756
    if-eqz p0, :cond_1

    .line 760
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 761
    invoke-static {p0}, Landroid/net/InetAddresses;->isNumericAddress(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 764
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "java.net.InetAddress"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 765
    const-string v2, "isNumeric"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 766
    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    .line 767
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 776
    :catch_0
    move-exception p0

    .line 777
    return v0

    .line 774
    :catch_1
    move-exception p0

    .line 775
    return v0

    .line 772
    :catch_2
    move-exception p0

    .line 773
    return v0

    .line 770
    :catch_3
    move-exception p0

    .line 771
    return v0

    .line 768
    :catch_4
    move-exception p0

    .line 769
    return v0

    .line 757
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "host is null"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static join(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    nop

    .line 311
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 312
    if-nez v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    const/4 v1, 0x0

    .line 316
    goto :goto_0

    .line 318
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static paramToQueryString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 431
    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 435
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 436
    const/4 v1, 0x1

    .line 437
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 438
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 439
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 441
    if-nez v1, :cond_1

    .line 442
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    :cond_1
    invoke-static {v3, p1}, Lcom/alibaba/sdk/android/oss/common/utils/HttpUtil;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-static {v2}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 448
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, p1}, Lcom/alibaba/sdk/android/oss/common/utils/HttpUtil;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    :cond_2
    const/4 v1, 0x0

    .line 452
    goto :goto_0

    .line 454
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 432
    :cond_4
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static populateCopyObjectHeaders(Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;->getSourceBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;->getSourceKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Lcom/alibaba/sdk/android/oss/common/utils/HttpUtil;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    const-string v1, "x-oss-copy-source"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v0, "x-oss-copy-source-if-modified-since"

    .line 243
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;->getModifiedSinceConstraint()Ljava/util/Date;

    move-result-object v1

    .line 241
    invoke-static {p1, v0, v1}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->addDateHeader(Ljava/util/Map;Ljava/lang/String;Ljava/util/Date;)V

    .line 244
    const-string v0, "x-oss-copy-source-if-unmodified-since"

    .line 246
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;->getUnmodifiedSinceConstraint()Ljava/util/Date;

    move-result-object v1

    .line 244
    invoke-static {p1, v0, v1}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->addDateHeader(Ljava/util/Map;Ljava/lang/String;Ljava/util/Date;)V

    .line 248
    const-string v0, "x-oss-copy-source-if-match"

    .line 250
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;->getMatchingETagConstraints()Ljava/util/List;

    move-result-object v1

    .line 248
    invoke-static {p1, v0, v1}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->addStringListHeader(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V

    .line 251
    const-string v0, "x-oss-copy-source-if-none-match"

    .line 253
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;->getNonmatchingEtagConstraints()Ljava/util/List;

    move-result-object v1

    .line 251
    invoke-static {p1, v0, v1}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->addStringListHeader(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V

    .line 255
    const-string v0, "x-oss-server-side-encryption"

    .line 257
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;->getServerSideEncryption()Ljava/lang/String;

    move-result-object v1

    .line 255
    invoke-static {p1, v0, v1}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->addHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;->getNewObjectMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object p0

    .line 260
    if-eqz p0, :cond_0

    .line 261
    const-string v0, "x-oss-metadata-directive"

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$MetadataDirective;->REPLACE:Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$MetadataDirective;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$MetadataDirective;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-static {p1, p0}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->populateRequestMetadata(Ljava/util/Map;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    .line 266
    :cond_0
    const-string p0, "Content-Length"

    invoke-static {p1, p0}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->removeHeader(Ljava/util/Map;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public static populateListBucketRequestParameters(Lcom/alibaba/sdk/android/oss/model/ListBucketsRequest;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/ListBucketsRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/ListBucketsRequest;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    const-string v0, "prefix"

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/ListBucketsRequest;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/ListBucketsRequest;->getMarker()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 146
    const-string v0, "marker"

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/ListBucketsRequest;->getMarker()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/ListBucketsRequest;->getMaxKeys()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 150
    const-string v0, "max-keys"

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/ListBucketsRequest;->getMaxKeys()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_2
    return-void
.end method

.method public static populateListMultipartUploadsRequestParameters(Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 181
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;->getDelimiter()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    const-string v0, "delimiter"

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;->getDelimiter()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;->getMaxUploads()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 186
    const-string v0, "max-uploads"

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;->getMaxUploads()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;->getKeyMarker()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 190
    const-string v0, "key-marker"

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;->getKeyMarker()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 194
    const-string v0, "prefix"

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;->getUploadIdMarker()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 198
    const-string v0, "upload-id-marker"

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;->getUploadIdMarker()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;->getEncodingType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 202
    const-string v0, "encoding-type"

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;->getEncodingType()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_5
    return-void
.end method

.method public static populateListObjectsRequestParameters(Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    const-string v0, "prefix"

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->getMarker()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 162
    const-string v0, "marker"

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->getMarker()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->getDelimiter()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 166
    const-string v0, "delimiter"

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->getDelimiter()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->getMaxKeys()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 170
    const-string v0, "max-keys"

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->getMaxKeys()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->getEncodingType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 174
    const-string v0, "encoding-type"

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->getEncodingType()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_4
    return-void
.end method

.method public static populateMapToBase64JsonString(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 458
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 459
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static populateRequestMetadata(Ljava/util/Map;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;",
            ")V"
        }
    .end annotation

    .line 116
    if-nez p1, :cond_0

    .line 117
    return-void

    .line 120
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->getRawMetadata()Ljava/util/Map;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_1

    .line 122
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 123
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->getUserMetadata()Ljava/util/Map;

    move-result-object p1

    .line 128
    if-eqz p1, :cond_4

    .line 129
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 130
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 131
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 133
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 134
    :cond_3
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    goto :goto_1

    .line 137
    :cond_4
    return-void
.end method

.method public static removeHeader(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 302
    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    :cond_0
    return-void
.end method

.method public static sign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 475
    :try_start_0
    new-instance v0, Lcom/alibaba/sdk/android/oss/common/auth/HmacSHA1Signature;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/common/auth/HmacSHA1Signature;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/common/auth/HmacSHA1Signature;->computeSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 476
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    nop

    .line 481
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OSS "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 477
    :catch_0
    move-exception p0

    .line 478
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Compute signature failed!"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static signRequest(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 667
    const-string v0, "signRequest start"

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    .line 668
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->isAuthorizationRequired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 669
    return-void

    .line 671
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getCredentialProvider()Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 678
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getCredentialProvider()Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    move-result-object v0

    .line 679
    const/4 v1, 0x0

    .line 680
    instance-of v2, v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;

    if-eqz v2, :cond_2

    .line 681
    move-object v1, v0

    check-cast v1, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationCredentialProvider;->getValidFederationToken()Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;

    move-result-object v1

    .line 682
    if-eqz v1, :cond_1

    .line 686
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v3

    const-string v4, "x-oss-security-token"

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;->getSecurityToken()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 683
    :cond_1
    const-string p0, "Can\'t get a federation token"

    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logError(Ljava/lang/String;)V

    .line 684
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Can\'t get a federation token"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 687
    :cond_2
    instance-of v3, v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;

    if-eqz v3, :cond_3

    .line 688
    invoke-interface {v0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;->getFederationToken()Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;

    move-result-object v1

    .line 689
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v3

    const-string v4, "x-oss-security-token"

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;->getSecurityToken()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    :cond_3
    :goto_0
    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->buildCanonicalString(Lcom/alibaba/sdk/android/oss/internal/RequestMessage;)Ljava/lang/String;

    move-result-object v3

    .line 693
    const-string v4, "---initValue---"

    .line 694
    const-string v5, "get contentToSign"

    invoke-static {v5}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    .line 695
    if-nez v2, :cond_6

    instance-of v2, v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;

    if-eqz v2, :cond_4

    goto :goto_1

    .line 698
    :cond_4
    instance-of v1, v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;

    if-eqz v1, :cond_5

    .line 699
    check-cast v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;->getAccessKeyId()Ljava/lang/String;

    move-result-object v1

    .line 700
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;->getAccessKeySecret()Ljava/lang/String;

    move-result-object v0

    .line 699
    invoke-static {v1, v0, v3}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->sign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 701
    :cond_5
    instance-of v1, v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSCustomSignerCredentialProvider;

    if-eqz v1, :cond_7

    .line 702
    check-cast v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSCustomSignerCredentialProvider;

    invoke-virtual {v0, v3}, Lcom/alibaba/sdk/android/oss/common/auth/OSSCustomSignerCredentialProvider;->signContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 697
    :cond_6
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;->getTempAK()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;->getTempSK()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->sign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 706
    :cond_7
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "signed content: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   \n ---------   signature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;Z)V

    .line 708
    const-string v0, "get signature"

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object p0

    const-string v0, "Authorization"

    invoke-interface {p0, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    return-void

    .line 672
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "\u5f53\u524dCredentialProvider\u4e3a\u7a7a\uff01\uff01\uff01\n1. \u8bf7\u68c0\u67e5\u60a8\u662f\u5426\u5728\u521d\u59cb\u5316OSSService\u65f6\u8bbe\u7f6eCredentialProvider;\n2. \u5982\u679c\u60a8bucket\u4e3a\u516c\u5171\u6743\u9650\uff0c\u8bf7\u786e\u8ba4\u83b7\u53d6\u5230Bucket\u540e\u5df2\u7ecf\u8c03\u7528Bucket\u4e2d\u63a5\u53e3\u58f0\u660eACL;"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validateBucketName(Ljava/lang/String;)Z
    .locals 1

    .line 536
    if-nez p0, :cond_0

    .line 537
    const/4 p0, 0x0

    return p0

    .line 539
    :cond_0
    nop

    .line 540
    const-string v0, "^[a-z0-9][a-z0-9\\-]{1,61}[a-z0-9]$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static validateObjectKey(Ljava/lang/String;)Z
    .locals 5

    .line 560
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 561
    return v0

    .line 563
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3ff

    if-le v1, v2, :cond_1

    goto :goto_2

    .line 568
    :cond_1
    :try_start_0
    const-string v1, "utf-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    nop

    .line 572
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 573
    aget-char v1, p0, v0

    .line 574
    const/16 v2, 0x2f

    if-eq v1, v2, :cond_5

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_2

    goto :goto_1

    .line 577
    :cond_2
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-char v3, p0, v2

    .line 578
    const/16 v4, 0x9

    if-eq v3, v4, :cond_3

    const/16 v4, 0x20

    if-ge v3, v4, :cond_3

    .line 579
    return v0

    .line 577
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 582
    :cond_4
    const/4 p0, 0x1

    return p0

    .line 575
    :cond_5
    :goto_1
    return v0

    .line 569
    :catch_0
    move-exception p0

    .line 570
    return v0

    .line 564
    :cond_6
    :goto_2
    return v0
.end method
