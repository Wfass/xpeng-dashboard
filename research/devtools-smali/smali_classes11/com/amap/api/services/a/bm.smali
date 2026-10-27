.class public Lcom/amap/api/services/a/bm;
.super Ljava/lang/Object;
.source "StatisticsManager.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/services/a/bm;->a:Z

    return-void
.end method

.method private static M(Landroid/content/Context;)[B
    .locals 5

    .line 119
    invoke-static {p0}, Lcom/amap/api/services/a/bm;->N(Landroid/content/Context;)[B

    move-result-object v0

    .line 121
    invoke-static {p0}, Lcom/amap/api/services/a/bm;->O(Landroid/content/Context;)[B

    move-result-object v1

    .line 123
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 126
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    array-length v0, v0

    array-length v3, v1

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    invoke-static {p0, v2}, Lcom/amap/api/services/a/bm;->a(Landroid/content/Context;[B)[B

    move-result-object p0

    .line 132
    return-object p0
.end method

.method private static N(Landroid/content/Context;)[B
    .locals 4

    .line 188
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 190
    const/4 v1, 0x0

    new-array v2, v1, [B

    .line 193
    :try_start_0
    const-string v3, "1.2.13.6"

    invoke-static {v0, v3}, Lcom/amap/api/services/a/m;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 195
    const-string v3, "Android"

    invoke-static {v0, v3}, Lcom/amap/api/services/a/m;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 196
    invoke-static {p0}, Lcom/amap/api/services/a/g;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amap/api/services/a/m;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 199
    invoke-static {p0}, Lcom/amap/api/services/a/g;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amap/api/services/a/m;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 200
    invoke-static {p0}, Lcom/amap/api/services/a/g;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amap/api/services/a/m;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 203
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/amap/api/services/a/m;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 204
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/amap/api/services/a/m;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 205
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/amap/api/services/a/m;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 207
    invoke-static {p0}, Lcom/amap/api/services/a/g;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amap/api/services/a/m;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 209
    invoke-static {p0}, Lcom/amap/api/services/a/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amap/api/services/a/m;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 210
    invoke-static {p0}, Lcom/amap/api/services/a/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amap/api/services/a/m;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 211
    invoke-static {p0}, Lcom/amap/api/services/a/d;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/amap/api/services/a/m;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 213
    const/4 p0, 0x1

    new-array p0, p0, [B

    aput-byte v1, p0, v1

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 215
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    nop

    .line 220
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 223
    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 223
    :goto_0
    nop

    .line 224
    goto :goto_2

    .line 219
    :catchall_0
    move-exception p0

    goto :goto_3

    .line 216
    :catch_1
    move-exception p0

    .line 217
    :try_start_2
    const-string v1, "StatisticsManager"

    const-string v3, "getHeader"

    invoke-static {p0, v1, v3}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    nop

    .line 220
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 223
    goto :goto_1

    .line 221
    :catch_2
    move-exception p0

    .line 222
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 223
    :goto_1
    nop

    .line 224
    nop

    .line 225
    move-object p0, v2

    :goto_2
    return-object p0

    .line 219
    :goto_3
    nop

    .line 220
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 223
    goto :goto_4

    .line 221
    :catch_3
    move-exception v0

    .line 222
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 223
    :goto_4
    nop

    .line 219
    throw p0
.end method

.method private static O(Landroid/content/Context;)[B
    .locals 8

    .line 248
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 249
    const/4 v1, 0x0

    new-array v2, v1, [B

    .line 250
    sget-object v3, Lcom/amap/api/services/a/p;->e:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/amap/api/services/a/p;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 251
    nop

    .line 253
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/32 v5, 0x19000

    const/4 v7, 0x1

    invoke-static {v4, v7, v7, v5, v6}, Lcom/amap/api/services/a/ax;->a(Ljava/io/File;IIJ)Lcom/amap/api/services/a/ax;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 254
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 256
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p0

    .line 257
    array-length v3, p0

    move v5, v1

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, p0, v5

    .line 258
    const-string v7, ".0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 259
    goto :goto_1

    .line 261
    :cond_0
    const-string v7, "\\."

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 262
    aget-object v6, v6, v1

    .line 263
    invoke-static {v4, v6}, Lcom/amap/api/services/a/bn;->a(Lcom/amap/api/services/a/ax;Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 257
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 267
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    nop

    .line 288
    nop

    .line 275
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 278
    goto :goto_2

    .line 276
    :catch_0
    move-exception v0

    .line 277
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 280
    :goto_2
    if-eqz v4, :cond_2

    .line 282
    :try_start_3
    invoke-virtual {v4}, Lcom/amap/api/services/a/ax;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 285
    goto :goto_3

    .line 283
    :catch_1
    move-exception v0

    .line 284
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 285
    :cond_2
    :goto_3
    nop

    .line 287
    goto :goto_9

    .line 273
    :catchall_0
    move-exception p0

    goto :goto_a

    .line 270
    :catch_2
    move-exception p0

    move-object v3, v4

    goto :goto_4

    .line 268
    :catch_3
    move-exception p0

    move-object v3, v4

    goto :goto_6

    .line 273
    :catchall_1
    move-exception p0

    move-object v4, v3

    goto :goto_a

    .line 270
    :catch_4
    move-exception p0

    .line 271
    :goto_4
    :try_start_4
    const-string v1, "StatisticsManager"

    const-string v4, "getContent"

    invoke-static {p0, v1, v4}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 272
    nop

    .line 285
    nop

    .line 275
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 278
    goto :goto_5

    .line 276
    :catch_5
    move-exception p0

    .line 277
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 280
    :goto_5
    if-eqz v3, :cond_3

    .line 282
    :try_start_6
    invoke-virtual {v3}, Lcom/amap/api/services/a/ax;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    .line 285
    goto :goto_8

    .line 283
    :catch_6
    move-exception p0

    .line 284
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 268
    :catch_7
    move-exception p0

    .line 269
    :goto_6
    :try_start_7
    const-string v1, "StatisticsManager"

    const-string v4, "getContent"

    invoke-static {p0, v1, v4}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 270
    nop

    .line 285
    nop

    .line 275
    :try_start_8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    .line 278
    goto :goto_7

    .line 276
    :catch_8
    move-exception p0

    .line 277
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 280
    :goto_7
    if-eqz v3, :cond_3

    .line 282
    :try_start_9
    invoke-virtual {v3}, Lcom/amap/api/services/a/ax;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    .line 285
    goto :goto_8

    .line 283
    :catch_9
    move-exception p0

    .line 284
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 285
    :cond_3
    :goto_8
    nop

    .line 287
    nop

    .line 288
    move-object p0, v2

    :goto_9
    return-object p0

    .line 273
    :goto_a
    nop

    .line 285
    nop

    .line 275
    :try_start_a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    .line 278
    goto :goto_b

    .line 276
    :catch_a
    move-exception v0

    .line 277
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 280
    :goto_b
    if-eqz v4, :cond_4

    .line 282
    :try_start_b
    invoke-virtual {v4}, Lcom/amap/api/services/a/ax;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_b

    .line 285
    goto :goto_c

    .line 283
    :catch_b
    move-exception v0

    .line 284
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 285
    :cond_4
    :goto_c
    nop

    .line 273
    throw p0
.end method

.method private static P(Landroid/content/Context;)J
    .locals 7

    .line 334
    const-string v0, "c.log"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/p;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 335
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const-wide/16 v1, 0x0

    if-nez p0, :cond_0

    .line 337
    return-wide v1

    .line 339
    :cond_0
    const/4 p0, 0x0

    .line 341
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result p0

    .line 343
    new-array p0, p0, [B

    .line 344
    invoke-virtual {v3, p0}, Ljava/io/FileInputStream;->read([B)I

    .line 345
    invoke-static {p0}, Lcom/amap/api/services/a/m;->a([B)Ljava/lang/String;

    move-result-object p0

    .line 346
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 347
    nop

    .line 375
    nop

    .line 367
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 372
    goto :goto_0

    .line 368
    :catch_0
    move-exception p0

    .line 370
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 372
    :goto_0
    nop

    .line 347
    return-wide v4

    .line 354
    :catch_1
    move-exception p0

    goto :goto_1

    .line 352
    :catch_2
    move-exception p0

    goto :goto_4

    .line 349
    :catch_3
    move-exception p0

    goto :goto_5

    .line 365
    :catchall_0
    move-exception v0

    move-object v3, p0

    move-object p0, v0

    goto :goto_7

    .line 354
    :catch_4
    move-exception v3

    move-object v6, v3

    move-object v3, p0

    move-object p0, v6

    .line 356
    :goto_1
    :try_start_3
    const-string v4, "StatisticsManager"

    const-string v5, "getUpdateTime"

    invoke-static {p0, v4, v5}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 358
    :try_start_4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 359
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 361
    :catch_5
    move-exception p0

    .line 362
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 363
    :cond_1
    :goto_2
    nop

    .line 364
    :goto_3
    nop

    .line 372
    if-eqz v3, :cond_2

    .line 367
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    .line 372
    goto :goto_6

    .line 368
    :catch_6
    move-exception p0

    .line 370
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 352
    :catch_7
    move-exception v0

    move-object v3, p0

    move-object p0, v0

    .line 353
    :goto_4
    :try_start_7
    const-string v0, "StatisticsManager"

    const-string v4, "getUpdateTime"

    invoke-static {p0, v0, v4}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 354
    nop

    .line 372
    if-eqz v3, :cond_2

    .line 367
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    .line 372
    goto :goto_6

    .line 368
    :catch_8
    move-exception p0

    .line 370
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 349
    :catch_9
    move-exception v0

    move-object v3, p0

    move-object p0, v0

    .line 350
    :goto_5
    :try_start_9
    const-string v0, "StatisticsManager"

    const-string v4, "getUpdateTime"

    invoke-static {p0, v0, v4}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 352
    nop

    .line 372
    if-eqz v3, :cond_2

    .line 367
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_a

    .line 372
    goto :goto_6

    .line 368
    :catch_a
    move-exception p0

    .line 370
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 372
    :cond_2
    :goto_6
    nop

    .line 374
    nop

    .line 375
    return-wide v1

    .line 365
    :catchall_1
    move-exception p0

    .line 372
    :goto_7
    if-eqz v3, :cond_3

    .line 367
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_b

    .line 372
    goto :goto_8

    .line 368
    :catch_b
    move-exception v0

    .line 370
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 372
    :cond_3
    :goto_8
    nop

    .line 365
    throw p0
.end method

.method private static Q(Landroid/content/Context;)Z
    .locals 9

    .line 381
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/a/g;->s(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    sget-boolean v1, Lcom/amap/api/services/a/bm;->a:Z

    if-eqz v1, :cond_2

    .line 384
    invoke-static {p0}, Lcom/amap/api/services/a/bm;->o(Landroid/content/Context;)I

    move-result v1

    const/16 v3, 0x64

    if-ge v1, v3, :cond_0

    .line 385
    return v0

    .line 387
    :cond_0
    invoke-static {p0}, Lcom/amap/api/services/a/bm;->P(Landroid/content/Context;)J

    move-result-wide v3

    .line 388
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 390
    sub-long v3, v5, v3

    const-wide/32 v7, 0x36ee80

    cmp-long v1, v3, v7

    if-gez v1, :cond_1

    .line 391
    return v0

    .line 393
    :cond_1
    invoke-static {p0, v5, v6}, Lcom/amap/api/services/a/bm;->a(Landroid/content/Context;J)V

    .line 395
    sput-boolean v0, Lcom/amap/api/services/a/bm;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    return v2

    .line 402
    :cond_2
    goto :goto_0

    .line 400
    :catch_0
    move-exception p0

    .line 401
    const-string v1, "StatisticsManager"

    const-string v2, "isUpdate"

    invoke-static {p0, v1, v2}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :goto_0
    return v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    .line 142
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/a/bm;->Q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    return-void

    .line 145
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 146
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/16 v2, 0x35

    if-eq v1, v2, :cond_1

    .line 152
    return-void

    .line 154
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/m;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 156
    invoke-static {p0}, Lcom/amap/api/services/a/bm;->M(Landroid/content/Context;)[B

    move-result-object p0

    .line 158
    array-length v1, v0

    array-length v2, p0

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 160
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    array-length v0, v0

    array-length v2, p0

    invoke-static {p0, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    invoke-static {v1}, Lcom/amap/api/services/a/m;->p([B)[B

    move-result-object p0

    .line 165
    new-instance v0, Lcom/amap/api/services/a/q;

    const-string v1, "2"

    invoke-direct {v0, p0, v1}, Lcom/amap/api/services/a/q;-><init>([BLjava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/amap/api/services/a/bb;->bw()Lcom/amap/api/services/a/bb;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/amap/api/services/a/bb;->b(Lcom/amap/api/services/a/bh;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    goto :goto_0

    .line 171
    :catch_0
    move-exception p0

    .line 172
    const-string v0, "StatisticsManager"

    const-string v1, "updateStaticsData"

    invoke-static {p0, v0, v1}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :goto_0
    return-void
.end method

.method private static a(Landroid/content/Context;J)V
    .locals 2

    .line 299
    const-string v0, "c.log"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/p;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 300
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 302
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 304
    :cond_0
    const/4 p0, 0x0

    .line 306
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    :try_start_1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/services/a/m;->a(Ljava/lang/String;)[B

    move-result-object p0

    .line 308
    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 309
    nop

    .line 331
    nop

    .line 322
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 326
    goto :goto_2

    .line 323
    :catch_0
    move-exception p0

    .line 324
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 314
    :catch_1
    move-exception p0

    goto :goto_0

    .line 309
    :catch_2
    move-exception p0

    goto :goto_1

    .line 320
    :catchall_0
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    goto :goto_3

    .line 314
    :catch_3
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    .line 317
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 319
    nop

    .line 326
    if-eqz v1, :cond_1

    .line 322
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 326
    goto :goto_2

    .line 323
    :catch_4
    move-exception p0

    .line 324
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 309
    :catch_5
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    .line 312
    :goto_1
    :try_start_5
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 314
    nop

    .line 326
    if-eqz v1, :cond_1

    .line 322
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    .line 326
    goto :goto_2

    .line 323
    :catch_6
    move-exception p0

    .line 324
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 326
    :cond_1
    :goto_2
    nop

    .line 328
    nop

    .line 331
    return-void

    .line 320
    :catchall_1
    move-exception p0

    .line 326
    :goto_3
    if-eqz v1, :cond_2

    .line 322
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    .line 326
    goto :goto_4

    .line 323
    :catch_7
    move-exception p1

    .line 324
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 326
    :cond_2
    :goto_4
    nop

    .line 320
    throw p0
.end method

.method private static a(Landroid/content/Context;[B)[B
    .locals 0

    .line 178
    :try_start_0
    invoke-static {p0, p1}, Lcom/amap/api/services/a/f;->a(Landroid/content/Context;[B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 179
    :catch_0
    move-exception p0

    .line 180
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 182
    const/4 p0, 0x0

    return-object p0
.end method

.method private static o(Landroid/content/Context;)I
    .locals 3

    .line 231
    nop

    .line 233
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/amap/api/services/a/p;->e:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/amap/api/services/a/p;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 235
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 237
    return v0

    .line 239
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    goto :goto_0

    .line 240
    :catch_0
    move-exception p0

    .line 241
    const-string v1, "StatisticsManager"

    const-string v2, "getFileNum"

    invoke-static {p0, v1, v2}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    move p0, v0

    :goto_0
    return p0
.end method
