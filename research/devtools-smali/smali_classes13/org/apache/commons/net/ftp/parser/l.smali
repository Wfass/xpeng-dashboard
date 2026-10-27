.class public Lorg/apache/commons/net/ftp/parser/l;
.super Lorg/apache/commons/net/ftp/parser/b;
.source "OS400FTPEntryParser.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/l;-><init>(Lorg/apache/commons/net/ftp/d;)V

    .line 260
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/d;)V
    .locals 1

    .line 276
    const-string v0, "(\\S+)\\s+(?:(\\d+)\\s+)?(?:(\\S+)\\s+(\\S+)\\s+)?(\\*STMF|\\*DIR|\\*FILE|\\*MEM)\\s+(?:(\\S+)\\s*)?"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/b;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/l;->a(Lorg/apache/commons/net/ftp/d;)V

    .line 278
    return-void
.end method

.method private isNullOrEmpty(Ljava/lang/String;)Z
    .locals 0

    .line 415
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 418
    :cond_0
    const/4 p1, 0x0

    return p1

    .line 416
    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public fX(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 11

    .line 285
    new-instance v0, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    .line 286
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->fV(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/l;->matches(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_10

    .line 291
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/l;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 292
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lorg/apache/commons/net/ftp/parser/l;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 293
    const-string v4, ""

    .line 294
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lorg/apache/commons/net/ftp/parser/l;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/apache/commons/net/ftp/parser/l;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x4

    if-eqz v6, :cond_0

    invoke-virtual {p0, v7}, Lorg/apache/commons/net/ftp/parser/l;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/apache/commons/net/ftp/parser/l;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 296
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Lorg/apache/commons/net/ftp/parser/l;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Lorg/apache/commons/net/ftp/parser/l;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 298
    :cond_1
    const/4 v6, 0x5

    invoke-virtual {p0, v6}, Lorg/apache/commons/net/ftp/parser/l;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 299
    const/4 v7, 0x6

    invoke-virtual {p0, v7}, Lorg/apache/commons/net/ftp/parser/l;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 301
    nop

    .line 305
    :try_start_0
    invoke-super {p0, v4}, Lorg/apache/commons/net/ftp/parser/b;->fY(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/apache/commons/net/ftp/FTPFile;->a(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    goto :goto_0

    .line 307
    :catch_0
    move-exception v8

    .line 313
    :goto_0
    const-string v8, "*STMF"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    const/16 v9, 0x2f

    const/4 v10, 0x0

    if-eqz v8, :cond_4

    .line 315
    nop

    .line 316
    invoke-direct {p0, v3}, Lorg/apache/commons/net/ftp/parser/l;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0, v7}, Lorg/apache/commons/net/ftp/parser/l;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 374
    :cond_2
    move v1, p1

    move v5, v10

    goto :goto_6

    .line 318
    :cond_3
    :goto_1
    return-object v1

    .line 321
    :cond_4
    const-string v8, "*DIR"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 323
    nop

    .line 324
    invoke-direct {p0, v3}, Lorg/apache/commons/net/ftp/parser/l;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-direct {p0, v7}, Lorg/apache/commons/net/ftp/parser/l;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    .line 374
    :cond_5
    move v1, p1

    :goto_2
    move v5, v1

    goto :goto_6

    .line 326
    :cond_6
    :goto_3
    return-object v1

    .line 329
    :cond_7
    const-string v8, "*FILE"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 338
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".SAVF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 340
    nop

    .line 341
    nop

    .line 374
    :goto_4
    move v1, v10

    goto :goto_2

    .line 345
    :cond_8
    return-object v1

    .line 348
    :cond_9
    const-string v8, "*MEM"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 350
    nop

    .line 351
    nop

    .line 353
    invoke-direct {p0, v7}, Lorg/apache/commons/net/ftp/parser/l;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 355
    return-object v1

    .line 357
    :cond_a
    invoke-direct {p0, v3}, Lorg/apache/commons/net/ftp/parser/l;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-direct {p0, v4}, Lorg/apache/commons/net/ftp/parser/l;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_5

    .line 367
    :cond_b
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v7, v9, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 359
    :cond_c
    :goto_5
    return-object v1

    .line 371
    :cond_d
    nop

    .line 374
    move v1, p1

    :goto_6
    invoke-virtual {v0, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 376
    invoke-virtual {v0, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setUser(Ljava/lang/String;)V

    .line 380
    :try_start_1
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 385
    goto :goto_7

    .line 382
    :catch_1
    move-exception v2

    .line 387
    :goto_7
    const-string v2, "/"

    invoke-virtual {v7, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 389
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-virtual {v7, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 391
    :cond_e
    if-eqz v1, :cond_f

    .line 393
    invoke-virtual {v7, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 394
    const/4 v2, -0x1

    if-le v1, v2, :cond_f

    .line 396
    add-int/2addr v1, p1

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 400
    :cond_f
    invoke-virtual {v0, v7}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 402
    return-object v0

    .line 404
    :cond_10
    return-object v1
.end method

.method protected vb()Lorg/apache/commons/net/ftp/d;
    .locals 4

    .line 429
    new-instance v0, Lorg/apache/commons/net/ftp/d;

    const-string v1, "OS/400"

    const-string v2, "yy/MM/dd HH:mm:ss"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/net/ftp/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
