.class public Lcom/amap/api/services/a/e;
.super Ljava/lang/Object;
.source "AuthConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/a/e$b;,
        Lcom/amap/api/services/a/e$a;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const/4 v0, -0x1

    sput v0, Lcom/amap/api/services/a/e;->a:I

    .line 51
    const-string v0, ""

    sput-object v0, Lcom/amap/api/services/a/e;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/amap/api/services/a/l;Ljava/lang/String;Ljava/util/Map;)Lcom/amap/api/services/a/e$a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amap/api/services/a/l;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amap/api/services/a/e$a;"
        }
    .end annotation

    .line 221
    nop

    .line 222
    nop

    .line 223
    nop

    .line 224
    new-instance v0, Lcom/amap/api/services/a/e$a;

    invoke-direct {v0}, Lcom/amap/api/services/a/e$a;-><init>()V

    .line 226
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Lcom/amap/api/services/a/bb;

    invoke-direct {v4}, Lcom/amap/api/services/a/bb;-><init>()V
    :try_end_0
    .catch Lcom/amap/api/services/a/au; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_8

    .line 229
    :try_start_1
    new-instance v5, Lcom/amap/api/services/a/e$b;

    invoke-direct {v5, p0, p1, p2, p3}, Lcom/amap/api/services/a/e$b;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/l;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v4, v5, v1}, Lcom/amap/api/services/a/bb;->a(Lcom/amap/api/services/a/bh;Z)Lcom/amap/api/services/a/bj;

    move-result-object p1
    :try_end_1
    .catch Lcom/amap/api/services/a/au; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_9

    .line 234
    nop

    .line 235
    if-eqz p1, :cond_0

    .line 236
    :try_start_2
    iget-object p2, p1, Lcom/amap/api/services/a/bj;->a:[B
    :try_end_2
    .catch Lcom/amap/api/services/a/au; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 255
    :catch_0
    move-exception p2

    move-object p3, p2

    move-object p2, v2

    goto :goto_1

    .line 253
    :catch_1
    move-exception p2

    move-object p2, v2

    goto :goto_2

    .line 251
    :catch_2
    move-exception p2

    move-object p3, p2

    move-object p2, v2

    goto :goto_3

    .line 241
    :cond_0
    move-object p2, v2

    :goto_0
    const/16 p3, 0x10

    :try_start_3
    new-array v4, p3, [B

    .line 242
    array-length v5, p2

    sub-int/2addr v5, p3

    new-array v5, v5, [B

    .line 243
    invoke-static {p2, v3, v4, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    array-length v6, p2

    sub-int/2addr v6, p3

    invoke-static {p2, p3, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "AES"

    invoke-direct {p3, v4, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 246
    const-string v4, "AES/CBC/PKCS5Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 247
    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {}, Lcom/amap/api/services/a/m;->a()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 248
    const/4 v7, 0x2

    invoke-virtual {v4, v7, p3, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 249
    invoke-virtual {v4, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p3

    .line 250
    invoke-static {p3}, Lcom/amap/api/services/a/m;->a([B)Ljava/lang/String;

    move-result-object p3
    :try_end_3
    .catch Lcom/amap/api/services/a/au; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 257
    nop

    .line 258
    move-object v2, p3

    goto :goto_5

    .line 255
    :catch_3
    move-exception p3

    goto :goto_1

    .line 253
    :catch_4
    move-exception p3

    goto :goto_2

    .line 251
    :catch_5
    move-exception p3

    goto :goto_3

    .line 232
    :catch_6
    move-exception p1

    .line 233
    :try_start_4
    new-instance p1, Lcom/amap/api/services/a/au;

    const-string p2, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {p1, p2}, Lcom/amap/api/services/a/au;-><init>(Ljava/lang/String;)V

    throw p1

    .line 230
    :catch_7
    move-exception p1

    .line 231
    throw p1
    :try_end_4
    .catch Lcom/amap/api/services/a/au; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_8

    .line 255
    :catch_8
    move-exception p2

    move-object p3, p2

    move-object p1, v2

    move-object p2, p1

    .line 256
    :goto_1
    const-string v4, "ConfigManager"

    const-string v5, "loadConfig"

    invoke-static {p3, v4, v5}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 253
    :catch_9
    move-exception p1

    move-object p1, v2

    move-object p2, p1

    :goto_2
    goto :goto_4

    .line 251
    :catch_a
    move-exception p2

    move-object p3, p2

    move-object p1, v2

    move-object p2, p1

    .line 252
    :goto_3
    invoke-virtual {p3}, Lcom/amap/api/services/a/au;->a()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Lcom/amap/api/services/a/e$a;->a:Ljava/lang/String;

    .line 257
    :goto_4
    nop

    .line 258
    :goto_5
    if-nez p2, :cond_1

    .line 259
    return-object v0

    .line 262
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 263
    invoke-static {p2}, Lcom/amap/api/services/a/m;->a([B)Ljava/lang/String;

    move-result-object v2

    .line 266
    :cond_2
    nop

    .line 268
    :try_start_5
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 269
    const-string p3, "status"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1b

    .line 270
    const-string p3, "status"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p3

    .line 271
    if-ne p3, v1, :cond_3

    .line 272
    sput v1, Lcom/amap/api/services/a/e;->a:I

    goto :goto_6

    .line 274
    :cond_3
    if-nez p3, :cond_6

    .line 275
    const-string p3, "authcsid"

    .line 276
    const-string v1, "authgsid"

    .line 277
    if-eqz p1, :cond_4

    .line 278
    iget-object p3, p1, Lcom/amap/api/services/a/bj;->c:Ljava/lang/String;

    .line 279
    iget-object v2, p1, Lcom/amap/api/services/a/bj;->b:Ljava/util/Map;

    if-eqz v2, :cond_4

    .line 280
    iget-object p1, p1, Lcom/amap/api/services/a/bj;->b:Ljava/util/Map;

    const-string v2, "gsid"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 281
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 282
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 286
    :cond_4
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p3, v1, p1}, Lcom/amap/api/services/a/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    sput v3, Lcom/amap/api/services/a/e;->a:I

    .line 288
    const-string p0, "info"

    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 289
    const-string p0, "info"

    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/amap/api/services/a/e;->b:Ljava/lang/String;

    .line 291
    :cond_5
    sget p0, Lcom/amap/api/services/a/e;->a:I

    if-nez p0, :cond_6

    .line 292
    sget-object p0, Lcom/amap/api/services/a/e;->b:Ljava/lang/String;

    iput-object p0, v0, Lcom/amap/api/services/a/e$a;->a:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_d

    .line 293
    return-object v0

    .line 299
    :cond_6
    :goto_6
    :try_start_6
    const-string p0, "ver"

    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 300
    const-string p0, "ver"

    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/amap/api/services/a/e$a;->b:I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_b

    .line 307
    :cond_7
    goto :goto_7

    .line 304
    :catch_b
    move-exception p0

    .line 305
    :try_start_7
    const-string p1, "AuthConfigManager"

    const-string p3, "loadConfigVer"

    invoke-static {p0, p1, p3}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :goto_7
    const-string p0, "result"

    invoke-static {p2, p0}, Lcom/amap/api/services/a/m;->b(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 311
    new-instance p0, Lcom/amap/api/services/a/e$a$a;

    invoke-direct {p0}, Lcom/amap/api/services/a/e$a$a;-><init>()V

    .line 312
    iput-boolean v3, p0, Lcom/amap/api/services/a/e$a$a;->a:Z

    .line 313
    iput-boolean v3, p0, Lcom/amap/api/services/a/e$a$a;->b:Z

    .line 314
    iput-object p0, v0, Lcom/amap/api/services/a/e$a;->ez:Lcom/amap/api/services/a/e$a$a;

    .line 317
    const-string p1, "result"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 319
    const-string p2, "11K"

    invoke-static {p1, p2}, Lcom/amap/api/services/a/m;->b(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p2
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_d

    if-eqz p2, :cond_8

    .line 321
    :try_start_8
    const-string p2, "11K"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 322
    const-string p3, "able"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 323
    invoke-static {p2, v3}, Lcom/amap/api/services/a/e;->b(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/amap/api/services/a/e$a$a;->a:Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_c

    .line 327
    goto :goto_8

    .line 325
    :catch_c
    move-exception p0

    .line 326
    :try_start_9
    const-string p2, "AuthConfigManager"

    const-string p3, "loadException"

    invoke-static {p0, p2, p3}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_8
    :goto_8
    const-string p0, "11B"

    invoke-static {p1, p0}, Lcom/amap/api/services/a/m;->b(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 335
    const-string p0, "11B"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v0, Lcom/amap/api/services/a/e$a;->en:Lorg/json/JSONObject;

    .line 341
    :cond_9
    const-string p0, "11C"

    invoke-static {p1, p0}, Lcom/amap/api/services/a/m;->b(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 342
    const-string p0, "11C"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v0, Lcom/amap/api/services/a/e$a;->eq:Lorg/json/JSONObject;

    .line 346
    :cond_a
    const-string p0, "11I"

    invoke-static {p1, p0}, Lcom/amap/api/services/a/m;->b(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 347
    const-string p0, "11I"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v0, Lcom/amap/api/services/a/e$a;->er:Lorg/json/JSONObject;

    .line 353
    :cond_b
    const-string p0, "11H"

    invoke-static {p1, p0}, Lcom/amap/api/services/a/m;->b(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 354
    const-string p0, "11H"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v0, Lcom/amap/api/services/a/e$a;->es:Lorg/json/JSONObject;

    .line 358
    :cond_c
    const-string p0, "11E"

    invoke-static {p1, p0}, Lcom/amap/api/services/a/m;->b(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 359
    const-string p0, "11E"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v0, Lcom/amap/api/services/a/e$a;->et:Lorg/json/JSONObject;

    .line 363
    :cond_d
    const-string p0, "11F"

    invoke-static {p1, p0}, Lcom/amap/api/services/a/m;->b(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 364
    const-string p0, "11F"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v0, Lcom/amap/api/services/a/e$a;->eu:Lorg/json/JSONObject;

    .line 368
    :cond_e
    const-string p0, "13A"

    invoke-static {p1, p0}, Lcom/amap/api/services/a/m;->b(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 369
    const-string p0, "13A"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v0, Lcom/amap/api/services/a/e$a;->ew:Lorg/json/JSONObject;

    .line 373
    :cond_f
    const-string p0, "13J"

    invoke-static {p1, p0}, Lcom/amap/api/services/a/m;->b(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 374
    const-string p0, "13J"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v0, Lcom/amap/api/services/a/e$a;->eo:Lorg/json/JSONObject;

    .line 378
    :cond_10
    const-string p0, "11G"

    invoke-static {p1, p0}, Lcom/amap/api/services/a/m;->b(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 379
    const-string p0, "11G"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v0, Lcom/amap/api/services/a/e$a;->ev:Lorg/json/JSONObject;

    .line 383
    :cond_11
    const-string p0, "001"

    invoke-static {p1, p0}, Lcom/amap/api/services/a/m;->b(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 384
    const-string p0, "001"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 385
    new-instance p2, Lcom/amap/api/services/a/e$a$d;

    invoke-direct {p2}, Lcom/amap/api/services/a/e$a$d;-><init>()V

    .line 386
    invoke-static {p0, p2}, Lcom/amap/api/services/a/e;->a(Lorg/json/JSONObject;Lcom/amap/api/services/a/e$a$d;)V

    .line 387
    iput-object p2, v0, Lcom/amap/api/services/a/e$a;->eA:Lcom/amap/api/services/a/e$a$d;

    .line 390
    :cond_12
    const-string p0, "002"

    invoke-static {p1, p0}, Lcom/amap/api/services/a/m;->b(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 391
    const-string p0, "002"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 392
    new-instance p2, Lcom/amap/api/services/a/e$a$c;

    invoke-direct {p2}, Lcom/amap/api/services/a/e$a$c;-><init>()V

    .line 393
    invoke-static {p0, p2}, Lcom/amap/api/services/a/e;->a(Lorg/json/JSONObject;Lcom/amap/api/services/a/e$a$c;)V

    .line 394
    iput-object p2, v0, Lcom/amap/api/services/a/e$a;->eB:Lcom/amap/api/services/a/e$a$c;

    .line 400
    :cond_13
    const-string p0, "006"

    invoke-static {p1, p0}, Lcom/amap/api/services/a/m;->b(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14

    .line 402
    const-string p0, "006"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 403
    iput-object p0, v0, Lcom/amap/api/services/a/e$a;->ex:Lorg/json/JSONObject;

    .line 408
    :cond_14
    const-string p0, "010"

    invoke-static {p1, p0}, Lcom/amap/api/services/a/m;->b(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_15

    .line 409
    const-string p0, "010"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 410
    iput-object p0, v0, Lcom/amap/api/services/a/e$a;->ey:Lorg/json/JSONObject;

    .line 414
    :cond_15
    const-string p0, "11Z"

    invoke-static {p1, p0}, Lcom/amap/api/services/a/m;->b(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 415
    const-string p0, "11Z"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 416
    new-instance p2, Lcom/amap/api/services/a/e$a$b;

    invoke-direct {p2}, Lcom/amap/api/services/a/e$a$b;-><init>()V

    .line 417
    invoke-static {p0, p2}, Lcom/amap/api/services/a/e;->a(Lorg/json/JSONObject;Lcom/amap/api/services/a/e$a$b;)V

    .line 418
    iput-object p2, v0, Lcom/amap/api/services/a/e$a;->eC:Lcom/amap/api/services/a/e$a$b;

    .line 421
    :cond_16
    const-string p0, "135"

    invoke-static {p1, p0}, Lcom/amap/api/services/a/m;->b(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_17

    .line 422
    const-string p0, "135"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v0, Lcom/amap/api/services/a/e$a;->ep:Lorg/json/JSONObject;

    .line 425
    :cond_17
    const-string p0, "121"

    invoke-static {p1, p0}, Lcom/amap/api/services/a/m;->b(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 426
    const-string p0, "121"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 427
    new-instance p2, Lcom/amap/api/services/a/e$a$b;

    invoke-direct {p2}, Lcom/amap/api/services/a/e$a$b;-><init>()V

    .line 428
    invoke-static {p0, p2}, Lcom/amap/api/services/a/e;->a(Lorg/json/JSONObject;Lcom/amap/api/services/a/e$a$b;)V

    .line 429
    iput-object p2, v0, Lcom/amap/api/services/a/e$a;->eD:Lcom/amap/api/services/a/e$a$b;

    .line 431
    :cond_18
    const-string p0, "122"

    invoke-static {p1, p0}, Lcom/amap/api/services/a/m;->b(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_19

    .line 432
    const-string p0, "122"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 433
    new-instance p2, Lcom/amap/api/services/a/e$a$b;

    invoke-direct {p2}, Lcom/amap/api/services/a/e$a$b;-><init>()V

    .line 434
    invoke-static {p0, p2}, Lcom/amap/api/services/a/e;->a(Lorg/json/JSONObject;Lcom/amap/api/services/a/e$a$b;)V

    .line 435
    iput-object p2, v0, Lcom/amap/api/services/a/e$a;->eE:Lcom/amap/api/services/a/e$a$b;

    .line 438
    :cond_19
    const-string p0, "123"

    invoke-static {p1, p0}, Lcom/amap/api/services/a/m;->b(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 439
    const-string p0, "123"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 440
    new-instance p1, Lcom/amap/api/services/a/e$a$b;

    invoke-direct {p1}, Lcom/amap/api/services/a/e$a$b;-><init>()V

    .line 441
    invoke-static {p0, p1}, Lcom/amap/api/services/a/e;->a(Lorg/json/JSONObject;Lcom/amap/api/services/a/e$a$b;)V

    .line 442
    iput-object p1, v0, Lcom/amap/api/services/a/e$a;->eF:Lcom/amap/api/services/a/e$a$b;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_d

    .line 449
    :cond_1a
    return-object v0

    .line 456
    :cond_1b
    goto :goto_9

    .line 453
    :catch_d
    move-exception p0

    .line 454
    const-string p1, "AuthConfigManager"

    const-string p2, "loadConfig"

    invoke-static {p0, p1, p2}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :goto_9
    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 478
    if-nez p0, :cond_0

    .line 479
    const-string p0, ""

    return-object p0

    .line 481
    :cond_0
    const-string v0, ""

    .line 482
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 483
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 485
    :cond_1
    return-object v0
.end method

.method private static a(Lorg/json/JSONObject;Lcom/amap/api/services/a/e$a$b;)V
    .locals 4

    .line 489
    if-eqz p1, :cond_0

    .line 490
    :try_start_0
    const-string v0, "m"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 491
    const-string v1, "u"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 492
    const-string v2, "v"

    invoke-static {p0, v2}, Lcom/amap/api/services/a/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 493
    const-string v3, "able"

    invoke-static {p0, v3}, Lcom/amap/api/services/a/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 494
    iput-object v0, p1, Lcom/amap/api/services/a/e$a$b;->c:Ljava/lang/String;

    .line 495
    iput-object v1, p1, Lcom/amap/api/services/a/e$a$b;->b:Ljava/lang/String;

    .line 496
    iput-object v2, p1, Lcom/amap/api/services/a/e$a$b;->d:Ljava/lang/String;

    .line 497
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/amap/api/services/a/e;->b(Ljava/lang/String;Z)Z

    move-result p0

    iput-boolean p0, p1, Lcom/amap/api/services/a/e$a$b;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 500
    :catch_0
    move-exception p0

    .line 501
    const-string p1, "ConfigManager"

    const-string v0, "parsePluginEntity"

    invoke-static {p0, p1, v0}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 503
    :cond_0
    :goto_0
    nop

    .line 504
    :goto_1
    return-void
.end method

.method private static a(Lorg/json/JSONObject;Lcom/amap/api/services/a/e$a$c;)V
    .locals 2

    .line 508
    if-eqz p0, :cond_0

    .line 510
    :try_start_0
    const-string v0, "md5"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 512
    const-string v1, "url"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 513
    iput-object v0, p1, Lcom/amap/api/services/a/e$a$c;->b:Ljava/lang/String;

    .line 514
    iput-object p0, p1, Lcom/amap/api/services/a/e$a$c;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 516
    :catch_0
    move-exception p0

    .line 517
    const-string p1, "ConfigManager"

    const-string v0, "parseSDKCoordinate"

    invoke-static {p0, p1, v0}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 519
    :cond_0
    :goto_0
    nop

    .line 520
    :goto_1
    return-void
.end method

.method private static a(Lorg/json/JSONObject;Lcom/amap/api/services/a/e$a$d;)V
    .locals 3

    .line 525
    if-eqz p0, :cond_2

    .line 527
    :try_start_0
    const-string v0, "md5"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 528
    const-string v1, "url"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 529
    const-string v2, "sdkversion"

    invoke-static {p0, v2}, Lcom/amap/api/services/a/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 531
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 532
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 535
    :cond_0
    iput-object v1, p1, Lcom/amap/api/services/a/e$a$d;->a:Ljava/lang/String;

    .line 536
    iput-object v0, p1, Lcom/amap/api/services/a/e$a$d;->b:Ljava/lang/String;

    .line 537
    iput-object p0, p1, Lcom/amap/api/services/a/e$a$d;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 533
    :cond_1
    :goto_0
    nop

    .line 539
    :goto_1
    goto :goto_2

    .line 543
    :catch_0
    move-exception p0

    .line 544
    const-string p1, "ConfigManager"

    const-string v0, "parseSDKUpdate"

    invoke-static {p0, p1, v0}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 540
    :cond_2
    nop

    .line 546
    :goto_2
    nop

    .line 547
    :goto_3
    return-void
.end method

.method public static b(Ljava/lang/String;Z)Z
    .locals 2

    .line 199
    :try_start_0
    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 200
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 201
    array-length v0, p0

    .line 202
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-object p0, p0, v0

    .line 203
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    .line 204
    rem-int/lit8 p0, p0, 0x2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 205
    :catch_0
    move-exception p0

    .line 206
    return p1
.end method
