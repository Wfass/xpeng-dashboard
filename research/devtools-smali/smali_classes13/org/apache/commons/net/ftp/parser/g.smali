.class public Lorg/apache/commons/net/ftp/parser/g;
.super Lorg/apache/commons/net/ftp/parser/b;
.source "MVSFTPEntryParser.java"


# instance fields
.field private atc:I

.field private atd:Lorg/apache/commons/net/ftp/parser/n;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 246
    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/b;-><init>(Ljava/lang/String;)V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/net/ftp/parser/g;->atc:I

    .line 247
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lorg/apache/commons/net/ftp/parser/b;->a(Lorg/apache/commons/net/ftp/d;)V

    .line 248
    return-void
.end method

.method private a(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)Z
    .locals 3

    .line 314
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/ftp/parser/g;->matches(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 315
    invoke-virtual {p1, p2}, Lorg/apache/commons/net/ftp/FTPFile;->fV(Ljava/lang/String;)V

    .line 316
    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Lorg/apache/commons/net/ftp/parser/g;->group(I)Ljava/lang/String;

    move-result-object p2

    .line 317
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/parser/g;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 318
    invoke-virtual {p1, p2}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 321
    const-string p2, "PS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 322
    invoke-virtual {p1, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    goto :goto_1

    .line 324
    :cond_0
    const-string p2, "PO"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "PO-E"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 329
    :cond_1
    return v1

    .line 326
    :cond_2
    :goto_0
    invoke-virtual {p1, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 332
    :goto_1
    return v0

    .line 335
    :cond_3
    return v1
.end method

.method private b(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)Z
    .locals 4

    .line 365
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/ftp/parser/g;->matches(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {p1, p2}, Lorg/apache/commons/net/ftp/FTPFile;->fV(Ljava/lang/String;)V

    .line 367
    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lorg/apache/commons/net/ftp/parser/g;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lorg/apache/commons/net/ftp/parser/g;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lorg/apache/commons/net/ftp/parser/g;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 369
    invoke-virtual {p1, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p1, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 372
    :try_start_0
    invoke-super {p0, v2}, Lorg/apache/commons/net/ftp/parser/b;->fY(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/net/ftp/FTPFile;->a(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    nop

    .line 379
    return p2

    .line 373
    :catch_0
    move-exception p1

    .line 374
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    .line 377
    return v1

    .line 382
    :cond_0
    return v1
.end method

.method private c(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)Z
    .locals 2

    .line 395
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 396
    invoke-virtual {p1, p2}, Lorg/apache/commons/net/ftp/FTPFile;->fV(Ljava/lang/String;)V

    .line 397
    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v0

    .line 398
    invoke-virtual {p1, p2}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p1, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 400
    const/4 p1, 0x1

    return p1

    .line 402
    :cond_0
    return v0
.end method

.method private d(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)Z
    .locals 0

    .line 413
    iget-object p1, p0, Lorg/apache/commons/net/ftp/parser/g;->atd:Lorg/apache/commons/net/ftp/parser/n;

    invoke-virtual {p1, p2}, Lorg/apache/commons/net/ftp/parser/n;->fX(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object p1

    .line 414
    if-nez p1, :cond_0

    .line 415
    const/4 p1, 0x0

    return p1

    .line 417
    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private e(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)Z
    .locals 3

    .line 442
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/ftp/parser/g;->matches(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 443
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/parser/g;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "OUTPUT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {p1, p2}, Lorg/apache/commons/net/ftp/FTPFile;->fV(Ljava/lang/String;)V

    .line 445
    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Lorg/apache/commons/net/ftp/parser/g;->group(I)Ljava/lang/String;

    move-result-object p2

    .line 446
    invoke-virtual {p1, p2}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p1, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 448
    const/4 p1, 0x1

    return p1

    .line 452
    :cond_0
    return v1
.end method

.method private f(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)Z
    .locals 3

    .line 480
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/ftp/parser/g;->matches(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 481
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/parser/g;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "OUTPUT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {p1, p2}, Lorg/apache/commons/net/ftp/FTPFile;->fV(Ljava/lang/String;)V

    .line 483
    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Lorg/apache/commons/net/ftp/parser/g;->group(I)Ljava/lang/String;

    move-result-object p2

    .line 484
    invoke-virtual {p1, p2}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p1, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 486
    const/4 p1, 0x1

    return p1

    .line 490
    :cond_0
    return v1
.end method


# virtual methods
.method public G(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 507
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 508
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 509
    const-string v2, "Volume"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-ltz v2, :cond_0

    const-string v2, "Dsname"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 510
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/parser/g;->setType(I)V

    .line 511
    const-string v1, "\\S+\\s+\\S+\\s+\\S+\\s+\\S+\\s+\\S+\\s+[FV]\\S*\\s+\\S+\\s+\\S+\\s+(PS|PO|PO-E)\\s+(\\S+)\\s*"

    invoke-super {p0, v1}, Lorg/apache/commons/net/ftp/parser/b;->gb(Ljava/lang/String;)Z

    goto :goto_0

    .line 512
    :cond_0
    const-string v2, "Name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    const-string v2, "Id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 513
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/ftp/parser/g;->setType(I)V

    .line 514
    const-string v1, "(\\S+)\\s+\\S+\\s+\\S+\\s+(\\S+)\\s+(\\S+)\\s+\\S+\\s+\\S+\\s+\\S+\\s+\\S+\\s*"

    invoke-super {p0, v1}, Lorg/apache/commons/net/ftp/parser/b;->gb(Ljava/lang/String;)Z

    goto :goto_0

    .line 515
    :cond_1
    const-string v2, "total"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 516
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/ftp/parser/g;->setType(I)V

    .line 517
    new-instance v1, Lorg/apache/commons/net/ftp/parser/n;

    invoke-direct {v1}, Lorg/apache/commons/net/ftp/parser/n;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/net/ftp/parser/g;->atd:Lorg/apache/commons/net/ftp/parser/n;

    goto :goto_0

    .line 518
    :cond_2
    const-string v2, "Spool Files"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0x1e

    if-lt v2, v4, :cond_3

    .line 519
    invoke-virtual {p0, v3}, Lorg/apache/commons/net/ftp/parser/g;->setType(I)V

    .line 520
    const-string v1, "(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s*"

    invoke-super {p0, v1}, Lorg/apache/commons/net/ftp/parser/b;->gb(Ljava/lang/String;)Z

    goto :goto_0

    .line 521
    :cond_3
    const-string v2, "JOBNAME"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "JOBID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_4

    .line 523
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/ftp/parser/g;->setType(I)V

    .line 524
    const-string v1, "(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+).*"

    invoke-super {p0, v1}, Lorg/apache/commons/net/ftp/parser/b;->gb(Ljava/lang/String;)Z

    goto :goto_0

    .line 526
    :cond_4
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/ftp/parser/g;->setType(I)V

    .line 529
    :goto_0
    iget v1, p0, Lorg/apache/commons/net/ftp/parser/g;->atc:I

    if-eq v1, v3, :cond_5

    .line 530
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 534
    :cond_5
    return-object p1
.end method

.method public fX(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 3

    .line 263
    nop

    .line 264
    new-instance v0, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    .line 266
    iget v1, p0, Lorg/apache/commons/net/ftp/parser/g;->atc:I

    if-nez v1, :cond_0

    .line 267
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/parser/g;->a(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    .line 268
    :cond_0
    iget v1, p0, Lorg/apache/commons/net/ftp/parser/g;->atc:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 269
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/parser/g;->b(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)Z

    move-result v1

    .line 270
    if-nez v1, :cond_1

    .line 271
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/parser/g;->c(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    .line 281
    :cond_1
    move p1, v1

    goto :goto_0

    .line 273
    :cond_2
    iget v1, p0, Lorg/apache/commons/net/ftp/parser/g;->atc:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 274
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/parser/g;->d(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    .line 275
    :cond_3
    iget v1, p0, Lorg/apache/commons/net/ftp/parser/g;->atc:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 276
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/parser/g;->e(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    .line 277
    :cond_4
    iget v1, p0, Lorg/apache/commons/net/ftp/parser/g;->atc:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 278
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/parser/g;->f(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    .line 281
    :cond_5
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_6

    .line 282
    const/4 v0, 0x0

    .line 285
    :cond_6
    return-object v0
.end method

.method setType(I)V
    .locals 0

    .line 542
    iput p1, p0, Lorg/apache/commons/net/ftp/parser/g;->atc:I

    .line 543
    return-void
.end method

.method protected vb()Lorg/apache/commons/net/ftp/d;
    .locals 4

    .line 550
    new-instance v0, Lorg/apache/commons/net/ftp/d;

    const-string v1, "MVS"

    const-string v2, "yyyy/MM/dd HH:mm"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/net/ftp/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
