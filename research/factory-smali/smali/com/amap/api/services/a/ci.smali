.class public Lcom/amap/api/services/a/ci;
.super Ljava/lang/Object;
.source "DexFileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/a/ci$a;
    }
.end annotation


# direct methods
.method static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "pngex"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 161
    return-object p0
.end method

.method static a(Landroid/content/Context;Lcom/amap/api/services/a/bp;Lcom/amap/api/services/a/bd;)Ljava/lang/String;
    .locals 11

    .line 426
    nop

    .line 428
    nop

    .line 429
    invoke-virtual {p2}, Lcom/amap/api/services/a/bd;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "copy"

    invoke-static {v0, v1}, Lcom/amap/api/services/a/cm;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/amap/api/services/a/cm;

    .line 428
    invoke-virtual {p1, v0, v1}, Lcom/amap/api/services/a/bp;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 431
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    .line 434
    :cond_0
    invoke-static {v0}, Lcom/amap/api/services/a/ci;->a(Ljava/util/List;)V

    .line 435
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 436
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/services/a/cm;

    .line 438
    nop

    .line 439
    invoke-virtual {v3}, Lcom/amap/api/services/a/cm;->a()Ljava/lang/String;

    move-result-object v4

    .line 438
    invoke-static {p0, p1, v4, p2}, Lcom/amap/api/services/a/ci;->a(Landroid/content/Context;Lcom/amap/api/services/a/bp;Ljava/lang/String;Lcom/amap/api/services/a/bd;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 442
    :try_start_0
    new-instance v4, Lcom/amap/api/services/a/cm$a;

    .line 443
    invoke-virtual {p2}, Lcom/amap/api/services/a/bd;->a()Ljava/lang/String;

    move-result-object v5

    .line 444
    invoke-virtual {p2}, Lcom/amap/api/services/a/bd;->b()Ljava/lang/String;

    move-result-object v6

    .line 443
    invoke-static {p0, v5, v6}, Lcom/amap/api/services/a/ci;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 445
    invoke-virtual {v3}, Lcom/amap/api/services/a/cm;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/amap/api/services/a/bd;->a()Ljava/lang/String;

    move-result-object v8

    .line 446
    invoke-virtual {p2}, Lcom/amap/api/services/a/bd;->b()Ljava/lang/String;

    move-result-object v9

    .line 447
    invoke-virtual {v3}, Lcom/amap/api/services/a/cm;->d()Ljava/lang/String;

    move-result-object v10

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lcom/amap/api/services/a/cm$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "used"

    invoke-virtual {v4, v5}, Lcom/amap/api/services/a/cm$a;->a(Ljava/lang/String;)Lcom/amap/api/services/a/cm$a;

    move-result-object v4

    .line 448
    invoke-virtual {v4}, Lcom/amap/api/services/a/cm$a;->a()Lcom/amap/api/services/a/cm;

    move-result-object v4

    .line 450
    nop

    .line 456
    invoke-virtual {v3}, Lcom/amap/api/services/a/cm;->a()Ljava/lang/String;

    move-result-object v5

    .line 455
    invoke-static {p0, v5}, Lcom/amap/api/services/a/ci;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 450
    invoke-static {p0, p1, p2, v4, v5}, Lcom/amap/api/services/a/ci;->a(Landroid/content/Context;Lcom/amap/api/services/a/bp;Lcom/amap/api/services/a/bd;Lcom/amap/api/services/a/cm;Ljava/lang/String;)V

    .line 457
    invoke-virtual {v3}, Lcom/amap/api/services/a/cm;->d()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    nop

    .line 476
    move-object v1, v3

    goto :goto_2

    .line 459
    :catch_0
    move-exception v3

    .line 465
    const-string v4, "DexFileManager"

    const-string v5, "loadAvailableDynamicSDKFile"

    invoke-static {v3, v4, v5}, Lcom/amap/api/services/a/bg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    goto :goto_1

    .line 471
    :cond_1
    nop

    .line 472
    invoke-virtual {v3}, Lcom/amap/api/services/a/cm;->a()Ljava/lang/String;

    move-result-object v3

    .line 471
    invoke-static {p0, p1, v3}, Lcom/amap/api/services/a/ci;->b(Landroid/content/Context;Lcom/amap/api/services/a/bp;Ljava/lang/String;)V

    .line 435
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 476
    :cond_2
    :goto_2
    return-object v1

    .line 432
    :cond_3
    :goto_3
    return-object v1
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 108
    invoke-static {p0}, Lcom/amap/api/services/a/az;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/services/a/bb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".png"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".o"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/content/Context;Lcom/amap/api/services/a/bp;Lcom/amap/api/services/a/bd;Lcom/amap/api/services/a/cm;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 330
    nop

    .line 331
    nop

    .line 333
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2}, Lcom/amap/api/services/a/bd;->a()Ljava/lang/String;

    move-result-object v1

    .line 335
    nop

    .line 336
    invoke-virtual {p3}, Lcom/amap/api/services/a/cm;->a()Ljava/lang/String;

    move-result-object v2

    .line 335
    invoke-static {p0, p1, v2}, Lcom/amap/api/services/a/ci;->a(Landroid/content/Context;Lcom/amap/api/services/a/bp;Ljava/lang/String;)V

    .line 338
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 339
    new-instance p4, Ljava/io/FileInputStream;

    invoke-direct {p4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 340
    const/16 v2, 0x20

    :try_start_1
    new-array v2, v2, [B

    .line 341
    invoke-virtual {p4, v2}, Ljava/io/InputStream;->read([B)I

    .line 342
    new-instance v2, Ljava/io/File;

    .line 343
    invoke-virtual {p2}, Lcom/amap/api/services/a/bd;->b()Ljava/lang/String;

    move-result-object p2

    .line 342
    invoke-static {p0, v1, p2}, Lcom/amap/api/services/a/ci;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 344
    new-instance p0, Ljava/io/FileOutputStream;

    const/4 p2, 0x1

    invoke-direct {p0, v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 345
    const/16 p2, 0x400

    :try_start_2
    new-array p2, p2, [B

    .line 346
    nop

    .line 347
    :goto_0
    invoke-virtual {p4, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_0

    .line 348
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 350
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amap/api/services/a/bb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 351
    invoke-virtual {p3, p2}, Lcom/amap/api/services/a/cm;->d(Ljava/lang/String;)V

    .line 352
    nop

    .line 354
    invoke-virtual {p3}, Lcom/amap/api/services/a/cm;->a()Ljava/lang/String;

    move-result-object p2

    .line 353
    invoke-static {p2}, Lcom/amap/api/services/a/cm;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 352
    invoke-static {p1, p3, p2}, Lcom/amap/api/services/a/ci$a;->a(Lcom/amap/api/services/a/bp;Lcom/amap/api/services/a/cm;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 361
    nop

    .line 363
    :try_start_3
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 369
    goto :goto_1

    .line 364
    :catch_0
    move-exception p1

    .line 368
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 371
    :goto_1
    nop

    .line 373
    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 380
    :goto_2
    goto :goto_3

    .line 374
    :catch_1
    move-exception p0

    .line 378
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 385
    :goto_3
    return-void

    .line 361
    :catchall_0
    move-exception p1

    goto :goto_6

    .line 355
    :catch_2
    move-exception p1

    goto :goto_4

    .line 361
    :catchall_1
    move-exception p1

    goto :goto_7

    .line 355
    :catch_3
    move-exception p1

    move-object p0, v0

    :goto_4
    move-object v0, p4

    goto :goto_5

    .line 361
    :catchall_2
    move-exception p1

    move-object p4, v0

    goto :goto_7

    .line 355
    :catch_4
    move-exception p1

    move-object p0, v0

    .line 359
    :goto_5
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 361
    :catchall_3
    move-exception p1

    move-object p4, v0

    :goto_6
    move-object v0, p0

    :goto_7
    if-eqz p4, :cond_1

    .line 363
    :try_start_6
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 369
    goto :goto_8

    .line 364
    :catch_5
    move-exception p0

    .line 368
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 371
    :cond_1
    :goto_8
    if-eqz v0, :cond_2

    .line 373
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 380
    goto :goto_9

    .line 374
    :catch_6
    move-exception p0

    .line 378
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 380
    :cond_2
    :goto_9
    throw p1
.end method

.method static a(Landroid/content/Context;Lcom/amap/api/services/a/bp;Ljava/lang/String;)V
    .locals 0

    .line 195
    invoke-static {p0, p1, p2}, Lcom/amap/api/services/a/ci;->b(Landroid/content/Context;Lcom/amap/api/services/a/bp;Ljava/lang/String;)V

    .line 197
    invoke-static {p2}, Lcom/amap/api/services/a/ci;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/amap/api/services/a/ci;->b(Landroid/content/Context;Lcom/amap/api/services/a/bp;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 124
    new-instance v0, Lcom/amap/api/services/a/bp;

    invoke-static {}, Lcom/amap/api/services/a/cl;->c()Lcom/amap/api/services/a/cl;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amap/api/services/a/bp;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/bo;)V

    .line 125
    const-string v1, "copy"

    invoke-static {v0, p1, v1}, Lcom/amap/api/services/a/ci$a;->a(Lcom/amap/api/services/a/bp;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 126
    invoke-static {p1}, Lcom/amap/api/services/a/ci;->a(Ljava/util/List;)V

    .line 128
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 129
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 131
    :goto_0
    if-ge v2, v1, :cond_0

    .line 132
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/services/a/cm;

    .line 133
    invoke-virtual {v3}, Lcom/amap/api/services/a/cm;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v3}, Lcom/amap/api/services/a/ci;->b(Landroid/content/Context;Lcom/amap/api/services/a/bp;Ljava/lang/String;)V

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    :cond_0
    return-void
.end method

.method public static a(Lcom/amap/api/services/a/bp;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 277
    const-string v0, "used"

    invoke-static {p0, p2, v0}, Lcom/amap/api/services/a/ci$a;->a(Lcom/amap/api/services/a/bp;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 280
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 281
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/a/cm;

    .line 282
    if-eqz v1, :cond_0

    .line 284
    invoke-virtual {v1}, Lcom/amap/api/services/a/cm;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p0, v2}, Lcom/amap/api/services/a/ci;->a(Landroid/content/Context;Lcom/amap/api/services/a/bp;Ljava/lang/String;)V

    .line 286
    nop

    .line 288
    invoke-virtual {v1}, Lcom/amap/api/services/a/cm;->d()Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-static {p2, v1}, Lcom/amap/api/services/a/cm;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/amap/api/services/a/cm;

    invoke-virtual {p0, v1, v2}, Lcom/amap/api/services/a/bp;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 290
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 291
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/a/cm;

    .line 292
    const-string v2, "errorstatus"

    invoke-virtual {v1, v2}, Lcom/amap/api/services/a/cm;->c(Ljava/lang/String;)V

    .line 293
    nop

    .line 296
    invoke-virtual {v1}, Lcom/amap/api/services/a/cm;->a()Ljava/lang/String;

    move-result-object v2

    .line 295
    invoke-static {v2}, Lcom/amap/api/services/a/cm;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 293
    invoke-static {p0, v1, v2}, Lcom/amap/api/services/a/ci$a;->a(Lcom/amap/api/services/a/bp;Lcom/amap/api/services/a/cm;Ljava/lang/String;)V

    .line 297
    nop

    .line 298
    invoke-virtual {v1}, Lcom/amap/api/services/a/cm;->a()Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-static {p1, v1}, Lcom/amap/api/services/a/ci;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 299
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 306
    :cond_0
    goto :goto_0

    .line 311
    :cond_1
    return-void
.end method

.method static a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/services/a/cm;",
            ">;)V"
        }
    .end annotation

    .line 486
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 487
    add-int/lit8 v1, v0, 0x1

    move v2, v1

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 488
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/services/a/cm;

    .line 489
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/services/a/cm;

    .line 491
    invoke-virtual {v3}, Lcom/amap/api/services/a/cm;->d()Ljava/lang/String;

    move-result-object v5

    .line 492
    invoke-virtual {v4}, Lcom/amap/api/services/a/cm;->d()Ljava/lang/String;

    move-result-object v6

    .line 494
    invoke-static {v6, v5}, Lcom/amap/api/services/a/cn;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_0

    .line 495
    invoke-interface {p0, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 496
    invoke-interface {p0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 487
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 486
    :cond_1
    move v0, v1

    goto :goto_0

    .line 502
    :cond_2
    return-void
.end method

.method static a(Landroid/content/Context;Lcom/amap/api/services/a/bp;Ljava/lang/String;Lcom/amap/api/services/a/bd;)Z
    .locals 0

    .line 389
    nop

    .line 390
    invoke-static {p0, p2}, Lcom/amap/api/services/a/ci;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 389
    invoke-static {p1, p2, p0, p3}, Lcom/amap/api/services/a/ci;->a(Lcom/amap/api/services/a/bp;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/services/a/bd;)Z

    move-result p0

    return p0
.end method

.method static a(Lcom/amap/api/services/a/bp;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/services/a/bd;)Z
    .locals 1

    .line 395
    invoke-static {p0, p1}, Lcom/amap/api/services/a/ci$a;->a(Lcom/amap/api/services/a/bp;Ljava/lang/String;)Lcom/amap/api/services/a/cm;

    move-result-object p0

    .line 396
    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 398
    invoke-virtual {p3}, Lcom/amap/api/services/a/bd;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lcom/amap/api/services/a/cm;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 399
    return p1

    .line 401
    :cond_0
    nop

    .line 402
    invoke-virtual {p0}, Lcom/amap/api/services/a/cm;->b()Ljava/lang/String;

    move-result-object p0

    .line 401
    invoke-static {p2, p0}, Lcom/amap/api/services/a/ci;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 403
    const/4 p0, 0x1

    return p0

    .line 415
    :cond_1
    return p1
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 173
    invoke-static {p0}, Lcom/amap/api/services/a/bb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 178
    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    const/4 p0, 0x1

    return p0

    .line 179
    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/amap/api/services/a/ci;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 114
    invoke-static {p0, p1, p2}, Lcom/amap/api/services/a/ci;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amap/api/services/a/ci;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static b(Landroid/content/Context;Lcom/amap/api/services/a/bp;Ljava/lang/String;)V
    .locals 1

    .line 210
    invoke-static {p0, p2}, Lcom/amap/api/services/a/ci;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 211
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 214
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 216
    :cond_0
    invoke-static {p2}, Lcom/amap/api/services/a/cm;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-class p2, Lcom/amap/api/services/a/cm;

    invoke-virtual {p1, p0, p2}, Lcom/amap/api/services/a/bp;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 218
    return-void
.end method

.method static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 230
    new-instance v0, Lcom/amap/api/services/a/ci$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/amap/api/services/a/ci$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-virtual {v0}, Lcom/amap/api/services/a/ci$1;->start()V

    .line 261
    return-void
.end method
