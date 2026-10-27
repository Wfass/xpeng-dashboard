.class Lcom/alibaba/fastjson2/x;
.super Lcom/alibaba/fastjson2/u;
.source "JSONReaderUTF16.java"


# static fields
.field static final y:J


# instance fields
.field protected final A:[C

.field protected final B:I

.field protected final C:I

.field protected final D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:Ljava/io/Closeable;

.field private J:I

.field protected final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    sget-boolean v0, Labf;->w:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xff00ff00ff00ffL

    goto :goto_0

    :cond_0
    const-wide v0, -0xff00ff00ff0100L    # -5.82767264895205E303

    :goto_0
    sput-wide v0, Lcom/alibaba/fastjson2/x;->y:J

    return-void
.end method

.method constructor <init>(Lcom/alibaba/fastjson2/u$c;Ljava/io/InputStream;)V
    .locals 9

    const/4 v0, 0x0

    .line 444
    invoke-direct {p0, p1, v0, v0}, Lcom/alibaba/fastjson2/u;-><init>(Lcom/alibaba/fastjson2/u$c;ZZ)V

    const/4 v1, -0x1

    .line 37
    iput v1, p0, Lcom/alibaba/fastjson2/x;->J:I

    .line 445
    iput-object p2, p0, Lcom/alibaba/fastjson2/x;->I:Ljava/io/Closeable;

    .line 446
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    sget-object v3, Lcom/alibaba/fastjson2/d;->y:[Lcom/alibaba/fastjson2/d$a;

    array-length v3, v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    and-int/2addr v2, v3

    .line 447
    sget-object v3, Lcom/alibaba/fastjson2/d;->y:[Lcom/alibaba/fastjson2/d$a;

    aget-object v2, v3, v2

    .line 448
    sget-object v3, Lcom/alibaba/fastjson2/d;->A:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 449
    iget p1, p1, Lcom/alibaba/fastjson2/u$c;->m:I

    if-nez v3, :cond_0

    .line 451
    new-array v3, p1, [B

    :cond_0
    move v6, v0

    .line 458
    :cond_1
    :goto_0
    :try_start_0
    array-length v7, v3

    sub-int/2addr v7, v6

    invoke-virtual {p2, v3, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-ne v7, v1, :cond_a

    .line 469
    rem-int/lit8 p1, v6, 0x2

    if-eq p1, v4, :cond_9

    .line 473
    div-int/lit8 p1, v6, 0x2

    new-array p1, p1, [C

    move p2, v0

    move v1, p2

    :goto_1
    if-ge p2, v6, :cond_2

    .line 475
    aget-byte v7, v3, p2

    add-int/lit8 v8, p2, 0x1

    .line 476
    aget-byte v8, v3, v8

    and-int/lit16 v8, v8, 0xff

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v7, v8

    int-to-char v7, v7

    .line 477
    aput-char v7, p1, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p2, p2, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 482
    :cond_2
    sget-object p2, Lcom/alibaba/fastjson2/d;->A:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 485
    array-length p2, p1

    .line 486
    iput-object v5, p0, Lcom/alibaba/fastjson2/x;->z:Ljava/lang/String;

    .line 487
    iput-object p1, p0, Lcom/alibaba/fastjson2/x;->A:[C

    .line 488
    iput v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 489
    iput p2, p0, Lcom/alibaba/fastjson2/x;->B:I

    .line 490
    iput v0, p0, Lcom/alibaba/fastjson2/x;->C:I

    .line 491
    iput p2, p0, Lcom/alibaba/fastjson2/x;->D:I

    .line 493
    iget v1, p0, Lcom/alibaba/fastjson2/x;->D:I

    const/16 v2, 0x1a

    if-nez v1, :cond_3

    .line 494
    iput-char v2, p0, Lcom/alibaba/fastjson2/x;->f:C

    return-void

    .line 499
    :cond_3
    aget-char v1, p1, v0

    :goto_2
    const/16 v3, 0x20

    if-gt v1, v3, :cond_5

    const-wide/16 v5, 0x1

    shl-long/2addr v5, v1

    const-wide v7, 0x100003700L

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_5

    add-int/2addr v0, v4

    if-lt v0, p2, :cond_4

    .line 503
    iput-char v2, p0, Lcom/alibaba/fastjson2/x;->f:C

    return-void

    .line 506
    :cond_4
    aget-char v1, p1, v0

    goto :goto_2

    .line 508
    :cond_5
    iput-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    .line 509
    iget p1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/alibaba/fastjson2/x;->e:I

    const p1, 0xfffe

    if-eq v1, p1, :cond_6

    const p1, 0xfeff

    if-ne v1, p1, :cond_7

    .line 512
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    .line 515
    :cond_7
    iget-char p1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 p2, 0x2f

    if-ne p1, p2, :cond_8

    .line 516
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->aV()V

    :cond_8
    return-void

    .line 470
    :cond_9
    :try_start_1
    new-instance p1, Lcom/alibaba/fastjson2/c;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "illegal input utf16 bytes, length "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    add-int/2addr v6, v7

    .line 464
    array-length v7, v3

    if-ne v6, v7, :cond_1

    .line 465
    array-length v7, v3

    add-int/2addr v7, p1

    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 480
    :try_start_2
    new-instance p2, Lcom/alibaba/fastjson2/c;

    const-string v0, "read error"

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 482
    :goto_3
    sget-object p2, Lcom/alibaba/fastjson2/d;->A:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 483
    throw p1
.end method

.method constructor <init>(Lcom/alibaba/fastjson2/u$c;Ljava/io/Reader;)V
    .locals 6

    const/4 v0, 0x0

    .line 295
    invoke-direct {p0, p1, v0, v0}, Lcom/alibaba/fastjson2/u;-><init>(Lcom/alibaba/fastjson2/u$c;ZZ)V

    const/4 p1, -0x1

    .line 37
    iput p1, p0, Lcom/alibaba/fastjson2/x;->J:I

    .line 296
    iput-object p2, p0, Lcom/alibaba/fastjson2/x;->I:Ljava/io/Closeable;

    .line 298
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    sget-object v2, Lcom/alibaba/fastjson2/d;->y:[Lcom/alibaba/fastjson2/d$a;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson2/x;->J:I

    .line 299
    sget-object v1, Lcom/alibaba/fastjson2/d;->y:[Lcom/alibaba/fastjson2/d$a;

    iget v2, p0, Lcom/alibaba/fastjson2/x;->J:I

    aget-object v1, v1, v2

    .line 300
    sget-object v2, Lcom/alibaba/fastjson2/d;->z:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    if-nez v1, :cond_0

    const/16 v1, 0x2000

    .line 302
    new-array v1, v1, [C

    :cond_0
    move v2, v0

    .line 308
    :cond_1
    :goto_0
    :try_start_0
    array-length v4, v1

    sub-int/2addr v4, v2

    invoke-virtual {p2, v1, v2, v4}, Ljava/io/Reader;->read([CII)I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, p1, :cond_8

    .line 324
    iput-object v3, p0, Lcom/alibaba/fastjson2/x;->z:Ljava/lang/String;

    .line 325
    iput-object v1, p0, Lcom/alibaba/fastjson2/x;->A:[C

    .line 326
    iput v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 327
    iput v2, p0, Lcom/alibaba/fastjson2/x;->B:I

    .line 328
    iput v0, p0, Lcom/alibaba/fastjson2/x;->C:I

    .line 329
    iget p1, p0, Lcom/alibaba/fastjson2/x;->B:I

    iput p1, p0, Lcom/alibaba/fastjson2/x;->D:I

    .line 333
    iget p1, p0, Lcom/alibaba/fastjson2/x;->e:I

    iget p2, p0, Lcom/alibaba/fastjson2/x;->D:I

    const/16 v0, 0x1a

    if-lt p1, p2, :cond_2

    .line 334
    iput-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    return-void

    .line 338
    :cond_2
    iget p1, p0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char p1, v1, p1

    iput-char p1, p0, Lcom/alibaba/fastjson2/x;->f:C

    .line 339
    :goto_1
    iget-char p1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 p2, 0x20

    if-gt p1, p2, :cond_4

    const-wide/16 p1, 0x1

    iget-char v2, p0, Lcom/alibaba/fastjson2/x;->f:C

    shl-long/2addr p1, v2

    const-wide v2, 0x100003700L

    and-long/2addr p1, v2

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-eqz p1, :cond_4

    .line 340
    iget p1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 341
    iget p1, p0, Lcom/alibaba/fastjson2/x;->e:I

    iget p2, p0, Lcom/alibaba/fastjson2/x;->B:I

    if-lt p1, p2, :cond_3

    .line 342
    iput-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    return-void

    .line 345
    :cond_3
    iget p1, p0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char p1, v1, p1

    iput-char p1, p0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_1

    .line 347
    :cond_4
    iget p1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 350
    iget-char p1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const p2, 0xfffe

    if-eq p1, p2, :cond_5

    iget-char p1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const p2, 0xfeff

    if-ne p1, p2, :cond_6

    .line 351
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    .line 354
    :cond_6
    iget-char p1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 p2, 0x2f

    if-ne p1, p2, :cond_7

    .line 355
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->aV()V

    :cond_7
    return-void

    :cond_8
    add-int/2addr v2, v4

    .line 314
    :try_start_1
    array-length v4, v1

    if-ne v2, v4, :cond_1

    .line 315
    array-length v4, v1

    shr-int/lit8 v5, v4, 0x1

    add-int/2addr v4, v5

    .line 317
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 321
    new-instance p2, Lcom/alibaba/fastjson2/c;

    const-string v0, "read error"

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method constructor <init>(Lcom/alibaba/fastjson2/u$c;Ljava/lang/String;II)V
    .locals 3

    const/4 v0, 0x0

    .line 360
    invoke-direct {p0, p1, v0, v0}, Lcom/alibaba/fastjson2/u;-><init>(Lcom/alibaba/fastjson2/u$c;ZZ)V

    const/4 p1, -0x1

    .line 37
    iput p1, p0, Lcom/alibaba/fastjson2/x;->J:I

    .line 362
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    sget-object v1, Lcom/alibaba/fastjson2/d;->y:[Lcom/alibaba/fastjson2/d$a;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr p1, v1

    iput p1, p0, Lcom/alibaba/fastjson2/x;->J:I

    .line 363
    sget-object p1, Lcom/alibaba/fastjson2/d;->y:[Lcom/alibaba/fastjson2/d$a;

    iget v1, p0, Lcom/alibaba/fastjson2/x;->J:I

    aget-object p1, p1, v1

    .line 364
    sget-object v1, Lcom/alibaba/fastjson2/d;->z:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    if-eqz p1, :cond_0

    .line 365
    array-length v1, p1

    if-ge v1, p4, :cond_1

    :cond_0
    const/16 p1, 0x2000

    .line 366
    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [C

    .line 368
    :cond_1
    invoke-virtual {p2, p3, p4, p1, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 370
    iput-object p2, p0, Lcom/alibaba/fastjson2/x;->z:Ljava/lang/String;

    .line 371
    iput-object p1, p0, Lcom/alibaba/fastjson2/x;->A:[C

    .line 372
    iput v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 373
    iput p4, p0, Lcom/alibaba/fastjson2/x;->B:I

    .line 374
    iput v0, p0, Lcom/alibaba/fastjson2/x;->C:I

    .line 375
    iget p2, p0, Lcom/alibaba/fastjson2/x;->B:I

    iput p2, p0, Lcom/alibaba/fastjson2/x;->D:I

    .line 379
    iget p2, p0, Lcom/alibaba/fastjson2/x;->e:I

    iget p3, p0, Lcom/alibaba/fastjson2/x;->D:I

    const/16 p4, 0x1a

    if-lt p2, p3, :cond_2

    .line 380
    iput-char p4, p0, Lcom/alibaba/fastjson2/x;->f:C

    return-void

    .line 384
    :cond_2
    iget p2, p0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char p2, p1, p2

    iput-char p2, p0, Lcom/alibaba/fastjson2/x;->f:C

    .line 385
    :goto_0
    iget-char p2, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 p3, 0x20

    if-gt p2, p3, :cond_4

    const-wide/16 p2, 0x1

    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    shl-long/2addr p2, v0

    const-wide v0, 0x100003700L

    and-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-eqz p2, :cond_4

    .line 386
    iget p2, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 387
    iget p2, p0, Lcom/alibaba/fastjson2/x;->e:I

    iget p3, p0, Lcom/alibaba/fastjson2/x;->B:I

    if-lt p2, p3, :cond_3

    .line 388
    iput-char p4, p0, Lcom/alibaba/fastjson2/x;->f:C

    return-void

    .line 391
    :cond_3
    iget p2, p0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char p2, p1, p2

    iput-char p2, p0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_0

    .line 393
    :cond_4
    iget p1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 396
    iget-char p1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const p2, 0xfffe

    if-eq p1, p2, :cond_5

    iget-char p1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const p2, 0xfeff

    if-ne p1, p2, :cond_6

    .line 397
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    .line 400
    :cond_6
    iget-char p1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 p2, 0x2f

    if-ne p1, p2, :cond_7

    .line 401
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->aV()V

    :cond_7
    return-void
.end method

.method constructor <init>(Lcom/alibaba/fastjson2/u$c;Ljava/lang/String;[CII)V
    .locals 2

    const/4 v0, 0x0

    .line 406
    invoke-direct {p0, p1, v0, v0}, Lcom/alibaba/fastjson2/u;-><init>(Lcom/alibaba/fastjson2/u$c;ZZ)V

    const/4 p1, -0x1

    .line 37
    iput p1, p0, Lcom/alibaba/fastjson2/x;->J:I

    .line 408
    iput-object p2, p0, Lcom/alibaba/fastjson2/x;->z:Ljava/lang/String;

    .line 409
    iput-object p3, p0, Lcom/alibaba/fastjson2/x;->A:[C

    .line 410
    iput p4, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 411
    iput p5, p0, Lcom/alibaba/fastjson2/x;->B:I

    .line 412
    iput p4, p0, Lcom/alibaba/fastjson2/x;->C:I

    add-int/2addr p4, p5

    .line 413
    iput p4, p0, Lcom/alibaba/fastjson2/x;->D:I

    .line 417
    iget p1, p0, Lcom/alibaba/fastjson2/x;->e:I

    iget p2, p0, Lcom/alibaba/fastjson2/x;->D:I

    const/16 p4, 0x1a

    if-lt p1, p2, :cond_0

    .line 418
    iput-char p4, p0, Lcom/alibaba/fastjson2/x;->f:C

    return-void

    .line 422
    :cond_0
    iget p1, p0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char p1, p3, p1

    iput-char p1, p0, Lcom/alibaba/fastjson2/x;->f:C

    .line 423
    :goto_0
    iget-char p1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 p2, 0x20

    if-gt p1, p2, :cond_2

    const-wide/16 p1, 0x1

    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    shl-long/2addr p1, v0

    const-wide v0, 0x100003700L

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_2

    .line 424
    iget p1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 425
    iget p1, p0, Lcom/alibaba/fastjson2/x;->e:I

    if-lt p1, p5, :cond_1

    .line 426
    iput-char p4, p0, Lcom/alibaba/fastjson2/x;->f:C

    return-void

    .line 429
    :cond_1
    iget p1, p0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char p1, p3, p1

    iput-char p1, p0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_0

    .line 431
    :cond_2
    iget p1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 434
    iget-char p1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const p2, 0xfffe

    if-eq p1, p2, :cond_3

    iget-char p1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const p2, 0xfeff

    if-ne p1, p2, :cond_4

    .line 435
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    .line 438
    :cond_4
    iget-char p1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 p2, 0x2f

    if-ne p1, p2, :cond_5

    .line 439
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->aV()V

    :cond_5
    return-void
.end method

.method constructor <init>(Lcom/alibaba/fastjson2/u$c;[BII)V
    .locals 8

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0, v0}, Lcom/alibaba/fastjson2/u;-><init>(Lcom/alibaba/fastjson2/u$c;ZZ)V

    const/4 p1, -0x1

    .line 37
    iput p1, p0, Lcom/alibaba/fastjson2/x;->J:I

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lcom/alibaba/fastjson2/x;->z:Ljava/lang/String;

    .line 43
    div-int/lit8 p1, p4, 0x2

    new-array p1, p1, [C

    iput-object p1, p0, Lcom/alibaba/fastjson2/x;->A:[C

    add-int p1, p3, p4

    move v1, v0

    move v0, p3

    :goto_0
    if-ge v0, p1, :cond_0

    .line 47
    aget-byte v2, p2, v0

    add-int/lit8 v3, v0, 0x1

    .line 48
    aget-byte v3, p2, v3

    .line 49
    iget-object v4, p0, Lcom/alibaba/fastjson2/x;->A:[C

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v4, v1

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_0
    iput p3, p0, Lcom/alibaba/fastjson2/x;->C:I

    .line 52
    iput v1, p0, Lcom/alibaba/fastjson2/x;->B:I

    iput v1, p0, Lcom/alibaba/fastjson2/x;->D:I

    .line 56
    iget p1, p0, Lcom/alibaba/fastjson2/x;->e:I

    iget p2, p0, Lcom/alibaba/fastjson2/x;->D:I

    const/16 p3, 0x1a

    if-lt p1, p2, :cond_1

    .line 57
    iput-char p3, p0, Lcom/alibaba/fastjson2/x;->f:C

    return-void

    .line 61
    :cond_1
    iget-object p1, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget p2, p0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char p1, p1, p2

    iput-char p1, p0, Lcom/alibaba/fastjson2/x;->f:C

    .line 62
    :goto_1
    iget-char p1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const-wide/16 v0, 0x0

    const-wide v2, 0x100003700L

    const-wide/16 v4, 0x1

    const/16 p2, 0x20

    if-gt p1, p2, :cond_3

    iget-char p1, p0, Lcom/alibaba/fastjson2/x;->f:C

    shl-long v6, v4, p1

    and-long/2addr v6, v2

    cmp-long p1, v6, v0

    if-eqz p1, :cond_3

    .line 63
    iget p1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 64
    iget p1, p0, Lcom/alibaba/fastjson2/x;->e:I

    if-lt p1, p4, :cond_2

    .line 65
    iput-char p3, p0, Lcom/alibaba/fastjson2/x;->f:C

    return-void

    .line 68
    :cond_2
    iget-object p1, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget p2, p0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char p1, p1, p2

    iput-char p1, p0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_1

    .line 70
    :cond_3
    :goto_2
    iget-char p1, p0, Lcom/alibaba/fastjson2/x;->f:C

    if-gt p1, p2, :cond_5

    iget-char p1, p0, Lcom/alibaba/fastjson2/x;->f:C

    shl-long v6, v4, p1

    and-long/2addr v6, v2

    cmp-long p1, v6, v0

    if-eqz p1, :cond_5

    .line 71
    iget p1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 72
    iget p1, p0, Lcom/alibaba/fastjson2/x;->e:I

    if-lt p1, p4, :cond_4

    .line 73
    iput-char p3, p0, Lcom/alibaba/fastjson2/x;->f:C

    return-void

    .line 76
    :cond_4
    iget-object p1, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v6, p0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char p1, p1, v6

    iput-char p1, p0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_2

    .line 78
    :cond_5
    iget p1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 81
    iget-char p1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const p2, 0xfffe

    if-eq p1, p2, :cond_6

    iget-char p1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const p2, 0xfeff

    if-ne p1, p2, :cond_7

    .line 82
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    .line 85
    :cond_7
    iget-char p1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 p2, 0x2f

    if-ne p1, p2, :cond_8

    .line 86
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->aV()V

    :cond_8
    return-void
.end method

.method private bh()V
    .locals 17

    move-object/from16 v0, p0

    .line 3828
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    .line 3829
    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    .line 3830
    iget-char v3, v0, Lcom/alibaba/fastjson2/x;->f:C

    add-int/lit8 v4, v2, 0x1

    .line 3831
    aget-char v2, v1, v2

    :goto_0
    const/16 v5, 0x5c

    if-ne v2, v5, :cond_4

    .line 3834
    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ge v4, v2, :cond_3

    add-int/lit8 v2, v4, 0x1

    .line 3838
    aget-char v4, v1, v4

    if-eq v4, v5, :cond_2

    const/16 v5, 0x22

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const/16 v5, 0x75

    if-ne v4, v5, :cond_1

    add-int/lit8 v4, v2, 0x4

    .line 3844
    aget-char v4, v1, v4

    add-int/lit8 v2, v2, 0x5

    goto :goto_2

    .line 3848
    :cond_1
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson2/x;->a(I)C

    move-result v4

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v4, v2, 0x1

    .line 3840
    aget-char v2, v1, v2

    goto :goto_0

    .line 3835
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson2/c;

    const-string v2, "illegal string, end"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const/16 v5, 0x1a

    if-ne v2, v3, :cond_5

    .line 3853
    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ge v4, v2, :cond_6

    add-int/lit8 v2, v4, 0x1

    aget-char v3, v1, v4

    goto :goto_4

    .line 3857
    :cond_5
    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ge v4, v2, :cond_6

    add-int/lit8 v2, v4, 0x1

    .line 3858
    aget-char v4, v1, v4

    :goto_2
    move/from16 v16, v4

    move v4, v2

    move/from16 v2, v16

    goto :goto_0

    :cond_6
    move v3, v5

    :goto_3
    const-wide/16 v6, 0x0

    const-wide v8, 0x100003700L

    const-wide/16 v10, 0x1

    const/16 v2, 0x20

    if-gt v3, v2, :cond_7

    shl-long v12, v10, v3

    and-long/2addr v12, v8

    cmp-long v12, v12, v6

    if-eqz v12, :cond_7

    add-int/lit8 v2, v4, 0x1

    .line 3866
    aget-char v3, v1, v4

    :goto_4
    move v4, v2

    goto :goto_3

    :cond_7
    const/16 v12, 0x2c

    const/4 v13, 0x1

    if-ne v3, v12, :cond_8

    move v12, v13

    goto :goto_5

    :cond_8
    const/4 v12, 0x0

    .line 3869
    :goto_5
    iput-boolean v12, v0, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v12, :cond_c

    .line 3870
    iget v3, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v4, v3, :cond_9

    .line 3871
    iput v4, v0, Lcom/alibaba/fastjson2/x;->e:I

    .line 3872
    iput-char v5, v0, Lcom/alibaba/fastjson2/x;->f:C

    return-void

    .line 3876
    :cond_9
    aget-char v3, v1, v4

    :goto_6
    if-gt v3, v2, :cond_b

    shl-long v14, v10, v3

    and-long/2addr v14, v8

    cmp-long v12, v14, v6

    if-eqz v12, :cond_b

    add-int/lit8 v4, v4, 0x1

    .line 3879
    iget v3, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v4, v3, :cond_a

    .line 3880
    iput v4, v0, Lcom/alibaba/fastjson2/x;->e:I

    .line 3881
    iput-char v5, v0, Lcom/alibaba/fastjson2/x;->f:C

    return-void

    .line 3884
    :cond_a
    aget-char v3, v1, v4

    goto :goto_6

    :cond_b
    add-int/2addr v4, v13

    .line 3888
    :cond_c
    iput v4, v0, Lcom/alibaba/fastjson2/x;->e:I

    .line 3889
    iput-char v3, v0, Lcom/alibaba/fastjson2/x;->f:C

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 9

    .line 907
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    .line 908
    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 909
    iget-char v2, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v3, 0x53

    if-ne v2, v3, :cond_3

    add-int/lit8 v2, v1, 0x1

    .line 910
    iget v3, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-ge v2, v3, :cond_3

    aget-char v4, v0, v1

    const/16 v5, 0x65

    if-ne v4, v5, :cond_3

    aget-char v2, v0, v2

    const/16 v4, 0x74

    if-ne v2, v4, :cond_3

    add-int/lit8 v1, v1, 0x2

    const/16 v2, 0x1a

    if-lt v1, v3, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 918
    aget-char v1, v0, v1

    :goto_0
    const/16 v4, 0x20

    if-gt v1, v4, :cond_2

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v1

    const-wide v6, 0x100003700L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 920
    iget v1, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v3, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v3, 0x1

    .line 924
    aget-char v3, v0, v3

    move v8, v3

    move v3, v1

    move v1, v8

    goto :goto_0

    :cond_2
    move v2, v1

    .line 928
    :goto_1
    iput v3, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 929
    iput-char v2, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public final B()Z
    .locals 9

    .line 937
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    .line 938
    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 939
    iget-char v2, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v3, 0x49

    if-ne v2, v3, :cond_3

    add-int/lit8 v2, v1, 0x6

    .line 940
    iget v3, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-ge v2, v3, :cond_3

    aget-char v4, v0, v1

    const/16 v5, 0x6e

    if-ne v4, v5, :cond_3

    add-int/lit8 v4, v1, 0x1

    aget-char v4, v0, v4

    const/16 v6, 0x66

    if-ne v4, v6, :cond_3

    add-int/lit8 v4, v1, 0x2

    aget-char v4, v0, v4

    const/16 v6, 0x69

    if-ne v4, v6, :cond_3

    add-int/lit8 v4, v1, 0x3

    aget-char v4, v0, v4

    if-ne v4, v5, :cond_3

    add-int/lit8 v4, v1, 0x4

    aget-char v4, v0, v4

    if-ne v4, v6, :cond_3

    add-int/lit8 v4, v1, 0x5

    aget-char v4, v0, v4

    const/16 v5, 0x74

    if-ne v4, v5, :cond_3

    aget-char v2, v0, v2

    const/16 v4, 0x79

    if-ne v2, v4, :cond_3

    add-int/lit8 v1, v1, 0x7

    const/16 v2, 0x1a

    if-lt v1, v3, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 954
    aget-char v1, v0, v1

    :goto_0
    const/16 v4, 0x20

    if-gt v1, v4, :cond_2

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v1

    const-wide v6, 0x100003700L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 956
    iget v1, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v3, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v3, 0x1

    .line 960
    aget-char v3, v0, v3

    move v8, v3

    move v3, v1

    move v1, v8

    goto :goto_0

    :cond_2
    move v2, v1

    .line 963
    :goto_1
    iput v3, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 964
    iput-char v2, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public final C()Ljava/lang/String;
    .locals 14

    .line 6291
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_8

    .line 6295
    iget v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 6297
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/x;->A:[C

    aget-char v2, v2, v0

    if-ne v2, v1, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 6302
    iget v2, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v0, v2, :cond_0

    .line 6306
    :goto_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v3, p0, Lcom/alibaba/fastjson2/x;->e:I

    iget v4, p0, Lcom/alibaba/fastjson2/x;->e:I

    sub-int v4, v0, v4

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 6308
    iget v3, p0, Lcom/alibaba/fastjson2/x;->D:I

    const/16 v4, 0x1a

    if-ne v0, v3, :cond_2

    .line 6309
    iput v3, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 6310
    iput-char v4, p0, Lcom/alibaba/fastjson2/x;->f:C

    return-object v1

    .line 6314
    :cond_2
    iget-object v3, p0, Lcom/alibaba/fastjson2/x;->A:[C

    aget-char v3, v3, v0

    :goto_1
    const-wide/16 v5, 0x0

    const-wide v7, 0x100003700L

    const-wide/16 v9, 0x1

    const/16 v11, 0x20

    if-gt v3, v11, :cond_3

    shl-long v12, v9, v3

    and-long/2addr v12, v7

    cmp-long v12, v12, v5

    if-eqz v12, :cond_3

    .line 6316
    iget-object v3, p0, Lcom/alibaba/fastjson2/x;->A:[C

    add-int/lit8 v0, v0, 0x1

    aget-char v3, v3, v0

    goto :goto_1

    :cond_3
    const/16 v12, 0x2c

    if-ne v3, v12, :cond_4

    move v12, v2

    goto :goto_2

    :cond_4
    const/4 v12, 0x0

    .line 6319
    :goto_2
    iput-boolean v12, p0, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v12, :cond_6

    add-int/2addr v0, v2

    .line 6320
    iput v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 6323
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v0, v0, v2

    iput-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    .line 6325
    :goto_3
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v0, v11, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    shl-long v2, v9, v0

    and-long/2addr v2, v7

    cmp-long v0, v2, v5

    if-eqz v0, :cond_7

    .line 6326
    iget v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    iget v2, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v0, v2, :cond_5

    .line 6327
    iput-char v4, p0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_3

    .line 6329
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v0, v0, v2

    iput-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_3

    :cond_6
    add-int/2addr v0, v2

    .line 6333
    iput v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    int-to-char v0, v3

    .line 6334
    iput-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    :cond_7
    return-object v1

    .line 6292
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "illegal pattern"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final E()V
    .locals 8

    .line 1055
    iget v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 1056
    iget v1, p0, Lcom/alibaba/fastjson2/x;->D:I

    const/16 v2, 0x1a

    if-lt v0, v1, :cond_0

    .line 1057
    iput-char v2, p0, Lcom/alibaba/fastjson2/x;->f:C

    return-void

    .line 1061
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/x;->A:[C

    .line 1062
    aget-char v3, v1, v0

    :goto_0
    if-eqz v3, :cond_3

    const/16 v4, 0x20

    if-gt v3, v4, :cond_1

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v3

    const-wide v6, 0x100003700L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 1072
    iput v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 1073
    iput-char v3, p0, Lcom/alibaba/fastjson2/x;->f:C

    .line 1074
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_2

    .line 1075
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->aV()V

    :cond_2
    return-void

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 1065
    iget v3, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v0, v3, :cond_4

    .line 1066
    iput v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 1067
    iput-char v2, p0, Lcom/alibaba/fastjson2/x;->f:C

    return-void

    .line 1070
    :cond_4
    aget-char v3, v1, v0

    goto :goto_0
.end method

.method public final F()J
    .locals 18

    move-object/from16 v0, p0

    .line 1626
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x22

    if-eq v1, v2, :cond_0

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v3, 0x27

    if-eq v1, v3, :cond_0

    const-wide/16 v1, -0x1

    return-wide v1

    .line 1630
    :cond_0
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/4 v3, 0x0

    .line 1632
    iput-boolean v3, v0, Lcom/alibaba/fastjson2/x;->h:Z

    .line 1633
    iget v4, v0, Lcom/alibaba/fastjson2/x;->e:I

    iput v4, v0, Lcom/alibaba/fastjson2/x;->E:I

    const-wide/16 v5, 0x0

    move v7, v3

    move-wide v8, v5

    .line 1636
    :goto_0
    iget v10, v0, Lcom/alibaba/fastjson2/x;->D:I

    const/16 v11, 0x78

    const/16 v12, 0x75

    const/16 v13, 0x5c

    const/16 v14, 0x20

    const/4 v15, 0x1

    if-ge v4, v10, :cond_8

    .line 1637
    iget-object v10, v0, Lcom/alibaba/fastjson2/x;->A:[C

    aget-char v3, v10, v4

    if-ne v3, v1, :cond_2

    if-nez v7, :cond_1

    .line 1642
    iget v4, v0, Lcom/alibaba/fastjson2/x;->E:I

    :goto_1
    move-wide v8, v5

    goto/16 :goto_7

    .line 1646
    :cond_1
    iput v7, v0, Lcom/alibaba/fastjson2/x;->G:I

    .line 1647
    iput v4, v0, Lcom/alibaba/fastjson2/x;->F:I

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_7

    :cond_2
    if-ne v3, v13, :cond_5

    .line 1653
    iput-boolean v15, v0, Lcom/alibaba/fastjson2/x;->h:Z

    add-int/lit8 v4, v4, 0x1

    .line 1654
    aget-char v3, v10, v4

    if-eq v3, v12, :cond_4

    if-eq v3, v11, :cond_3

    .line 1673
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson2/x;->a(I)C

    move-result v3

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 1665
    aget-char v3, v10, v4

    add-int/2addr v4, v15

    .line 1666
    aget-char v10, v10, v4

    .line 1667
    invoke-static {v3, v10}, Lcom/alibaba/fastjson2/x;->a(II)C

    move-result v3

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 1657
    aget-char v3, v10, v4

    add-int/2addr v4, v15

    .line 1658
    aget-char v2, v10, v4

    add-int/2addr v4, v15

    .line 1659
    aget-char v11, v10, v4

    add-int/2addr v4, v15

    .line 1660
    aget-char v10, v10, v4

    .line 1661
    invoke-static {v3, v2, v11, v10}, Lcom/alibaba/fastjson2/x;->a(IIII)C

    move-result v3

    :cond_5
    :goto_2
    const/16 v2, 0xff

    if-gt v3, v2, :cond_7

    const/16 v2, 0x8

    if-ge v7, v2, :cond_7

    if-nez v7, :cond_6

    if-nez v3, :cond_6

    goto :goto_6

    :cond_6
    packed-switch v7, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    int-to-byte v2, v3

    int-to-long v2, v2

    const/16 v10, 0x38

    shl-long/2addr v2, v10

    const-wide v10, 0xffffffffffffffL

    goto :goto_3

    :pswitch_1
    int-to-byte v2, v3

    int-to-long v2, v2

    const/16 v10, 0x30

    shl-long/2addr v2, v10

    const-wide v10, 0xffffffffffffL

    goto :goto_3

    :pswitch_2
    int-to-byte v2, v3

    int-to-long v2, v2

    const/16 v10, 0x28

    shl-long/2addr v2, v10

    const-wide v10, 0xffffffffffL

    goto :goto_3

    :pswitch_3
    int-to-byte v2, v3

    int-to-long v2, v2

    shl-long/2addr v2, v14

    const-wide v10, 0xffffffffL

    goto :goto_3

    :pswitch_4
    int-to-byte v2, v3

    shl-int/lit8 v2, v2, 0x18

    int-to-long v2, v2

    const-wide/32 v10, 0xffffff

    goto :goto_3

    :pswitch_5
    int-to-byte v2, v3

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    const-wide/32 v10, 0xffff

    goto :goto_3

    :pswitch_6
    int-to-byte v3, v3

    shl-int/lit8 v2, v3, 0x8

    int-to-long v2, v2

    const-wide/16 v10, 0xff

    :goto_3
    and-long/2addr v8, v10

    add-long/2addr v2, v8

    goto :goto_4

    :pswitch_7
    int-to-byte v2, v3

    int-to-long v2, v2

    :goto_4
    move-wide v8, v2

    :goto_5
    add-int/2addr v4, v15

    add-int/lit8 v7, v7, 0x1

    const/16 v2, 0x22

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1680
    :cond_7
    :goto_6
    iget v4, v0, Lcom/alibaba/fastjson2/x;->E:I

    goto/16 :goto_1

    :cond_8
    :goto_7
    cmp-long v1, v8, v5

    if-eqz v1, :cond_9

    goto :goto_a

    :cond_9
    const-wide v1, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    move-wide v8, v1

    const/4 v1, 0x0

    .line 1720
    :goto_8
    iget-object v2, v0, Lcom/alibaba/fastjson2/x;->A:[C

    aget-char v3, v2, v4

    const-wide v10, 0x100000001b3L

    if-ne v3, v13, :cond_c

    .line 1722
    iput-boolean v15, v0, Lcom/alibaba/fastjson2/x;->h:Z

    add-int/lit8 v4, v4, 0x1

    .line 1723
    aget-char v3, v2, v4

    if-eq v3, v12, :cond_b

    const/16 v7, 0x78

    if-eq v3, v7, :cond_a

    .line 1742
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson2/x;->a(I)C

    move-result v2

    goto :goto_9

    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 1734
    aget-char v3, v2, v4

    add-int/2addr v4, v15

    .line 1735
    aget-char v2, v2, v4

    .line 1736
    invoke-static {v3, v2}, Lcom/alibaba/fastjson2/x;->a(II)C

    move-result v2

    goto :goto_9

    :cond_b
    const/16 v7, 0x78

    add-int/lit8 v4, v4, 0x1

    .line 1726
    aget-char v3, v2, v4

    add-int/2addr v4, v15

    .line 1727
    aget-char v7, v2, v4

    add-int/2addr v4, v15

    .line 1728
    aget-char v12, v2, v4

    add-int/2addr v4, v15

    .line 1729
    aget-char v2, v2, v4

    .line 1730
    invoke-static {v3, v7, v12, v2}, Lcom/alibaba/fastjson2/x;->a(IIII)C

    move-result v2

    :goto_9
    add-int/2addr v4, v15

    int-to-long v2, v2

    goto :goto_f

    :cond_c
    const/16 v2, 0x22

    if-ne v3, v2, :cond_12

    .line 1752
    iput v1, v0, Lcom/alibaba/fastjson2/x;->G:I

    .line 1753
    iput v4, v0, Lcom/alibaba/fastjson2/x;->F:I

    const/4 v1, 0x0

    .line 1754
    iput-object v1, v0, Lcom/alibaba/fastjson2/x;->u:Ljava/lang/String;

    add-int/2addr v4, v15

    .line 1766
    :goto_a
    iget v1, v0, Lcom/alibaba/fastjson2/x;->D:I

    const/16 v2, 0x1a

    if-ne v4, v1, :cond_d

    move v1, v2

    goto :goto_b

    .line 1769
    :cond_d
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    aget-char v1, v1, v4

    :goto_b
    const-wide v10, 0x100003700L

    const-wide/16 v12, 0x1

    if-gt v1, v14, :cond_e

    shl-long v16, v12, v1

    and-long v16, v16, v10

    cmp-long v3, v16, v5

    if-eqz v3, :cond_e

    add-int/lit8 v4, v4, 0x1

    .line 1774
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    aget-char v1, v1, v4

    goto :goto_b

    :cond_e
    const/16 v3, 0x2c

    if-ne v1, v3, :cond_f

    move v3, v15

    goto :goto_c

    :cond_f
    const/4 v3, 0x0

    .line 1777
    :goto_c
    iput-boolean v3, v0, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v3, :cond_11

    add-int/lit8 v4, v4, 0x1

    .line 1779
    iget v1, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v4, v1, :cond_10

    goto :goto_d

    .line 1782
    :cond_10
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    aget-char v2, v1, v4

    :goto_d
    move v1, v2

    :goto_e
    if-gt v1, v14, :cond_11

    shl-long v2, v12, v1

    and-long/2addr v2, v10

    cmp-long v2, v2, v5

    if-eqz v2, :cond_11

    add-int/lit8 v4, v4, 0x1

    .line 1787
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    aget-char v1, v1, v4

    goto :goto_e

    :cond_11
    add-int/2addr v4, v15

    .line 1791
    iput v4, v0, Lcom/alibaba/fastjson2/x;->e:I

    .line 1792
    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    return-wide v8

    :cond_12
    add-int/lit8 v4, v4, 0x1

    int-to-long v2, v3

    :goto_f
    xor-long/2addr v2, v8

    mul-long/2addr v2, v10

    move-wide v8, v2

    add-int/lit8 v1, v1, 0x1

    const/16 v12, 0x75

    goto/16 :goto_8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final H()J
    .locals 25

    move-object/from16 v0, p0

    .line 1325
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    .line 1326
    iget-char v2, v0, Lcom/alibaba/fastjson2/x;->f:C

    const-wide/16 v3, 0x0

    const/16 v5, 0x22

    if-eq v2, v5, :cond_4

    iget-char v2, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v5, 0x27

    if-eq v2, v5, :cond_4

    .line 1327
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->a:Lcom/alibaba/fastjson2/u$c;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/u$c;->p:J

    sget-object v5, Lcom/alibaba/fastjson2/u$d;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson2/u$d;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v1, v5

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    invoke-static {v1}, Lcom/alibaba/fastjson2/x;->b(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1328
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->M()J

    move-result-wide v1

    return-wide v1

    .line 1330
    :cond_0
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->bg()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 1335
    :cond_1
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_2

    iget v1, v0, Lcom/alibaba/fastjson2/x;->E:I

    if-lez v1, :cond_2

    .line 1336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal fieldName input "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v2, v0, Lcom/alibaba/fastjson2/x;->f:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", previous fieldName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1338
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal fieldName input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v2, v0, Lcom/alibaba/fastjson2/x;->f:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1341
    :goto_0
    new-instance v2, Lcom/alibaba/fastjson2/c;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_1
    const-wide/16 v1, -0x1

    return-wide v1

    .line 1344
    :cond_4
    iget-char v2, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/4 v5, 0x0

    .line 1346
    iput-object v5, v0, Lcom/alibaba/fastjson2/x;->u:Ljava/lang/String;

    const/4 v5, 0x0

    .line 1347
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/x;->h:Z

    .line 1348
    iget v6, v0, Lcom/alibaba/fastjson2/x;->e:I

    iput v6, v0, Lcom/alibaba/fastjson2/x;->E:I

    add-int/lit8 v7, v6, 0x9

    .line 1351
    iget v8, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ge v7, v8, :cond_e

    .line 1352
    aget-char v4, v1, v6

    add-int/lit8 v8, v6, 0x1

    .line 1353
    aget-char v9, v1, v8

    add-int/lit8 v10, v6, 0x2

    .line 1354
    aget-char v13, v1, v10

    add-int/lit8 v11, v6, 0x3

    .line 1355
    aget-char v12, v1, v11

    add-int/lit8 v14, v6, 0x4

    .line 1356
    aget-char v15, v1, v14

    add-int/lit8 v5, v6, 0x5

    .line 1357
    aget-char v3, v1, v5

    move/from16 v18, v7

    add-int/lit8 v7, v6, 0x6

    move/from16 v19, v5

    .line 1358
    aget-char v5, v1, v7

    move/from16 v20, v7

    add-int/lit8 v7, v6, 0x7

    move/from16 v21, v5

    .line 1359
    aget-char v5, v1, v7

    move/from16 v22, v7

    add-int/lit8 v7, v6, 0x8

    move/from16 v23, v6

    .line 1360
    aget-char v6, v1, v7

    if-ne v4, v2, :cond_5

    move-object/from16 v24, v1

    goto/16 :goto_2

    :cond_5
    if-ne v9, v2, :cond_6

    if-eqz v4, :cond_6

    move-object/from16 v24, v1

    const/16 v1, 0x5c

    if-eq v4, v1, :cond_7

    const/16 v1, 0xff

    if-gt v4, v1, :cond_7

    int-to-byte v1, v4

    int-to-long v3, v1

    const/4 v1, 0x1

    .line 1366
    iput v1, v0, Lcom/alibaba/fastjson2/x;->G:I

    .line 1367
    iput v8, v0, Lcom/alibaba/fastjson2/x;->F:I

    move/from16 v23, v10

    goto/16 :goto_3

    :cond_6
    move-object/from16 v24, v1

    :cond_7
    if-ne v13, v2, :cond_8

    if-eqz v4, :cond_8

    const/16 v1, 0x5c

    if-eq v4, v1, :cond_8

    if-eq v9, v1, :cond_8

    const/16 v1, 0xff

    if-gt v4, v1, :cond_8

    if-gt v9, v1, :cond_8

    int-to-byte v1, v9

    const/16 v3, 0x8

    shl-int/2addr v1, v3

    add-int/2addr v1, v4

    int-to-long v3, v1

    const/4 v1, 0x2

    .line 1375
    iput v1, v0, Lcom/alibaba/fastjson2/x;->G:I

    .line 1376
    iput v10, v0, Lcom/alibaba/fastjson2/x;->F:I

    move/from16 v23, v11

    goto/16 :goto_3

    :cond_8
    if-ne v12, v2, :cond_9

    if-eqz v4, :cond_9

    const/16 v1, 0x5c

    if-eq v4, v1, :cond_9

    if-eq v9, v1, :cond_9

    if-eq v13, v1, :cond_9

    const/16 v1, 0xff

    if-gt v4, v1, :cond_9

    if-gt v9, v1, :cond_9

    if-gt v13, v1, :cond_9

    int-to-byte v1, v13

    const/16 v3, 0x10

    shl-int/2addr v1, v3

    const/16 v3, 0x8

    shl-int/lit8 v5, v9, 0x8

    add-int/2addr v1, v5

    add-int/2addr v1, v4

    int-to-long v3, v1

    const/4 v1, 0x3

    .line 1385
    iput v1, v0, Lcom/alibaba/fastjson2/x;->G:I

    .line 1386
    iput v11, v0, Lcom/alibaba/fastjson2/x;->F:I

    move/from16 v23, v14

    goto/16 :goto_3

    :cond_9
    if-ne v15, v2, :cond_a

    if-eqz v4, :cond_a

    const/16 v1, 0x5c

    if-eq v4, v1, :cond_a

    if-eq v9, v1, :cond_a

    if-eq v13, v1, :cond_a

    if-eq v12, v1, :cond_a

    const/16 v1, 0xff

    if-gt v4, v1, :cond_a

    if-gt v9, v1, :cond_a

    if-gt v13, v1, :cond_a

    if-gt v12, v1, :cond_a

    int-to-byte v1, v12

    const/16 v3, 0x18

    shl-int/2addr v1, v3

    const/16 v3, 0x10

    shl-int/lit8 v5, v13, 0x10

    add-int/2addr v1, v5

    const/16 v3, 0x8

    shl-int/lit8 v5, v9, 0x8

    add-int/2addr v1, v5

    add-int/2addr v1, v4

    int-to-long v3, v1

    const/4 v1, 0x4

    .line 1397
    iput v1, v0, Lcom/alibaba/fastjson2/x;->G:I

    .line 1398
    iput v14, v0, Lcom/alibaba/fastjson2/x;->F:I

    move/from16 v23, v19

    goto/16 :goto_3

    :cond_a
    if-ne v3, v2, :cond_b

    if-eqz v4, :cond_b

    const/16 v1, 0x5c

    if-eq v4, v1, :cond_b

    if-eq v9, v1, :cond_b

    if-eq v13, v1, :cond_b

    if-eq v12, v1, :cond_b

    if-eq v15, v1, :cond_b

    const/16 v1, 0xff

    if-gt v4, v1, :cond_b

    if-gt v9, v1, :cond_b

    if-gt v13, v1, :cond_b

    if-gt v12, v1, :cond_b

    if-gt v15, v1, :cond_b

    int-to-byte v1, v15

    int-to-long v5, v1

    const/16 v1, 0x20

    shl-long/2addr v5, v1

    int-to-long v7, v12

    const/16 v1, 0x18

    shl-long/2addr v7, v1

    add-long/2addr v5, v7

    int-to-long v7, v13

    const/16 v1, 0x10

    shl-long/2addr v7, v1

    add-long/2addr v5, v7

    int-to-long v7, v9

    const/16 v1, 0x8

    shl-long/2addr v7, v1

    add-long/2addr v5, v7

    int-to-long v3, v4

    add-long/2addr v3, v5

    const/4 v1, 0x5

    .line 1410
    iput v1, v0, Lcom/alibaba/fastjson2/x;->G:I

    move/from16 v6, v19

    .line 1411
    iput v6, v0, Lcom/alibaba/fastjson2/x;->F:I

    move/from16 v23, v20

    goto/16 :goto_3

    :cond_b
    move/from16 v1, v21

    if-ne v1, v2, :cond_c

    if-eqz v4, :cond_c

    const/16 v8, 0x5c

    if-eq v4, v8, :cond_c

    if-eq v9, v8, :cond_c

    if-eq v13, v8, :cond_c

    if-eq v12, v8, :cond_c

    if-eq v15, v8, :cond_c

    if-eq v3, v8, :cond_c

    const/16 v8, 0xff

    if-gt v4, v8, :cond_c

    if-gt v9, v8, :cond_c

    if-gt v13, v8, :cond_c

    if-gt v12, v8, :cond_c

    if-gt v15, v8, :cond_c

    if-gt v3, v8, :cond_c

    int-to-byte v1, v3

    int-to-long v5, v1

    const/16 v1, 0x28

    shl-long/2addr v5, v1

    int-to-long v7, v15

    const/16 v1, 0x20

    shl-long/2addr v7, v1

    add-long/2addr v5, v7

    int-to-long v7, v12

    const/16 v1, 0x18

    shl-long/2addr v7, v1

    add-long/2addr v5, v7

    int-to-long v7, v13

    const/16 v1, 0x10

    shl-long/2addr v7, v1

    add-long/2addr v5, v7

    int-to-long v7, v9

    const/16 v1, 0x8

    shl-long/2addr v7, v1

    add-long/2addr v5, v7

    int-to-long v3, v4

    add-long/2addr v3, v5

    const/4 v1, 0x6

    .line 1424
    iput v1, v0, Lcom/alibaba/fastjson2/x;->G:I

    move/from16 v6, v20

    .line 1425
    iput v6, v0, Lcom/alibaba/fastjson2/x;->F:I

    move/from16 v23, v22

    goto/16 :goto_3

    :cond_c
    if-ne v5, v2, :cond_d

    if-eqz v4, :cond_d

    const/16 v8, 0x5c

    if-eq v4, v8, :cond_d

    if-eq v9, v8, :cond_d

    if-eq v13, v8, :cond_d

    if-eq v12, v8, :cond_d

    if-eq v15, v8, :cond_d

    if-eq v3, v8, :cond_d

    if-eq v1, v8, :cond_d

    const/16 v8, 0xff

    if-gt v4, v8, :cond_d

    if-gt v9, v8, :cond_d

    if-gt v13, v8, :cond_d

    if-gt v12, v8, :cond_d

    if-gt v15, v8, :cond_d

    if-gt v3, v8, :cond_d

    if-gt v1, v8, :cond_d

    int-to-byte v1, v1

    int-to-long v5, v1

    const/16 v1, 0x30

    shl-long/2addr v5, v1

    int-to-long v10, v3

    const/16 v1, 0x28

    shl-long/2addr v10, v1

    add-long/2addr v5, v10

    int-to-long v10, v15

    const/16 v1, 0x20

    shl-long/2addr v10, v1

    add-long/2addr v5, v10

    int-to-long v10, v12

    const/16 v1, 0x18

    shl-long/2addr v10, v1

    add-long/2addr v5, v10

    int-to-long v10, v13

    const/16 v1, 0x10

    shl-long/2addr v10, v1

    add-long/2addr v5, v10

    int-to-long v8, v9

    const/16 v1, 0x8

    shl-long/2addr v8, v1

    add-long/2addr v5, v8

    int-to-long v3, v4

    add-long/2addr v3, v5

    const/4 v1, 0x7

    .line 1439
    iput v1, v0, Lcom/alibaba/fastjson2/x;->G:I

    move/from16 v6, v22

    .line 1440
    iput v6, v0, Lcom/alibaba/fastjson2/x;->F:I

    move/from16 v23, v7

    goto :goto_3

    :cond_d
    if-ne v6, v2, :cond_f

    if-eqz v4, :cond_f

    const/16 v6, 0x5c

    if-eq v4, v6, :cond_f

    if-eq v9, v6, :cond_f

    if-eq v13, v6, :cond_f

    if-eq v12, v6, :cond_f

    if-eq v15, v6, :cond_f

    if-eq v3, v6, :cond_f

    if-eq v1, v6, :cond_f

    if-eq v5, v6, :cond_f

    const/16 v6, 0xff

    if-gt v4, v6, :cond_f

    if-gt v9, v6, :cond_f

    if-gt v13, v6, :cond_f

    if-gt v12, v6, :cond_f

    if-gt v15, v6, :cond_f

    if-gt v3, v6, :cond_f

    if-gt v1, v6, :cond_f

    if-gt v5, v6, :cond_f

    int-to-byte v5, v5

    int-to-long v5, v5

    const/16 v8, 0x38

    shl-long/2addr v5, v8

    int-to-long v10, v1

    const/16 v1, 0x30

    shl-long/2addr v10, v1

    add-long/2addr v5, v10

    int-to-long v10, v3

    const/16 v1, 0x28

    shl-long/2addr v10, v1

    add-long/2addr v5, v10

    int-to-long v10, v15

    const/16 v1, 0x20

    shl-long/2addr v10, v1

    add-long/2addr v5, v10

    int-to-long v10, v12

    const/16 v1, 0x18

    shl-long/2addr v10, v1

    add-long/2addr v5, v10

    int-to-long v10, v13

    const/16 v1, 0x10

    shl-long/2addr v10, v1

    add-long/2addr v5, v10

    int-to-long v8, v9

    const/16 v1, 0x8

    shl-long/2addr v8, v1

    add-long/2addr v5, v8

    int-to-long v3, v4

    add-long/2addr v3, v5

    .line 1455
    iput v1, v0, Lcom/alibaba/fastjson2/x;->G:I

    .line 1456
    iput v7, v0, Lcom/alibaba/fastjson2/x;->F:I

    move/from16 v23, v18

    goto :goto_3

    :cond_e
    move-object/from16 v24, v1

    move/from16 v23, v6

    :cond_f
    :goto_2
    const-wide/16 v3, 0x0

    :goto_3
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_17

    move-wide v4, v3

    move/from16 v1, v23

    const/4 v3, 0x0

    .line 1462
    :goto_4
    iget v6, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ge v1, v6, :cond_18

    .line 1463
    aget-char v6, v24, v1

    if-ne v6, v2, :cond_11

    if-nez v3, :cond_10

    .line 1467
    iget v1, v0, Lcom/alibaba/fastjson2/x;->E:I

    goto/16 :goto_e

    .line 1471
    :cond_10
    iput v3, v0, Lcom/alibaba/fastjson2/x;->G:I

    .line 1472
    iput v1, v0, Lcom/alibaba/fastjson2/x;->F:I

    add-int/lit8 v23, v1, 0x1

    goto/16 :goto_d

    :cond_11
    const/16 v7, 0x5c

    if-ne v6, v7, :cond_14

    const/4 v7, 0x1

    .line 1478
    iput-boolean v7, v0, Lcom/alibaba/fastjson2/x;->h:Z

    add-int/lit8 v1, v1, 0x1

    .line 1479
    aget-char v6, v24, v1

    const/16 v7, 0x75

    if-eq v6, v7, :cond_13

    const/16 v7, 0x78

    if-eq v6, v7, :cond_12

    .line 1498
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson2/x;->a(I)C

    move-result v6

    goto :goto_5

    :cond_12
    add-int/lit8 v1, v1, 0x1

    .line 1490
    aget-char v6, v24, v1

    const/4 v7, 0x1

    add-int/2addr v1, v7

    .line 1491
    aget-char v8, v24, v1

    .line 1492
    invoke-static {v6, v8}, Lcom/alibaba/fastjson2/x;->a(II)C

    move-result v6

    goto :goto_5

    :cond_13
    const/4 v7, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 1482
    aget-char v6, v24, v1

    add-int/2addr v1, v7

    .line 1483
    aget-char v8, v24, v1

    add-int/2addr v1, v7

    .line 1484
    aget-char v9, v24, v1

    add-int/2addr v1, v7

    .line 1485
    aget-char v7, v24, v1

    .line 1486
    invoke-static {v6, v8, v9, v7}, Lcom/alibaba/fastjson2/x;->a(IIII)C

    move-result v6

    :cond_14
    :goto_5
    const/16 v7, 0xff

    if-gt v6, v7, :cond_16

    const/16 v8, 0x8

    if-ge v3, v8, :cond_16

    if-nez v3, :cond_15

    if-nez v6, :cond_15

    goto/16 :goto_c

    :cond_15
    packed-switch v3, :pswitch_data_0

    const/16 v8, 0x18

    const/16 v9, 0x10

    const/16 v10, 0x30

    const/16 v11, 0x28

    const/16 v12, 0x8

    :goto_6
    const/4 v6, 0x1

    goto/16 :goto_b

    :pswitch_0
    int-to-byte v6, v6

    int-to-long v8, v6

    const/16 v6, 0x38

    shl-long/2addr v8, v6

    const-wide v10, 0xffffffffffffffL

    and-long/2addr v4, v10

    add-long/2addr v4, v8

    const/4 v6, 0x1

    const/16 v8, 0x18

    const/16 v9, 0x10

    const/16 v10, 0x30

    goto :goto_7

    :pswitch_1
    int-to-byte v6, v6

    int-to-long v8, v6

    const/16 v10, 0x30

    shl-long/2addr v8, v10

    const-wide v11, 0xffffffffffffL

    and-long/2addr v4, v11

    add-long/2addr v4, v8

    const/4 v6, 0x1

    const/16 v8, 0x18

    const/16 v9, 0x10

    :goto_7
    const/16 v11, 0x28

    goto :goto_a

    :pswitch_2
    const/16 v10, 0x30

    int-to-byte v6, v6

    int-to-long v8, v6

    const/16 v11, 0x28

    shl-long/2addr v8, v11

    const-wide v12, 0xffffffffffL

    goto :goto_8

    :pswitch_3
    const/16 v10, 0x30

    const/16 v11, 0x28

    int-to-byte v6, v6

    int-to-long v8, v6

    const/16 v6, 0x20

    shl-long/2addr v8, v6

    const-wide v12, 0xffffffffL

    :goto_8
    and-long/2addr v4, v12

    add-long/2addr v4, v8

    const/4 v6, 0x1

    const/16 v8, 0x18

    goto :goto_9

    :pswitch_4
    const/16 v10, 0x30

    const/16 v11, 0x28

    int-to-byte v6, v6

    const/16 v8, 0x18

    shl-int/2addr v6, v8

    int-to-long v12, v6

    const-wide/32 v14, 0xffffff

    and-long/2addr v4, v14

    add-long/2addr v4, v12

    const/4 v6, 0x1

    :goto_9
    const/16 v9, 0x10

    goto :goto_a

    :pswitch_5
    const/16 v8, 0x18

    const/16 v10, 0x30

    const/16 v11, 0x28

    int-to-byte v6, v6

    const/16 v9, 0x10

    shl-int/2addr v6, v9

    int-to-long v12, v6

    const-wide/32 v14, 0xffff

    and-long/2addr v4, v14

    add-long/2addr v4, v12

    const/4 v6, 0x1

    :goto_a
    const/16 v12, 0x8

    goto :goto_b

    :pswitch_6
    const/16 v8, 0x18

    const/16 v9, 0x10

    const/16 v10, 0x30

    const/16 v11, 0x28

    int-to-byte v6, v6

    const/16 v12, 0x8

    shl-int/2addr v6, v12

    int-to-long v13, v6

    const-wide/16 v16, 0xff

    and-long v4, v4, v16

    add-long/2addr v4, v13

    goto/16 :goto_6

    :pswitch_7
    const/16 v8, 0x18

    const/16 v9, 0x10

    const/16 v10, 0x30

    const/16 v11, 0x28

    const/16 v12, 0x8

    int-to-byte v4, v6

    int-to-long v4, v4

    goto/16 :goto_6

    :goto_b
    add-int/2addr v1, v6

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 1505
    :cond_16
    :goto_c
    iget v1, v0, Lcom/alibaba/fastjson2/x;->E:I

    const-wide/16 v4, 0x0

    goto :goto_e

    :cond_17
    move-wide v4, v3

    :goto_d
    move/from16 v1, v23

    :cond_18
    :goto_e
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_19

    goto :goto_11

    :cond_19
    const-wide v3, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    move-wide v4, v3

    const/4 v3, 0x0

    .line 1546
    :goto_f
    aget-char v6, v24, v1

    const/16 v7, 0x5c

    if-ne v6, v7, :cond_1c

    const/4 v8, 0x1

    .line 1548
    iput-boolean v8, v0, Lcom/alibaba/fastjson2/x;->h:Z

    add-int/lit8 v1, v1, 0x1

    .line 1549
    aget-char v6, v24, v1

    const/16 v8, 0x75

    if-eq v6, v8, :cond_1b

    const/16 v8, 0x78

    if-eq v6, v8, :cond_1a

    .line 1568
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson2/x;->a(I)C

    move-result v6

    const/4 v8, 0x1

    goto :goto_10

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    .line 1560
    aget-char v6, v24, v1

    const/4 v8, 0x1

    add-int/2addr v1, v8

    .line 1561
    aget-char v9, v24, v1

    .line 1562
    invoke-static {v6, v9}, Lcom/alibaba/fastjson2/x;->a(II)C

    move-result v6

    goto :goto_10

    :cond_1b
    const/4 v8, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 1552
    aget-char v6, v24, v1

    add-int/2addr v1, v8

    .line 1553
    aget-char v9, v24, v1

    add-int/2addr v1, v8

    .line 1554
    aget-char v10, v24, v1

    add-int/2addr v1, v8

    .line 1555
    aget-char v11, v24, v1

    .line 1556
    invoke-static {v6, v9, v10, v11}, Lcom/alibaba/fastjson2/x;->a(IIII)C

    move-result v6

    :goto_10
    add-int/2addr v1, v8

    int-to-long v9, v6

    xor-long/2addr v4, v9

    const-wide v9, 0x100000001b3L

    mul-long/2addr v4, v9

    move v11, v8

    const/16 v8, 0x20

    const-wide/16 v9, 0x0

    goto/16 :goto_15

    :cond_1c
    const/4 v8, 0x1

    if-ne v6, v2, :cond_22

    .line 1578
    iput v3, v0, Lcom/alibaba/fastjson2/x;->G:I

    .line 1579
    iput v1, v0, Lcom/alibaba/fastjson2/x;->F:I

    add-int/2addr v1, v8

    .line 1591
    :goto_11
    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ge v1, v2, :cond_1d

    .line 1592
    aget-char v2, v24, v1

    :goto_12
    const/16 v3, 0x20

    if-gt v2, v3, :cond_1e

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v2

    const-wide v8, 0x100003700L

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1e

    add-int/lit8 v1, v1, 0x1

    .line 1596
    aget-char v2, v24, v1

    goto :goto_12

    :cond_1d
    const/16 v2, 0x1a

    :cond_1e
    const/16 v3, 0x3a

    if-ne v2, v3, :cond_21

    const/4 v3, 0x1

    add-int/2addr v1, v3

    .line 1607
    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v1, v2, :cond_1f

    const/16 v2, 0x1a

    goto :goto_13

    .line 1610
    :cond_1f
    aget-char v2, v24, v1

    :goto_13
    const/16 v8, 0x20

    :goto_14
    if-gt v2, v8, :cond_20

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v2

    const-wide v9, 0x100003700L

    and-long/2addr v6, v9

    const-wide/16 v9, 0x0

    cmp-long v3, v6, v9

    if-eqz v3, :cond_20

    add-int/lit8 v1, v1, 0x1

    .line 1615
    aget-char v2, v24, v1

    goto :goto_14

    :cond_20
    const/4 v11, 0x1

    add-int/2addr v1, v11

    .line 1618
    iput v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    .line 1619
    iput-char v2, v0, Lcom/alibaba/fastjson2/x;->f:C

    return-wide v4

    .line 1603
    :cond_21
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expect \':\', but "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_22
    move v11, v8

    const/16 v8, 0x20

    const-wide/16 v9, 0x0

    add-int/lit8 v1, v1, 0x1

    int-to-long v12, v6

    xor-long/2addr v4, v12

    const-wide v12, 0x100000001b3L

    mul-long/2addr v4, v12

    :goto_15
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_f

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final I()J
    .locals 18

    move-object/from16 v0, p0

    .line 1799
    iget v1, v0, Lcom/alibaba/fastjson2/x;->E:I

    const/4 v4, 0x0

    move v6, v4

    const-wide/16 v4, 0x0

    .line 1801
    :goto_0
    iget v7, v0, Lcom/alibaba/fastjson2/x;->D:I

    const/16 v9, 0x27

    const/16 v10, 0x41

    const/16 v11, 0x2d

    const/16 v12, 0x5f

    const/16 v13, 0x78

    const/16 v14, 0x75

    const/16 v15, 0x5c

    const/16 v2, 0x22

    const/16 v3, 0x20

    if-ge v1, v7, :cond_9

    .line 1802
    iget-object v7, v0, Lcom/alibaba/fastjson2/x;->A:[C

    aget-char v8, v7, v1

    if-ne v8, v15, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 1805
    aget-char v8, v7, v1

    if-eq v8, v14, :cond_1

    if-eq v8, v13, :cond_0

    .line 1824
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson2/x;->a(I)C

    move-result v8

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 1816
    aget-char v8, v7, v1

    add-int/lit8 v1, v1, 0x1

    .line 1817
    aget-char v7, v7, v1

    .line 1818
    invoke-static {v8, v7}, Lcom/alibaba/fastjson2/x;->a(II)C

    move-result v8

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 1808
    aget-char v8, v7, v1

    add-int/lit8 v1, v1, 0x1

    .line 1809
    aget-char v13, v7, v1

    add-int/lit8 v1, v1, 0x1

    .line 1810
    aget-char v14, v7, v1

    add-int/lit8 v1, v1, 0x1

    .line 1811
    aget-char v7, v7, v1

    .line 1812
    invoke-static {v8, v13, v14, v7}, Lcom/alibaba/fastjson2/x;->a(IIII)C

    move-result v8

    goto :goto_1

    :cond_2
    if-ne v8, v2, :cond_3

    goto/16 :goto_6

    :cond_3
    :goto_1
    const/16 v7, 0xff

    if-gt v8, v7, :cond_8

    const/16 v7, 0x8

    if-ge v6, v7, :cond_8

    if-nez v6, :cond_4

    if-nez v8, :cond_4

    goto/16 :goto_5

    :cond_4
    if-eq v8, v12, :cond_5

    if-eq v8, v11, :cond_5

    if-ne v8, v3, :cond_6

    .line 1838
    :cond_5
    iget-object v11, v0, Lcom/alibaba/fastjson2/x;->A:[C

    add-int/lit8 v12, v1, 0x1

    aget-char v11, v11, v12

    if-eq v11, v2, :cond_6

    if-eq v11, v9, :cond_6

    if-eq v11, v8, :cond_6

    goto :goto_4

    :cond_6
    if-lt v8, v10, :cond_7

    const/16 v2, 0x5a

    if-gt v8, v2, :cond_7

    add-int/lit8 v8, v8, 0x20

    int-to-char v8, v8

    :cond_7
    packed-switch v6, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    int-to-byte v2, v8

    int-to-long v2, v2

    const/16 v7, 0x38

    shl-long/2addr v2, v7

    const-wide v7, 0xffffffffffffffL

    goto :goto_2

    :pswitch_1
    int-to-byte v2, v8

    int-to-long v2, v2

    const/16 v7, 0x30

    shl-long/2addr v2, v7

    const-wide v7, 0xffffffffffffL

    goto :goto_2

    :pswitch_2
    int-to-byte v2, v8

    int-to-long v2, v2

    const/16 v7, 0x28

    shl-long/2addr v2, v7

    const-wide v7, 0xffffffffffL

    goto :goto_2

    :pswitch_3
    int-to-byte v2, v8

    int-to-long v7, v2

    shl-long v2, v7, v3

    const-wide v7, 0xffffffffL

    goto :goto_2

    :pswitch_4
    int-to-byte v2, v8

    shl-int/lit8 v2, v2, 0x18

    int-to-long v2, v2

    const-wide/32 v7, 0xffffff

    goto :goto_2

    :pswitch_5
    int-to-byte v2, v8

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    const-wide/32 v7, 0xffff

    goto :goto_2

    :pswitch_6
    int-to-byte v2, v8

    shl-int/2addr v2, v7

    int-to-long v2, v2

    const-wide/16 v7, 0xff

    :goto_2
    and-long/2addr v4, v7

    add-long/2addr v4, v2

    goto :goto_3

    :pswitch_7
    int-to-byte v2, v8

    int-to-long v4, v2

    :goto_3
    add-int/lit8 v6, v6, 0x1

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1833
    :cond_8
    :goto_5
    iget v1, v0, Lcom/alibaba/fastjson2/x;->E:I

    const-wide/16 v4, 0x0

    const-wide/16 v16, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    move-wide/from16 v16, v4

    const-wide/16 v4, 0x0

    :goto_7
    cmp-long v4, v16, v4

    if-eqz v4, :cond_a

    return-wide v16

    :cond_a
    const-wide v4, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 1884
    :goto_8
    iget v6, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ge v1, v6, :cond_13

    .line 1885
    iget-object v6, v0, Lcom/alibaba/fastjson2/x;->A:[C

    aget-char v7, v6, v1

    if-ne v7, v15, :cond_d

    add-int/lit8 v1, v1, 0x1

    .line 1888
    aget-char v7, v6, v1

    const/16 v8, 0x75

    if-eq v7, v8, :cond_c

    const/16 v13, 0x78

    if-eq v7, v13, :cond_b

    .line 1907
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson2/x;->a(I)C

    move-result v7

    goto :goto_9

    :cond_b
    add-int/lit8 v1, v1, 0x1

    .line 1899
    aget-char v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    .line 1900
    aget-char v6, v6, v1

    .line 1901
    invoke-static {v7, v6}, Lcom/alibaba/fastjson2/x;->a(II)C

    move-result v7

    goto :goto_9

    :cond_c
    const/16 v13, 0x78

    add-int/lit8 v1, v1, 0x1

    .line 1891
    aget-char v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    .line 1892
    aget-char v14, v6, v1

    add-int/lit8 v1, v1, 0x1

    .line 1893
    aget-char v8, v6, v1

    add-int/lit8 v1, v1, 0x1

    .line 1894
    aget-char v6, v6, v1

    .line 1895
    invoke-static {v7, v14, v8, v6}, Lcom/alibaba/fastjson2/x;->a(IIII)C

    move-result v7

    goto :goto_9

    :cond_d
    const/16 v13, 0x78

    if-ne v7, v2, :cond_e

    goto :goto_b

    :cond_e
    :goto_9
    add-int/lit8 v1, v1, 0x1

    if-eq v7, v12, :cond_f

    if-eq v7, v11, :cond_f

    if-ne v7, v3, :cond_10

    .line 1916
    :cond_f
    iget-object v6, v0, Lcom/alibaba/fastjson2/x;->A:[C

    aget-char v6, v6, v1

    if-eq v6, v2, :cond_10

    if-eq v6, v9, :cond_10

    if-eq v6, v7, :cond_10

    goto :goto_8

    :cond_10
    if-lt v7, v10, :cond_11

    const/16 v6, 0x5a

    if-gt v7, v6, :cond_12

    add-int/lit8 v7, v7, 0x20

    int-to-char v7, v7

    goto :goto_a

    :cond_11
    const/16 v6, 0x5a

    :cond_12
    :goto_a
    int-to-long v7, v7

    xor-long/2addr v4, v7

    const-wide v7, 0x100000001b3L

    mul-long/2addr v4, v7

    goto :goto_8

    :cond_13
    :goto_b
    return-wide v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final J()Ljava/lang/String;
    .locals 20

    move-object/from16 v0, p0

    .line 1993
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x22

    if-eq v1, v2, :cond_1

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x27

    if-eq v1, v2, :cond_1

    .line 1994
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->a:Lcom/alibaba/fastjson2/u$c;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/u$c;->p:J

    sget-object v3, Lcom/alibaba/fastjson2/u$d;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson2/u$d;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    invoke-static {v1}, Lcom/alibaba/fastjson2/x;->b(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1995
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->N()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 2001
    :cond_1
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/4 v2, 0x0

    .line 2003
    iput-boolean v2, v0, Lcom/alibaba/fastjson2/x;->h:Z

    .line 2004
    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    iput v2, v0, Lcom/alibaba/fastjson2/x;->E:I

    const/4 v3, 0x0

    .line 2005
    :goto_0
    iget v4, v0, Lcom/alibaba/fastjson2/x;->D:I

    const/16 v5, 0x20

    const/4 v6, 0x1

    if-ge v2, v4, :cond_b

    .line 2006
    iget-object v7, v0, Lcom/alibaba/fastjson2/x;->A:[C

    aget-char v8, v7, v2

    const/16 v9, 0x5c

    if-ne v8, v9, :cond_4

    .line 2008
    iput-boolean v6, v0, Lcom/alibaba/fastjson2/x;->h:Z

    add-int/lit8 v2, v2, 0x1

    .line 2009
    aget-char v4, v7, v2

    const/16 v5, 0x75

    if-eq v4, v5, :cond_3

    const/16 v5, 0x78

    if-eq v4, v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x4

    :goto_1
    add-int/2addr v2, v6

    goto/16 :goto_4

    :cond_4
    if-ne v8, v1, :cond_a

    .line 2027
    iput v3, v0, Lcom/alibaba/fastjson2/x;->G:I

    .line 2028
    iput v2, v0, Lcom/alibaba/fastjson2/x;->F:I

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v4, :cond_5

    .line 2031
    aget-char v1, v7, v2

    goto :goto_2

    :cond_5
    const/16 v1, 0x1a

    :goto_2
    if-gt v1, v5, :cond_6

    const-wide/16 v3, 0x1

    shl-long/2addr v3, v1

    const-wide v7, 0x100003700L

    and-long/2addr v3, v7

    const-wide/16 v7, 0x0

    cmp-long v3, v3, v7

    if-eqz v3, :cond_6

    add-int/lit8 v2, v2, 0x1

    .line 2038
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    aget-char v1, v1, v2

    goto :goto_2

    :cond_6
    const/16 v3, 0x3a

    if-ne v1, v3, :cond_9

    add-int/2addr v2, v6

    .line 2045
    iget v1, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v2, v1, :cond_7

    const/16 v1, 0x1a

    goto :goto_3

    .line 2048
    :cond_7
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    aget-char v1, v1, v2

    :goto_3
    if-gt v1, v5, :cond_8

    const-wide/16 v3, 0x1

    shl-long/2addr v3, v1

    const-wide v7, 0x100003700L

    and-long/2addr v3, v7

    const-wide/16 v7, 0x0

    cmp-long v3, v3, v7

    if-eqz v3, :cond_8

    add-int/lit8 v2, v2, 0x1

    .line 2053
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    aget-char v1, v1, v2

    goto :goto_3

    :cond_8
    add-int/lit8 v3, v2, 0x1

    .line 2056
    iput v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    int-to-char v1, v1

    .line 2057
    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_5

    .line 2041
    :cond_9
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syntax error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    add-int/lit8 v2, v2, 0x1

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 2064
    :cond_b
    :goto_5
    iget v1, v0, Lcom/alibaba/fastjson2/x;->F:I

    iget v3, v0, Lcom/alibaba/fastjson2/x;->E:I

    if-lt v1, v3, :cond_16

    .line 2068
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/x;->h:Z

    if-nez v1, :cond_15

    .line 2071
    iget v7, v0, Lcom/alibaba/fastjson2/x;->G:I

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_e

    .line 2485
    :pswitch_0
    iget-object v7, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v14, v0, Lcom/alibaba/fastjson2/x;->E:I

    aget-char v15, v7, v14

    add-int/lit8 v16, v14, 0x1

    .line 2486
    aget-char v1, v7, v16

    add-int/lit8 v2, v14, 0x2

    .line 2487
    aget-char v2, v7, v2

    add-int/lit8 v16, v14, 0x3

    .line 2488
    aget-char v3, v7, v16

    add-int/lit8 v4, v14, 0x4

    .line 2489
    aget-char v4, v7, v4

    add-int/lit8 v16, v14, 0x5

    .line 2490
    aget-char v6, v7, v16

    add-int/lit8 v16, v14, 0x6

    .line 2491
    aget-char v13, v7, v16

    add-int/lit8 v16, v14, 0x7

    .line 2492
    aget-char v12, v7, v16

    add-int/lit8 v16, v14, 0x8

    .line 2493
    aget-char v11, v7, v16

    add-int/lit8 v16, v14, 0x9

    .line 2494
    aget-char v5, v7, v16

    add-int/lit8 v16, v14, 0xa

    .line 2495
    aget-char v10, v7, v16

    add-int/lit8 v16, v14, 0xb

    .line 2496
    aget-char v9, v7, v16

    add-int/lit8 v16, v14, 0xc

    .line 2497
    aget-char v8, v7, v16

    add-int/lit8 v16, v14, 0xd

    .line 2498
    aget-char v0, v7, v16

    add-int/lit8 v16, v14, 0xe

    move/from16 v18, v0

    .line 2499
    aget-char v0, v7, v16

    add-int/lit8 v14, v14, 0xf

    .line 2500
    aget-char v7, v7, v14

    and-int/lit16 v14, v15, 0xff

    if-ne v14, v15, :cond_c

    and-int/lit16 v14, v1, 0xff

    if-ne v14, v1, :cond_c

    and-int/lit16 v14, v2, 0xff

    if-ne v14, v2, :cond_c

    and-int/lit16 v14, v3, 0xff

    if-ne v14, v3, :cond_c

    and-int/lit16 v14, v4, 0xff

    if-ne v14, v4, :cond_c

    and-int/lit16 v14, v6, 0xff

    if-ne v14, v6, :cond_c

    and-int/lit16 v14, v13, 0xff

    if-ne v14, v13, :cond_c

    and-int/lit16 v14, v12, 0xff

    if-ne v14, v12, :cond_c

    and-int/lit16 v14, v11, 0xff

    if-ne v14, v11, :cond_c

    and-int/lit16 v14, v5, 0xff

    if-ne v14, v5, :cond_c

    and-int/lit16 v14, v10, 0xff

    if-ne v14, v10, :cond_c

    and-int/lit16 v14, v9, 0xff

    if-ne v14, v9, :cond_c

    and-int/lit16 v14, v8, 0xff

    if-ne v14, v8, :cond_c

    move/from16 v16, v11

    move/from16 v14, v18

    and-int/lit16 v11, v14, 0xff

    if-ne v11, v14, :cond_c

    and-int/lit16 v11, v0, 0xff

    if-ne v11, v0, :cond_c

    and-int/lit16 v11, v7, 0xff

    if-ne v11, v7, :cond_c

    int-to-long v11, v12

    const/16 v17, 0x38

    shl-long v11, v11, v17

    move/from16 v19, v9

    move/from16 v18, v10

    int-to-long v9, v13

    const/16 v13, 0x30

    shl-long/2addr v9, v13

    add-long/2addr v11, v9

    int-to-long v9, v6

    const/16 v6, 0x28

    shl-long/2addr v9, v6

    add-long/2addr v11, v9

    int-to-long v9, v4

    const/16 v4, 0x20

    shl-long/2addr v9, v4

    add-long/2addr v11, v9

    int-to-long v3, v3

    const/16 v6, 0x18

    shl-long/2addr v3, v6

    add-long/2addr v11, v3

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    add-long/2addr v11, v2

    int-to-long v1, v1

    const/16 v3, 0x8

    shl-long/2addr v1, v3

    add-long/2addr v11, v1

    int-to-long v1, v15

    add-long/2addr v1, v11

    int-to-long v3, v7

    const/16 v6, 0x38

    shl-long/2addr v3, v6

    int-to-long v6, v0

    const/16 v0, 0x30

    shl-long/2addr v6, v0

    add-long/2addr v3, v6

    int-to-long v6, v14

    const/16 v0, 0x28

    shl-long/2addr v6, v0

    add-long/2addr v3, v6

    int-to-long v6, v8

    const/16 v0, 0x20

    shl-long/2addr v6, v0

    add-long/2addr v3, v6

    move/from16 v0, v19

    int-to-long v6, v0

    const/16 v0, 0x18

    shl-long/2addr v6, v0

    add-long/2addr v3, v6

    move/from16 v0, v18

    int-to-long v6, v0

    const/16 v0, 0x10

    shl-long/2addr v6, v0

    add-long/2addr v3, v6

    int-to-long v5, v5

    const/16 v0, 0x8

    shl-long/2addr v5, v0

    add-long/2addr v3, v5

    move/from16 v0, v16

    int-to-long v5, v0

    add-long/2addr v3, v5

    move-object/from16 v0, p0

    move-wide v6, v3

    move-wide v4, v1

    goto/16 :goto_10

    .line 2435
    :pswitch_1
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->E:I

    aget-char v3, v1, v2

    add-int/lit8 v4, v2, 0x1

    .line 2436
    aget-char v4, v1, v4

    add-int/lit8 v5, v2, 0x2

    .line 2437
    aget-char v5, v1, v5

    add-int/lit8 v6, v2, 0x3

    .line 2438
    aget-char v6, v1, v6

    add-int/lit8 v7, v2, 0x4

    .line 2439
    aget-char v7, v1, v7

    add-int/lit8 v8, v2, 0x5

    .line 2440
    aget-char v8, v1, v8

    add-int/lit8 v9, v2, 0x6

    .line 2441
    aget-char v9, v1, v9

    add-int/lit8 v10, v2, 0x7

    .line 2442
    aget-char v10, v1, v10

    add-int/lit8 v11, v2, 0x8

    .line 2443
    aget-char v11, v1, v11

    add-int/lit8 v12, v2, 0x9

    .line 2444
    aget-char v12, v1, v12

    add-int/lit8 v13, v2, 0xa

    .line 2445
    aget-char v13, v1, v13

    add-int/lit8 v14, v2, 0xb

    .line 2446
    aget-char v14, v1, v14

    add-int/lit8 v15, v2, 0xc

    .line 2447
    aget-char v15, v1, v15

    add-int/lit8 v16, v2, 0xd

    .line 2448
    aget-char v0, v1, v16

    add-int/lit8 v2, v2, 0xe

    .line 2449
    aget-char v1, v1, v2

    and-int/lit16 v2, v3, 0xff

    if-ne v2, v3, :cond_c

    and-int/lit16 v2, v4, 0xff

    if-ne v2, v4, :cond_c

    and-int/lit16 v2, v5, 0xff

    if-ne v2, v5, :cond_c

    and-int/lit16 v2, v6, 0xff

    if-ne v2, v6, :cond_c

    and-int/lit16 v2, v7, 0xff

    if-ne v2, v7, :cond_c

    and-int/lit16 v2, v8, 0xff

    if-ne v2, v8, :cond_c

    and-int/lit16 v2, v9, 0xff

    if-ne v2, v9, :cond_c

    and-int/lit16 v2, v10, 0xff

    if-ne v2, v10, :cond_c

    and-int/lit16 v2, v11, 0xff

    if-ne v2, v11, :cond_c

    and-int/lit16 v2, v12, 0xff

    if-ne v2, v12, :cond_c

    and-int/lit16 v2, v13, 0xff

    if-ne v2, v13, :cond_c

    and-int/lit16 v2, v14, 0xff

    if-ne v2, v14, :cond_c

    and-int/lit16 v2, v15, 0xff

    if-ne v2, v15, :cond_c

    and-int/lit16 v2, v0, 0xff

    if-ne v2, v0, :cond_c

    and-int/lit16 v2, v1, 0xff

    if-ne v2, v1, :cond_c

    move v2, v10

    int-to-long v9, v9

    const/16 v16, 0x30

    shl-long v9, v9, v16

    move/from16 v16, v11

    move/from16 v18, v12

    int-to-long v11, v8

    const/16 v8, 0x28

    shl-long/2addr v11, v8

    add-long/2addr v9, v11

    int-to-long v7, v7

    const/16 v11, 0x20

    shl-long/2addr v7, v11

    add-long/2addr v9, v7

    int-to-long v6, v6

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    add-long/2addr v9, v6

    int-to-long v5, v5

    const/16 v7, 0x10

    shl-long/2addr v5, v7

    add-long/2addr v9, v5

    int-to-long v4, v4

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    add-long/2addr v9, v4

    int-to-long v3, v3

    add-long/2addr v3, v9

    int-to-long v5, v1

    const/16 v1, 0x38

    shl-long/2addr v5, v1

    int-to-long v0, v0

    const/16 v7, 0x30

    shl-long/2addr v0, v7

    add-long/2addr v5, v0

    int-to-long v0, v15

    const/16 v7, 0x28

    shl-long/2addr v0, v7

    add-long/2addr v5, v0

    int-to-long v0, v14

    const/16 v7, 0x20

    shl-long/2addr v0, v7

    add-long/2addr v5, v0

    int-to-long v0, v13

    const/16 v7, 0x18

    shl-long/2addr v0, v7

    add-long/2addr v5, v0

    move/from16 v0, v18

    int-to-long v0, v0

    const/16 v7, 0x10

    shl-long/2addr v0, v7

    add-long/2addr v5, v0

    move/from16 v0, v16

    int-to-long v0, v0

    const/16 v7, 0x8

    shl-long/2addr v0, v7

    add-long/2addr v5, v0

    int-to-long v0, v2

    add-long/2addr v0, v5

    move-wide v6, v0

    move-wide v4, v3

    move-object/from16 v0, p0

    goto/16 :goto_10

    :cond_c
    move-object/from16 v0, p0

    goto/16 :goto_e

    .line 2388
    :pswitch_2
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->E:I

    aget-char v3, v1, v2

    add-int/lit8 v4, v2, 0x1

    .line 2389
    aget-char v4, v1, v4

    add-int/lit8 v5, v2, 0x2

    .line 2390
    aget-char v5, v1, v5

    add-int/lit8 v6, v2, 0x3

    .line 2391
    aget-char v6, v1, v6

    add-int/lit8 v7, v2, 0x4

    .line 2392
    aget-char v7, v1, v7

    add-int/lit8 v8, v2, 0x5

    .line 2393
    aget-char v8, v1, v8

    add-int/lit8 v9, v2, 0x6

    .line 2394
    aget-char v9, v1, v9

    add-int/lit8 v10, v2, 0x7

    .line 2395
    aget-char v10, v1, v10

    add-int/lit8 v11, v2, 0x8

    .line 2396
    aget-char v11, v1, v11

    add-int/lit8 v12, v2, 0x9

    .line 2397
    aget-char v12, v1, v12

    add-int/lit8 v13, v2, 0xa

    .line 2398
    aget-char v13, v1, v13

    add-int/lit8 v14, v2, 0xb

    .line 2399
    aget-char v14, v1, v14

    add-int/lit8 v15, v2, 0xc

    .line 2400
    aget-char v15, v1, v15

    add-int/lit8 v2, v2, 0xd

    .line 2401
    aget-char v1, v1, v2

    and-int/lit16 v2, v3, 0xff

    if-ne v2, v3, :cond_d

    and-int/lit16 v2, v4, 0xff

    if-ne v2, v4, :cond_d

    and-int/lit16 v2, v5, 0xff

    if-ne v2, v5, :cond_d

    and-int/lit16 v2, v6, 0xff

    if-ne v2, v6, :cond_d

    and-int/lit16 v2, v7, 0xff

    if-ne v2, v7, :cond_d

    and-int/lit16 v2, v8, 0xff

    if-ne v2, v8, :cond_d

    and-int/lit16 v2, v9, 0xff

    if-ne v2, v9, :cond_d

    and-int/lit16 v2, v10, 0xff

    if-ne v2, v10, :cond_d

    and-int/lit16 v2, v11, 0xff

    if-ne v2, v11, :cond_d

    and-int/lit16 v2, v12, 0xff

    if-ne v2, v12, :cond_d

    and-int/lit16 v2, v13, 0xff

    if-ne v2, v13, :cond_d

    and-int/lit16 v2, v14, 0xff

    if-ne v2, v14, :cond_d

    and-int/lit16 v2, v15, 0xff

    if-ne v2, v15, :cond_d

    and-int/lit16 v2, v1, 0xff

    if-ne v2, v1, :cond_d

    move v2, v9

    int-to-long v8, v8

    const/16 v16, 0x28

    shl-long v8, v8, v16

    move/from16 v16, v10

    move/from16 v18, v11

    int-to-long v10, v7

    const/16 v7, 0x20

    shl-long/2addr v10, v7

    add-long/2addr v8, v10

    int-to-long v6, v6

    const/16 v10, 0x18

    shl-long/2addr v6, v10

    add-long/2addr v8, v6

    int-to-long v5, v5

    const/16 v7, 0x10

    shl-long/2addr v5, v7

    add-long/2addr v8, v5

    int-to-long v4, v4

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    add-long/2addr v8, v4

    int-to-long v3, v3

    add-long/2addr v3, v8

    int-to-long v5, v1

    const/16 v1, 0x38

    shl-long/2addr v5, v1

    int-to-long v7, v15

    const/16 v1, 0x30

    shl-long/2addr v7, v1

    add-long/2addr v5, v7

    int-to-long v7, v14

    const/16 v1, 0x28

    shl-long/2addr v7, v1

    add-long/2addr v5, v7

    int-to-long v7, v13

    const/16 v1, 0x20

    shl-long/2addr v7, v1

    add-long/2addr v5, v7

    int-to-long v7, v12

    const/16 v1, 0x18

    shl-long/2addr v7, v1

    add-long/2addr v5, v7

    move/from16 v1, v18

    int-to-long v7, v1

    const/16 v1, 0x10

    shl-long/2addr v7, v1

    add-long/2addr v5, v7

    move/from16 v1, v16

    goto/16 :goto_6

    .line 2344
    :pswitch_3
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->E:I

    aget-char v3, v1, v2

    add-int/lit8 v4, v2, 0x1

    .line 2345
    aget-char v4, v1, v4

    add-int/lit8 v5, v2, 0x2

    .line 2346
    aget-char v5, v1, v5

    add-int/lit8 v6, v2, 0x3

    .line 2347
    aget-char v6, v1, v6

    add-int/lit8 v7, v2, 0x4

    .line 2348
    aget-char v7, v1, v7

    add-int/lit8 v8, v2, 0x5

    .line 2349
    aget-char v8, v1, v8

    add-int/lit8 v9, v2, 0x6

    .line 2350
    aget-char v9, v1, v9

    add-int/lit8 v10, v2, 0x7

    .line 2351
    aget-char v10, v1, v10

    add-int/lit8 v11, v2, 0x8

    .line 2352
    aget-char v11, v1, v11

    add-int/lit8 v12, v2, 0x9

    .line 2353
    aget-char v12, v1, v12

    add-int/lit8 v13, v2, 0xa

    .line 2354
    aget-char v13, v1, v13

    add-int/lit8 v14, v2, 0xb

    .line 2355
    aget-char v14, v1, v14

    add-int/lit8 v2, v2, 0xc

    .line 2356
    aget-char v1, v1, v2

    and-int/lit16 v2, v3, 0xff

    if-ne v2, v3, :cond_d

    and-int/lit16 v2, v4, 0xff

    if-ne v2, v4, :cond_d

    and-int/lit16 v2, v5, 0xff

    if-ne v2, v5, :cond_d

    and-int/lit16 v2, v6, 0xff

    if-ne v2, v6, :cond_d

    and-int/lit16 v2, v7, 0xff

    if-ne v2, v7, :cond_d

    and-int/lit16 v2, v8, 0xff

    if-ne v2, v8, :cond_d

    and-int/lit16 v2, v9, 0xff

    if-ne v2, v9, :cond_d

    and-int/lit16 v2, v10, 0xff

    if-ne v2, v10, :cond_d

    and-int/lit16 v2, v11, 0xff

    if-ne v2, v11, :cond_d

    and-int/lit16 v2, v12, 0xff

    if-ne v2, v12, :cond_d

    and-int/lit16 v2, v13, 0xff

    if-ne v2, v13, :cond_d

    and-int/lit16 v2, v14, 0xff

    if-ne v2, v14, :cond_d

    and-int/lit16 v2, v1, 0xff

    if-ne v2, v1, :cond_d

    move v2, v8

    int-to-long v7, v7

    const/16 v15, 0x20

    shl-long/2addr v7, v15

    move v15, v9

    move/from16 v16, v10

    int-to-long v9, v6

    const/16 v6, 0x18

    shl-long/2addr v9, v6

    add-long/2addr v7, v9

    int-to-long v5, v5

    const/16 v9, 0x10

    shl-long/2addr v5, v9

    add-long/2addr v7, v5

    int-to-long v4, v4

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    add-long/2addr v7, v4

    int-to-long v3, v3

    add-long/2addr v3, v7

    int-to-long v5, v1

    const/16 v1, 0x38

    shl-long/2addr v5, v1

    int-to-long v7, v14

    const/16 v1, 0x30

    shl-long/2addr v7, v1

    add-long/2addr v5, v7

    int-to-long v7, v13

    const/16 v1, 0x28

    shl-long/2addr v7, v1

    add-long/2addr v5, v7

    int-to-long v7, v12

    const/16 v1, 0x20

    shl-long/2addr v7, v1

    add-long/2addr v5, v7

    int-to-long v7, v11

    const/16 v1, 0x18

    shl-long/2addr v7, v1

    add-long/2addr v5, v7

    move/from16 v1, v16

    int-to-long v7, v1

    const/16 v1, 0x10

    shl-long/2addr v7, v1

    add-long/2addr v5, v7

    move v1, v15

    :goto_6
    int-to-long v7, v1

    const/16 v1, 0x8

    shl-long/2addr v7, v1

    add-long/2addr v5, v7

    int-to-long v1, v2

    add-long/2addr v1, v5

    move-wide v6, v1

    move-wide v4, v3

    goto/16 :goto_10

    .line 2303
    :pswitch_4
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->E:I

    aget-char v3, v1, v2

    add-int/lit8 v4, v2, 0x1

    .line 2304
    aget-char v4, v1, v4

    add-int/lit8 v5, v2, 0x2

    .line 2305
    aget-char v5, v1, v5

    add-int/lit8 v6, v2, 0x3

    .line 2306
    aget-char v6, v1, v6

    add-int/lit8 v7, v2, 0x4

    .line 2307
    aget-char v7, v1, v7

    add-int/lit8 v8, v2, 0x5

    .line 2308
    aget-char v8, v1, v8

    add-int/lit8 v9, v2, 0x6

    .line 2309
    aget-char v9, v1, v9

    add-int/lit8 v10, v2, 0x7

    .line 2310
    aget-char v10, v1, v10

    add-int/lit8 v11, v2, 0x8

    .line 2311
    aget-char v11, v1, v11

    add-int/lit8 v12, v2, 0x9

    .line 2312
    aget-char v12, v1, v12

    add-int/lit8 v13, v2, 0xa

    .line 2313
    aget-char v13, v1, v13

    add-int/lit8 v2, v2, 0xb

    .line 2314
    aget-char v1, v1, v2

    and-int/lit16 v2, v3, 0xff

    if-ne v2, v3, :cond_d

    and-int/lit16 v2, v4, 0xff

    if-ne v2, v4, :cond_d

    and-int/lit16 v2, v5, 0xff

    if-ne v2, v5, :cond_d

    and-int/lit16 v2, v6, 0xff

    if-ne v2, v6, :cond_d

    and-int/lit16 v2, v7, 0xff

    if-ne v2, v7, :cond_d

    and-int/lit16 v2, v8, 0xff

    if-ne v2, v8, :cond_d

    and-int/lit16 v2, v9, 0xff

    if-ne v2, v9, :cond_d

    and-int/lit16 v2, v10, 0xff

    if-ne v2, v10, :cond_d

    and-int/lit16 v2, v11, 0xff

    if-ne v2, v11, :cond_d

    and-int/lit16 v2, v12, 0xff

    if-ne v2, v12, :cond_d

    and-int/lit16 v2, v13, 0xff

    if-ne v2, v13, :cond_d

    and-int/lit16 v2, v1, 0xff

    if-ne v2, v1, :cond_d

    const/16 v2, 0x18

    shl-int/2addr v6, v2

    const/16 v2, 0x10

    shl-int/2addr v5, v2

    add-int/2addr v6, v5

    const/16 v2, 0x8

    shl-int/2addr v4, v2

    add-int/2addr v6, v4

    add-int/2addr v6, v3

    int-to-long v2, v6

    int-to-long v4, v1

    const/16 v1, 0x38

    shl-long/2addr v4, v1

    int-to-long v13, v13

    const/16 v1, 0x30

    shl-long/2addr v13, v1

    add-long/2addr v4, v13

    int-to-long v12, v12

    const/16 v1, 0x28

    shl-long/2addr v12, v1

    add-long/2addr v4, v12

    int-to-long v11, v11

    const/16 v1, 0x20

    shl-long/2addr v11, v1

    add-long/2addr v4, v11

    int-to-long v10, v10

    const/16 v1, 0x18

    shl-long/2addr v10, v1

    add-long/2addr v4, v10

    int-to-long v9, v9

    const/16 v1, 0x10

    shl-long/2addr v9, v1

    add-long/2addr v4, v9

    int-to-long v8, v8

    const/16 v1, 0x8

    shl-long/2addr v8, v1

    add-long/2addr v4, v8

    int-to-long v6, v7

    goto/16 :goto_7

    .line 2265
    :pswitch_5
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->E:I

    aget-char v3, v1, v2

    add-int/lit8 v4, v2, 0x1

    .line 2266
    aget-char v4, v1, v4

    add-int/lit8 v5, v2, 0x2

    .line 2267
    aget-char v5, v1, v5

    add-int/lit8 v6, v2, 0x3

    .line 2268
    aget-char v6, v1, v6

    add-int/lit8 v7, v2, 0x4

    .line 2269
    aget-char v7, v1, v7

    add-int/lit8 v8, v2, 0x5

    .line 2270
    aget-char v8, v1, v8

    add-int/lit8 v9, v2, 0x6

    .line 2271
    aget-char v9, v1, v9

    add-int/lit8 v10, v2, 0x7

    .line 2272
    aget-char v10, v1, v10

    add-int/lit8 v11, v2, 0x8

    .line 2273
    aget-char v11, v1, v11

    add-int/lit8 v12, v2, 0x9

    .line 2274
    aget-char v12, v1, v12

    add-int/lit8 v2, v2, 0xa

    .line 2275
    aget-char v1, v1, v2

    and-int/lit16 v2, v3, 0xff

    if-ne v2, v3, :cond_d

    and-int/lit16 v2, v4, 0xff

    if-ne v2, v4, :cond_d

    and-int/lit16 v2, v5, 0xff

    if-ne v2, v5, :cond_d

    and-int/lit16 v2, v6, 0xff

    if-ne v2, v6, :cond_d

    and-int/lit16 v2, v7, 0xff

    if-ne v2, v7, :cond_d

    and-int/lit16 v2, v8, 0xff

    if-ne v2, v8, :cond_d

    and-int/lit16 v2, v9, 0xff

    if-ne v2, v9, :cond_d

    and-int/lit16 v2, v10, 0xff

    if-ne v2, v10, :cond_d

    and-int/lit16 v2, v11, 0xff

    if-ne v2, v11, :cond_d

    and-int/lit16 v2, v12, 0xff

    if-ne v2, v12, :cond_d

    and-int/lit16 v2, v1, 0xff

    if-ne v2, v1, :cond_d

    const/16 v2, 0x10

    shl-int/2addr v5, v2

    const/16 v2, 0x8

    shl-int/2addr v4, v2

    add-int/2addr v5, v4

    add-int/2addr v5, v3

    int-to-long v2, v5

    int-to-long v4, v1

    const/16 v1, 0x38

    shl-long/2addr v4, v1

    int-to-long v12, v12

    const/16 v1, 0x30

    shl-long/2addr v12, v1

    add-long/2addr v4, v12

    int-to-long v11, v11

    const/16 v1, 0x28

    shl-long/2addr v11, v1

    add-long/2addr v4, v11

    int-to-long v10, v10

    const/16 v1, 0x20

    shl-long/2addr v10, v1

    add-long/2addr v4, v10

    int-to-long v9, v9

    const/16 v1, 0x18

    shl-long/2addr v9, v1

    add-long/2addr v4, v9

    int-to-long v8, v8

    const/16 v1, 0x10

    shl-long/2addr v8, v1

    add-long/2addr v4, v8

    int-to-long v7, v7

    const/16 v1, 0x8

    shl-long/2addr v7, v1

    add-long/2addr v4, v7

    int-to-long v6, v6

    :goto_7
    add-long/2addr v4, v6

    goto/16 :goto_8

    .line 2231
    :pswitch_6
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->E:I

    aget-char v3, v1, v2

    add-int/lit8 v4, v2, 0x1

    .line 2232
    aget-char v4, v1, v4

    add-int/lit8 v5, v2, 0x2

    .line 2233
    aget-char v5, v1, v5

    add-int/lit8 v6, v2, 0x3

    .line 2234
    aget-char v6, v1, v6

    add-int/lit8 v7, v2, 0x4

    .line 2235
    aget-char v7, v1, v7

    add-int/lit8 v8, v2, 0x5

    .line 2236
    aget-char v8, v1, v8

    add-int/lit8 v9, v2, 0x6

    .line 2237
    aget-char v9, v1, v9

    add-int/lit8 v10, v2, 0x7

    .line 2238
    aget-char v10, v1, v10

    add-int/lit8 v11, v2, 0x8

    .line 2239
    aget-char v11, v1, v11

    add-int/lit8 v2, v2, 0x9

    .line 2240
    aget-char v1, v1, v2

    and-int/lit16 v2, v3, 0xff

    if-ne v2, v3, :cond_d

    and-int/lit16 v2, v4, 0xff

    if-ne v2, v4, :cond_d

    and-int/lit16 v2, v5, 0xff

    if-ne v2, v5, :cond_d

    and-int/lit16 v2, v6, 0xff

    if-ne v2, v6, :cond_d

    and-int/lit16 v2, v7, 0xff

    if-ne v2, v7, :cond_d

    and-int/lit16 v2, v8, 0xff

    if-ne v2, v8, :cond_d

    and-int/lit16 v2, v9, 0xff

    if-ne v2, v9, :cond_d

    and-int/lit16 v2, v10, 0xff

    if-ne v2, v10, :cond_d

    and-int/lit16 v2, v11, 0xff

    if-ne v2, v11, :cond_d

    and-int/lit16 v2, v1, 0xff

    if-ne v2, v1, :cond_d

    const/16 v2, 0x8

    shl-int/2addr v4, v2

    add-int/2addr v4, v3

    int-to-long v2, v4

    int-to-long v12, v1

    const/16 v1, 0x38

    shl-long/2addr v12, v1

    int-to-long v14, v11

    const/16 v1, 0x30

    shl-long/2addr v14, v1

    add-long/2addr v12, v14

    int-to-long v10, v10

    const/16 v1, 0x28

    shl-long/2addr v10, v1

    add-long/2addr v12, v10

    int-to-long v9, v9

    const/16 v1, 0x20

    shl-long/2addr v9, v1

    add-long/2addr v12, v9

    int-to-long v8, v8

    const/16 v1, 0x18

    shl-long/2addr v8, v1

    add-long/2addr v12, v8

    int-to-long v7, v7

    const/16 v1, 0x10

    shl-long/2addr v7, v1

    add-long/2addr v12, v7

    int-to-long v6, v6

    const/16 v1, 0x8

    shl-long/2addr v6, v1

    add-long/2addr v12, v6

    int-to-long v4, v5

    add-long/2addr v4, v12

    goto :goto_8

    .line 2200
    :pswitch_7
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->E:I

    aget-char v3, v1, v2

    add-int/lit8 v4, v2, 0x1

    .line 2201
    aget-char v4, v1, v4

    add-int/lit8 v5, v2, 0x2

    .line 2202
    aget-char v5, v1, v5

    add-int/lit8 v6, v2, 0x3

    .line 2203
    aget-char v6, v1, v6

    add-int/lit8 v7, v2, 0x4

    .line 2204
    aget-char v7, v1, v7

    add-int/lit8 v8, v2, 0x5

    .line 2205
    aget-char v8, v1, v8

    add-int/lit8 v9, v2, 0x6

    .line 2206
    aget-char v9, v1, v9

    add-int/lit8 v10, v2, 0x7

    .line 2207
    aget-char v10, v1, v10

    const/16 v11, 0x8

    add-int/2addr v2, v11

    .line 2208
    aget-char v1, v1, v2

    and-int/lit16 v2, v3, 0xff

    if-ne v2, v3, :cond_d

    and-int/lit16 v2, v4, 0xff

    if-ne v2, v4, :cond_d

    and-int/lit16 v2, v5, 0xff

    if-ne v2, v5, :cond_d

    and-int/lit16 v2, v6, 0xff

    if-ne v2, v6, :cond_d

    and-int/lit16 v2, v7, 0xff

    if-ne v2, v7, :cond_d

    and-int/lit16 v2, v8, 0xff

    if-ne v2, v8, :cond_d

    and-int/lit16 v2, v9, 0xff

    if-ne v2, v9, :cond_d

    and-int/lit16 v2, v10, 0xff

    if-ne v2, v10, :cond_d

    and-int/lit16 v2, v1, 0xff

    if-ne v2, v1, :cond_d

    int-to-long v2, v3

    int-to-long v11, v1

    const/16 v1, 0x38

    shl-long/2addr v11, v1

    int-to-long v13, v10

    const/16 v1, 0x30

    shl-long/2addr v13, v1

    add-long/2addr v11, v13

    int-to-long v9, v9

    const/16 v1, 0x28

    shl-long/2addr v9, v1

    add-long/2addr v11, v9

    int-to-long v8, v8

    const/16 v1, 0x20

    shl-long/2addr v8, v1

    add-long/2addr v11, v8

    int-to-long v7, v7

    const/16 v1, 0x18

    shl-long/2addr v7, v1

    add-long/2addr v11, v7

    int-to-long v6, v6

    const/16 v1, 0x10

    shl-long/2addr v6, v1

    add-long/2addr v11, v6

    int-to-long v5, v5

    const/16 v1, 0x8

    shl-long/2addr v5, v1

    add-long/2addr v11, v5

    int-to-long v4, v4

    add-long/2addr v4, v11

    :goto_8
    move-wide v6, v4

    move-wide v4, v2

    goto/16 :goto_10

    .line 2172
    :pswitch_8
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->E:I

    aget-char v3, v1, v2

    add-int/lit8 v4, v2, 0x1

    .line 2173
    aget-char v4, v1, v4

    add-int/lit8 v5, v2, 0x2

    .line 2174
    aget-char v5, v1, v5

    add-int/lit8 v6, v2, 0x3

    .line 2175
    aget-char v6, v1, v6

    add-int/lit8 v7, v2, 0x4

    .line 2176
    aget-char v7, v1, v7

    add-int/lit8 v8, v2, 0x5

    .line 2177
    aget-char v8, v1, v8

    add-int/lit8 v9, v2, 0x6

    .line 2178
    aget-char v9, v1, v9

    add-int/lit8 v2, v2, 0x7

    .line 2179
    aget-char v1, v1, v2

    and-int/lit16 v2, v3, 0xff

    if-ne v2, v3, :cond_d

    and-int/lit16 v2, v4, 0xff

    if-ne v2, v4, :cond_d

    and-int/lit16 v2, v5, 0xff

    if-ne v2, v5, :cond_d

    and-int/lit16 v2, v6, 0xff

    if-ne v2, v6, :cond_d

    and-int/lit16 v2, v7, 0xff

    if-ne v2, v7, :cond_d

    and-int/lit16 v2, v8, 0xff

    if-ne v2, v8, :cond_d

    and-int/lit16 v2, v9, 0xff

    if-ne v2, v9, :cond_d

    and-int/lit16 v2, v1, 0xff

    if-ne v2, v1, :cond_d

    int-to-long v1, v1

    const/16 v10, 0x38

    shl-long/2addr v1, v10

    int-to-long v9, v9

    const/16 v11, 0x30

    shl-long/2addr v9, v11

    add-long/2addr v1, v9

    goto :goto_9

    .line 2147
    :pswitch_9
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->E:I

    aget-char v3, v1, v2

    add-int/lit8 v4, v2, 0x1

    .line 2148
    aget-char v4, v1, v4

    add-int/lit8 v5, v2, 0x2

    .line 2149
    aget-char v5, v1, v5

    add-int/lit8 v6, v2, 0x3

    .line 2150
    aget-char v6, v1, v6

    add-int/lit8 v7, v2, 0x4

    .line 2151
    aget-char v7, v1, v7

    add-int/lit8 v8, v2, 0x5

    .line 2152
    aget-char v8, v1, v8

    add-int/lit8 v2, v2, 0x6

    .line 2153
    aget-char v1, v1, v2

    and-int/lit16 v2, v3, 0xff

    if-ne v2, v3, :cond_d

    and-int/lit16 v2, v4, 0xff

    if-ne v2, v4, :cond_d

    and-int/lit16 v2, v5, 0xff

    if-ne v2, v5, :cond_d

    and-int/lit16 v2, v6, 0xff

    if-ne v2, v6, :cond_d

    and-int/lit16 v2, v7, 0xff

    if-ne v2, v7, :cond_d

    and-int/lit16 v2, v8, 0xff

    if-ne v2, v8, :cond_d

    and-int/lit16 v2, v1, 0xff

    if-ne v2, v1, :cond_d

    int-to-long v1, v1

    const/16 v9, 0x30

    shl-long/2addr v1, v9

    :goto_9
    int-to-long v8, v8

    const/16 v10, 0x28

    shl-long/2addr v8, v10

    add-long/2addr v1, v8

    goto :goto_a

    .line 2125
    :pswitch_a
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->E:I

    aget-char v3, v1, v2

    add-int/lit8 v4, v2, 0x1

    .line 2126
    aget-char v4, v1, v4

    add-int/lit8 v5, v2, 0x2

    .line 2127
    aget-char v5, v1, v5

    add-int/lit8 v6, v2, 0x3

    .line 2128
    aget-char v6, v1, v6

    add-int/lit8 v7, v2, 0x4

    .line 2129
    aget-char v7, v1, v7

    add-int/lit8 v2, v2, 0x5

    .line 2130
    aget-char v1, v1, v2

    and-int/lit16 v2, v3, 0xff

    if-ne v2, v3, :cond_d

    and-int/lit16 v2, v4, 0xff

    if-ne v2, v4, :cond_d

    and-int/lit16 v2, v5, 0xff

    if-ne v2, v5, :cond_d

    and-int/lit16 v2, v6, 0xff

    if-ne v2, v6, :cond_d

    and-int/lit16 v2, v7, 0xff

    if-ne v2, v7, :cond_d

    and-int/lit16 v2, v1, 0xff

    if-ne v2, v1, :cond_d

    int-to-long v1, v1

    const/16 v8, 0x28

    shl-long/2addr v1, v8

    :goto_a
    int-to-long v7, v7

    const/16 v9, 0x20

    shl-long/2addr v7, v9

    add-long/2addr v1, v7

    goto :goto_b

    .line 2106
    :pswitch_b
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->E:I

    aget-char v3, v1, v2

    add-int/lit8 v4, v2, 0x1

    .line 2107
    aget-char v4, v1, v4

    add-int/lit8 v5, v2, 0x2

    .line 2108
    aget-char v5, v1, v5

    add-int/lit8 v6, v2, 0x3

    .line 2109
    aget-char v6, v1, v6

    add-int/lit8 v2, v2, 0x4

    .line 2110
    aget-char v1, v1, v2

    and-int/lit16 v2, v3, 0xff

    if-ne v2, v3, :cond_d

    and-int/lit16 v2, v4, 0xff

    if-ne v2, v4, :cond_d

    and-int/lit16 v2, v5, 0xff

    if-ne v2, v5, :cond_d

    and-int/lit16 v2, v6, 0xff

    if-ne v2, v6, :cond_d

    and-int/lit16 v2, v1, 0xff

    if-ne v2, v1, :cond_d

    int-to-long v1, v1

    const/16 v7, 0x20

    shl-long/2addr v1, v7

    :goto_b
    int-to-long v6, v6

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    add-long/2addr v1, v6

    int-to-long v5, v5

    const/16 v7, 0x10

    shl-long/2addr v5, v7

    add-long/2addr v1, v5

    int-to-long v4, v4

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    add-long/2addr v1, v4

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_d

    .line 2090
    :pswitch_c
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->E:I

    aget-char v3, v1, v2

    add-int/lit8 v4, v2, 0x1

    .line 2091
    aget-char v4, v1, v4

    add-int/lit8 v5, v2, 0x2

    .line 2092
    aget-char v5, v1, v5

    add-int/lit8 v2, v2, 0x3

    .line 2093
    aget-char v1, v1, v2

    and-int/lit16 v2, v3, 0xff

    if-ne v2, v3, :cond_d

    and-int/lit16 v2, v4, 0xff

    if-ne v2, v4, :cond_d

    and-int/lit16 v2, v5, 0xff

    if-ne v2, v5, :cond_d

    and-int/lit16 v2, v1, 0xff

    if-ne v2, v1, :cond_d

    const/16 v2, 0x18

    shl-int/2addr v1, v2

    const/16 v2, 0x10

    shl-int/lit8 v2, v5, 0x10

    add-int/2addr v1, v2

    goto :goto_c

    .line 2077
    :pswitch_d
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->E:I

    aget-char v3, v1, v2

    add-int/lit8 v4, v2, 0x1

    .line 2078
    aget-char v4, v1, v4

    add-int/lit8 v2, v2, 0x2

    .line 2079
    aget-char v1, v1, v2

    and-int/lit16 v2, v3, 0xff

    if-ne v2, v3, :cond_d

    and-int/lit16 v2, v4, 0xff

    if-ne v2, v4, :cond_d

    and-int/lit16 v2, v1, 0xff

    if-ne v2, v1, :cond_d

    const/16 v2, 0x10

    shl-int/2addr v1, v2

    :goto_c
    const/16 v2, 0x8

    shl-int/lit8 v2, v4, 0x8

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    int-to-long v1, v1

    :goto_d
    move-wide v4, v1

    goto :goto_f

    .line 2075
    :pswitch_e
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->E:I

    aget-char v3, v1, v2

    const/4 v4, 0x1

    add-int/2addr v2, v4

    aget-char v1, v1, v2

    invoke-static {v3, v1}, Labo;->a(CC)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2073
    :pswitch_f
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->E:I

    aget-char v1, v1, v2

    invoke-static {v1}, Labo;->a(C)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_d
    :goto_e
    const-wide/16 v4, -0x1

    :goto_f
    const-wide/16 v6, -0x1

    :goto_10
    const-wide/16 v1, -0x1

    cmp-long v1, v4, v1

    if-eqz v1, :cond_13

    const-wide/16 v1, -0x1

    cmp-long v1, v6, v1

    if-eqz v1, :cond_10

    xor-long v1, v4, v6

    const/16 v3, 0x20

    ushr-long v8, v1, v3

    xor-long/2addr v1, v8

    long-to-int v1, v1

    .line 2544
    sget-object v2, Lcom/alibaba/fastjson2/d;->m:[Lcom/alibaba/fastjson2/d$f;

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    and-int/2addr v1, v2

    .line 2545
    sget-object v2, Lcom/alibaba/fastjson2/d;->m:[Lcom/alibaba/fastjson2/d$f;

    aget-object v2, v2, v1

    if-nez v2, :cond_f

    .line 2548
    iget-object v2, v0, Lcom/alibaba/fastjson2/x;->z:Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 2549
    iget v3, v0, Lcom/alibaba/fastjson2/x;->E:I

    iget v8, v0, Lcom/alibaba/fastjson2/x;->F:I

    invoke-virtual {v2, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_11

    .line 2551
    :cond_e
    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v8, v0, Lcom/alibaba/fastjson2/x;->E:I

    iget v9, v0, Lcom/alibaba/fastjson2/x;->F:I

    sub-int/2addr v9, v8

    invoke-direct {v2, v3, v8, v9}, Ljava/lang/String;-><init>([CII)V

    :goto_11
    move-object v8, v2

    .line 2553
    sget-object v9, Lcom/alibaba/fastjson2/d;->m:[Lcom/alibaba/fastjson2/d$f;

    new-instance v10, Lcom/alibaba/fastjson2/d$f;

    move-object v2, v10

    move-object v3, v8

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/fastjson2/d$f;-><init>(Ljava/lang/String;JJ)V

    aput-object v10, v9, v1

    return-object v8

    .line 2555
    :cond_f
    iget-wide v8, v2, Lcom/alibaba/fastjson2/d$f;->b:J

    cmp-long v1, v8, v4

    if-nez v1, :cond_13

    iget-wide v3, v2, Lcom/alibaba/fastjson2/d$f;->c:J

    cmp-long v1, v3, v6

    if-nez v1, :cond_13

    .line 2556
    iget-object v1, v2, Lcom/alibaba/fastjson2/d$f;->a:Ljava/lang/String;

    return-object v1

    :cond_10
    const/16 v1, 0x20

    ushr-long v1, v4, v1

    xor-long/2addr v1, v4

    long-to-int v1, v1

    .line 2559
    sget-object v2, Lcom/alibaba/fastjson2/d;->l:[Lcom/alibaba/fastjson2/d$e;

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    and-int/2addr v1, v2

    .line 2560
    sget-object v2, Lcom/alibaba/fastjson2/d;->l:[Lcom/alibaba/fastjson2/d$e;

    aget-object v2, v2, v1

    if-nez v2, :cond_12

    .line 2563
    iget-object v2, v0, Lcom/alibaba/fastjson2/x;->z:Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 2564
    iget v3, v0, Lcom/alibaba/fastjson2/x;->E:I

    iget v6, v0, Lcom/alibaba/fastjson2/x;->F:I

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_12

    .line 2566
    :cond_11
    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v6, v0, Lcom/alibaba/fastjson2/x;->E:I

    iget v7, v0, Lcom/alibaba/fastjson2/x;->F:I

    sub-int/2addr v7, v6

    invoke-direct {v2, v3, v6, v7}, Ljava/lang/String;-><init>([CII)V

    .line 2568
    :goto_12
    sget-object v3, Lcom/alibaba/fastjson2/d;->l:[Lcom/alibaba/fastjson2/d$e;

    new-instance v6, Lcom/alibaba/fastjson2/d$e;

    invoke-direct {v6, v2, v4, v5}, Lcom/alibaba/fastjson2/d$e;-><init>(Ljava/lang/String;J)V

    aput-object v6, v3, v1

    return-object v2

    .line 2570
    :cond_12
    iget-wide v6, v2, Lcom/alibaba/fastjson2/d$e;->b:J

    cmp-long v1, v6, v4

    if-nez v1, :cond_13

    .line 2571
    iget-object v1, v2, Lcom/alibaba/fastjson2/d$e;->a:Ljava/lang/String;

    return-object v1

    .line 2576
    :cond_13
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->z:Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 2577
    iget v2, v0, Lcom/alibaba/fastjson2/x;->E:I

    iget v3, v0, Lcom/alibaba/fastjson2/x;->F:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2579
    :cond_14
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v3, v0, Lcom/alibaba/fastjson2/x;->E:I

    iget v4, v0, Lcom/alibaba/fastjson2/x;->F:I

    sub-int/2addr v4, v3

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 2583
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->K()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2065
    :cond_16
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syntax error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final K()Ljava/lang/String;
    .locals 7

    .line 1934
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/x;->h:Z

    if-nez v0, :cond_1

    .line 1935
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->z:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1936
    iget v1, p0, Lcom/alibaba/fastjson2/x;->E:I

    iget v2, p0, Lcom/alibaba/fastjson2/x;->F:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1938
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, p0, Lcom/alibaba/fastjson2/x;->E:I

    iget v3, p0, Lcom/alibaba/fastjson2/x;->F:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 1942
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson2/x;->G:I

    new-array v0, v0, [C

    .line 1943
    iget v1, p0, Lcom/alibaba/fastjson2/x;->E:I

    const/4 v2, 0x0

    .line 1944
    :goto_0
    iget v3, p0, Lcom/alibaba/fastjson2/x;->F:I

    if-ge v1, v3, :cond_6

    .line 1945
    iget-object v3, p0, Lcom/alibaba/fastjson2/x;->A:[C

    aget-char v4, v3, v1

    const/16 v5, 0x22

    const/16 v6, 0x5c

    if-ne v4, v6, :cond_4

    add-int/lit8 v1, v1, 0x1

    .line 1948
    aget-char v4, v3, v1

    if-eq v4, v5, :cond_5

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_5

    const/16 v5, 0x40

    if-eq v4, v5, :cond_5

    if-eq v4, v6, :cond_5

    const/16 v5, 0x75

    if-eq v4, v5, :cond_3

    const/16 v5, 0x78

    if-eq v4, v5, :cond_2

    const/16 v3, 0x2a

    if-eq v4, v3, :cond_5

    const/16 v3, 0x2b

    if-eq v4, v3, :cond_5

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    .line 1978
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/x;->a(I)C

    move-result v4

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 1959
    aget-char v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    .line 1960
    aget-char v3, v3, v1

    .line 1961
    invoke-static {v4, v3}, Lcom/alibaba/fastjson2/x;->a(II)C

    move-result v4

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 1951
    aget-char v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    .line 1952
    aget-char v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    .line 1953
    aget-char v6, v3, v1

    add-int/lit8 v1, v1, 0x1

    .line 1954
    aget-char v3, v3, v1

    .line 1955
    invoke-static {v4, v5, v6, v3}, Lcom/alibaba/fastjson2/x;->a(IIII)C

    move-result v4

    goto :goto_1

    :cond_4
    if-ne v4, v5, :cond_5

    goto :goto_2

    .line 1984
    :cond_5
    :goto_1
    :pswitch_0
    aput-char v4, v0, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1988
    :cond_6
    :goto_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3c
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final M()J
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1081
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/x;->h:Z

    .line 1082
    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/alibaba/fastjson2/x;->E:I

    .line 1083
    iget-char v2, v0, Lcom/alibaba/fastjson2/x;->f:C

    move v6, v1

    const-wide/16 v7, 0x0

    .line 1087
    :goto_0
    iget v9, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v10, v0, Lcom/alibaba/fastjson2/x;->D:I

    const/16 v11, 0x7d

    const/16 v12, 0x7b

    const/16 v13, 0x5d

    const/16 v14, 0x5b

    const/16 v15, 0xd

    const/16 v1, 0xc

    const-wide v16, 0x100003700L

    const-wide/16 v18, 0x1

    const/16 v5, 0x3a

    const/16 v3, 0x20

    const/16 v4, 0x1a

    if-gt v9, v10, :cond_6

    .line 1088
    iget-char v9, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-eq v9, v1, :cond_7

    if-eq v9, v15, :cond_7

    if-eq v9, v4, :cond_7

    if-eq v9, v5, :cond_7

    if-eq v9, v14, :cond_7

    if-eq v9, v13, :cond_7

    if-eq v9, v12, :cond_7

    if-eq v9, v11, :cond_7

    if-eq v9, v3, :cond_7

    const/16 v10, 0x21

    if-eq v9, v10, :cond_7

    packed-switch v9, :pswitch_data_0

    packed-switch v9, :pswitch_data_1

    packed-switch v9, :pswitch_data_2

    .line 1127
    iget-char v9, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_2

    const/4 v9, 0x1

    .line 1128
    iput-boolean v9, v0, Lcom/alibaba/fastjson2/x;->h:Z

    .line 1129
    iget-object v9, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v10, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v9, v9, v10

    iput-char v9, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 1130
    iget-char v9, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v10, 0x22

    if-eq v9, v10, :cond_2

    if-eq v9, v5, :cond_2

    const/16 v10, 0x40

    if-eq v9, v10, :cond_2

    const/16 v10, 0x5c

    if-eq v9, v10, :cond_2

    const/16 v10, 0x75

    if-eq v9, v10, :cond_1

    const/16 v10, 0x78

    if-eq v9, v10, :cond_0

    const/16 v10, 0x2a

    if-eq v9, v10, :cond_2

    const/16 v10, 0x2b

    if-eq v9, v10, :cond_2

    packed-switch v9, :pswitch_data_3

    packed-switch v9, :pswitch_data_4

    .line 1159
    iget-char v9, v0, Lcom/alibaba/fastjson2/x;->f:C

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson2/x;->a(I)C

    move-result v9

    iput-char v9, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_1

    .line 1140
    :cond_0
    iget-object v9, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v10, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v9, v9, v10

    .line 1141
    iget-object v10, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v11, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v10, v10, v11

    .line 1142
    invoke-static {v9, v10}, Lcom/alibaba/fastjson2/x;->a(II)C

    move-result v9

    iput-char v9, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_1

    .line 1132
    :cond_1
    iget-object v9, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v10, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v9, v9, v10

    .line 1133
    iget-object v10, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v11, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v10, v10, v11

    .line 1134
    iget-object v11, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v12, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v13, v12, 0x1

    iput v13, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v11, v11, v12

    .line 1135
    iget-object v12, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v13, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v14, v13, 0x1

    iput v14, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v12, v12, v13

    .line 1136
    invoke-static {v9, v10, v11, v12}, Lcom/alibaba/fastjson2/x;->a(IIII)C

    move-result v9

    iput-char v9, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 1164
    :cond_2
    :goto_1
    :pswitch_0
    iget-char v9, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v10, 0xff

    if-gt v9, v10, :cond_5

    const/16 v9, 0x8

    if-ge v6, v9, :cond_5

    if-nez v6, :cond_3

    iget-char v9, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-nez v9, :cond_3

    goto :goto_5

    .line 1171
    :cond_3
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    int-to-byte v1, v1

    packed-switch v6, :pswitch_data_5

    goto :goto_3

    :pswitch_1
    int-to-long v9, v1

    const/16 v1, 0x38

    shl-long/2addr v9, v1

    const-wide v11, 0xffffffffffffffL

    goto :goto_2

    :pswitch_2
    int-to-long v9, v1

    const/16 v1, 0x30

    shl-long/2addr v9, v1

    const-wide v11, 0xffffffffffffL

    goto :goto_2

    :pswitch_3
    int-to-long v9, v1

    const/16 v1, 0x28

    shl-long/2addr v9, v1

    const-wide v11, 0xffffffffffL

    goto :goto_2

    :pswitch_4
    int-to-long v9, v1

    shl-long/2addr v9, v3

    const-wide v11, 0xffffffffL

    goto :goto_2

    :pswitch_5
    shl-int/lit8 v1, v1, 0x18

    int-to-long v9, v1

    const-wide/32 v11, 0xffffff

    goto :goto_2

    :pswitch_6
    shl-int/lit8 v1, v1, 0x10

    int-to-long v9, v1

    const-wide/32 v11, 0xffff

    goto :goto_2

    :pswitch_7
    shl-int/lit8 v1, v1, 0x8

    int-to-long v9, v1

    const-wide/16 v11, 0xff

    :goto_2
    and-long/2addr v7, v11

    add-long/2addr v9, v7

    move-wide v7, v9

    goto :goto_3

    :pswitch_8
    int-to-long v7, v1

    .line 1201
    :goto_3
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v3, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v1, v3, :cond_4

    goto :goto_4

    .line 1203
    :cond_4
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v4, v1, v3

    :goto_4
    iput-char v4, v0, Lcom/alibaba/fastjson2/x;->f:C

    add-int/lit8 v6, v6, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1166
    :cond_5
    :goto_5
    iput-char v2, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 1167
    iget v2, v0, Lcom/alibaba/fastjson2/x;->E:I

    const/4 v6, 0x1

    add-int/2addr v2, v6

    iput v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    const-wide/16 v7, 0x0

    :cond_6
    const-wide/16 v11, 0x0

    goto :goto_7

    .line 1113
    :cond_7
    :pswitch_9
    iput v6, v0, Lcom/alibaba/fastjson2/x;->G:I

    .line 1114
    iget-char v2, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-ne v2, v4, :cond_8

    .line 1115
    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    iput v2, v0, Lcom/alibaba/fastjson2/x;->F:I

    goto :goto_6

    .line 1117
    :cond_8
    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    const/4 v6, 0x1

    sub-int/2addr v2, v6

    iput v2, v0, Lcom/alibaba/fastjson2/x;->F:I

    .line 1119
    :goto_6
    iget-char v2, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v2, v3, :cond_6

    iget-char v2, v0, Lcom/alibaba/fastjson2/x;->f:C

    shl-long v9, v18, v2

    and-long v9, v9, v16

    const-wide/16 v11, 0x0

    cmp-long v2, v9, v11

    if-eqz v2, :cond_9

    .line 1120
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->E()V

    goto :goto_6

    :cond_9
    :goto_7
    cmp-long v2, v7, v11

    if-eqz v2, :cond_a

    goto/16 :goto_d

    :cond_a
    const-wide v6, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    move-wide v7, v6

    const/4 v2, 0x0

    .line 1213
    :goto_8
    iget-char v6, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v9, 0x5c

    if-ne v6, v9, :cond_f

    const/4 v6, 0x1

    .line 1214
    iput-boolean v6, v0, Lcom/alibaba/fastjson2/x;->h:Z

    .line 1215
    iget-object v6, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v9, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v6, v6, v9

    iput-char v6, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 1216
    iget-char v6, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v9, 0x22

    if-eq v6, v9, :cond_d

    if-eq v6, v5, :cond_d

    const/16 v9, 0x40

    if-eq v6, v9, :cond_d

    const/16 v9, 0x5c

    if-eq v6, v9, :cond_e

    const/16 v10, 0x75

    if-eq v6, v10, :cond_c

    const/16 v10, 0x78

    if-eq v6, v10, :cond_b

    const/16 v10, 0x2a

    if-eq v6, v10, :cond_e

    const/16 v10, 0x2b

    if-eq v6, v10, :cond_e

    packed-switch v6, :pswitch_data_6

    packed-switch v6, :pswitch_data_7

    .line 1245
    iget-char v6, v0, Lcom/alibaba/fastjson2/x;->f:C

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson2/x;->a(I)C

    move-result v6

    iput-char v6, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_9

    .line 1226
    :cond_b
    iget-object v6, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v10, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v6, v6, v10

    .line 1227
    iget-object v10, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v11, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v10, v10, v11

    .line 1228
    invoke-static {v6, v10}, Lcom/alibaba/fastjson2/x;->a(II)C

    move-result v6

    iput-char v6, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_9

    .line 1218
    :cond_c
    iget-object v6, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v10, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v6, v6, v10

    .line 1219
    iget-object v10, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v11, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v10, v10, v11

    .line 1220
    iget-object v11, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v12, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v13, v12, 0x1

    iput v13, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v11, v11, v12

    .line 1221
    iget-object v12, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v13, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v14, v13, 0x1

    iput v14, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v12, v12, v13

    .line 1222
    invoke-static {v6, v10, v11, v12}, Lcom/alibaba/fastjson2/x;->a(IIII)C

    move-result v6

    iput-char v6, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_9

    :cond_d
    const/16 v9, 0x5c

    .line 1249
    :cond_e
    :goto_9
    :pswitch_a
    iget-char v6, v0, Lcom/alibaba/fastjson2/x;->f:C

    int-to-long v10, v6

    xor-long v6, v7, v10

    const-wide v10, 0x100000001b3L

    mul-long/2addr v6, v10

    .line 1251
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->E()V

    move-wide v7, v6

    const/16 v11, 0x5d

    const/16 v12, 0x7b

    const/16 v13, 0x7d

    goto :goto_b

    .line 1255
    :cond_f
    iget-char v6, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-eq v6, v1, :cond_11

    if-eq v6, v15, :cond_11

    if-eq v6, v4, :cond_11

    if-eq v6, v5, :cond_11

    const/16 v10, 0x5b

    if-eq v6, v10, :cond_11

    const/16 v11, 0x5d

    if-eq v6, v11, :cond_11

    const/16 v12, 0x7b

    if-eq v6, v12, :cond_11

    const/16 v13, 0x7d

    if-eq v6, v13, :cond_11

    if-eq v6, v3, :cond_11

    const/16 v14, 0x21

    if-eq v6, v14, :cond_11

    packed-switch v6, :pswitch_data_8

    packed-switch v6, :pswitch_data_9

    packed-switch v6, :pswitch_data_a

    .line 1294
    iget-char v6, v0, Lcom/alibaba/fastjson2/x;->f:C

    int-to-long v9, v6

    xor-long v6, v7, v9

    const-wide v8, 0x100000001b3L

    mul-long/2addr v6, v8

    .line 1297
    iget v8, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v9, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v8, v9, :cond_10

    move v8, v4

    goto :goto_a

    .line 1299
    :cond_10
    iget-object v8, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v9, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v8, v8, v9

    :goto_a
    iput-char v8, v0, Lcom/alibaba/fastjson2/x;->f:C

    move-wide v7, v6

    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    .line 1280
    :cond_11
    :pswitch_b
    iput v2, v0, Lcom/alibaba/fastjson2/x;->G:I

    .line 1281
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-ne v1, v4, :cond_12

    .line 1282
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iput v1, v0, Lcom/alibaba/fastjson2/x;->F:I

    goto :goto_c

    .line 1284
    :cond_12
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/fastjson2/x;->F:I

    .line 1286
    :goto_c
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v1, v3, :cond_13

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    shl-long v1, v18, v1

    and-long v1, v1, v16

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_13

    .line 1287
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->E()V

    goto :goto_c

    .line 1303
    :cond_13
    :goto_d
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-ne v1, v5, :cond_16

    .line 1304
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v1, v2, :cond_14

    .line 1305
    iput-char v4, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_e

    .line 1307
    :cond_14
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v5, v2, 0x1

    iput v5, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v2

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 1310
    :goto_e
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v1, v3, :cond_16

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    shl-long v1, v18, v1

    and-long v1, v1, v16

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-eqz v1, :cond_16

    .line 1311
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v1, v2, :cond_15

    .line 1312
    iput-char v4, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_f

    .line 1315
    :cond_15
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v9, v2, 0x1

    iput v9, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v2

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_e

    :cond_16
    :goto_f
    return-wide v7

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x28
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3c
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x3c
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x2d
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x3c
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x8
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x28
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x3c
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public final O()Z
    .locals 12

    .line 2588
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2589
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "not support unquoted name"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2591
    :cond_1
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    .line 2593
    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 2595
    :goto_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/x;->A:[C

    aget-char v3, v2, v1

    const/16 v4, 0x5c

    const/4 v5, 0x1

    if-ne v3, v4, :cond_4

    add-int/lit8 v1, v1, 0x1

    .line 2597
    aget-char v2, v2, v1

    const/16 v3, 0x75

    if-eq v2, v3, :cond_3

    const/16 v3, 0x78

    if-eq v2, v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x4

    :goto_2
    add-int/2addr v1, v5

    goto :goto_1

    :cond_4
    if-ne v3, v0, :cond_8

    add-int/2addr v1, v5

    .line 2616
    aget-char v0, v2, v1

    :goto_3
    const-wide/16 v2, 0x0

    const-wide v6, 0x100003700L

    const-wide/16 v8, 0x1

    const/16 v4, 0x20

    if-gt v0, v4, :cond_5

    shl-long v10, v8, v0

    and-long/2addr v10, v6

    cmp-long v10, v10, v2

    if-eqz v10, :cond_5

    add-int/lit8 v1, v1, 0x1

    .line 2620
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    aget-char v0, v0, v1

    goto :goto_3

    :cond_5
    const/16 v10, 0x3a

    if-ne v0, v10, :cond_7

    add-int/2addr v1, v5

    .line 2627
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    aget-char v0, v0, v1

    :goto_4
    if-gt v0, v4, :cond_6

    shl-long v10, v8, v0

    and-long/2addr v10, v6

    cmp-long v10, v10, v2

    if-eqz v10, :cond_6

    add-int/lit8 v1, v1, 0x1

    .line 2631
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    aget-char v0, v0, v1

    goto :goto_4

    :cond_6
    add-int/2addr v1, v5

    .line 2634
    iput v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 2635
    iput-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    return v5

    .line 2623
    :cond_7
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, expect \',\', but \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final P()V
    .locals 17

    move-object/from16 v0, p0

    .line 4287
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x22

    const-wide/16 v3, 0x0

    const-wide v5, 0x100003700L

    const-wide/16 v7, 0x1

    const/16 v9, 0x20

    const/16 v10, 0x7d

    const-string v12, "error, offset "

    const/16 v13, 0x1a

    const-string v14, ", char "

    const/4 v15, 0x1

    if-eq v1, v2, :cond_44

    const/16 v2, 0x27

    if-eq v1, v2, :cond_44

    const/16 v2, 0x2b

    const/4 v11, 0x0

    if-eq v1, v2, :cond_1d

    const/16 v2, 0x53

    if-eq v1, v2, :cond_1b

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_17

    const/16 v2, 0x66

    if-eq v1, v2, :cond_10

    const/16 v2, 0x6e

    if-eq v1, v2, :cond_9

    const/16 v2, 0x74

    if-eq v1, v2, :cond_2

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_0

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_1d

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_1d

    packed-switch v1, :pswitch_data_0

    .line 4546
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v3, v0, Lcom/alibaba/fastjson2/x;->f:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4304
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->E()V

    .line 4306
    :goto_0
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-ne v1, v10, :cond_1

    .line 4307
    iput-boolean v11, v0, Lcom/alibaba/fastjson2/x;->g:Z

    .line 4308
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->E()V

    goto/16 :goto_16

    .line 4311
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->O()Z

    .line 4312
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->P()V

    goto :goto_0

    .line 4456
    :cond_2
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v1, v1, 0x3

    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-gt v1, v2, :cond_8

    .line 4459
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v2

    const/16 v2, 0x72

    if-ne v1, v2, :cond_7

    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/2addr v2, v15

    aget-char v1, v1, v2

    const/16 v2, 0x75

    if-ne v1, v2, :cond_7

    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v2, v2, 0x2

    aget-char v1, v1, v2

    const/16 v2, 0x65

    if-ne v1, v2, :cond_7

    .line 4462
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v1, v1, 0x3

    iput v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    .line 4463
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ge v1, v2, :cond_6

    .line 4464
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v11, v2, 0x1

    iput v11, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v2

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 4470
    :goto_1
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v1, v9, :cond_4

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    shl-long v1, v7, v1

    and-long/2addr v1, v5

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    .line 4471
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ge v1, v2, :cond_3

    .line 4472
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v11, v2, 0x1

    iput v11, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v2

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_1

    .line 4474
    :cond_3
    iput-char v13, v0, Lcom/alibaba/fastjson2/x;->f:C

    return-void

    .line 4479
    :cond_4
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-eq v1, v10, :cond_5

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_45

    :cond_5
    return-void

    .line 4466
    :cond_6
    iput-char v13, v0, Lcom/alibaba/fastjson2/x;->f:C

    return-void

    .line 4460
    :cond_7
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v3, v0, Lcom/alibaba/fastjson2/x;->f:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4457
    :cond_8
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v3, v0, Lcom/alibaba/fastjson2/x;->f:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4512
    :cond_9
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v1, v1, 0x3

    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-gt v1, v2, :cond_f

    .line 4515
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v2

    const/16 v2, 0x75

    if-ne v1, v2, :cond_e

    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/2addr v2, v15

    aget-char v1, v1, v2

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_e

    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v2, v2, 0x2

    aget-char v1, v1, v2

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_e

    .line 4518
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v1, v1, 0x3

    iput v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    .line 4519
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ge v1, v2, :cond_d

    .line 4520
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v11, v2, 0x1

    iput v11, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v2

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 4526
    :goto_2
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v1, v9, :cond_b

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    shl-long v1, v7, v1

    and-long/2addr v1, v5

    cmp-long v1, v1, v3

    if-eqz v1, :cond_b

    .line 4527
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ge v1, v2, :cond_a

    .line 4528
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v11, v2, 0x1

    iput v11, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v2

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_2

    .line 4530
    :cond_a
    iput-char v13, v0, Lcom/alibaba/fastjson2/x;->f:C

    return-void

    .line 4535
    :cond_b
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-eq v1, v10, :cond_c

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_45

    :cond_c
    return-void

    .line 4522
    :cond_d
    iput-char v13, v0, Lcom/alibaba/fastjson2/x;->f:C

    return-void

    .line 4516
    :cond_e
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v3, v0, Lcom/alibaba/fastjson2/x;->f:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4513
    :cond_f
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v3, v0, Lcom/alibaba/fastjson2/x;->f:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4484
    :cond_10
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v1, v1, 0x4

    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-gt v1, v2, :cond_16

    .line 4487
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v2

    const/16 v2, 0x61

    if-ne v1, v2, :cond_15

    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/2addr v2, v15

    aget-char v1, v1, v2

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_15

    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v2, v2, 0x2

    aget-char v1, v1, v2

    const/16 v2, 0x73

    if-ne v1, v2, :cond_15

    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    const/16 v2, 0x65

    if-ne v1, v2, :cond_15

    .line 4490
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    .line 4491
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ge v1, v2, :cond_14

    .line 4492
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v11, v2, 0x1

    iput v11, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v2

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 4498
    :goto_3
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v1, v9, :cond_12

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    shl-long v1, v7, v1

    and-long/2addr v1, v5

    cmp-long v1, v1, v3

    if-eqz v1, :cond_12

    .line 4499
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ge v1, v2, :cond_11

    .line 4500
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v11, v2, 0x1

    iput v11, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v2

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_3

    .line 4502
    :cond_11
    iput-char v13, v0, Lcom/alibaba/fastjson2/x;->f:C

    return-void

    .line 4507
    :cond_12
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-eq v1, v10, :cond_13

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_45

    :cond_13
    return-void

    .line 4494
    :cond_14
    iput-char v13, v0, Lcom/alibaba/fastjson2/x;->f:C

    return-void

    .line 4488
    :cond_15
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v3, v0, Lcom/alibaba/fastjson2/x;->f:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4485
    :cond_16
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v3, v0, Lcom/alibaba/fastjson2/x;->f:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4289
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->E()V

    move v1, v11

    .line 4291
    :goto_4
    iget-char v2, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v15, 0x5d

    if-ne v2, v15, :cond_18

    .line 4292
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->E()V

    goto/16 :goto_16

    :cond_18
    if-eqz v1, :cond_1a

    .line 4295
    iget-boolean v2, v0, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v2, :cond_19

    goto :goto_5

    .line 4296
    :cond_19
    new-instance v1, Lcom/alibaba/fastjson2/aa;

    const-string v2, "illegal value"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/aa;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4298
    :cond_1a
    :goto_5
    iput-boolean v11, v0, Lcom/alibaba/fastjson2/x;->g:Z

    .line 4299
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->P()V

    add-int/lit8 v1, v1, 0x1

    const/4 v15, 0x1

    goto :goto_4

    .line 4540
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->A()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 4541
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->P()V

    goto/16 :goto_16

    .line 4544
    :cond_1c
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v3, v0, Lcom/alibaba/fastjson2/x;->f:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4334
    :cond_1d
    :pswitch_0
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_1f

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_1e

    goto :goto_6

    :cond_1e
    move v1, v11

    goto :goto_7

    :cond_1f
    :goto_6
    const/4 v1, 0x1

    :goto_7
    const-string v2, "illegal number, offset "

    if-eqz v1, :cond_21

    .line 4336
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v15, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ge v1, v15, :cond_20

    .line 4337
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v15, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v11, v15, 0x1

    iput v11, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v15

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_8

    .line 4339
    :cond_20
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4342
    :cond_21
    :goto_8
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v11, 0x2e

    if-ne v1, v11, :cond_22

    const/4 v1, 0x1

    goto :goto_9

    :cond_22
    const/4 v1, 0x0

    :goto_9
    const/16 v11, 0x39

    const/16 v15, 0x30

    if-nez v1, :cond_26

    .line 4345
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-lt v1, v15, :cond_26

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v1, v11, :cond_26

    .line 4348
    :goto_a
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v10, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ge v1, v10, :cond_25

    .line 4349
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v10, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v3, v10, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v10

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 4354
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-lt v1, v15, :cond_24

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-le v1, v11, :cond_23

    goto :goto_b

    :cond_23
    const-wide/16 v3, 0x0

    const/16 v10, 0x7d

    goto :goto_a

    :cond_24
    :goto_b
    const/4 v1, 0x1

    goto :goto_c

    .line 4351
    :cond_25
    iput-char v13, v0, Lcom/alibaba/fastjson2/x;->f:C

    return-void

    :cond_26
    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_28

    .line 4357
    iget-char v3, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v4, 0x4c

    if-eq v3, v4, :cond_27

    iget-char v3, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v4, 0x46

    if-eq v3, v4, :cond_27

    iget-char v3, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v4, 0x44

    if-eq v3, v4, :cond_27

    iget-char v3, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v4, 0x42

    if-eq v3, v4, :cond_27

    iget-char v3, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v4, 0x53

    if-ne v3, v4, :cond_28

    .line 4358
    :cond_27
    iget-object v3, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v4, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v10, v4, 0x1

    iput v10, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v3, v3, v4

    iput-char v3, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 4362
    :cond_28
    iget-char v3, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_2d

    .line 4364
    iget v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v4, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ge v3, v4, :cond_2c

    .line 4365
    iget-object v3, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v4, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v10, v4, 0x1

    iput v10, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v3, v3, v4

    iput-char v3, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 4371
    iget-char v3, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-lt v3, v15, :cond_2b

    iget-char v3, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v3, v11, :cond_2b

    .line 4373
    :cond_29
    iget v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v4, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ge v3, v4, :cond_2a

    .line 4374
    iget-object v3, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v4, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v10, v4, 0x1

    iput v10, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v3, v3, v4

    iput-char v3, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 4379
    iget-char v3, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-lt v3, v15, :cond_2b

    iget-char v3, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-le v3, v11, :cond_29

    goto :goto_d

    .line 4376
    :cond_2a
    iput-char v13, v0, Lcom/alibaba/fastjson2/x;->f:C

    return-void

    :cond_2b
    :goto_d
    const/4 v3, 0x1

    goto :goto_e

    .line 4367
    :cond_2c
    iput-char v13, v0, Lcom/alibaba/fastjson2/x;->f:C

    return-void

    :cond_2d
    const/4 v3, 0x0

    :goto_e
    if-nez v1, :cond_2f

    if-eqz v3, :cond_2e

    goto :goto_f

    .line 4384
    :cond_2e
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v2, v0, Lcom/alibaba/fastjson2/x;->f:C

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4387
    :cond_2f
    :goto_f
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v3, 0x65

    if-eq v1, v3, :cond_30

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v3, 0x45

    if-ne v1, v3, :cond_36

    .line 4388
    :cond_30
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v3

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 4391
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v3, 0x2b

    if-eq v1, v3, :cond_32

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_31

    goto :goto_10

    :cond_31
    const/16 v16, 0x0

    goto :goto_11

    .line 4393
    :cond_32
    :goto_10
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v3, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ge v1, v3, :cond_43

    .line 4394
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v3

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v16, 0x1

    .line 4400
    :goto_11
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-lt v1, v15, :cond_35

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v1, v11, :cond_35

    .line 4402
    :cond_33
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v3, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ge v1, v3, :cond_34

    .line 4403
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v3

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 4408
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-lt v1, v15, :cond_36

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-le v1, v11, :cond_33

    goto :goto_12

    .line 4405
    :cond_34
    iput-char v13, v0, Lcom/alibaba/fastjson2/x;->f:C

    return-void

    :cond_35
    if-nez v16, :cond_42

    .line 4414
    :cond_36
    :goto_12
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v3, 0x4c

    if-eq v1, v3, :cond_37

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v3, 0x46

    if-eq v1, v3, :cond_37

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v3, 0x44

    if-eq v1, v3, :cond_37

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v3, 0x42

    if-eq v1, v3, :cond_37

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v3, 0x53

    if-ne v1, v3, :cond_38

    .line 4415
    :cond_37
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v3, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ge v1, v3, :cond_41

    .line 4416
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v3

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 4423
    :cond_38
    :goto_13
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v1, v9, :cond_3a

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    shl-long v3, v7, v1

    and-long/2addr v3, v5

    const-wide/16 v10, 0x0

    cmp-long v1, v3, v10

    if-eqz v1, :cond_3a

    .line 4424
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v3, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ge v1, v3, :cond_39

    .line 4425
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v3

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_13

    .line 4427
    :cond_39
    iput-char v13, v0, Lcom/alibaba/fastjson2/x;->f:C

    return-void

    .line 4432
    :cond_3a
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v3, 0x7d

    if-eq v1, v3, :cond_40

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v3, 0x5d

    if-ne v1, v3, :cond_3b

    goto/16 :goto_15

    .line 4436
    :cond_3b
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v3, 0x2c

    if-ne v1, v3, :cond_3f

    const/4 v1, 0x1

    .line 4437
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/x;->g:Z

    .line 4438
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v3, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ge v1, v3, :cond_3e

    .line 4442
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v3

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 4443
    :goto_14
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v1, v9, :cond_3d

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    shl-long v3, v7, v1

    and-long/2addr v3, v5

    const-wide/16 v10, 0x0

    cmp-long v1, v3, v10

    if-eqz v1, :cond_3d

    .line 4444
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    .line 4445
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v3, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ge v1, v3, :cond_3c

    .line 4448
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v3

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_14

    .line 4446
    :cond_3c
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4450
    :cond_3d
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    return-void

    .line 4439
    :cond_3e
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4454
    :cond_3f
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v3, v0, Lcom/alibaba/fastjson2/x;->f:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_40
    :goto_15
    return-void

    .line 4418
    :cond_41
    iput-char v13, v0, Lcom/alibaba/fastjson2/x;->f:C

    return-void

    .line 4410
    :cond_42
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v2, v0, Lcom/alibaba/fastjson2/x;->f:C

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4396
    :cond_43
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4318
    :cond_44
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->bh()V

    .line 4549
    :cond_45
    :goto_16
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_49

    const/4 v1, 0x1

    .line 4550
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/x;->g:Z

    .line 4551
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v2, v0, Lcom/alibaba/fastjson2/x;->B:I

    if-ge v1, v2, :cond_48

    .line 4555
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v2

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 4556
    :goto_17
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v1, v9, :cond_47

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    shl-long v1, v7, v1

    and-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_47

    .line 4557
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    .line 4558
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v2, v0, Lcom/alibaba/fastjson2/x;->B:I

    if-ge v1, v2, :cond_46

    .line 4561
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v2

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_17

    .line 4559
    :cond_46
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v3, v0, Lcom/alibaba/fastjson2/x;->f:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4563
    :cond_47
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    goto :goto_18

    .line 4552
    :cond_48
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v3, v0, Lcom/alibaba/fastjson2/x;->f:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4564
    :cond_49
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/x;->g:Z

    if-nez v1, :cond_4b

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_4b

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_4b

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-ne v1, v13, :cond_4a

    goto :goto_18

    .line 4565
    :cond_4a
    new-instance v1, Lcom/alibaba/fastjson2/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal ch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v3, v0, Lcom/alibaba/fastjson2/x;->f:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/aa;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4b
    :goto_18
    return-void

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final R()[B
    .locals 17

    move-object/from16 v0, p0

    .line 92
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x78

    if-ne v1, v2, :cond_0

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->E()V

    .line 96
    :cond_0
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 97
    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    .line 98
    iget-object v3, v0, Lcom/alibaba/fastjson2/x;->A:[C

    const/16 v4, 0x27

    const-string v5, "illegal state. "

    if-eq v1, v4, :cond_2

    const/16 v4, 0x22

    if-ne v1, v4, :cond_1

    goto :goto_0

    .line 101
    :cond_1
    new-instance v2, Lcom/alibaba/fastjson2/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_0
    add-int/lit8 v4, v2, 0x1

    :goto_1
    add-int/lit8 v6, v4, 0x1

    .line 107
    aget-char v4, v3, v4

    const/16 v7, 0x39

    const/16 v8, 0x30

    if-lt v4, v8, :cond_3

    if-le v4, v7, :cond_4

    :cond_3
    const/16 v9, 0x41

    if-lt v4, v9, :cond_5

    const/16 v9, 0x46

    if-gt v4, v9, :cond_5

    :cond_4
    move v4, v6

    goto :goto_1

    :cond_5
    if-ne v4, v1, :cond_13

    add-int/lit8 v1, v6, 0x1

    .line 111
    aget-char v4, v3, v6

    sub-int v6, v1, v2

    add-int/lit8 v6, v6, -0x2

    const/4 v9, 0x0

    if-nez v6, :cond_6

    .line 120
    new-array v1, v9, [B

    return-object v1

    .line 123
    :cond_6
    rem-int/lit8 v10, v6, 0x2

    if-nez v10, :cond_12

    .line 127
    div-int/lit8 v6, v6, 0x2

    new-array v5, v6, [B

    .line 128
    :goto_2
    array-length v6, v5

    const/4 v10, 0x1

    if-ge v9, v6, :cond_9

    mul-int/lit8 v6, v9, 0x2

    add-int/2addr v6, v2

    .line 129
    aget-char v11, v3, v6

    add-int/2addr v6, v10

    .line 130
    aget-char v6, v3, v6

    const/16 v10, 0x37

    if-gt v11, v7, :cond_7

    move v12, v8

    goto :goto_3

    :cond_7
    move v12, v10

    :goto_3
    sub-int/2addr v11, v12

    if-gt v6, v7, :cond_8

    move v10, v8

    :cond_8
    sub-int/2addr v6, v10

    shl-int/lit8 v10, v11, 0x4

    or-int/2addr v6, v10

    int-to-byte v6, v6

    .line 134
    aput-byte v6, v5, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_9
    const/16 v2, 0x1a

    :goto_4
    const-wide/16 v6, 0x0

    const-wide v8, 0x100003700L

    const-wide/16 v11, 0x1

    const/16 v13, 0x20

    if-gt v4, v13, :cond_b

    shl-long v14, v11, v4

    and-long/2addr v14, v8

    cmp-long v14, v14, v6

    if-eqz v14, :cond_b

    .line 138
    iget v4, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v1, v4, :cond_a

    move v4, v2

    goto :goto_4

    :cond_a
    add-int/lit8 v4, v1, 0x1

    .line 141
    aget-char v1, v3, v1

    move/from16 v16, v4

    move v4, v1

    move/from16 v1, v16

    goto :goto_4

    :cond_b
    const/16 v14, 0x2c

    if-ne v4, v14, :cond_11

    .line 145
    iget v14, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v1, v14, :cond_c

    goto :goto_7

    .line 151
    :cond_c
    iput-boolean v10, v0, Lcom/alibaba/fastjson2/x;->g:Z

    .line 153
    aget-char v4, v3, v1

    :goto_5
    if-eqz v4, :cond_f

    if-gt v4, v13, :cond_d

    shl-long v14, v11, v4

    and-long/2addr v14, v8

    cmp-long v14, v14, v6

    if-eqz v14, :cond_d

    goto :goto_6

    :cond_d
    add-int/2addr v1, v10

    .line 163
    iput v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    .line 164
    iput-char v4, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 165
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_e

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->aV()V

    :cond_e
    return-object v5

    :cond_f
    :goto_6
    add-int/lit8 v1, v1, 0x1

    .line 156
    iget v4, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v1, v4, :cond_10

    .line 157
    iput v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    .line 158
    iput-char v2, v0, Lcom/alibaba/fastjson2/x;->f:C

    return-object v5

    .line 161
    :cond_10
    aget-char v4, v3, v1

    goto :goto_5

    .line 146
    :cond_11
    :goto_7
    iput v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    .line 147
    iput-char v4, v0, Lcom/alibaba/fastjson2/x;->f:C

    return-object v5

    .line 124
    :cond_12
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    :cond_13
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final T()I
    .locals 21

    move-object/from16 v0, p0

    .line 2649
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    .line 2650
    iget-char v2, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 2651
    iget-object v3, v0, Lcom/alibaba/fastjson2/x;->A:[C

    const/4 v4, 0x0

    const/16 v5, 0x22

    if-eq v2, v5, :cond_1

    const/16 v5, 0x27

    if-ne v2, v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v4

    goto :goto_1

    .line 2657
    :cond_1
    :goto_0
    iget-char v5, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 2658
    iget v6, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v6, v3, v6

    iput-char v6, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 2661
    :goto_1
    iget-char v6, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v7, 0x2d

    const/4 v8, 0x1

    if-ne v6, v7, :cond_2

    .line 2663
    iget v6, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v6, v3, v6

    iput-char v6, v0, Lcom/alibaba/fastjson2/x;->f:C

    move v6, v8

    goto :goto_2

    .line 2664
    :cond_2
    iget-char v6, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v7, 0x2b

    if-ne v6, v7, :cond_3

    .line 2665
    iget v6, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v6, v3, v6

    iput-char v6, v0, Lcom/alibaba/fastjson2/x;->f:C

    :cond_3
    move v6, v4

    :goto_2
    move v7, v4

    move v9, v7

    .line 2669
    :goto_3
    iget-char v10, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v11, 0x30

    const/16 v12, 0x1a

    if-lt v10, v11, :cond_6

    iget-char v10, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v13, 0x39

    if-gt v10, v13, :cond_6

    mul-int/lit8 v9, v7, 0xa

    .line 2671
    iget-char v10, v0, Lcom/alibaba/fastjson2/x;->f:C

    sub-int/2addr v10, v11

    add-int/2addr v9, v10

    if-ge v9, v7, :cond_4

    move v9, v7

    move v7, v8

    move v10, v7

    goto :goto_4

    .line 2678
    :cond_4
    iget v7, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v10, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v7, v10, :cond_5

    .line 2679
    iput-char v12, v0, Lcom/alibaba/fastjson2/x;->f:C

    move v7, v4

    move v10, v8

    goto :goto_4

    .line 2682
    :cond_5
    iget v7, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v10, v7, 0x1

    iput v10, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v7, v3, v7

    iput-char v7, v0, Lcom/alibaba/fastjson2/x;->f:C

    move v7, v9

    move v9, v8

    goto :goto_3

    :cond_6
    move v10, v9

    move v9, v7

    move v7, v4

    .line 2686
    :goto_4
    iget-char v11, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v13, 0x2e

    if-eq v11, v13, :cond_9

    iget-char v11, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v13, 0x65

    if-eq v11, v13, :cond_9

    iget-char v11, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v13, 0x45

    if-eq v11, v13, :cond_9

    iget-char v11, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v13, 0x74

    if-eq v11, v13, :cond_9

    iget-char v11, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v13, 0x66

    if-eq v11, v13, :cond_9

    iget-char v11, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v13, 0x6e

    if-eq v11, v13, :cond_9

    iget-char v11, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v13, 0x7b

    if-eq v11, v13, :cond_9

    iget-char v11, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v13, 0x5b

    if-eq v11, v13, :cond_9

    if-eqz v7, :cond_7

    goto :goto_5

    :cond_7
    if-eqz v5, :cond_8

    .line 2696
    iget-char v7, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-eq v7, v5, :cond_8

    goto :goto_5

    :cond_8
    move v7, v4

    goto :goto_6

    :cond_9
    :goto_5
    move v7, v8

    :goto_6
    const-wide/16 v13, 0x0

    if-eqz v7, :cond_d

    .line 2701
    iput v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    .line 2702
    iput-char v2, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 2703
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->aM()V

    .line 2704
    iget-byte v1, v0, Lcom/alibaba/fastjson2/x;->m:B

    if-ne v1, v8, :cond_a

    .line 2705
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->ba()Ljava/math/BigInteger;

    move-result-object v1

    .line 2707
    :try_start_0
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValueExact()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 2709
    :catch_0
    new-instance v2, Lcom/alibaba/fastjson2/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "int overflow, value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2712
    :cond_a
    iget-byte v1, v0, Lcom/alibaba/fastjson2/x;->m:B

    const/4 v2, 0x5

    if-ne v1, v2, :cond_c

    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->a:Lcom/alibaba/fastjson2/u$c;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/u$c;->p:J

    sget-object v3, Lcom/alibaba/fastjson2/u$d;->ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/u$d;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v1, v3

    cmp-long v1, v1, v13

    if-nez v1, :cond_b

    goto :goto_7

    .line 2713
    :cond_b
    new-instance v1, Lcom/alibaba/fastjson2/c;

    const-string v2, "int value not support input null"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2716
    :cond_c
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->W()I

    move-result v1

    return v1

    :cond_d
    if-eqz v5, :cond_11

    add-int/2addr v1, v8

    .line 2721
    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    if-ne v1, v2, :cond_e

    move v1, v8

    goto :goto_8

    :cond_e
    move v1, v4

    :goto_8
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/x;->j:Z

    .line 2722
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/x;->j:Z

    if-eqz v1, :cond_f

    move v10, v8

    .line 2725
    :cond_f
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v1, v2, :cond_10

    move v1, v12

    goto :goto_9

    :cond_10
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v3, v1

    :goto_9
    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 2728
    :cond_11
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x53

    const/16 v5, 0x46

    const/16 v7, 0x44

    const/16 v11, 0x42

    const/16 v15, 0x4c

    if-eq v1, v15, :cond_12

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-eq v1, v5, :cond_12

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-eq v1, v7, :cond_12

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-eq v1, v11, :cond_12

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-ne v1, v2, :cond_19

    .line 2729
    :cond_12
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-eq v1, v11, :cond_17

    if-eq v1, v7, :cond_16

    if-eq v1, v5, :cond_15

    if-eq v1, v15, :cond_14

    if-eq v1, v2, :cond_13

    goto :goto_a

    :cond_13
    const/16 v1, 0xa

    .line 2734
    iput-byte v1, v0, Lcom/alibaba/fastjson2/x;->m:B

    goto :goto_a

    :cond_14
    const/16 v1, 0xb

    .line 2737
    iput-byte v1, v0, Lcom/alibaba/fastjson2/x;->m:B

    goto :goto_a

    :cond_15
    const/16 v1, 0xc

    .line 2740
    iput-byte v1, v0, Lcom/alibaba/fastjson2/x;->m:B

    goto :goto_a

    :cond_16
    const/16 v1, 0xd

    .line 2743
    iput-byte v1, v0, Lcom/alibaba/fastjson2/x;->m:B

    goto :goto_a

    :cond_17
    const/16 v1, 0x9

    .line 2731
    iput-byte v1, v0, Lcom/alibaba/fastjson2/x;->m:B

    .line 2748
    :goto_a
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v1, v2, :cond_18

    .line 2749
    iput-char v12, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_b

    .line 2751
    :cond_18
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v3, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 2755
    :cond_19
    :goto_b
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const-wide v15, 0x100003700L

    const-wide/16 v17, 0x1

    const/16 v2, 0x20

    if-gt v1, v2, :cond_1b

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    shl-long v19, v17, v1

    and-long v19, v19, v15

    cmp-long v1, v19, v13

    if-eqz v1, :cond_1b

    .line 2756
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v1, v2, :cond_1a

    .line 2757
    iput-char v12, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_b

    .line 2759
    :cond_1a
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v3, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_b

    .line 2763
    :cond_1b
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v5, 0x2c

    if-ne v1, v5, :cond_1c

    move v4, v8

    :cond_1c
    iput-boolean v4, v0, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v4, :cond_1f

    .line 2764
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v4, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v1, v4, :cond_1d

    move v1, v12

    goto :goto_c

    :cond_1d
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v4, v1, 0x1

    iput v4, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v3, v1

    :goto_c
    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 2766
    :goto_d
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v1, v2, :cond_1f

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    shl-long v4, v17, v1

    and-long/2addr v4, v15

    cmp-long v1, v4, v13

    if-eqz v1, :cond_1f

    .line 2767
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v4, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v1, v4, :cond_1e

    .line 2768
    iput-char v12, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_d

    .line 2770
    :cond_1e
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v4, v1, 0x1

    iput v4, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v3, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_d

    :cond_1f
    if-eqz v10, :cond_21

    if-eqz v6, :cond_20

    neg-int v9, v9

    :cond_20
    return v9

    .line 2778
    :cond_21
    new-instance v1, Lcom/alibaba/fastjson2/c;

    const-string v2, "illegal input error"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final V()Ljava/lang/Integer;
    .locals 16

    move-object/from16 v0, p0

    .line 2786
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    .line 2787
    iget-char v2, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 2792
    iget-char v3, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide v7, 0x100003700L

    const-wide/16 v9, 0x1

    const/16 v11, 0x20

    const/16 v13, 0x1a

    const/16 v14, 0x22

    if-eq v3, v14, :cond_1

    iget-char v3, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v14, 0x27

    if-ne v3, v14, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_3

    .line 2793
    :cond_1
    :goto_0
    iget-char v3, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 2794
    iget-object v14, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v15, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v12, v15, 0x1

    iput v12, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v12, v14, v15

    iput-char v12, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 2796
    iget-char v12, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-ne v12, v3, :cond_5

    .line 2797
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v1, v2, :cond_2

    .line 2798
    iput-char v13, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_2

    .line 2800
    :cond_2
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v2

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 2801
    :goto_1
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v1, v11, :cond_4

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    shl-long v1, v9, v1

    and-long/2addr v1, v7

    cmp-long v1, v1, v5

    if-eqz v1, :cond_4

    .line 2802
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v1, v2, :cond_3

    .line 2803
    iput-char v13, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_1

    .line 2805
    :cond_3
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v2

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_1

    .line 2808
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->x()Z

    :goto_2
    return-object v4

    .line 2814
    :cond_5
    :goto_3
    iget-char v12, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v14, 0x2d

    const/4 v15, 0x1

    if-ne v12, v14, :cond_6

    .line 2816
    iget-object v12, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v14, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v5, v14, 0x1

    iput v5, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v5, v12, v14

    iput-char v5, v0, Lcom/alibaba/fastjson2/x;->f:C

    move v5, v15

    goto :goto_4

    .line 2817
    :cond_6
    iget-char v5, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v6, 0x2b

    if-ne v5, v6, :cond_7

    .line 2818
    iget-object v5, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v6, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v12, v6, 0x1

    iput v12, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v5, v5, v6

    iput-char v5, v0, Lcom/alibaba/fastjson2/x;->f:C

    :cond_7
    const/4 v5, 0x0

    :goto_4
    const/4 v6, 0x0

    const/4 v12, 0x0

    .line 2822
    :goto_5
    iget-char v14, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v7, 0x30

    if-lt v14, v7, :cond_a

    iget-char v8, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v14, 0x39

    if-gt v8, v14, :cond_a

    mul-int/lit8 v8, v6, 0xa

    .line 2824
    iget-char v12, v0, Lcom/alibaba/fastjson2/x;->f:C

    sub-int/2addr v12, v7

    add-int v7, v8, v12

    if-ge v7, v6, :cond_8

    move v7, v6

    move v6, v15

    move v12, v6

    goto :goto_7

    .line 2831
    :cond_8
    iget v6, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v8, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v6, v8, :cond_9

    .line 2832
    iput-char v13, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 2833
    iget v6, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/2addr v6, v15

    iput v6, v0, Lcom/alibaba/fastjson2/x;->e:I

    move v12, v15

    goto :goto_6

    .line 2836
    :cond_9
    iget-object v6, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v8, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v12, v8, 0x1

    iput v12, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v6, v6, v8

    iput-char v6, v0, Lcom/alibaba/fastjson2/x;->f:C

    move v6, v7

    move v12, v15

    const-wide v7, 0x100003700L

    goto :goto_5

    :cond_a
    move v7, v6

    :goto_6
    const/4 v6, 0x0

    .line 2840
    :goto_7
    iget-char v8, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v14, 0x2e

    if-eq v8, v14, :cond_d

    iget-char v8, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v14, 0x65

    if-eq v8, v14, :cond_d

    iget-char v8, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v14, 0x45

    if-eq v8, v14, :cond_d

    iget-char v8, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v14, 0x74

    if-eq v8, v14, :cond_d

    iget-char v8, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v14, 0x66

    if-eq v8, v14, :cond_d

    iget-char v8, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v14, 0x6e

    if-eq v8, v14, :cond_d

    iget-char v8, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v14, 0x7b

    if-eq v8, v14, :cond_d

    iget-char v8, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v14, 0x5b

    if-eq v8, v14, :cond_d

    if-eqz v6, :cond_b

    goto :goto_8

    :cond_b
    if-eqz v3, :cond_c

    .line 2850
    iget-char v6, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-eq v6, v3, :cond_c

    goto :goto_8

    :cond_c
    const/4 v6, 0x0

    goto :goto_9

    :cond_d
    :goto_8
    move v6, v15

    :goto_9
    if-eqz v6, :cond_f

    .line 2855
    iput v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    .line 2856
    iput-char v2, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 2857
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->aM()V

    .line 2858
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/x;->j:Z

    if-eqz v1, :cond_e

    return-object v4

    .line 2861
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->W()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :cond_f
    if-eqz v3, :cond_11

    .line 2865
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v1, v2, :cond_10

    .line 2866
    iput-char v13, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_a

    .line 2868
    :cond_10
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v2

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 2872
    :cond_11
    :goto_a
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x53

    const/16 v3, 0x46

    const/16 v4, 0x44

    const/16 v6, 0x42

    const/16 v8, 0x4c

    if-eq v1, v8, :cond_12

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-eq v1, v3, :cond_12

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-eq v1, v4, :cond_12

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-eq v1, v6, :cond_12

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-ne v1, v2, :cond_19

    .line 2873
    :cond_12
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-eq v1, v6, :cond_17

    if-eq v1, v4, :cond_16

    if-eq v1, v3, :cond_15

    if-eq v1, v8, :cond_14

    if-eq v1, v2, :cond_13

    goto :goto_b

    :cond_13
    const/16 v1, 0xa

    .line 2878
    iput-byte v1, v0, Lcom/alibaba/fastjson2/x;->m:B

    goto :goto_b

    :cond_14
    const/16 v1, 0xb

    .line 2881
    iput-byte v1, v0, Lcom/alibaba/fastjson2/x;->m:B

    goto :goto_b

    :cond_15
    const/16 v1, 0xc

    .line 2884
    iput-byte v1, v0, Lcom/alibaba/fastjson2/x;->m:B

    goto :goto_b

    :cond_16
    const/16 v1, 0xd

    .line 2887
    iput-byte v1, v0, Lcom/alibaba/fastjson2/x;->m:B

    goto :goto_b

    :cond_17
    const/16 v1, 0x9

    .line 2875
    iput-byte v1, v0, Lcom/alibaba/fastjson2/x;->m:B

    .line 2892
    :goto_b
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v1, v2, :cond_18

    .line 2893
    iput-char v13, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_c

    .line 2895
    :cond_18
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v2

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 2899
    :cond_19
    :goto_c
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v1, v11, :cond_1b

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    shl-long v1, v9, v1

    const-wide v3, 0x100003700L

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1b

    .line 2900
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v1, v2, :cond_1a

    .line 2901
    iput-char v13, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_c

    .line 2903
    :cond_1a
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v2

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_c

    .line 2907
    :cond_1b
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_1c

    goto :goto_d

    :cond_1c
    const/4 v15, 0x0

    :goto_d
    iput-boolean v15, v0, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v15, :cond_1f

    .line 2908
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v1, v2, :cond_1d

    .line 2909
    iput-char v13, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_f

    .line 2911
    :cond_1d
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v2

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 2912
    :goto_e
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v1, v11, :cond_1f

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    shl-long v1, v9, v1

    const-wide v3, 0x100003700L

    and-long/2addr v1, v3

    const-wide/16 v14, 0x0

    cmp-long v1, v1, v14

    if-eqz v1, :cond_1f

    .line 2913
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v1, v2, :cond_1e

    .line 2914
    iput-char v13, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_e

    .line 2916
    :cond_1e
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v6, v2, 0x1

    iput v6, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v2

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_e

    :cond_1f
    :goto_f
    if-eqz v12, :cond_21

    if-eqz v5, :cond_20

    neg-int v7, v7

    .line 2923
    :cond_20
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 2925
    :cond_21
    new-instance v1, Lcom/alibaba/fastjson2/c;

    const-string v2, "illegal input error"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(C)Z
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 522
    iget-object v2, v0, Lcom/alibaba/fastjson2/x;->A:[C

    .line 523
    iget v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    .line 524
    iget-char v4, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v5, 0x1a

    :goto_0
    const-wide/16 v6, 0x0

    const-wide v8, 0x100003700L

    const-wide/16 v10, 0x1

    const/16 v12, 0x20

    if-gt v4, v12, :cond_1

    shl-long v13, v10, v4

    and-long/2addr v13, v8

    cmp-long v13, v13, v6

    if-eqz v13, :cond_1

    .line 526
    iget v4, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v3, v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v3, 0x1

    .line 529
    aget-char v3, v2, v3

    move/from16 v17, v4

    move v4, v3

    move/from16 v3, v17

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    if-eq v4, v1, :cond_2

    return v13

    :cond_2
    const/16 v4, 0x2c

    const/4 v14, 0x1

    if-ne v1, v4, :cond_3

    move v13, v14

    .line 536
    :cond_3
    iput-boolean v13, v0, Lcom/alibaba/fastjson2/x;->g:Z

    .line 538
    iget v1, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v3, v1, :cond_4

    .line 539
    iput v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    .line 540
    iput-char v5, v0, Lcom/alibaba/fastjson2/x;->f:C

    return v14

    .line 544
    :cond_4
    aget-char v1, v2, v3

    :goto_1
    if-eqz v1, :cond_7

    if-gt v1, v12, :cond_5

    shl-long v15, v10, v1

    and-long/2addr v15, v8

    cmp-long v4, v15, v6

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    add-int/2addr v3, v14

    .line 554
    iput v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    .line 555
    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 556
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_6

    .line 557
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->aV()V

    :cond_6
    return v14

    :cond_7
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 547
    iget v1, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v3, v1, :cond_8

    .line 548
    iput v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    .line 549
    iput-char v5, v0, Lcom/alibaba/fastjson2/x;->f:C

    return v14

    .line 552
    :cond_8
    aget-char v1, v2, v3

    goto :goto_1
.end method

.method public final a(CCC)Z
    .locals 7

    .line 744
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    .line 748
    :cond_0
    iget p1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 p1, p1, 0x2

    .line 749
    iget v0, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-gt p1, v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, p0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v0, v0, v2

    if-ne v0, p2, :cond_6

    iget-object p2, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    aget-char p2, p2, v0

    if-eq p2, p3, :cond_1

    goto :goto_2

    .line 753
    :cond_1
    iget p2, p0, Lcom/alibaba/fastjson2/x;->D:I

    const/16 p3, 0x1a

    if-ne p1, p2, :cond_2

    .line 754
    iput p1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 755
    iput-char p3, p0, Lcom/alibaba/fastjson2/x;->f:C

    return v2

    .line 760
    :cond_2
    iget-object p2, p0, Lcom/alibaba/fastjson2/x;->A:[C

    aget-char p2, p2, p1

    move v0, p1

    :goto_0
    const/16 v3, 0x20

    if-gt p2, v3, :cond_4

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p2

    const-wide v5, 0x100003700L

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 764
    iget p2, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v0, p2, :cond_3

    move p2, p3

    goto :goto_1

    .line 768
    :cond_3
    iget-object p2, p0, Lcom/alibaba/fastjson2/x;->A:[C

    aget-char p2, p2, v0

    goto :goto_0

    :cond_4
    :goto_1
    if-ne v0, p1, :cond_5

    return v1

    :cond_5
    add-int/2addr v0, v2

    .line 774
    iput v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 775
    iput-char p2, p0, Lcom/alibaba/fastjson2/x;->f:C

    return v2

    :cond_6
    :goto_2
    return v1
.end method

.method public final a(CCCC)Z
    .locals 7

    .line 781
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    .line 785
    :cond_0
    iget p1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 p1, p1, 0x3

    .line 786
    iget v0, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-gt p1, v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, p0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v0, v0, v2

    if-ne v0, p2, :cond_6

    iget-object p2, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    aget-char p2, p2, v0

    if-ne p2, p3, :cond_6

    iget-object p2, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget p3, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 p3, p3, 0x2

    aget-char p2, p2, p3

    if-eq p2, p4, :cond_1

    goto :goto_2

    .line 793
    :cond_1
    iget p2, p0, Lcom/alibaba/fastjson2/x;->D:I

    const/16 p3, 0x1a

    if-ne p1, p2, :cond_2

    .line 794
    iput p1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 795
    iput-char p3, p0, Lcom/alibaba/fastjson2/x;->f:C

    return v2

    .line 800
    :cond_2
    iget-object p2, p0, Lcom/alibaba/fastjson2/x;->A:[C

    aget-char p2, p2, p1

    move p4, p1

    :goto_0
    const/16 v0, 0x20

    if-gt p2, v0, :cond_4

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p2

    const-wide v5, 0x100003700L

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_4

    add-int/lit8 p4, p4, 0x1

    .line 804
    iget p2, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne p4, p2, :cond_3

    move p2, p3

    goto :goto_1

    .line 808
    :cond_3
    iget-object p2, p0, Lcom/alibaba/fastjson2/x;->A:[C

    aget-char p2, p2, p4

    goto :goto_0

    :cond_4
    :goto_1
    if-ne p4, p1, :cond_5

    const/16 p1, 0x28

    if-eq p2, p1, :cond_5

    const/16 p1, 0x5b

    if-eq p2, p1, :cond_5

    const/16 p1, 0x5d

    if-eq p2, p1, :cond_5

    const/16 p1, 0x29

    if-eq p2, p1, :cond_5

    const/16 p1, 0x3a

    if-eq p2, p1, :cond_5

    const/16 p1, 0x2c

    if-eq p2, p1, :cond_5

    return v1

    :cond_5
    add-int/2addr p4, v2

    .line 815
    iput p4, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 816
    iput-char p2, p0, Lcom/alibaba/fastjson2/x;->f:C

    return v2

    :cond_6
    :goto_2
    return v1
.end method

.method public final a(CCCCC)Z
    .locals 7

    .line 822
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    .line 826
    :cond_0
    iget p1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 p1, p1, 0x4

    .line 827
    iget v0, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-gt p1, v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, p0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v0, v0, v2

    if-ne v0, p2, :cond_6

    iget-object p2, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    aget-char p2, p2, v0

    if-ne p2, p3, :cond_6

    iget-object p2, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget p3, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 p3, p3, 0x2

    aget-char p2, p2, p3

    if-ne p2, p4, :cond_6

    iget-object p2, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget p3, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 p3, p3, 0x3

    aget-char p2, p2, p3

    if-eq p2, p5, :cond_1

    goto :goto_2

    .line 835
    :cond_1
    iget p2, p0, Lcom/alibaba/fastjson2/x;->D:I

    const/16 p3, 0x1a

    if-ne p1, p2, :cond_2

    .line 836
    iput p1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 837
    iput-char p3, p0, Lcom/alibaba/fastjson2/x;->f:C

    return v2

    .line 842
    :cond_2
    iget-object p2, p0, Lcom/alibaba/fastjson2/x;->A:[C

    aget-char p2, p2, p1

    move p4, p1

    :goto_0
    const/16 p5, 0x20

    if-gt p2, p5, :cond_4

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p2

    const-wide v5, 0x100003700L

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long p5, v3, v5

    if-eqz p5, :cond_4

    add-int/lit8 p4, p4, 0x1

    .line 846
    iget p2, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne p4, p2, :cond_3

    move p2, p3

    goto :goto_1

    .line 850
    :cond_3
    iget-object p2, p0, Lcom/alibaba/fastjson2/x;->A:[C

    aget-char p2, p2, p4

    goto :goto_0

    :cond_4
    :goto_1
    if-ne p4, p1, :cond_5

    const/16 p1, 0x28

    if-eq p2, p1, :cond_5

    const/16 p1, 0x5b

    if-eq p2, p1, :cond_5

    const/16 p1, 0x5d

    if-eq p2, p1, :cond_5

    const/16 p1, 0x29

    if-eq p2, p1, :cond_5

    const/16 p1, 0x3a

    if-eq p2, p1, :cond_5

    const/16 p1, 0x2c

    if-eq p2, p1, :cond_5

    return v1

    :cond_5
    add-int/2addr p4, v2

    .line 857
    iput p4, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 858
    iput-char p2, p0, Lcom/alibaba/fastjson2/x;->f:C

    return v2

    :cond_6
    :goto_2
    return v1
.end method

.method public final a(CCCCCC)Z
    .locals 5

    .line 864
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    .line 868
    :cond_0
    iget p1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 p1, p1, 0x5

    .line 869
    iget v0, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-gt p1, v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, p0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v0, v0, v2

    if-ne v0, p2, :cond_6

    iget-object p2, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    aget-char p2, p2, v0

    if-ne p2, p3, :cond_6

    iget-object p2, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget p3, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 p3, p3, 0x2

    aget-char p2, p2, p3

    if-ne p2, p4, :cond_6

    iget-object p2, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget p3, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 p3, p3, 0x3

    aget-char p2, p2, p3

    if-ne p2, p5, :cond_6

    iget-object p2, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget p3, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 p3, p3, 0x4

    aget-char p2, p2, p3

    if-eq p2, p6, :cond_1

    goto :goto_2

    .line 878
    :cond_1
    iget p2, p0, Lcom/alibaba/fastjson2/x;->D:I

    const/16 p3, 0x1a

    if-ne p1, p2, :cond_2

    .line 879
    iput p1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 880
    iput-char p3, p0, Lcom/alibaba/fastjson2/x;->f:C

    return v2

    .line 885
    :cond_2
    iget-object p2, p0, Lcom/alibaba/fastjson2/x;->A:[C

    aget-char p2, p2, p1

    move p4, p1

    :goto_0
    const/16 p5, 0x20

    if-gt p2, p5, :cond_4

    const-wide/16 p5, 0x1

    shl-long/2addr p5, p2

    const-wide v3, 0x100003700L

    and-long/2addr p5, v3

    const-wide/16 v3, 0x0

    cmp-long p5, p5, v3

    if-eqz p5, :cond_4

    add-int/lit8 p4, p4, 0x1

    .line 889
    iget p2, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne p4, p2, :cond_3

    move p2, p3

    goto :goto_1

    .line 893
    :cond_3
    iget-object p2, p0, Lcom/alibaba/fastjson2/x;->A:[C

    aget-char p2, p2, p4

    goto :goto_0

    :cond_4
    :goto_1
    if-ne p4, p1, :cond_5

    const/16 p1, 0x28

    if-eq p2, p1, :cond_5

    const/16 p1, 0x5b

    if-eq p2, p1, :cond_5

    const/16 p1, 0x5d

    if-eq p2, p1, :cond_5

    const/16 p1, 0x29

    if-eq p2, p1, :cond_5

    const/16 p1, 0x3a

    if-eq p2, p1, :cond_5

    const/16 p1, 0x2c

    if-eq p2, p1, :cond_5

    return v1

    :cond_5
    add-int/2addr p4, v2

    .line 900
    iput p4, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 901
    iput-char p2, p0, Lcom/alibaba/fastjson2/x;->f:C

    return v2

    :cond_6
    :goto_2
    return v1
.end method

.method public final aA()J
    .locals 6

    .line 6158
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 6160
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "date only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6163
    :cond_1
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v1, v1, 0x12

    iget v2, p0, Lcom/alibaba/fastjson2/x;->D:I

    const/4 v3, 0x1

    if-lt v1, v2, :cond_2

    .line 6164
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/x;->j:Z

    const-wide/16 v0, 0x0

    return-wide v0

    .line 6168
    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, p0, Lcom/alibaba/fastjson2/x;->e:I

    iget-object v4, p0, Lcom/alibaba/fastjson2/x;->a:Lcom/alibaba/fastjson2/u$c;

    iget-object v4, v4, Lcom/alibaba/fastjson2/u$c;->o:Ljava/time/ZoneId;

    invoke-static {v1, v2, v4}, Laay;->b([CILjava/time/ZoneId;)J

    move-result-wide v1

    .line 6170
    iget-object v4, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v5, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v5, v5, 0x13

    aget-char v4, v4, v5

    if-ne v4, v0, :cond_5

    .line 6173
    iget v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 6175
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    .line 6176
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v4, 0x2c

    if-ne v0, v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v3, :cond_4

    .line 6177
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    :cond_4
    return-wide v1

    .line 6171
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "illegal date input"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final aB()Ljava/time/LocalTime;
    .locals 3

    .line 5632
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 5633
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "localTime only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5636
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-static {v0, v1}, Laay;->a([CI)Ljava/time/LocalTime;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 5641
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 5642
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    .line 5643
    iget-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v1, :cond_4

    .line 5644
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    :cond_4
    return-object v0
.end method

.method protected final aC()Ljava/time/LocalTime;
    .locals 3

    .line 5652
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 5653
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "localTime only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5656
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-static {v0, v1}, Laay;->b([CI)Ljava/time/LocalTime;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 5661
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v1, v1, 0x9

    iput v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 5662
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    .line 5663
    iget-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v1, :cond_4

    .line 5664
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    :cond_4
    return-object v0
.end method

.method protected final aD()Ljava/time/LocalTime;
    .locals 3

    .line 5672
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 5673
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "localTime only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5676
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-static {v0, v1}, Laay;->b([CI)Ljava/time/LocalTime;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 5681
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 5682
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    .line 5683
    iget-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v1, :cond_4

    .line 5684
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    :cond_4
    return-object v0
.end method

.method protected final aE()Ljava/time/LocalTime;
    .locals 3

    .line 6211
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 6212
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "localTime only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6215
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-static {v0, v1}, Laay;->c([CI)Ljava/time/LocalTime;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 6220
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v1, v1, 0xb

    iput v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 6221
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    .line 6222
    iget-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v1, :cond_4

    .line 6223
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    :cond_4
    return-object v0
.end method

.method protected final aF()Ljava/time/LocalTime;
    .locals 3

    .line 6231
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 6232
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "localTime only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6235
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-static {v0, v1}, Laay;->d([CI)Ljava/time/LocalTime;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 6240
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v1, v1, 0xc

    iput v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 6241
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    .line 6242
    iget-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v1, :cond_4

    .line 6243
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    :cond_4
    return-object v0
.end method

.method protected final aG()Ljava/time/LocalTime;
    .locals 3

    .line 6251
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 6252
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "localTime only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6255
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-static {v0, v1}, Laay;->e([CI)Ljava/time/LocalTime;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 6260
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v1, v1, 0xd

    iput v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 6261
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    .line 6262
    iget-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v1, :cond_4

    .line 6263
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    :cond_4
    return-object v0
.end method

.method protected final aH()Ljava/time/LocalTime;
    .locals 3

    .line 6271
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 6272
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "localTime only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6275
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-static {v0, v1}, Laay;->f([CI)Ljava/time/LocalTime;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 6280
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v1, v1, 0x13

    iput v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 6281
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    .line 6282
    iget-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v1, :cond_4

    .line 6283
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    :cond_4
    return-object v0
.end method

.method public final aI()Ljava/time/LocalDate;
    .locals 3

    .line 5692
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 5693
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "localDate only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5698
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-static {v0, v1}, Laay;->g([CI)Ljava/time/LocalDate;

    move-result-object v0
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5703
    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v1, v1, 0x9

    iput v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 5704
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    .line 5705
    iget-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v1, :cond_3

    .line 5706
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    :cond_3
    return-object v0

    :catch_0
    move-exception v0

    .line 5700
    new-instance v1, Lcom/alibaba/fastjson2/c;

    const-string v2, "read date error"

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final aJ()Ljava/time/LocalDate;
    .locals 3

    .line 5713
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 5714
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "localDate only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5719
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-static {v0, v1}, Laay;->h([CI)Ljava/time/LocalDate;

    move-result-object v0
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5724
    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 5725
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    .line 5726
    iget-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v1, :cond_3

    .line 5727
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    :cond_3
    return-object v0

    :catch_0
    move-exception v0

    .line 5721
    new-instance v1, Lcom/alibaba/fastjson2/c;

    const-string v2, "read date error"

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final aK()Ljava/time/LocalDate;
    .locals 3

    .line 5734
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 5735
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "localDate only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5740
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-static {v0, v1}, Laay;->i([CI)Ljava/time/LocalDate;

    move-result-object v0
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 5749
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v1, v1, 0xb

    iput v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 5750
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    .line 5751
    iget-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v1, :cond_4

    .line 5752
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    :cond_4
    return-object v0

    :catch_0
    move-exception v0

    .line 5742
    new-instance v1, Lcom/alibaba/fastjson2/c;

    const-string v2, "read date error"

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final aL()Ljava/time/LocalDate;
    .locals 3

    .line 5759
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 5760
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "localDate only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5763
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-static {v0, v1}, Laay;->j([CI)Ljava/time/LocalDate;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 5768
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v1, v1, 0xc

    iput v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 5769
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    .line 5770
    iget-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v1, :cond_4

    .line 5771
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    :cond_4
    return-object v0
.end method

.method public final aM()V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 4640
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/x;->j:Z

    .line 4641
    iput v1, v0, Lcom/alibaba/fastjson2/x;->p:I

    .line 4642
    iput v1, v0, Lcom/alibaba/fastjson2/x;->q:I

    .line 4643
    iput v1, v0, Lcom/alibaba/fastjson2/x;->r:I

    .line 4644
    iput v1, v0, Lcom/alibaba/fastjson2/x;->s:I

    .line 4645
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/x;->l:Z

    .line 4646
    iput-short v1, v0, Lcom/alibaba/fastjson2/x;->n:S

    .line 4647
    iput-short v1, v0, Lcom/alibaba/fastjson2/x;->o:S

    .line 4648
    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    .line 4651
    iget-char v3, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v4, 0x1a

    const/4 v5, 0x1

    const/16 v6, 0x22

    if-eq v3, v6, :cond_1

    iget-char v3, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v6, 0x27

    if-ne v3, v6, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_2

    .line 4652
    :cond_1
    :goto_0
    iget-char v3, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 4653
    iget-object v6, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v7, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v6, v6, v7

    iput-char v6, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 4655
    iget-char v6, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-ne v6, v3, :cond_3

    .line 4656
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v1, v2, :cond_2

    .line 4657
    iput-char v4, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_1

    .line 4659
    :cond_2
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v2

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 4661
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->x()Z

    .line 4662
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/x;->j:Z

    return-void

    .line 4666
    :cond_3
    :goto_2
    iget v6, v0, Lcom/alibaba/fastjson2/x;->e:I

    .line 4669
    iget-char v7, v0, Lcom/alibaba/fastjson2/x;->f:C

    const-string v8, "illegal input"

    const/16 v9, 0x2b

    const/16 v10, 0x2d

    if-ne v7, v10, :cond_5

    .line 4670
    iget v7, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v11, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-eq v7, v11, :cond_4

    .line 4675
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/x;->l:Z

    .line 4676
    iget-object v7, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v8, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v11, v8, 0x1

    iput v11, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v7, v7, v8

    iput-char v7, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_3

    .line 4671
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson2/c;

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson2/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4678
    :cond_5
    iget-char v7, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-ne v7, v9, :cond_7

    .line 4679
    iget v7, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v11, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-eq v7, v11, :cond_6

    .line 4682
    iget-object v7, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v8, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v11, v8, 0x1

    iput v11, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v7, v7, v8

    iput-char v7, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_3

    .line 4680
    :cond_6
    new-instance v1, Lcom/alibaba/fastjson2/c;

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson2/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_3
    const v7, -0xccccccc

    .line 4689
    iput-byte v5, v0, Lcom/alibaba/fastjson2/x;->m:B

    move v8, v1

    move v11, v8

    .line 4690
    :goto_4
    iget-char v12, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v13, 0x39

    const/16 v14, 0xa

    const/16 v15, 0x30

    if-lt v12, v15, :cond_b

    iget-char v12, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v12, v13, :cond_b

    if-nez v8, :cond_9

    .line 4693
    iget-char v11, v0, Lcom/alibaba/fastjson2/x;->f:C

    sub-int/2addr v11, v15

    .line 4694
    iget v12, v0, Lcom/alibaba/fastjson2/x;->s:I

    mul-int/2addr v12, v14

    iput v12, v0, Lcom/alibaba/fastjson2/x;->s:I

    .line 4695
    iget v12, v0, Lcom/alibaba/fastjson2/x;->s:I

    if-ge v12, v7, :cond_8

    :goto_5
    move v8, v5

    goto :goto_6

    .line 4698
    :cond_8
    iget v12, v0, Lcom/alibaba/fastjson2/x;->s:I

    sub-int/2addr v12, v11

    iput v12, v0, Lcom/alibaba/fastjson2/x;->s:I

    .line 4699
    iget v11, v0, Lcom/alibaba/fastjson2/x;->s:I

    if-ge v11, v7, :cond_9

    goto :goto_5

    .line 4704
    :cond_9
    :goto_6
    iget v11, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v12, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v11, v12, :cond_a

    .line 4705
    iput-char v4, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 4706
    iget v11, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/2addr v11, v5

    iput v11, v0, Lcom/alibaba/fastjson2/x;->e:I

    move v11, v5

    goto :goto_7

    .line 4709
    :cond_a
    iget-object v11, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v12, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v13, v12, 0x1

    iput v13, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v11, v11, v12

    iput-char v11, v0, Lcom/alibaba/fastjson2/x;->f:C

    move v11, v5

    goto :goto_4

    .line 4712
    :cond_b
    :goto_7
    iget-char v12, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x2e

    const/4 v9, 0x2

    if-ne v12, v1, :cond_f

    .line 4713
    iput-byte v9, v0, Lcom/alibaba/fastjson2/x;->m:B

    .line 4714
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v12, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v10, v12, 0x1

    iput v10, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v12

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 4715
    :goto_8
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-lt v1, v15, :cond_f

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v1, v13, :cond_f

    if-nez v8, :cond_d

    .line 4718
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    sub-int/2addr v1, v15

    .line 4719
    iget v10, v0, Lcom/alibaba/fastjson2/x;->s:I

    mul-int/2addr v10, v14

    iput v10, v0, Lcom/alibaba/fastjson2/x;->s:I

    .line 4720
    iget v10, v0, Lcom/alibaba/fastjson2/x;->s:I

    if-ge v10, v7, :cond_c

    :goto_9
    move v8, v5

    goto :goto_a

    .line 4723
    :cond_c
    iget v10, v0, Lcom/alibaba/fastjson2/x;->s:I

    sub-int/2addr v10, v1

    iput v10, v0, Lcom/alibaba/fastjson2/x;->s:I

    .line 4724
    iget v1, v0, Lcom/alibaba/fastjson2/x;->s:I

    if-ge v1, v7, :cond_d

    goto :goto_9

    .line 4730
    :cond_d
    :goto_a
    iget-short v1, v0, Lcom/alibaba/fastjson2/x;->o:S

    add-int/2addr v1, v5

    int-to-short v1, v1

    iput-short v1, v0, Lcom/alibaba/fastjson2/x;->o:S

    .line 4731
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v10, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v1, v10, :cond_e

    .line 4732
    iput-char v4, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 4733
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/2addr v1, v5

    iput v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    move v11, v5

    goto :goto_b

    .line 4736
    :cond_e
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v10, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v10

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    move v11, v5

    goto :goto_8

    :cond_f
    :goto_b
    if-eqz v8, :cond_13

    .line 4741
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/x;->l:Z

    if-eqz v1, :cond_10

    move v1, v6

    goto :goto_c

    :cond_10
    add-int/lit8 v1, v6, -0x1

    .line 4743
    :goto_c
    iget-short v7, v0, Lcom/alibaba/fastjson2/x;->o:S

    if-lez v7, :cond_11

    iget v7, v0, Lcom/alibaba/fastjson2/x;->e:I

    sub-int/2addr v7, v9

    goto :goto_d

    :cond_11
    iget v7, v0, Lcom/alibaba/fastjson2/x;->e:I

    sub-int/2addr v7, v5

    :goto_d
    sub-int/2addr v7, v1

    const/16 v8, 0x26

    if-le v7, v8, :cond_12

    const/16 v7, 0x8

    .line 4745
    iput-byte v7, v0, Lcom/alibaba/fastjson2/x;->m:B

    .line 4746
    new-instance v7, Ljava/lang/String;

    iget-object v8, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v10, v0, Lcom/alibaba/fastjson2/x;->e:I

    sub-int/2addr v10, v5

    sub-int/2addr v10, v1

    invoke-direct {v7, v8, v1, v10}, Ljava/lang/String;-><init>([CII)V

    iput-object v7, v0, Lcom/alibaba/fastjson2/x;->u:Ljava/lang/String;

    goto :goto_e

    .line 4748
    :cond_12
    iget-object v7, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v8, v0, Lcom/alibaba/fastjson2/x;->e:I

    sub-int/2addr v8, v5

    invoke-virtual {v0, v7, v1, v8}, Lcom/alibaba/fastjson2/x;->b([CII)V

    goto :goto_e

    .line 4751
    :cond_13
    iget v1, v0, Lcom/alibaba/fastjson2/x;->s:I

    neg-int v1, v1

    iput v1, v0, Lcom/alibaba/fastjson2/x;->s:I

    .line 4754
    :goto_e
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v7, 0x65

    if-eq v1, v7, :cond_14

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v8, 0x45

    if-ne v1, v8, :cond_1b

    .line 4757
    :cond_14
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v8, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v10, v8, 0x1

    iput v10, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v8

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 4759
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v8, 0x2d

    if-ne v1, v8, :cond_15

    .line 4761
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v8, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v10, v8, 0x1

    iput v10, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v8

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    move v8, v5

    const/4 v1, 0x0

    goto :goto_f

    .line 4762
    :cond_15
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v8, 0x2b

    if-ne v1, v8, :cond_16

    .line 4763
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v8, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v10, v8, 0x1

    iput v10, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v8

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    :cond_16
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 4766
    :goto_f
    iget-char v10, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-lt v10, v15, :cond_19

    iget-char v10, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v10, v13, :cond_19

    .line 4768
    iget-char v10, v0, Lcom/alibaba/fastjson2/x;->f:C

    sub-int/2addr v10, v15

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v10

    const/16 v10, 0x3ff

    if-gt v1, v10, :cond_18

    .line 4774
    iget v10, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v11, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v10, v11, :cond_17

    .line 4775
    iput-char v4, v0, Lcom/alibaba/fastjson2/x;->f:C

    move v11, v5

    goto :goto_10

    .line 4778
    :cond_17
    iget-object v10, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v11, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v10, v10, v11

    iput-char v10, v0, Lcom/alibaba/fastjson2/x;->f:C

    move v11, v5

    goto :goto_f

    .line 4771
    :cond_18
    new-instance v2, Lcom/alibaba/fastjson2/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "too large exp value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_19
    :goto_10
    if-eqz v8, :cond_1a

    neg-int v1, v1

    :cond_1a
    int-to-short v1, v1

    .line 4785
    iput-short v1, v0, Lcom/alibaba/fastjson2/x;->n:S

    .line 4786
    iput-byte v9, v0, Lcom/alibaba/fastjson2/x;->m:B

    .line 4789
    :cond_1b
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    if-ne v1, v6, :cond_1d

    .line 4790
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v6, 0x6e

    const/16 v8, 0x75

    const/16 v9, 0x6c

    if-ne v1, v6, :cond_1e

    .line 4791
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v6, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v6

    if-ne v1, v8, :cond_1d

    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v6, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v6

    if-ne v1, v9, :cond_1d

    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v6, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v6

    if-ne v1, v9, :cond_1d

    .line 4796
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/x;->j:Z

    const/4 v1, 0x5

    .line 4797
    iput-byte v1, v0, Lcom/alibaba/fastjson2/x;->m:B

    .line 4798
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v6, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v1, v6, :cond_1c

    .line 4799
    iput-char v4, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 4800
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/2addr v1, v5

    iput v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    goto :goto_11

    .line 4802
    :cond_1c
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v6, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v6

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    :goto_11
    move v11, v5

    :cond_1d
    const/4 v1, 0x0

    goto/16 :goto_13

    .line 4805
    :cond_1e
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v6, 0x74

    if-ne v1, v6, :cond_20

    .line 4806
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v6, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v9, v6, 0x1

    iput v9, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v6

    const/16 v6, 0x72

    if-ne v1, v6, :cond_1d

    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v6, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v9, v6, 0x1

    iput v9, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v6

    if-ne v1, v8, :cond_1d

    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v6, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v8, v6, 0x1

    iput v8, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v6

    if-ne v1, v7, :cond_1d

    .line 4811
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/x;->k:Z

    const/4 v1, 0x4

    .line 4812
    iput-byte v1, v0, Lcom/alibaba/fastjson2/x;->m:B

    .line 4813
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v6, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v1, v6, :cond_1f

    .line 4814
    iput-char v4, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 4815
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/2addr v1, v5

    iput v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    goto :goto_11

    .line 4817
    :cond_1f
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v6, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v6

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_11

    .line 4820
    :cond_20
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v6, 0x66

    if-ne v1, v6, :cond_22

    .line 4821
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v6, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v8, v6, 0x1

    iput v8, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v6

    const/16 v6, 0x61

    if-ne v1, v6, :cond_1d

    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v6, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v8, v6, 0x1

    iput v8, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v6

    if-ne v1, v9, :cond_1d

    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v6, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v8, v6, 0x1

    iput v8, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v6

    const/16 v6, 0x73

    if-ne v1, v6, :cond_1d

    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v6, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v8, v6, 0x1

    iput v8, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v6

    if-ne v1, v7, :cond_1d

    const/4 v1, 0x0

    .line 4827
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/x;->k:Z

    const/4 v6, 0x4

    .line 4828
    iput-byte v6, v0, Lcom/alibaba/fastjson2/x;->m:B

    .line 4829
    iget v6, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v7, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v6, v7, :cond_21

    .line 4830
    iput-char v4, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 4831
    iget v6, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/2addr v6, v5

    iput v6, v0, Lcom/alibaba/fastjson2/x;->e:I

    goto :goto_12

    .line 4833
    :cond_21
    iget-object v6, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v7, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v6, v6, v7

    iput-char v6, v0, Lcom/alibaba/fastjson2/x;->f:C

    :goto_12
    move v11, v5

    goto :goto_13

    :cond_22
    const/4 v1, 0x0

    .line 4836
    iget-char v6, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v7, 0x7b

    if-ne v6, v7, :cond_23

    if-nez v3, :cond_23

    .line 4838
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->aU()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/fastjson2/x;->v:Ljava/lang/Object;

    const/4 v1, 0x6

    .line 4839
    iput-byte v1, v0, Lcom/alibaba/fastjson2/x;->m:B

    return-void

    .line 4841
    :cond_23
    iget-char v6, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v7, 0x5b

    if-ne v6, v7, :cond_24

    if-nez v3, :cond_24

    .line 4843
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->aZ()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/fastjson2/x;->v:Ljava/lang/Object;

    const/4 v1, 0x7

    .line 4844
    iput-byte v1, v0, Lcom/alibaba/fastjson2/x;->m:B

    return-void

    :cond_24
    :goto_13
    if-eqz v3, :cond_27

    .line 4850
    iget-char v6, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-eq v6, v3, :cond_25

    .line 4851
    iput v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    .line 4852
    iput-char v3, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 4853
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->bf()V

    const/4 v1, 0x3

    .line 4854
    iput-byte v1, v0, Lcom/alibaba/fastjson2/x;->m:B

    return-void

    .line 4858
    :cond_25
    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v3, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v2, v3, :cond_26

    .line 4859
    iput-char v4, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_14

    .line 4861
    :cond_26
    iget-object v2, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v6, v3, 0x1

    iput v6, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v2, v2, v3

    iput-char v2, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 4865
    :cond_27
    :goto_14
    iget-char v2, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v3, 0x42

    const/16 v6, 0x4c

    if-eq v2, v6, :cond_28

    iget-char v2, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v7, 0x46

    if-eq v2, v7, :cond_28

    iget-char v2, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v7, 0x44

    if-eq v2, v7, :cond_28

    iget-char v2, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-eq v2, v3, :cond_28

    iget-char v2, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v7, 0x53

    if-ne v2, v7, :cond_2f

    .line 4866
    :cond_28
    iget-char v2, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-eq v2, v3, :cond_2d

    const/16 v3, 0x44

    if-eq v2, v3, :cond_2c

    const/16 v3, 0x46

    if-eq v2, v3, :cond_2b

    if-eq v2, v6, :cond_2a

    const/16 v3, 0x53

    if-eq v2, v3, :cond_29

    goto :goto_15

    .line 4871
    :cond_29
    iput-byte v14, v0, Lcom/alibaba/fastjson2/x;->m:B

    goto :goto_15

    :cond_2a
    const/16 v2, 0xb

    .line 4874
    iput-byte v2, v0, Lcom/alibaba/fastjson2/x;->m:B

    goto :goto_15

    :cond_2b
    const/16 v2, 0xc

    .line 4877
    iput-byte v2, v0, Lcom/alibaba/fastjson2/x;->m:B

    goto :goto_15

    :cond_2c
    const/16 v2, 0xd

    .line 4880
    iput-byte v2, v0, Lcom/alibaba/fastjson2/x;->m:B

    goto :goto_15

    :cond_2d
    const/16 v2, 0x9

    .line 4868
    iput-byte v2, v0, Lcom/alibaba/fastjson2/x;->m:B

    .line 4885
    :goto_15
    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v3, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v2, v3, :cond_2e

    .line 4886
    iput-char v4, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_16

    .line 4888
    :cond_2e
    iget-object v2, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v6, v3, 0x1

    iput v6, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v2, v2, v3

    iput-char v2, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 4892
    :cond_2f
    :goto_16
    iget-char v2, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v3, 0x20

    if-gt v2, v3, :cond_31

    const-wide/16 v2, 0x1

    iget-char v6, v0, Lcom/alibaba/fastjson2/x;->f:C

    shl-long/2addr v2, v6

    const-wide v6, 0x100003700L

    and-long/2addr v2, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_31

    .line 4893
    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v3, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v2, v3, :cond_30

    .line 4894
    iput-char v4, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_16

    .line 4896
    :cond_30
    iget-object v2, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v6, v3, 0x1

    iput v6, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v2, v2, v3

    iput-char v2, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_16

    .line 4900
    :cond_31
    iget-char v2, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_32

    move v1, v5

    :cond_32
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v1, :cond_35

    .line 4902
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v1, v2, :cond_33

    .line 4903
    iput-char v4, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_18

    .line 4905
    :cond_33
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v2

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 4906
    :goto_17
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x20

    if-gt v1, v2, :cond_35

    const-wide/16 v1, 0x1

    iget-char v3, v0, Lcom/alibaba/fastjson2/x;->f:C

    shl-long/2addr v1, v3

    const-wide v5, 0x100003700L

    and-long/2addr v1, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-eqz v1, :cond_35

    .line 4907
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v1, v2, :cond_34

    .line 4908
    iput-char v4, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_17

    .line 4910
    :cond_34
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v2

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_17

    :cond_35
    :goto_18
    if-eqz v11, :cond_36

    return-void

    .line 4917
    :cond_36
    new-instance v1, Lcom/alibaba/fastjson2/c;

    const-string v2, "illegal input error"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public aN()Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    .line 4053
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x74

    const/16 v3, 0x6e

    const/16 v4, 0x66

    const/16 v5, 0x22

    if-eq v1, v5, :cond_7

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v6, 0x27

    if-ne v1, v6, :cond_0

    goto :goto_1

    .line 4250
    :cond_0
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v5, 0x2b

    if-eq v1, v5, :cond_6

    const/16 v5, 0x2d

    if-eq v1, v5, :cond_6

    const/16 v5, 0x5b

    if-eq v1, v5, :cond_5

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_3

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    .line 4281
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal input : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v3, v0, Lcom/alibaba/fastjson2/x;->f:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4256
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->aU()Ljava/util/Map;

    move-result-object v1

    .line 4255
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/x;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4277
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->aQ()V

    const/4 v1, 0x0

    return-object v1

    .line 4274
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->aX()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/fastjson2/x;->k:Z

    .line 4275
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/x;->k:Z

    if-eqz v1, :cond_4

    const-string v1, "true"

    goto :goto_0

    :cond_4
    const-string v1, "false"

    :goto_0
    return-object v1

    .line 4253
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->aZ()Ljava/util/List;

    move-result-object v1

    .line 4252
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/x;->d(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4269
    :cond_6
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->aM()V

    .line 4270
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->bc()Ljava/lang/Number;

    move-result-object v1

    .line 4271
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4054
    :cond_7
    :goto_1
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 4056
    iget v6, v0, Lcom/alibaba/fastjson2/x;->e:I

    .line 4068
    iget v7, v0, Lcom/alibaba/fastjson2/x;->D:I

    sub-int/2addr v7, v6

    and-int/lit8 v7, v7, -0x4

    add-int/2addr v7, v6

    move v9, v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2
    const/16 v14, 0x5c

    const/4 v15, 0x1

    if-ge v9, v7, :cond_c

    .line 4070
    iget-object v11, v0, Lcom/alibaba/fastjson2/x;->A:[C

    aget-char v12, v11, v9

    add-int/lit8 v13, v9, 0x1

    .line 4071
    aget-char v13, v11, v13

    add-int/lit8 v16, v9, 0x2

    .line 4072
    aget-char v8, v11, v16

    add-int/lit8 v16, v9, 0x3

    .line 4073
    aget-char v11, v11, v16

    if-eq v12, v14, :cond_b

    if-eq v13, v14, :cond_b

    if-eq v8, v14, :cond_b

    if-ne v11, v14, :cond_8

    goto :goto_4

    :cond_8
    if-eq v12, v1, :cond_a

    if-eq v13, v1, :cond_a

    if-eq v8, v1, :cond_a

    if-ne v11, v1, :cond_9

    goto :goto_3

    :cond_9
    add-int/lit8 v9, v9, 0x4

    add-int/lit8 v10, v10, 0x4

    move v11, v12

    move v12, v13

    move v13, v8

    goto :goto_2

    :cond_a
    :goto_3
    move v7, v15

    goto :goto_5

    :cond_b
    :goto_4
    const/4 v7, 0x0

    goto :goto_5

    :cond_c
    move v8, v13

    const/4 v7, 0x0

    move v13, v12

    move v12, v11

    :goto_5
    const/16 v11, 0x78

    const/16 v2, 0x75

    if-eqz v7, :cond_10

    if-ne v12, v1, :cond_d

    goto :goto_6

    :cond_d
    if-ne v13, v1, :cond_e

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_e
    if-ne v8, v1, :cond_f

    add-int/lit8 v9, v9, 0x2

    add-int/lit8 v10, v10, 0x2

    goto :goto_6

    :cond_f
    add-int/lit8 v9, v9, 0x3

    add-int/lit8 v10, v10, 0x3

    :goto_6
    const/4 v8, 0x0

    goto :goto_9

    :cond_10
    const/4 v8, 0x0

    .line 4101
    :goto_7
    iget v7, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ge v9, v7, :cond_2d

    .line 4104
    iget-object v7, v0, Lcom/alibaba/fastjson2/x;->A:[C

    aget-char v12, v7, v9

    if-ne v12, v14, :cond_13

    add-int/lit8 v9, v9, 0x1

    .line 4107
    aget-char v7, v7, v9

    if-eq v7, v2, :cond_12

    if-eq v7, v11, :cond_11

    goto :goto_8

    :cond_11
    add-int/lit8 v9, v9, 0x2

    goto :goto_8

    :cond_12
    add-int/lit8 v9, v9, 0x4

    :goto_8
    add-int/2addr v9, v15

    move v8, v15

    const/4 v2, 0x0

    const/16 v12, 0x74

    goto/16 :goto_13

    :cond_13
    if-ne v12, v1, :cond_2c

    :goto_9
    if-eqz v8, :cond_1f

    .line 4136
    new-array v7, v10, [C

    move v9, v6

    const/4 v6, 0x0

    .line 4139
    :goto_a
    iget-object v8, v0, Lcom/alibaba/fastjson2/x;->A:[C

    aget-char v10, v8, v9

    if-ne v10, v14, :cond_1c

    add-int/lit8 v9, v9, 0x1

    .line 4141
    aget-char v10, v8, v9

    if-eq v10, v5, :cond_1b

    if-eq v10, v14, :cond_1b

    const/16 v12, 0x62

    if-eq v10, v12, :cond_1a

    if-eq v10, v4, :cond_19

    if-eq v10, v3, :cond_18

    const/16 v12, 0x72

    if-eq v10, v12, :cond_17

    if-eq v10, v11, :cond_16

    const/16 v12, 0x74

    if-eq v10, v12, :cond_15

    if-eq v10, v2, :cond_14

    .line 4176
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson2/x;->a(I)C

    move-result v10

    goto :goto_b

    :cond_14
    add-int/lit8 v9, v9, 0x1

    .line 4144
    aget-char v10, v8, v9

    add-int/2addr v9, v15

    .line 4145
    aget-char v13, v8, v9

    add-int/2addr v9, v15

    .line 4146
    aget-char v2, v8, v9

    add-int/2addr v9, v15

    .line 4147
    aget-char v8, v8, v9

    .line 4148
    invoke-static {v10, v13, v2, v8}, Lcom/alibaba/fastjson2/x;->a(IIII)C

    move-result v10

    goto :goto_b

    :cond_15
    const/16 v10, 0x9

    goto :goto_b

    :cond_16
    const/16 v12, 0x74

    add-int/lit8 v9, v9, 0x1

    .line 4152
    aget-char v2, v8, v9

    add-int/2addr v9, v15

    .line 4153
    aget-char v8, v8, v9

    .line 4154
    invoke-static {v2, v8}, Lcom/alibaba/fastjson2/x;->a(II)C

    move-result v10

    goto :goto_b

    :cond_17
    const/16 v12, 0x74

    const/16 v10, 0xd

    goto :goto_b

    :cond_18
    const/16 v12, 0x74

    const/16 v10, 0xa

    goto :goto_b

    :cond_19
    const/16 v12, 0x74

    const/16 v10, 0xc

    goto :goto_b

    :cond_1a
    const/16 v12, 0x74

    const/16 v10, 0x8

    goto :goto_b

    :cond_1b
    const/16 v12, 0x74

    goto :goto_b

    :cond_1c
    const/16 v12, 0x74

    if-ne v10, v1, :cond_1e

    .line 4186
    sget-object v1, Labf;->z:Ljava/util/function/BiFunction;

    if-eqz v1, :cond_1d

    .line 4187
    sget-object v1, Labf;->z:Ljava/util/function/BiFunction;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v7, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_c

    .line 4189
    :cond_1d
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/lang/String;-><init>([C)V

    goto :goto_c

    .line 4182
    :cond_1e
    :goto_b
    aput-char v10, v7, v6

    add-int/2addr v9, v15

    add-int/2addr v6, v15

    const/16 v2, 0x75

    goto/16 :goto_a

    .line 4193
    :cond_1f
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    sub-int v1, v9, v1

    const/16 v2, 0x80

    if-ne v1, v15, :cond_20

    .line 4194
    iget-object v3, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v4, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v3, v3, v4

    if-ge v3, v2, :cond_20

    .line 4195
    invoke-static {v3}, Labo;->a(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_20
    const/4 v3, 0x2

    if-ne v1, v3, :cond_21

    .line 4196
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v3

    if-ge v1, v2, :cond_21

    iget-object v3, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v4, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/2addr v4, v15

    aget-char v3, v3, v4

    if-ge v3, v2, :cond_21

    .line 4200
    invoke-static {v1, v3}, Labo;->a(CC)Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    .line 4201
    :cond_21
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->z:Ljava/lang/String;

    if-eqz v1, :cond_23

    sget v1, Labf;->d:I

    const/16 v2, 0x8

    if-gt v1, v2, :cond_22

    sget-boolean v1, Labf;->r:Z

    if-eqz v1, :cond_23

    .line 4202
    :cond_22
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->z:Ljava/lang/String;

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-virtual {v1, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    .line 4204
    :cond_23
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v4, v0, Lcom/alibaba/fastjson2/x;->e:I

    sub-int v4, v9, v4

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    .line 4208
    :goto_c
    iget-object v2, v0, Lcom/alibaba/fastjson2/x;->a:Lcom/alibaba/fastjson2/u$c;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/u$c;->p:J

    sget-object v4, Lcom/alibaba/fastjson2/u$d;->TrimString:Lcom/alibaba/fastjson2/u$d;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_24

    .line 4209
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_24
    add-int/2addr v9, v15

    .line 4213
    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    const/16 v3, 0x1a

    if-eq v9, v2, :cond_2b

    .line 4214
    iget-object v2, v0, Lcom/alibaba/fastjson2/x;->A:[C

    add-int/lit8 v6, v9, 0x1

    aget-char v2, v2, v9

    :goto_d
    move v9, v6

    const/16 v6, 0x20

    if-gt v2, v6, :cond_26

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v2

    const-wide v10, 0x100003700L

    and-long/2addr v6, v10

    cmp-long v6, v6, v4

    if-eqz v6, :cond_26

    .line 4216
    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v9, v2, :cond_25

    goto :goto_12

    .line 4219
    :cond_25
    iget-object v2, v0, Lcom/alibaba/fastjson2/x;->A:[C

    add-int/lit8 v6, v9, 0x1

    aget-char v2, v2, v9

    goto :goto_d

    :cond_26
    const/16 v6, 0x2c

    if-ne v2, v6, :cond_27

    goto :goto_e

    :cond_27
    const/4 v15, 0x0

    .line 4223
    :goto_e
    iput-boolean v15, v0, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v15, :cond_2a

    .line 4224
    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v9, v2, :cond_28

    :goto_f
    move v2, v3

    goto :goto_11

    .line 4227
    :cond_28
    iget-object v2, v0, Lcom/alibaba/fastjson2/x;->A:[C

    add-int/lit8 v6, v9, 0x1

    aget-char v2, v2, v9

    :goto_10
    move v9, v6

    const/16 v6, 0x20

    if-gt v2, v6, :cond_2a

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v2

    const-wide v10, 0x100003700L

    and-long/2addr v6, v10

    cmp-long v6, v6, v4

    if-eqz v6, :cond_2a

    .line 4229
    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v9, v2, :cond_29

    goto :goto_f

    .line 4233
    :cond_29
    iget-object v2, v0, Lcom/alibaba/fastjson2/x;->A:[C

    add-int/lit8 v6, v9, 0x1

    aget-char v2, v2, v9

    goto :goto_10

    .line 4239
    :cond_2a
    :goto_11
    iput-char v2, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 4240
    iput v9, v0, Lcom/alibaba/fastjson2/x;->e:I

    return-object v1

    .line 4244
    :cond_2b
    :goto_12
    iput-char v3, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/4 v2, 0x0

    .line 4245
    iput-boolean v2, v0, Lcom/alibaba/fastjson2/x;->g:Z

    .line 4246
    iput v9, v0, Lcom/alibaba/fastjson2/x;->e:I

    return-object v1

    :cond_2c
    const/4 v2, 0x0

    const/16 v12, 0x74

    add-int/lit8 v9, v9, 0x1

    :goto_13
    add-int/lit8 v10, v10, 0x1

    const/16 v2, 0x75

    goto/16 :goto_7

    .line 4102
    :cond_2d
    new-instance v1, Lcom/alibaba/fastjson2/c;

    const-string v2, "invalid escape character EOI"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final aQ()V
    .locals 14

    .line 5080
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    .line 5081
    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 5084
    aget-char v2, v0, v1

    const/16 v3, 0x75

    if-ne v2, v3, :cond_7

    add-int/lit8 v2, v1, 0x1

    aget-char v2, v0, v2

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_7

    add-int/lit8 v2, v1, 0x2

    aget-char v2, v0, v2

    if-ne v2, v3, :cond_7

    add-int/lit8 v2, v1, 0x3

    .line 5087
    iget v3, p0, Lcom/alibaba/fastjson2/x;->D:I

    const/16 v4, 0x1a

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    .line 5090
    :cond_0
    aget-char v2, v0, v2

    :goto_0
    add-int/lit8 v1, v1, 0x4

    :goto_1
    const-wide/16 v5, 0x0

    const-wide v7, 0x100003700L

    const-wide/16 v9, 0x1

    const/16 v3, 0x20

    if-gt v2, v3, :cond_2

    shl-long v11, v9, v2

    and-long/2addr v11, v7

    cmp-long v11, v11, v5

    if-eqz v11, :cond_2

    .line 5098
    iget v2, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v1, v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 5101
    aget-char v1, v0, v1

    move v13, v2

    move v2, v1

    move v1, v13

    goto :goto_1

    :cond_2
    const/16 v11, 0x2c

    if-ne v2, v11, :cond_3

    const/4 v11, 0x1

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    .line 5104
    :goto_2
    iput-boolean v11, p0, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v11, :cond_6

    .line 5105
    iget v2, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v1, v2, :cond_4

    :goto_3
    move v2, v4

    goto :goto_5

    :cond_4
    add-int/lit8 v2, v1, 0x1

    .line 5108
    aget-char v1, v0, v1

    :goto_4
    move v13, v2

    move v2, v1

    move v1, v13

    :goto_5
    if-gt v2, v3, :cond_6

    shl-long v11, v9, v2

    and-long/2addr v11, v7

    cmp-long v11, v11, v5

    if-eqz v11, :cond_6

    .line 5112
    iget v2, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v1, v2, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v1, 0x1

    .line 5115
    aget-char v1, v0, v1

    goto :goto_4

    .line 5120
    :cond_6
    iput-char v2, p0, Lcom/alibaba/fastjson2/x;->f:C

    .line 5121
    iput v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    return-void

    .line 5094
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "json syntax error, not match null, offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final aR()Z
    .locals 13

    .line 4923
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/4 v1, 0x0

    const/16 v2, 0x6e

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, p0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v0, v0, v2

    const/16 v2, 0x75

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, p0, Lcom/alibaba/fastjson2/x;->e:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aget-char v0, v0, v2

    const/16 v2, 0x6c

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v4, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v4, v4, 0x2

    aget-char v0, v0, v4

    if-ne v0, v2, :cond_7

    .line 4927
    iget v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v0, v0, 0x3

    iget v2, p0, Lcom/alibaba/fastjson2/x;->D:I

    const/16 v4, 0x1a

    if-ne v0, v2, :cond_0

    .line 4928
    iput-char v4, p0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_0

    .line 4930
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v2, v2, 0x3

    aget-char v0, v0, v2

    iput-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    .line 4932
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 4937
    :goto_1
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const-wide/16 v5, 0x0

    const-wide v7, 0x100003700L

    const-wide/16 v9, 0x1

    const/16 v2, 0x20

    if-gt v0, v2, :cond_2

    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    shl-long v11, v9, v0

    and-long/2addr v11, v7

    cmp-long v0, v11, v5

    if-eqz v0, :cond_2

    .line 4938
    iget v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    iget v2, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v0, v2, :cond_1

    .line 4939
    iput-char v4, p0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_1

    .line 4941
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v0, v0, v2

    iput-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_1

    .line 4944
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v11, 0x2c

    if-ne v0, v11, :cond_3

    move v1, v3

    :cond_3
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v1, :cond_6

    .line 4945
    iget v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    iget v1, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v0, v1, :cond_4

    move v0, v4

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v11, v1, 0x1

    iput v11, p0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v0, v0, v1

    :goto_2
    iput-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    .line 4947
    :goto_3
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v0, v2, :cond_6

    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    shl-long v0, v9, v0

    and-long/2addr v0, v7

    cmp-long v0, v0, v5

    if-eqz v0, :cond_6

    .line 4948
    iget v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    iget v1, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v0, v1, :cond_5

    .line 4949
    iput-char v4, p0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_3

    .line 4951
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v11, v1, 0x1

    iput v11, p0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_3

    :cond_6
    return v3

    :cond_7
    return v1
.end method

.method public final aS()Ljava/lang/String;
    .locals 7

    .line 3894
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->u:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3895
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->u:Ljava/lang/String;

    return-object v0

    .line 3898
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/x;->F:I

    iget v1, p0, Lcom/alibaba/fastjson2/x;->E:I

    sub-int/2addr v0, v1

    .line 3899
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/x;->h:Z

    if-nez v1, :cond_1

    .line 3900
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v3, p0, Lcom/alibaba/fastjson2/x;->E:I

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 3903
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson2/x;->G:I

    new-array v0, v0, [C

    .line 3904
    iget v1, p0, Lcom/alibaba/fastjson2/x;->E:I

    const/4 v2, 0x0

    .line 3906
    :goto_0
    iget-object v3, p0, Lcom/alibaba/fastjson2/x;->A:[C

    aget-char v4, v3, v1

    const/16 v5, 0x22

    const/16 v6, 0x5c

    if-ne v4, v6, :cond_4

    add-int/lit8 v1, v1, 0x1

    .line 3909
    aget-char v4, v3, v1

    if-eq v4, v5, :cond_5

    if-eq v4, v6, :cond_5

    const/16 v5, 0x75

    if-eq v4, v5, :cond_3

    const/16 v5, 0x78

    if-eq v4, v5, :cond_2

    .line 3929
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/x;->a(I)C

    move-result v4

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 3920
    aget-char v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    .line 3921
    aget-char v3, v3, v1

    .line 3922
    invoke-static {v4, v3}, Lcom/alibaba/fastjson2/x;->a(II)C

    move-result v4

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 3912
    aget-char v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    .line 3913
    aget-char v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    .line 3914
    aget-char v6, v3, v1

    add-int/lit8 v1, v1, 0x1

    .line 3915
    aget-char v3, v3, v1

    .line 3916
    invoke-static {v4, v5, v6, v3}, Lcom/alibaba/fastjson2/x;->a(IIII)C

    move-result v4

    goto :goto_1

    :cond_4
    if-ne v4, v5, :cond_5

    .line 3939
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v1, p0, Lcom/alibaba/fastjson2/x;->u:Ljava/lang/String;

    return-object v1

    .line 3935
    :cond_5
    :goto_1
    aput-char v4, v0, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final aV()V
    .locals 10

    .line 4571
    iget v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v1, v0, 0x1

    .line 4572
    iget v2, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-ge v1, v2, :cond_a

    .line 4576
    iget-object v2, p0, Lcom/alibaba/fastjson2/x;->A:[C

    aget-char v0, v2, v0

    const/16 v2, 0x2a

    const/4 v3, 0x0

    const/16 v4, 0x2f

    const/4 v5, 0x1

    if-ne v0, v2, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    if-ne v0, v4, :cond_9

    move v0, v3

    .line 4587
    :goto_0
    iget-object v6, p0, Lcom/alibaba/fastjson2/x;->A:[C

    add-int/lit8 v7, v1, 0x1

    aget-char v1, v6, v1

    :goto_1
    if-eqz v0, :cond_2

    if-ne v1, v2, :cond_1

    .line 4592
    iget v1, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-gt v7, v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/fastjson2/x;->A:[C

    aget-char v1, v1, v7

    if-ne v1, v4, :cond_1

    add-int/lit8 v7, v7, 0x1

    :goto_2
    move v1, v5

    goto :goto_3

    :cond_1
    move v1, v3

    goto :goto_3

    :cond_2
    const/16 v6, 0xa

    if-ne v1, v6, :cond_1

    goto :goto_2

    :goto_3
    const/16 v6, 0x1a

    if-eqz v1, :cond_6

    .line 4602
    iget v0, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v7, v0, :cond_3

    goto :goto_6

    .line 4607
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    aget-char v0, v0, v7

    :goto_4
    const/16 v1, 0x20

    if-gt v0, v1, :cond_5

    const-wide/16 v1, 0x1

    shl-long/2addr v1, v0

    const-wide v8, 0x100003700L

    and-long/2addr v1, v8

    const-wide/16 v8, 0x0

    cmp-long v1, v1, v8

    if-eqz v1, :cond_5

    add-int/lit8 v7, v7, 0x1

    .line 4611
    iget v0, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v7, v0, :cond_4

    goto :goto_5

    .line 4615
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    aget-char v0, v0, v7

    goto :goto_4

    :cond_5
    move v6, v0

    :goto_5
    add-int/2addr v7, v5

    goto :goto_6

    .line 4622
    :cond_6
    iget v1, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v7, v1, :cond_8

    .line 4629
    :goto_6
    iput-char v6, p0, Lcom/alibaba/fastjson2/x;->f:C

    .line 4630
    iput v7, p0, Lcom/alibaba/fastjson2/x;->e:I

    if-ne v6, v4, :cond_7

    .line 4633
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->aV()V

    :cond_7
    return-void

    .line 4626
    :cond_8
    iget-object v1, p0, Lcom/alibaba/fastjson2/x;->A:[C

    add-int/lit8 v6, v7, 0x1

    aget-char v1, v1, v7

    move v7, v6

    goto :goto_1

    :cond_9
    return-void

    .line 4573
    :cond_a
    new-instance v0, Lcom/alibaba/fastjson2/c;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->be()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final aX()Z
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 6341
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/x;->j:Z

    .line 6343
    iget-object v2, v0, Lcom/alibaba/fastjson2/x;->A:[C

    .line 6344
    iget v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    .line 6345
    iget-char v4, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v5, 0x65

    const/16 v6, 0x75

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    const/16 v10, 0x74

    if-ne v4, v10, :cond_1

    add-int/lit8 v10, v3, 0x2

    .line 6346
    array-length v11, v2

    if-ge v10, v11, :cond_1

    aget-char v11, v2, v3

    const/16 v12, 0x72

    if-ne v11, v12, :cond_1

    add-int/lit8 v11, v3, 0x1

    aget-char v11, v2, v11

    if-ne v11, v6, :cond_1

    aget-char v10, v2, v10

    if-ne v10, v5, :cond_1

    add-int/lit8 v3, v3, 0x3

    :cond_0
    :goto_0
    move v4, v9

    goto/16 :goto_2

    :cond_1
    const/16 v10, 0x66

    const/16 v11, 0x6c

    if-ne v4, v10, :cond_3

    add-int/lit8 v10, v3, 0x3

    .line 6354
    array-length v12, v2

    if-ge v10, v12, :cond_3

    aget-char v12, v2, v3

    const/16 v13, 0x61

    if-ne v12, v13, :cond_3

    add-int/lit8 v12, v3, 0x1

    aget-char v12, v2, v12

    if-ne v12, v11, :cond_3

    add-int/lit8 v12, v3, 0x2

    aget-char v12, v2, v12

    const/16 v13, 0x73

    if-ne v12, v13, :cond_3

    aget-char v10, v2, v10

    if-ne v10, v5, :cond_3

    add-int/lit8 v3, v3, 0x4

    :cond_2
    :goto_1
    move v4, v1

    goto/16 :goto_2

    :cond_3
    const/16 v5, 0x2d

    if-eq v4, v5, :cond_16

    const/16 v5, 0x30

    if-lt v4, v5, :cond_4

    const/16 v10, 0x39

    if-gt v4, v10, :cond_4

    goto/16 :goto_8

    :cond_4
    const/16 v10, 0x6e

    if-ne v4, v10, :cond_6

    add-int/lit8 v10, v3, 0x2

    .line 6376
    array-length v12, v2

    if-ge v10, v12, :cond_6

    aget-char v12, v2, v3

    if-ne v12, v6, :cond_6

    add-int/lit8 v6, v3, 0x1

    aget-char v6, v2, v6

    if-ne v6, v11, :cond_6

    aget-char v6, v2, v10

    if-ne v6, v11, :cond_6

    .line 6381
    iget-object v4, v0, Lcom/alibaba/fastjson2/x;->a:Lcom/alibaba/fastjson2/u$c;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/u$c;->p:J

    sget-object v6, Lcom/alibaba/fastjson2/u$d;->ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/u$d;

    iget-wide v10, v6, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v4, v10

    cmp-long v4, v4, v7

    if-nez v4, :cond_5

    .line 6385
    iput-boolean v9, v0, Lcom/alibaba/fastjson2/x;->j:Z

    add-int/lit8 v3, v3, 0x3

    goto :goto_1

    .line 6382
    :cond_5
    new-instance v1, Lcom/alibaba/fastjson2/c;

    const-string v2, "boolean value not support input null"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    const/16 v6, 0x22

    if-ne v4, v6, :cond_15

    add-int/lit8 v4, v3, 0x1

    .line 6389
    array-length v10, v2

    const-string v11, "can not convert to boolean : "

    if-ge v4, v10, :cond_10

    aget-char v4, v2, v4

    if-ne v4, v6, :cond_10

    .line 6392
    aget-char v4, v2, v3

    add-int/lit8 v3, v3, 0x2

    if-eq v4, v5, :cond_2

    const/16 v5, 0x4e

    if-ne v4, v5, :cond_7

    goto :goto_1

    :cond_7
    const/16 v5, 0x31

    if-eq v4, v5, :cond_0

    const/16 v5, 0x59

    if-ne v4, v5, :cond_8

    goto/16 :goto_0

    .line 6399
    :cond_8
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6421
    :goto_2
    iget v5, v0, Lcom/alibaba/fastjson2/x;->D:I

    const/16 v6, 0x1a

    if-ne v3, v5, :cond_9

    move v5, v3

    goto :goto_4

    :cond_9
    add-int/lit8 v5, v3, 0x1

    aget-char v3, v2, v3

    :goto_3
    const-wide v10, 0x100003700L

    const-wide/16 v12, 0x1

    const/16 v14, 0x20

    if-gt v3, v14, :cond_b

    shl-long v15, v12, v3

    and-long/2addr v15, v10

    cmp-long v15, v15, v7

    if-eqz v15, :cond_b

    .line 6424
    iget v3, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v5, v3, :cond_a

    :goto_4
    move v3, v6

    goto :goto_3

    :cond_a
    add-int/lit8 v3, v5, 0x1

    .line 6427
    aget-char v5, v2, v5

    move/from16 v17, v5

    move v5, v3

    move/from16 v3, v17

    goto :goto_3

    :cond_b
    const/16 v15, 0x2c

    if-ne v3, v15, :cond_c

    move v1, v9

    .line 6431
    :cond_c
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v1, :cond_f

    .line 6432
    iget v1, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v5, v1, :cond_d

    move v1, v5

    move v3, v6

    goto :goto_5

    :cond_d
    add-int/lit8 v1, v5, 0x1

    aget-char v3, v2, v5

    :goto_5
    move v5, v1

    :goto_6
    if-gt v3, v14, :cond_f

    shl-long v15, v12, v3

    and-long/2addr v15, v10

    cmp-long v1, v15, v7

    if-eqz v1, :cond_f

    .line 6435
    iget v1, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v5, v1, :cond_e

    move v3, v6

    goto :goto_6

    :cond_e
    add-int/lit8 v1, v5, 0x1

    .line 6438
    aget-char v3, v2, v5

    goto :goto_5

    .line 6442
    :cond_f
    iput v5, v0, Lcom/alibaba/fastjson2/x;->e:I

    .line 6443
    iput-char v3, v0, Lcom/alibaba/fastjson2/x;->f:C

    return v4

    .line 6402
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->aN()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    .line 6403
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    return v9

    :cond_11
    const-string v3, "false"

    .line 6407
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    return v1

    .line 6411
    :cond_12
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_7

    .line 6415
    :cond_13
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6412
    :cond_14
    :goto_7
    iput-boolean v9, v0, Lcom/alibaba/fastjson2/x;->j:Z

    return v1

    .line 6418
    :cond_15
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6364
    :cond_16
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->ag()Ljava/lang/Number;

    .line 6365
    iget-byte v2, v0, Lcom/alibaba/fastjson2/x;->m:B

    if-ne v2, v9, :cond_1a

    .line 6366
    iget-object v2, v0, Lcom/alibaba/fastjson2/x;->a:Lcom/alibaba/fastjson2/u$c;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/u$c;->p:J

    sget-object v4, Lcom/alibaba/fastjson2/u$d;->NonZeroNumberCastToBooleanAsTrue:Lcom/alibaba/fastjson2/u$d;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v2, v4

    cmp-long v2, v2, v7

    if-eqz v2, :cond_19

    .line 6367
    iget v2, v0, Lcom/alibaba/fastjson2/x;->p:I

    if-nez v2, :cond_17

    iget v2, v0, Lcom/alibaba/fastjson2/x;->q:I

    if-nez v2, :cond_17

    iget v2, v0, Lcom/alibaba/fastjson2/x;->r:I

    if-nez v2, :cond_17

    iget v2, v0, Lcom/alibaba/fastjson2/x;->s:I

    if-eqz v2, :cond_18

    :cond_17
    move v1, v9

    :cond_18
    return v1

    .line 6369
    :cond_19
    iget v2, v0, Lcom/alibaba/fastjson2/x;->p:I

    if-nez v2, :cond_1a

    iget v2, v0, Lcom/alibaba/fastjson2/x;->q:I

    if-nez v2, :cond_1a

    iget v2, v0, Lcom/alibaba/fastjson2/x;->r:I

    if-nez v2, :cond_1a

    iget v2, v0, Lcom/alibaba/fastjson2/x;->s:I

    if-ne v2, v9, :cond_1a

    move v1, v9

    :cond_1a
    return v1
.end method

.method public final aa()J
    .locals 19

    move-object/from16 v0, p0

    .line 2933
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    .line 2934
    iget-char v2, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 2935
    iget-object v3, v0, Lcom/alibaba/fastjson2/x;->A:[C

    .line 2940
    iget-char v4, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v6, 0x22

    if-eq v4, v6, :cond_1

    iget-char v4, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v6, 0x27

    if-ne v4, v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 2941
    :cond_1
    :goto_0
    iget-char v4, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 2942
    iget v6, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v6, v3, v6

    iput-char v6, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 2945
    :goto_1
    iget-char v6, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v7, 0x2d

    const/4 v8, 0x1

    if-ne v6, v7, :cond_2

    .line 2947
    iget v6, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v6, v3, v6

    iput-char v6, v0, Lcom/alibaba/fastjson2/x;->f:C

    move v6, v8

    goto :goto_2

    .line 2948
    :cond_2
    iget-char v6, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v7, 0x2b

    if-ne v6, v7, :cond_3

    .line 2949
    iget v6, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v6, v3, v6

    iput-char v6, v0, Lcom/alibaba/fastjson2/x;->f:C

    :cond_3
    const/4 v6, 0x0

    :goto_2
    const-wide/16 v9, 0x0

    move-wide v11, v9

    const/4 v7, 0x0

    .line 2953
    :goto_3
    iget-char v13, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v14, 0x30

    const/16 v15, 0x1a

    if-lt v13, v14, :cond_6

    iget-char v13, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v5, 0x39

    if-gt v13, v5, :cond_6

    const-wide/16 v17, 0xa

    mul-long v17, v17, v11

    .line 2955
    iget-char v5, v0, Lcom/alibaba/fastjson2/x;->f:C

    sub-int/2addr v5, v14

    int-to-long v13, v5

    add-long v13, v17, v13

    cmp-long v5, v13, v11

    if-gez v5, :cond_4

    move v5, v8

    move v7, v5

    goto :goto_5

    .line 2962
    :cond_4
    iget v5, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v7, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v5, v7, :cond_5

    .line 2963
    iput-char v15, v0, Lcom/alibaba/fastjson2/x;->f:C

    move v7, v8

    move-wide v11, v13

    goto :goto_4

    .line 2967
    :cond_5
    iget v5, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v7, v5, 0x1

    iput v7, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v5, v3, v5

    iput-char v5, v0, Lcom/alibaba/fastjson2/x;->f:C

    move v7, v8

    move-wide v11, v13

    goto :goto_3

    :cond_6
    :goto_4
    const/4 v5, 0x0

    .line 2971
    :goto_5
    iget-char v13, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v14, 0x2e

    if-eq v13, v14, :cond_9

    iget-char v13, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v14, 0x65

    if-eq v13, v14, :cond_9

    iget-char v13, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v14, 0x45

    if-eq v13, v14, :cond_9

    iget-char v13, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v14, 0x74

    if-eq v13, v14, :cond_9

    iget-char v13, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v14, 0x66

    if-eq v13, v14, :cond_9

    iget-char v13, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v14, 0x6e

    if-eq v13, v14, :cond_9

    iget-char v13, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v14, 0x7b

    if-eq v13, v14, :cond_9

    iget-char v13, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v14, 0x5b

    if-eq v13, v14, :cond_9

    if-eqz v5, :cond_7

    goto :goto_6

    :cond_7
    if-eqz v4, :cond_8

    .line 2981
    iget-char v5, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-eq v5, v4, :cond_8

    goto :goto_6

    :cond_8
    const/4 v5, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    move v5, v8

    :goto_7
    if-eqz v5, :cond_b

    .line 2986
    iput v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    .line 2987
    iput-char v2, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 2988
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->aM()V

    .line 2989
    iget-byte v1, v0, Lcom/alibaba/fastjson2/x;->m:B

    if-ne v1, v8, :cond_a

    .line 2990
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->ba()Ljava/math/BigInteger;

    move-result-object v1

    .line 2992
    :try_start_0
    invoke-virtual {v1}, Ljava/math/BigInteger;->longValueExact()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 2994
    :catch_0
    new-instance v2, Lcom/alibaba/fastjson2/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "long overflow, value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2997
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->X()J

    move-result-wide v1

    return-wide v1

    :cond_b
    if-eqz v4, :cond_f

    add-int/2addr v1, v8

    .line 3002
    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    if-ne v1, v2, :cond_c

    move v1, v8

    goto :goto_8

    :cond_c
    const/4 v1, 0x0

    :goto_8
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/x;->j:Z

    .line 3003
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/x;->j:Z

    if-eqz v1, :cond_d

    move v7, v8

    .line 3006
    :cond_d
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v1, v2, :cond_e

    move v1, v15

    goto :goto_9

    :cond_e
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v3, v1

    :goto_9
    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 3009
    :cond_f
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x53

    const/16 v4, 0x46

    const/16 v5, 0x44

    const/16 v13, 0x42

    const/16 v14, 0x4c

    if-eq v1, v14, :cond_10

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-eq v1, v4, :cond_10

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-eq v1, v5, :cond_10

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-eq v1, v13, :cond_10

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-ne v1, v2, :cond_17

    .line 3010
    :cond_10
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-eq v1, v13, :cond_15

    if-eq v1, v5, :cond_14

    if-eq v1, v4, :cond_13

    if-eq v1, v14, :cond_12

    if-eq v1, v2, :cond_11

    goto :goto_a

    :cond_11
    const/16 v1, 0xa

    .line 3015
    iput-byte v1, v0, Lcom/alibaba/fastjson2/x;->m:B

    goto :goto_a

    :cond_12
    const/16 v1, 0xb

    .line 3018
    iput-byte v1, v0, Lcom/alibaba/fastjson2/x;->m:B

    goto :goto_a

    :cond_13
    const/16 v1, 0xc

    .line 3021
    iput-byte v1, v0, Lcom/alibaba/fastjson2/x;->m:B

    goto :goto_a

    :cond_14
    const/16 v1, 0xd

    .line 3024
    iput-byte v1, v0, Lcom/alibaba/fastjson2/x;->m:B

    goto :goto_a

    :cond_15
    const/16 v1, 0x9

    .line 3012
    iput-byte v1, v0, Lcom/alibaba/fastjson2/x;->m:B

    .line 3029
    :goto_a
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v1, v2, :cond_16

    .line 3030
    iput-char v15, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_b

    .line 3032
    :cond_16
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v3, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 3036
    :cond_17
    :goto_b
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const-wide v4, 0x100003700L

    const-wide/16 v13, 0x1

    const/16 v2, 0x20

    if-gt v1, v2, :cond_19

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    shl-long v17, v13, v1

    and-long v17, v17, v4

    cmp-long v1, v17, v9

    if-eqz v1, :cond_19

    .line 3037
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v1, v2, :cond_18

    .line 3038
    iput-char v15, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_b

    .line 3040
    :cond_18
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v3, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_b

    .line 3044
    :cond_19
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v8, 0x2c

    if-ne v1, v8, :cond_1a

    const/4 v1, 0x1

    goto :goto_c

    :cond_1a
    const/4 v1, 0x0

    :goto_c
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v1, :cond_1d

    .line 3045
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v8, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v1, v8, :cond_1b

    move v1, v15

    goto :goto_d

    :cond_1b
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v8, v1, 0x1

    iput v8, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v3, v1

    :goto_d
    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 3047
    :goto_e
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v1, v2, :cond_1d

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    shl-long v16, v13, v1

    and-long v16, v16, v4

    cmp-long v1, v16, v9

    if-eqz v1, :cond_1d

    .line 3048
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v8, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v1, v8, :cond_1c

    .line 3049
    iput-char v15, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_e

    .line 3051
    :cond_1c
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v8, v1, 0x1

    iput v8, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v3, v1

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_e

    :cond_1d
    if-eqz v7, :cond_1f

    if-eqz v6, :cond_1e

    neg-long v11, v11

    :cond_1e
    return-wide v11

    .line 3059
    :cond_1f
    new-instance v1, Lcom/alibaba/fastjson2/c;

    const-string v2, "illegal input error"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final ab()Ljava/lang/Long;
    .locals 19

    move-object/from16 v0, p0

    .line 3067
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    .line 3068
    iget-char v2, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 3073
    iget-char v3, v0, Lcom/alibaba/fastjson2/x;->f:C

    const-wide v4, 0x100003700L

    const-wide/16 v6, 0x1

    const/16 v8, 0x20

    const-wide/16 v9, 0x0

    const/16 v12, 0x1a

    const/16 v13, 0x22

    if-eq v3, v13, :cond_1

    iget-char v3, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v13, 0x27

    if-ne v3, v13, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    .line 3074
    :cond_1
    :goto_0
    iget-char v3, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 3075
    iget-object v13, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v14, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v15, v14, 0x1

    iput v15, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v13, v13, v14

    iput-char v13, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 3076
    iget-char v13, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-ne v13, v3, :cond_5

    .line 3077
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v1, v2, :cond_2

    .line 3078
    iput-char v12, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_1

    .line 3080
    :cond_2
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v2

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 3083
    :goto_1
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v1, v8, :cond_4

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    shl-long v1, v6, v1

    and-long/2addr v1, v4

    cmp-long v1, v1, v9

    if-eqz v1, :cond_4

    .line 3084
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v1, v2, :cond_3

    .line 3085
    iput-char v12, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_1

    .line 3087
    :cond_3
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v2

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_1

    .line 3091
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->x()Z

    const/4 v1, 0x0

    return-object v1

    .line 3096
    :cond_5
    :goto_2
    iget-char v13, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v14, 0x2d

    if-ne v13, v14, :cond_6

    .line 3098
    iget-object v13, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v14, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v11, v14, 0x1

    iput v11, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v11, v13, v14

    iput-char v11, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/4 v11, 0x1

    goto :goto_3

    .line 3099
    :cond_6
    iget-char v11, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v13, 0x2b

    if-ne v11, v13, :cond_7

    .line 3100
    iget-object v11, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v13, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v14, v13, 0x1

    iput v14, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v11, v11, v13

    iput-char v11, v0, Lcom/alibaba/fastjson2/x;->f:C

    :cond_7
    const/4 v11, 0x0

    :goto_3
    move-wide v13, v9

    const/16 v16, 0x0

    .line 3104
    :goto_4
    iget-char v15, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v9, 0x30

    if-lt v15, v9, :cond_a

    iget-char v10, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v15, 0x39

    if-gt v10, v15, :cond_a

    const-wide/16 v17, 0xa

    mul-long v17, v17, v13

    .line 3106
    iget-char v10, v0, Lcom/alibaba/fastjson2/x;->f:C

    sub-int/2addr v10, v9

    int-to-long v9, v10

    add-long v9, v17, v9

    cmp-long v15, v9, v13

    if-gez v15, :cond_8

    const/4 v9, 0x1

    :goto_5
    const/16 v16, 0x1

    goto :goto_6

    .line 3114
    :cond_8
    iget v13, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v14, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v13, v14, :cond_9

    .line 3115
    iput-char v12, v0, Lcom/alibaba/fastjson2/x;->f:C

    move-wide v13, v9

    const/4 v9, 0x0

    goto :goto_5

    .line 3118
    :cond_9
    iget-object v13, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v14, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v15, v14, 0x1

    iput v15, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v13, v13, v14

    iput-char v13, v0, Lcom/alibaba/fastjson2/x;->f:C

    move-wide v13, v9

    const-wide/16 v9, 0x0

    const/16 v16, 0x1

    goto :goto_4

    :cond_a
    const/4 v9, 0x0

    .line 3122
    :goto_6
    iget-char v10, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v15, 0x2e

    if-eq v10, v15, :cond_d

    iget-char v10, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v15, 0x65

    if-eq v10, v15, :cond_d

    iget-char v10, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v15, 0x45

    if-eq v10, v15, :cond_d

    iget-char v10, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v15, 0x74

    if-eq v10, v15, :cond_d

    iget-char v10, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v15, 0x66

    if-eq v10, v15, :cond_d

    iget-char v10, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v15, 0x6e

    if-eq v10, v15, :cond_d

    iget-char v10, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v15, 0x7b

    if-eq v10, v15, :cond_d

    iget-char v10, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v15, 0x5b

    if-eq v10, v15, :cond_d

    if-eqz v9, :cond_b

    goto :goto_7

    :cond_b
    if-eqz v3, :cond_c

    .line 3132
    iget-char v9, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-eq v9, v3, :cond_c

    goto :goto_7

    :cond_c
    const/4 v9, 0x0

    goto :goto_8

    :cond_d
    :goto_7
    const/4 v9, 0x1

    :goto_8
    if-eqz v9, :cond_e

    .line 3137
    iput v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    .line 3138
    iput-char v2, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 3139
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->aM()V

    .line 3140
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->Y()Ljava/lang/Long;

    move-result-object v1

    return-object v1

    :cond_e
    if-eqz v3, :cond_10

    .line 3144
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v1, v2, :cond_f

    .line 3145
    iput-char v12, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_9

    .line 3147
    :cond_f
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v2

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 3151
    :cond_10
    :goto_9
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x53

    const/16 v3, 0x46

    const/16 v9, 0x44

    const/16 v10, 0x42

    const/16 v15, 0x4c

    if-eq v1, v15, :cond_11

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-eq v1, v3, :cond_11

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-eq v1, v9, :cond_11

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-eq v1, v10, :cond_11

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-ne v1, v2, :cond_18

    .line 3152
    :cond_11
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-eq v1, v10, :cond_16

    if-eq v1, v9, :cond_15

    if-eq v1, v3, :cond_14

    if-eq v1, v15, :cond_13

    if-eq v1, v2, :cond_12

    goto :goto_a

    :cond_12
    const/16 v1, 0xa

    .line 3157
    iput-byte v1, v0, Lcom/alibaba/fastjson2/x;->m:B

    goto :goto_a

    :cond_13
    const/16 v1, 0xb

    .line 3160
    iput-byte v1, v0, Lcom/alibaba/fastjson2/x;->m:B

    goto :goto_a

    :cond_14
    const/16 v1, 0xc

    .line 3163
    iput-byte v1, v0, Lcom/alibaba/fastjson2/x;->m:B

    goto :goto_a

    :cond_15
    const/16 v1, 0xd

    .line 3166
    iput-byte v1, v0, Lcom/alibaba/fastjson2/x;->m:B

    goto :goto_a

    :cond_16
    const/16 v1, 0x9

    .line 3154
    iput-byte v1, v0, Lcom/alibaba/fastjson2/x;->m:B

    .line 3171
    :goto_a
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v1, v2, :cond_17

    .line 3172
    iput-char v12, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_b

    .line 3174
    :cond_17
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v2

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 3178
    :cond_18
    :goto_b
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v1, v8, :cond_1a

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    shl-long v1, v6, v1

    and-long/2addr v1, v4

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_1a

    .line 3179
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v1, v2, :cond_19

    .line 3180
    iput-char v12, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_b

    .line 3182
    :cond_19
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v2

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_b

    .line 3186
    :cond_1a
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_1b

    const/4 v1, 0x1

    goto :goto_c

    :cond_1b
    const/4 v1, 0x0

    :goto_c
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v1, :cond_1e

    .line 3188
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v1, v2, :cond_1c

    .line 3189
    iput-char v12, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_e

    .line 3191
    :cond_1c
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v2

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 3192
    :goto_d
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v1, v8, :cond_1e

    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    shl-long v1, v6, v1

    and-long/2addr v1, v4

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_1e

    .line 3193
    iget v1, v0, Lcom/alibaba/fastjson2/x;->e:I

    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v1, v2, :cond_1d

    .line 3194
    iput-char v12, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_d

    .line 3196
    :cond_1d
    iget-object v1, v0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v2

    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_d

    :cond_1e
    :goto_e
    if-eqz v16, :cond_20

    if-eqz v11, :cond_1f

    neg-long v13, v13

    .line 3203
    :cond_1f
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 3205
    :cond_20
    new-instance v1, Lcom/alibaba/fastjson2/c;

    const-string v2, "illegal input error"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final ac()F
    .locals 19

    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 3523
    iput-boolean v0, v1, Lcom/alibaba/fastjson2/x;->j:Z

    .line 3529
    iget-char v2, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/4 v3, 0x0

    const/16 v4, 0x1a

    const/4 v5, 0x1

    const/16 v6, 0x22

    if-eq v2, v6, :cond_1

    iget-char v2, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v6, 0x27

    if-ne v2, v6, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_2

    .line 3530
    :cond_1
    :goto_0
    iget-char v2, v1, Lcom/alibaba/fastjson2/x;->f:C

    .line 3531
    iget-object v6, v1, Lcom/alibaba/fastjson2/x;->A:[C

    iget v7, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v6, v6, v7

    iput-char v6, v1, Lcom/alibaba/fastjson2/x;->f:C

    .line 3533
    iget-char v6, v1, Lcom/alibaba/fastjson2/x;->f:C

    if-ne v6, v2, :cond_3

    .line 3534
    iget v0, v1, Lcom/alibaba/fastjson2/x;->e:I

    iget v2, v1, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v0, v2, :cond_2

    .line 3535
    iput-char v4, v1, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_1

    .line 3537
    :cond_2
    iget-object v0, v1, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v0, v0, v2

    iput-char v0, v1, Lcom/alibaba/fastjson2/x;->f:C

    .line 3539
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->x()Z

    .line 3540
    iput-boolean v5, v1, Lcom/alibaba/fastjson2/x;->j:Z

    return v3

    .line 3545
    :cond_3
    :goto_2
    iget v6, v1, Lcom/alibaba/fastjson2/x;->e:I

    .line 3546
    iget-char v7, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v8, 0x2b

    const/16 v9, 0x2d

    if-ne v7, v9, :cond_4

    .line 3547
    iput-boolean v5, v1, Lcom/alibaba/fastjson2/x;->l:Z

    .line 3548
    iget-object v7, v1, Lcom/alibaba/fastjson2/x;->A:[C

    iget v10, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v7, v7, v10

    iput-char v7, v1, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_3

    .line 3550
    :cond_4
    iput-boolean v0, v1, Lcom/alibaba/fastjson2/x;->l:Z

    .line 3551
    iget-char v7, v1, Lcom/alibaba/fastjson2/x;->f:C

    if-ne v7, v8, :cond_5

    .line 3552
    iget-object v7, v1, Lcom/alibaba/fastjson2/x;->A:[C

    iget v10, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v7, v7, v10

    iput-char v7, v1, Lcom/alibaba/fastjson2/x;->f:C

    .line 3556
    :cond_5
    :goto_3
    iput-byte v5, v1, Lcom/alibaba/fastjson2/x;->m:B

    move v7, v0

    move v14, v7

    const-wide/16 v12, 0x0

    .line 3560
    :goto_4
    iget-char v15, v1, Lcom/alibaba/fastjson2/x;->f:C

    const-wide/16 v16, 0xa

    const/16 v3, 0x39

    const/16 v10, 0x30

    if-lt v15, v10, :cond_9

    iget-char v11, v1, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v11, v3, :cond_9

    if-nez v7, :cond_7

    mul-long v14, v12, v16

    .line 3563
    iget-char v11, v1, Lcom/alibaba/fastjson2/x;->f:C

    sub-int/2addr v11, v10

    int-to-long v8, v11

    add-long/2addr v14, v8

    cmp-long v8, v14, v12

    if-gez v8, :cond_6

    move v7, v5

    goto :goto_5

    :cond_6
    move-wide v12, v14

    .line 3571
    :cond_7
    :goto_5
    iget v8, v1, Lcom/alibaba/fastjson2/x;->e:I

    iget v9, v1, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v8, v9, :cond_8

    .line 3572
    iput-char v4, v1, Lcom/alibaba/fastjson2/x;->f:C

    .line 3573
    iget v8, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/2addr v8, v5

    iput v8, v1, Lcom/alibaba/fastjson2/x;->e:I

    move v14, v5

    goto :goto_6

    .line 3576
    :cond_8
    iget-object v3, v1, Lcom/alibaba/fastjson2/x;->A:[C

    iget v8, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v3, v3, v8

    iput-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    move v14, v5

    const/4 v3, 0x0

    const/16 v8, 0x2b

    const/16 v9, 0x2d

    goto :goto_4

    .line 3579
    :cond_9
    :goto_6
    iput-short v0, v1, Lcom/alibaba/fastjson2/x;->o:S

    .line 3580
    iget-char v8, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v9, 0x2e

    const/4 v11, 0x2

    if-ne v8, v9, :cond_d

    .line 3581
    iput-byte v11, v1, Lcom/alibaba/fastjson2/x;->m:B

    .line 3582
    iget-object v8, v1, Lcom/alibaba/fastjson2/x;->A:[C

    iget v9, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v15, v9, 0x1

    iput v15, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v8, v8, v9

    iput-char v8, v1, Lcom/alibaba/fastjson2/x;->f:C

    .line 3583
    :goto_7
    iget-char v8, v1, Lcom/alibaba/fastjson2/x;->f:C

    if-lt v8, v10, :cond_d

    iget-char v8, v1, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v8, v3, :cond_d

    .line 3585
    iget-short v8, v1, Lcom/alibaba/fastjson2/x;->o:S

    add-int/2addr v8, v5

    int-to-short v8, v8

    iput-short v8, v1, Lcom/alibaba/fastjson2/x;->o:S

    if-nez v7, :cond_b

    mul-long v8, v12, v16

    .line 3587
    iget-char v14, v1, Lcom/alibaba/fastjson2/x;->f:C

    sub-int/2addr v14, v10

    int-to-long v14, v14

    add-long/2addr v8, v14

    cmp-long v14, v8, v12

    if-gez v14, :cond_a

    move v7, v5

    goto :goto_8

    :cond_a
    move-wide v12, v8

    .line 3595
    :cond_b
    :goto_8
    iget v8, v1, Lcom/alibaba/fastjson2/x;->e:I

    iget v9, v1, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v8, v9, :cond_c

    .line 3596
    iput-char v4, v1, Lcom/alibaba/fastjson2/x;->f:C

    .line 3597
    iget v8, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/2addr v8, v5

    iput v8, v1, Lcom/alibaba/fastjson2/x;->e:I

    move v14, v5

    goto :goto_9

    .line 3600
    :cond_c
    iget-object v8, v1, Lcom/alibaba/fastjson2/x;->A:[C

    iget v9, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v14, v9, 0x1

    iput v14, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v8, v8, v9

    iput-char v8, v1, Lcom/alibaba/fastjson2/x;->f:C

    move v14, v5

    goto :goto_7

    .line 3605
    :cond_d
    :goto_9
    iget-char v8, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v9, 0x65

    if-eq v8, v9, :cond_e

    iget-char v8, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v15, 0x45

    if-ne v8, v15, :cond_15

    .line 3607
    :cond_e
    iget-object v8, v1, Lcom/alibaba/fastjson2/x;->A:[C

    iget v15, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v0, v15, 0x1

    iput v0, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v0, v8, v15

    iput-char v0, v1, Lcom/alibaba/fastjson2/x;->f:C

    .line 3609
    iget-char v0, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v8, 0x2d

    if-ne v0, v8, :cond_f

    .line 3611
    iget-object v0, v1, Lcom/alibaba/fastjson2/x;->A:[C

    iget v8, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v15, v8, 0x1

    iput v15, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v0, v0, v8

    iput-char v0, v1, Lcom/alibaba/fastjson2/x;->f:C

    move v8, v5

    const/4 v0, 0x0

    goto :goto_a

    .line 3612
    :cond_f
    iget-char v0, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v8, 0x2b

    if-ne v0, v8, :cond_10

    .line 3613
    iget-object v0, v1, Lcom/alibaba/fastjson2/x;->A:[C

    iget v8, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v15, v8, 0x1

    iput v15, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v0, v0, v8

    iput-char v0, v1, Lcom/alibaba/fastjson2/x;->f:C

    :cond_10
    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 3616
    :goto_a
    iget-char v15, v1, Lcom/alibaba/fastjson2/x;->f:C

    if-lt v15, v10, :cond_13

    iget-char v15, v1, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v15, v3, :cond_13

    .line 3618
    iget-char v14, v1, Lcom/alibaba/fastjson2/x;->f:C

    sub-int/2addr v14, v10

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v14

    const/16 v14, 0x3ff

    if-gt v0, v14, :cond_12

    .line 3624
    iget v14, v1, Lcom/alibaba/fastjson2/x;->e:I

    iget v15, v1, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v14, v15, :cond_11

    .line 3625
    iput-char v4, v1, Lcom/alibaba/fastjson2/x;->f:C

    .line 3626
    iget v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/2addr v3, v5

    iput v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    move v14, v5

    goto :goto_b

    .line 3629
    :cond_11
    iget-object v14, v1, Lcom/alibaba/fastjson2/x;->A:[C

    iget v15, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v3, v15, 0x1

    iput v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v3, v14, v15

    iput-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    move v14, v5

    const/16 v3, 0x39

    goto :goto_a

    .line 3621
    :cond_12
    new-instance v2, Lcom/alibaba/fastjson2/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "too large exp value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_13
    :goto_b
    if-eqz v8, :cond_14

    neg-int v0, v0

    :cond_14
    int-to-short v3, v0

    .line 3636
    iput-short v3, v1, Lcom/alibaba/fastjson2/x;->n:S

    .line 3637
    iput-byte v11, v1, Lcom/alibaba/fastjson2/x;->m:B

    .line 3640
    :cond_15
    iget v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    if-ne v3, v6, :cond_20

    .line 3641
    iget-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v8, 0x6e

    const/16 v10, 0x75

    const/16 v11, 0x6c

    if-ne v3, v8, :cond_18

    .line 3642
    iget-object v3, v1, Lcom/alibaba/fastjson2/x;->A:[C

    iget v8, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v3, v3, v8

    if-ne v3, v10, :cond_20

    iget-object v3, v1, Lcom/alibaba/fastjson2/x;->A:[C

    iget v8, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v3, v3, v8

    if-ne v3, v11, :cond_20

    iget-object v3, v1, Lcom/alibaba/fastjson2/x;->A:[C

    iget v8, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v3, v3, v8

    if-ne v3, v11, :cond_20

    .line 3647
    iget-object v3, v1, Lcom/alibaba/fastjson2/x;->a:Lcom/alibaba/fastjson2/u$c;

    iget-wide v8, v3, Lcom/alibaba/fastjson2/u$c;->p:J

    sget-object v3, Lcom/alibaba/fastjson2/u$d;->ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/u$d;

    iget-wide v10, v3, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-nez v3, :cond_17

    .line 3650
    iput-boolean v5, v1, Lcom/alibaba/fastjson2/x;->j:Z

    .line 3652
    iget v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    iget v8, v1, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v3, v8, :cond_16

    .line 3653
    iput-char v4, v1, Lcom/alibaba/fastjson2/x;->f:C

    .line 3654
    iget v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/2addr v3, v5

    iput v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    goto/16 :goto_d

    .line 3656
    :cond_16
    iget-object v3, v1, Lcom/alibaba/fastjson2/x;->A:[C

    iget v8, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v3, v3, v8

    iput-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    goto/16 :goto_d

    .line 3648
    :cond_17
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v2, "long value not support input null"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3659
    :cond_18
    iget-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v8, 0x74

    if-ne v3, v8, :cond_1a

    .line 3660
    iget-object v3, v1, Lcom/alibaba/fastjson2/x;->A:[C

    iget v8, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v11, v8, 0x1

    iput v11, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v3, v3, v8

    const/16 v8, 0x72

    if-ne v3, v8, :cond_20

    iget-object v3, v1, Lcom/alibaba/fastjson2/x;->A:[C

    iget v8, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v11, v8, 0x1

    iput v11, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v3, v3, v8

    if-ne v3, v10, :cond_20

    iget-object v3, v1, Lcom/alibaba/fastjson2/x;->A:[C

    iget v8, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v10, v8, 0x1

    iput v10, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v3, v3, v8

    if-ne v3, v9, :cond_20

    const/high16 v3, 0x3f800000    # 1.0f

    .line 3667
    iget v8, v1, Lcom/alibaba/fastjson2/x;->e:I

    iget v9, v1, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v8, v9, :cond_19

    .line 3668
    iput-char v4, v1, Lcom/alibaba/fastjson2/x;->f:C

    .line 3669
    iget v8, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/2addr v8, v5

    iput v8, v1, Lcom/alibaba/fastjson2/x;->e:I

    goto :goto_c

    .line 3671
    :cond_19
    iget-object v8, v1, Lcom/alibaba/fastjson2/x;->A:[C

    iget v9, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v8, v8, v9

    iput-char v8, v1, Lcom/alibaba/fastjson2/x;->f:C

    :goto_c
    move/from16 v18, v3

    move v3, v5

    move v14, v3

    goto/16 :goto_f

    .line 3674
    :cond_1a
    iget-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v8, 0x66

    if-ne v3, v8, :cond_1c

    .line 3675
    iget-object v3, v1, Lcom/alibaba/fastjson2/x;->A:[C

    iget v8, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v10, v8, 0x1

    iput v10, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v3, v3, v8

    const/16 v8, 0x61

    if-ne v3, v8, :cond_20

    iget-object v3, v1, Lcom/alibaba/fastjson2/x;->A:[C

    iget v8, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v10, v8, 0x1

    iput v10, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v3, v3, v8

    if-ne v3, v11, :cond_20

    iget-object v3, v1, Lcom/alibaba/fastjson2/x;->A:[C

    iget v8, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v10, v8, 0x1

    iput v10, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v3, v3, v8

    const/16 v8, 0x73

    if-ne v3, v8, :cond_20

    iget-object v3, v1, Lcom/alibaba/fastjson2/x;->A:[C

    iget v8, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v10, v8, 0x1

    iput v10, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v3, v3, v8

    if-ne v3, v9, :cond_20

    .line 3683
    iget v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    iget v8, v1, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v3, v8, :cond_1b

    .line 3684
    iput-char v4, v1, Lcom/alibaba/fastjson2/x;->f:C

    .line 3685
    iget v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/2addr v3, v5

    iput v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    goto :goto_d

    .line 3687
    :cond_1b
    iget-object v3, v1, Lcom/alibaba/fastjson2/x;->A:[C

    iget v8, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v3, v3, v8

    iput-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_d

    .line 3690
    :cond_1c
    iget-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v8, 0x7b

    if-ne v3, v8, :cond_1e

    if-nez v2, :cond_1e

    .line 3692
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->aU()Ljava/util/Map;

    move-result-object v3

    .line 3693
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 3697
    iput-boolean v5, v1, Lcom/alibaba/fastjson2/x;->j:Z

    :goto_d
    move v3, v5

    move v14, v3

    goto :goto_e

    .line 3694
    :cond_1d
    new-instance v0, Lcom/alibaba/fastjson2/c;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->be()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3698
    :cond_1e
    iget-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v8, 0x5b

    if-ne v3, v8, :cond_20

    if-nez v2, :cond_20

    .line 3700
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->aZ()Ljava/util/List;

    move-result-object v3

    .line 3701
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 3705
    iput-boolean v5, v1, Lcom/alibaba/fastjson2/x;->j:Z

    goto :goto_d

    .line 3702
    :cond_1f
    new-instance v0, Lcom/alibaba/fastjson2/c;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->be()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    const/4 v3, 0x0

    :goto_e
    const/16 v18, 0x0

    .line 3709
    :goto_f
    iget v8, v1, Lcom/alibaba/fastjson2/x;->e:I

    sub-int/2addr v8, v6

    const/4 v9, 0x0

    if-eqz v2, :cond_23

    .line 3713
    iget-char v10, v1, Lcom/alibaba/fastjson2/x;->f:C

    if-eq v10, v2, :cond_21

    .line 3715
    iget v7, v1, Lcom/alibaba/fastjson2/x;->e:I

    sub-int/2addr v7, v5

    iput v7, v1, Lcom/alibaba/fastjson2/x;->e:I

    .line 3716
    iput-char v2, v1, Lcom/alibaba/fastjson2/x;->f:C

    .line 3717
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->aN()Ljava/lang/String;

    move-result-object v9

    move v7, v5

    .line 3720
    :cond_21
    iget v2, v1, Lcom/alibaba/fastjson2/x;->e:I

    iget v10, v1, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v2, v10, :cond_22

    .line 3721
    iput-char v4, v1, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_10

    .line 3723
    :cond_22
    iget-object v2, v1, Lcom/alibaba/fastjson2/x;->A:[C

    iget v10, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v2, v2, v10

    iput-char v2, v1, Lcom/alibaba/fastjson2/x;->f:C

    :cond_23
    :goto_10
    if-nez v3, :cond_34

    if-nez v7, :cond_2a

    .line 3729
    iget-short v2, v1, Lcom/alibaba/fastjson2/x;->o:S

    sub-int/2addr v2, v0

    if-nez v2, :cond_25

    long-to-float v0, v12

    .line 3732
    iget-boolean v3, v1, Lcom/alibaba/fastjson2/x;->l:Z

    if-eqz v3, :cond_24

    neg-float v0, v0

    :cond_24
    move/from16 v18, v0

    move v3, v5

    goto :goto_12

    :cond_25
    long-to-float v0, v12

    float-to-long v10, v0

    cmp-long v7, v10, v12

    if-nez v7, :cond_28

    if-lez v2, :cond_27

    .line 3737
    sget-object v7, Lcom/alibaba/fastjson2/d;->v:[F

    array-length v7, v7

    if-ge v2, v7, :cond_27

    .line 3738
    sget-object v7, Lcom/alibaba/fastjson2/d;->v:[F

    aget v7, v7, v2

    div-float/2addr v0, v7

    .line 3739
    iget-boolean v7, v1, Lcom/alibaba/fastjson2/x;->l:Z

    if-eqz v7, :cond_26

    :goto_11
    neg-float v0, v0

    :cond_26
    move/from16 v18, v0

    goto :goto_12

    :cond_27
    if-gez v2, :cond_28

    .line 3742
    sget-object v7, Lcom/alibaba/fastjson2/d;->v:[F

    array-length v7, v7

    neg-int v7, v7

    if-le v2, v7, :cond_28

    .line 3743
    sget-object v7, Lcom/alibaba/fastjson2/d;->v:[F

    neg-int v10, v2

    aget v7, v7, v10

    mul-float/2addr v0, v7

    .line 3744
    iget-boolean v7, v1, Lcom/alibaba/fastjson2/x;->l:Z

    if-eqz v7, :cond_26

    goto :goto_11

    :cond_28
    :goto_12
    if-nez v3, :cond_2a

    const/16 v0, -0x80

    if-le v2, v0, :cond_2a

    const/16 v0, 0x80

    if-ge v2, v0, :cond_2a

    .line 3751
    iget-boolean v0, v1, Lcom/alibaba/fastjson2/x;->l:Z

    if-eqz v0, :cond_29

    const/4 v0, -0x1

    goto :goto_13

    :cond_29
    move v0, v5

    :goto_13
    invoke-static {v0, v12, v13, v2}, Labo;->b(IJI)F

    move-result v18

    move v3, v5

    :cond_2a
    if-nez v3, :cond_2c

    if-eqz v9, :cond_2b

    .line 3759
    :try_start_0
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_14

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 3761
    new-instance v0, Lcom/alibaba/fastjson2/c;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->be()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 3764
    :cond_2b
    iget-object v0, v1, Lcom/alibaba/fastjson2/x;->A:[C

    sub-int/2addr v6, v5

    invoke-static {v0, v6, v8}, Labo;->b([CII)F

    move-result v0

    :goto_14
    move/from16 v18, v0

    .line 3768
    :cond_2c
    iget-char v0, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x4c

    if-eq v0, v2, :cond_2d

    iget-char v0, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x46

    if-eq v0, v2, :cond_2d

    iget-char v0, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x44

    if-eq v0, v2, :cond_2d

    iget-char v0, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x42

    if-eq v0, v2, :cond_2d

    iget-char v0, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x53

    if-ne v0, v2, :cond_34

    .line 3769
    :cond_2d
    iget-char v0, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x42

    if-eq v0, v2, :cond_32

    const/16 v2, 0x44

    if-eq v0, v2, :cond_31

    const/16 v2, 0x46

    if-eq v0, v2, :cond_30

    const/16 v2, 0x4c

    if-eq v0, v2, :cond_2f

    const/16 v2, 0x53

    if-eq v0, v2, :cond_2e

    goto :goto_15

    :cond_2e
    const/16 v0, 0xa

    .line 3774
    iput-byte v0, v1, Lcom/alibaba/fastjson2/x;->m:B

    goto :goto_15

    :cond_2f
    const/16 v0, 0xb

    .line 3777
    iput-byte v0, v1, Lcom/alibaba/fastjson2/x;->m:B

    goto :goto_15

    :cond_30
    const/16 v0, 0xc

    .line 3780
    iput-byte v0, v1, Lcom/alibaba/fastjson2/x;->m:B

    goto :goto_15

    :cond_31
    const/16 v0, 0xd

    .line 3783
    iput-byte v0, v1, Lcom/alibaba/fastjson2/x;->m:B

    goto :goto_15

    :cond_32
    const/16 v0, 0x9

    .line 3771
    iput-byte v0, v1, Lcom/alibaba/fastjson2/x;->m:B

    .line 3788
    :goto_15
    iget v0, v1, Lcom/alibaba/fastjson2/x;->e:I

    iget v2, v1, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v0, v2, :cond_33

    .line 3789
    iput-char v4, v1, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_16

    .line 3791
    :cond_33
    iget-object v0, v1, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v0, v0, v2

    iput-char v0, v1, Lcom/alibaba/fastjson2/x;->f:C

    .line 3796
    :cond_34
    :goto_16
    iget-char v0, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x20

    if-gt v0, v2, :cond_36

    const-wide/16 v2, 0x1

    iget-char v0, v1, Lcom/alibaba/fastjson2/x;->f:C

    shl-long/2addr v2, v0

    const-wide v6, 0x100003700L

    and-long/2addr v2, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-eqz v0, :cond_36

    .line 3797
    iget v0, v1, Lcom/alibaba/fastjson2/x;->e:I

    iget v2, v1, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v0, v2, :cond_35

    .line 3798
    iput-char v4, v1, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_16

    .line 3800
    :cond_35
    iget-object v0, v1, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v0, v0, v2

    iput-char v0, v1, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_16

    .line 3804
    :cond_36
    iget-char v0, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x2c

    if-ne v0, v2, :cond_37

    goto :goto_17

    :cond_37
    const/4 v5, 0x0

    :goto_17
    iput-boolean v5, v1, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v5, :cond_3a

    .line 3806
    iget v0, v1, Lcom/alibaba/fastjson2/x;->e:I

    iget v2, v1, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v0, v2, :cond_38

    .line 3807
    iput-char v4, v1, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_19

    .line 3809
    :cond_38
    iget-object v0, v1, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v0, v0, v2

    iput-char v0, v1, Lcom/alibaba/fastjson2/x;->f:C

    .line 3810
    :goto_18
    iget-char v0, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x20

    if-gt v0, v2, :cond_3a

    const-wide/16 v2, 0x1

    iget-char v0, v1, Lcom/alibaba/fastjson2/x;->f:C

    shl-long/2addr v2, v0

    const-wide v5, 0x100003700L

    and-long/2addr v2, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-eqz v0, :cond_3a

    .line 3811
    iget v0, v1, Lcom/alibaba/fastjson2/x;->e:I

    iget v2, v1, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v0, v2, :cond_39

    .line 3812
    iput-char v4, v1, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_18

    .line 3814
    :cond_39
    iget-object v0, v1, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v0, v0, v2

    iput-char v0, v1, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_18

    :cond_3a
    :goto_19
    if-eqz v14, :cond_3b

    return v18

    .line 3823
    :cond_3b
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v2, "illegal input error"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ae()D
    .locals 24

    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 3212
    iput-boolean v0, v1, Lcom/alibaba/fastjson2/x;->j:Z

    .line 3217
    iget-object v2, v1, Lcom/alibaba/fastjson2/x;->A:[C

    .line 3219
    iget-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    const-wide/16 v4, 0x0

    const/16 v6, 0x1a

    const/4 v7, 0x1

    const/16 v8, 0x22

    if-eq v3, v8, :cond_1

    iget-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v8, 0x27

    if-ne v3, v8, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    goto :goto_2

    .line 3220
    :cond_1
    :goto_0
    iget-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    .line 3221
    iget v8, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v8, v2, v8

    iput-char v8, v1, Lcom/alibaba/fastjson2/x;->f:C

    .line 3223
    iget-char v8, v1, Lcom/alibaba/fastjson2/x;->f:C

    if-ne v8, v3, :cond_3

    .line 3224
    iget v0, v1, Lcom/alibaba/fastjson2/x;->e:I

    iget v3, v1, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v0, v3, :cond_2

    .line 3225
    iput-char v6, v1, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_1

    .line 3227
    :cond_2
    iget v0, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v3, v0, 0x1

    iput v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v0, v2, v0

    iput-char v0, v1, Lcom/alibaba/fastjson2/x;->f:C

    .line 3229
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->x()Z

    .line 3230
    iput-boolean v7, v1, Lcom/alibaba/fastjson2/x;->j:Z

    return-wide v4

    .line 3235
    :cond_3
    :goto_2
    iget v8, v1, Lcom/alibaba/fastjson2/x;->e:I

    .line 3236
    iget-char v9, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v10, 0x2b

    const/16 v11, 0x2d

    if-ne v9, v11, :cond_4

    .line 3237
    iput-boolean v7, v1, Lcom/alibaba/fastjson2/x;->l:Z

    .line 3238
    iget v9, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v12, v9, 0x1

    iput v12, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v9, v2, v9

    iput-char v9, v1, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_3

    .line 3240
    :cond_4
    iput-boolean v0, v1, Lcom/alibaba/fastjson2/x;->l:Z

    .line 3241
    iget-char v9, v1, Lcom/alibaba/fastjson2/x;->f:C

    if-ne v9, v10, :cond_5

    .line 3242
    iget v9, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v12, v9, 0x1

    iput v12, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v9, v2, v9

    iput-char v9, v1, Lcom/alibaba/fastjson2/x;->f:C

    .line 3246
    :cond_5
    :goto_3
    iput-byte v7, v1, Lcom/alibaba/fastjson2/x;->m:B

    move v9, v0

    move/from16 v16, v9

    const-wide/16 v14, 0x0

    .line 3249
    :goto_4
    iget-char v4, v1, Lcom/alibaba/fastjson2/x;->f:C

    const-wide/16 v19, 0xa

    const/16 v5, 0x39

    const/16 v12, 0x30

    if-lt v4, v12, :cond_9

    iget-char v4, v1, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v4, v5, :cond_9

    if-nez v9, :cond_7

    mul-long v22, v14, v19

    .line 3252
    iget-char v4, v1, Lcom/alibaba/fastjson2/x;->f:C

    sub-int/2addr v4, v12

    int-to-long v10, v4

    add-long v22, v22, v10

    cmp-long v4, v22, v14

    if-gez v4, :cond_6

    move v9, v7

    goto :goto_5

    :cond_6
    move-wide/from16 v14, v22

    .line 3260
    :cond_7
    :goto_5
    iget v4, v1, Lcom/alibaba/fastjson2/x;->e:I

    iget v10, v1, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v4, v10, :cond_8

    .line 3261
    iput-char v6, v1, Lcom/alibaba/fastjson2/x;->f:C

    .line 3262
    iget v4, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/2addr v4, v7

    iput v4, v1, Lcom/alibaba/fastjson2/x;->e:I

    move/from16 v16, v7

    goto :goto_6

    .line 3265
    :cond_8
    iget v4, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v4, v2, v4

    iput-char v4, v1, Lcom/alibaba/fastjson2/x;->f:C

    move/from16 v16, v7

    const/16 v10, 0x2b

    const/16 v11, 0x2d

    goto :goto_4

    .line 3268
    :cond_9
    :goto_6
    iput-short v0, v1, Lcom/alibaba/fastjson2/x;->o:S

    .line 3269
    iget-char v4, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v10, 0x2e

    const/4 v11, 0x2

    if-ne v4, v10, :cond_d

    .line 3270
    iput-byte v11, v1, Lcom/alibaba/fastjson2/x;->m:B

    .line 3271
    iget v4, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v10, v4, 0x1

    iput v10, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v4, v2, v4

    iput-char v4, v1, Lcom/alibaba/fastjson2/x;->f:C

    .line 3272
    :goto_7
    iget-char v4, v1, Lcom/alibaba/fastjson2/x;->f:C

    if-lt v4, v12, :cond_d

    iget-char v4, v1, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v4, v5, :cond_d

    .line 3274
    iget-short v4, v1, Lcom/alibaba/fastjson2/x;->o:S

    add-int/2addr v4, v7

    int-to-short v4, v4

    iput-short v4, v1, Lcom/alibaba/fastjson2/x;->o:S

    if-nez v9, :cond_b

    mul-long v22, v14, v19

    .line 3276
    iget-char v4, v1, Lcom/alibaba/fastjson2/x;->f:C

    sub-int/2addr v4, v12

    int-to-long v11, v4

    add-long v22, v22, v11

    cmp-long v4, v22, v14

    if-gez v4, :cond_a

    move v9, v7

    goto :goto_8

    :cond_a
    move-wide/from16 v14, v22

    .line 3284
    :cond_b
    :goto_8
    iget v4, v1, Lcom/alibaba/fastjson2/x;->e:I

    iget v11, v1, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v4, v11, :cond_c

    .line 3285
    iput-char v6, v1, Lcom/alibaba/fastjson2/x;->f:C

    .line 3286
    iget v4, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/2addr v4, v7

    iput v4, v1, Lcom/alibaba/fastjson2/x;->e:I

    move/from16 v16, v7

    goto :goto_9

    .line 3289
    :cond_c
    iget v4, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v11, v4, 0x1

    iput v11, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v4, v2, v4

    iput-char v4, v1, Lcom/alibaba/fastjson2/x;->f:C

    move/from16 v16, v7

    const/4 v11, 0x2

    const/16 v12, 0x30

    goto :goto_7

    .line 3294
    :cond_d
    :goto_9
    iget-char v4, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v11, 0x65

    if-eq v4, v11, :cond_e

    iget-char v4, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v12, 0x45

    if-ne v4, v12, :cond_15

    .line 3296
    :cond_e
    iget v4, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v12, v4, 0x1

    iput v12, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v4, v2, v4

    iput-char v4, v1, Lcom/alibaba/fastjson2/x;->f:C

    .line 3298
    iget-char v4, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v12, 0x2d

    if-ne v4, v12, :cond_f

    .line 3300
    iget v4, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v12, v4, 0x1

    iput v12, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v4, v2, v4

    iput-char v4, v1, Lcom/alibaba/fastjson2/x;->f:C

    move v4, v0

    move v12, v7

    goto :goto_a

    .line 3301
    :cond_f
    iget-char v4, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v12, 0x2b

    if-ne v4, v12, :cond_10

    .line 3302
    iget v4, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v12, v4, 0x1

    iput v12, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v4, v2, v4

    iput-char v4, v1, Lcom/alibaba/fastjson2/x;->f:C

    :cond_10
    move v4, v0

    move v12, v4

    .line 3305
    :goto_a
    iget-char v13, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v10, 0x30

    if-lt v13, v10, :cond_13

    iget-char v13, v1, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v13, v5, :cond_13

    .line 3307
    iget-char v13, v1, Lcom/alibaba/fastjson2/x;->f:C

    sub-int/2addr v13, v10

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v4, v13

    const/16 v13, 0x3ff

    if-gt v4, v13, :cond_12

    .line 3313
    iget v13, v1, Lcom/alibaba/fastjson2/x;->e:I

    iget v0, v1, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v13, v0, :cond_11

    .line 3314
    iput-char v6, v1, Lcom/alibaba/fastjson2/x;->f:C

    .line 3315
    iget v0, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/2addr v0, v7

    iput v0, v1, Lcom/alibaba/fastjson2/x;->e:I

    move/from16 v16, v7

    goto :goto_b

    .line 3318
    :cond_11
    iget v0, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v13, v0, 0x1

    iput v13, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v0, v2, v0

    iput-char v0, v1, Lcom/alibaba/fastjson2/x;->f:C

    move/from16 v16, v7

    const/4 v0, 0x0

    goto :goto_a

    .line 3310
    :cond_12
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "too large exp value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    :goto_b
    if-eqz v12, :cond_14

    neg-int v0, v4

    goto :goto_c

    :cond_14
    move v0, v4

    :goto_c
    int-to-short v4, v0

    .line 3325
    iput-short v4, v1, Lcom/alibaba/fastjson2/x;->n:S

    const/4 v4, 0x2

    .line 3326
    iput-byte v4, v1, Lcom/alibaba/fastjson2/x;->m:B

    .line 3329
    :cond_15
    iget v4, v1, Lcom/alibaba/fastjson2/x;->e:I

    if-ne v4, v8, :cond_20

    .line 3330
    iget-char v4, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v5, 0x6e

    const/16 v10, 0x75

    if-ne v4, v5, :cond_18

    .line 3331
    iget v4, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v4, v2, v4

    if-ne v4, v10, :cond_20

    iget v4, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v4, v2, v4

    const/16 v5, 0x6c

    if-ne v4, v5, :cond_20

    iget v4, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v4, v2, v4

    const/16 v5, 0x6c

    if-ne v4, v5, :cond_20

    .line 3336
    iget-object v4, v1, Lcom/alibaba/fastjson2/x;->a:Lcom/alibaba/fastjson2/u$c;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/u$c;->p:J

    sget-object v10, Lcom/alibaba/fastjson2/u$d;->ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/u$d;

    iget-wide v10, v10, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v4, v10

    const-wide/16 v10, 0x0

    cmp-long v4, v4, v10

    if-nez v4, :cond_17

    .line 3340
    iput-boolean v7, v1, Lcom/alibaba/fastjson2/x;->j:Z

    .line 3342
    iget v4, v1, Lcom/alibaba/fastjson2/x;->e:I

    iget v5, v1, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v4, v5, :cond_16

    .line 3343
    iput-char v6, v1, Lcom/alibaba/fastjson2/x;->f:C

    .line 3344
    iget v4, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/2addr v4, v7

    iput v4, v1, Lcom/alibaba/fastjson2/x;->e:I

    goto/16 :goto_e

    .line 3346
    :cond_16
    iget v4, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v4, v2, v4

    iput-char v4, v1, Lcom/alibaba/fastjson2/x;->f:C

    goto/16 :goto_e

    .line 3337
    :cond_17
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v2, "long value not support input null"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3349
    :cond_18
    iget-char v4, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v5, 0x74

    if-ne v4, v5, :cond_1a

    .line 3350
    iget v4, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v4, v2, v4

    const/16 v5, 0x72

    if-ne v4, v5, :cond_20

    iget v4, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v4, v2, v4

    if-ne v4, v10, :cond_20

    iget v4, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v4, v2, v4

    if-ne v4, v11, :cond_20

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 3357
    iget v10, v1, Lcom/alibaba/fastjson2/x;->e:I

    iget v11, v1, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v10, v11, :cond_19

    .line 3358
    iput-char v6, v1, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_d

    .line 3360
    :cond_19
    iget v10, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v10, v2, v10

    iput-char v10, v1, Lcom/alibaba/fastjson2/x;->f:C

    :goto_d
    move-wide v10, v4

    move v4, v7

    move/from16 v16, v4

    goto/16 :goto_10

    .line 3363
    :cond_1a
    iget-char v4, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v5, 0x66

    if-ne v4, v5, :cond_1c

    .line 3364
    iget v4, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v4, v4, 0x4

    iget v5, v1, Lcom/alibaba/fastjson2/x;->D:I

    if-gt v4, v5, :cond_20

    sget-object v4, Labf;->a:Lsun/misc/Unsafe;

    sget-wide v10, Labf;->c:J

    iget v5, v1, Lcom/alibaba/fastjson2/x;->e:I

    shl-int/2addr v5, v7

    int-to-long v12, v5

    add-long/2addr v10, v12

    invoke-virtual {v4, v2, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    sget-wide v10, Labe;->f:J

    cmp-long v4, v4, v10

    if-nez v4, :cond_20

    .line 3366
    iget v4, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v4, v4, 0x4

    iput v4, v1, Lcom/alibaba/fastjson2/x;->e:I

    .line 3369
    iget v4, v1, Lcom/alibaba/fastjson2/x;->e:I

    iget v5, v1, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v4, v5, :cond_1b

    .line 3370
    iput-char v6, v1, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_e

    .line 3372
    :cond_1b
    iget v4, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v4, v2, v4

    iput-char v4, v1, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_e

    .line 3375
    :cond_1c
    iget-char v4, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v5, 0x7b

    if-ne v4, v5, :cond_1e

    if-nez v3, :cond_1e

    .line 3377
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->aU()Ljava/util/Map;

    move-result-object v4

    .line 3378
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 3382
    iput-boolean v7, v1, Lcom/alibaba/fastjson2/x;->j:Z

    :goto_e
    move v4, v7

    move/from16 v16, v4

    goto :goto_f

    .line 3379
    :cond_1d
    new-instance v0, Lcom/alibaba/fastjson2/c;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->be()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3383
    :cond_1e
    iget-char v4, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v5, 0x5b

    if-ne v4, v5, :cond_20

    if-nez v3, :cond_20

    .line 3385
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->aZ()Ljava/util/List;

    move-result-object v4

    .line 3386
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 3390
    iput-boolean v7, v1, Lcom/alibaba/fastjson2/x;->j:Z

    goto :goto_e

    .line 3387
    :cond_1f
    new-instance v0, Lcom/alibaba/fastjson2/c;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->be()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    const/4 v4, 0x0

    :goto_f
    const-wide/16 v10, 0x0

    .line 3394
    :goto_10
    iget v5, v1, Lcom/alibaba/fastjson2/x;->e:I

    sub-int/2addr v5, v8

    const/4 v12, 0x0

    if-eqz v3, :cond_23

    .line 3398
    iget-char v13, v1, Lcom/alibaba/fastjson2/x;->f:C

    if-eq v13, v3, :cond_21

    .line 3399
    iget v12, v1, Lcom/alibaba/fastjson2/x;->e:I

    sub-int/2addr v12, v7

    iput v12, v1, Lcom/alibaba/fastjson2/x;->e:I

    .line 3400
    iput-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    .line 3401
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->aN()Ljava/lang/String;

    move-result-object v12

    .line 3404
    :cond_21
    iget v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    iget v13, v1, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v3, v13, :cond_22

    .line 3405
    iput-char v6, v1, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_11

    .line 3407
    :cond_22
    iget v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v13, v3, 0x1

    iput v13, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v3, v2, v3

    iput-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    :cond_23
    :goto_11
    if-nez v4, :cond_37

    if-nez v9, :cond_2b

    const-wide/16 v20, 0x0

    cmp-long v3, v14, v20

    if-nez v3, :cond_24

    .line 3414
    iget-short v0, v1, Lcom/alibaba/fastjson2/x;->o:S

    if-ne v0, v7, :cond_2b

    const-wide/16 v17, 0x0

    goto :goto_15

    .line 3419
    :cond_24
    iget-short v3, v1, Lcom/alibaba/fastjson2/x;->o:S

    sub-int/2addr v3, v0

    if-nez v3, :cond_26

    long-to-double v9, v14

    .line 3422
    iget-boolean v0, v1, Lcom/alibaba/fastjson2/x;->l:Z

    if-eqz v0, :cond_25

    neg-double v9, v9

    :cond_25
    move-wide/from16 v17, v9

    goto :goto_13

    :cond_26
    long-to-double v6, v14

    move-wide/from16 v17, v10

    double-to-long v9, v6

    cmp-long v9, v9, v14

    if-nez v9, :cond_29

    if-lez v3, :cond_28

    .line 3427
    sget-object v9, Lcom/alibaba/fastjson2/d;->w:[D

    array-length v9, v9

    if-ge v3, v9, :cond_28

    .line 3428
    sget-object v4, Lcom/alibaba/fastjson2/d;->w:[D

    aget-wide v9, v4, v3

    div-double/2addr v6, v9

    .line 3429
    iget-boolean v4, v1, Lcom/alibaba/fastjson2/x;->l:Z

    if-eqz v4, :cond_27

    :goto_12
    neg-double v6, v6

    :cond_27
    move-wide/from16 v17, v6

    const/4 v7, 0x1

    goto :goto_13

    :cond_28
    if-gez v3, :cond_29

    .line 3433
    sget-object v9, Lcom/alibaba/fastjson2/d;->w:[D

    array-length v9, v9

    neg-int v9, v9

    if-le v3, v9, :cond_29

    .line 3434
    sget-object v4, Lcom/alibaba/fastjson2/d;->w:[D

    neg-int v9, v3

    aget-wide v9, v4, v9

    mul-double/2addr v6, v9

    .line 3435
    iget-boolean v4, v1, Lcom/alibaba/fastjson2/x;->l:Z

    if-eqz v4, :cond_27

    goto :goto_12

    :cond_29
    move v7, v4

    :goto_13
    if-nez v7, :cond_2c

    const/16 v4, -0x80

    if-le v3, v4, :cond_2c

    const/16 v4, 0x80

    if-ge v3, v4, :cond_2c

    .line 3443
    iget-boolean v4, v1, Lcom/alibaba/fastjson2/x;->l:Z

    if-eqz v4, :cond_2a

    const/4 v7, -0x1

    goto :goto_14

    :cond_2a
    const/4 v7, 0x1

    :goto_14
    invoke-static {v7, v14, v15, v3}, Labo;->a(IJI)D

    move-result-wide v3

    move-wide/from16 v17, v3

    const/4 v7, 0x1

    goto :goto_15

    :cond_2b
    move-wide/from16 v17, v10

    move v7, v4

    :cond_2c
    :goto_15
    if-nez v7, :cond_2e

    if-eqz v12, :cond_2d

    .line 3452
    :try_start_0
    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_16

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 3454
    new-instance v0, Lcom/alibaba/fastjson2/c;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->be()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2d
    const/4 v0, 0x1

    sub-int/2addr v8, v0

    .line 3457
    invoke-static {v2, v8, v5}, Labo;->a([CII)D

    move-result-wide v3

    goto :goto_16

    :cond_2e
    const/4 v0, 0x1

    move-wide/from16 v3, v17

    .line 3461
    :goto_16
    iget-char v5, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v6, 0x4c

    if-eq v5, v6, :cond_2f

    iget-char v5, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v6, 0x46

    if-eq v5, v6, :cond_2f

    iget-char v5, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v6, 0x44

    if-eq v5, v6, :cond_2f

    iget-char v5, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v6, 0x42

    if-eq v5, v6, :cond_2f

    iget-char v5, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v6, 0x53

    if-ne v5, v6, :cond_36

    .line 3462
    :cond_2f
    iget-char v5, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v6, 0x42

    if-eq v5, v6, :cond_34

    const/16 v6, 0x44

    if-eq v5, v6, :cond_33

    const/16 v6, 0x46

    if-eq v5, v6, :cond_32

    const/16 v6, 0x4c

    if-eq v5, v6, :cond_31

    const/16 v6, 0x53

    if-eq v5, v6, :cond_30

    goto :goto_17

    :cond_30
    const/16 v5, 0xa

    .line 3467
    iput-byte v5, v1, Lcom/alibaba/fastjson2/x;->m:B

    goto :goto_17

    :cond_31
    const/16 v5, 0xb

    .line 3470
    iput-byte v5, v1, Lcom/alibaba/fastjson2/x;->m:B

    goto :goto_17

    :cond_32
    const/16 v5, 0xc

    .line 3473
    iput-byte v5, v1, Lcom/alibaba/fastjson2/x;->m:B

    goto :goto_17

    :cond_33
    const/16 v5, 0xd

    .line 3476
    iput-byte v5, v1, Lcom/alibaba/fastjson2/x;->m:B

    goto :goto_17

    :cond_34
    const/16 v5, 0x9

    .line 3464
    iput-byte v5, v1, Lcom/alibaba/fastjson2/x;->m:B

    .line 3481
    :goto_17
    iget v5, v1, Lcom/alibaba/fastjson2/x;->e:I

    iget v6, v1, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v5, v6, :cond_35

    const/16 v5, 0x1a

    .line 3482
    iput-char v5, v1, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_18

    .line 3484
    :cond_35
    iget v5, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v5, v2, v5

    iput-char v5, v1, Lcom/alibaba/fastjson2/x;->f:C

    :cond_36
    :goto_18
    move-wide v10, v3

    goto :goto_19

    :cond_37
    move v0, v7

    move-wide/from16 v17, v10

    .line 3489
    :goto_19
    iget-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v4, 0x20

    if-gt v3, v4, :cond_39

    const-wide/16 v5, 0x1

    iget-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    shl-long/2addr v5, v3

    const-wide v7, 0x100003700L

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_39

    .line 3490
    iget v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    iget v4, v1, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v3, v4, :cond_38

    const/16 v3, 0x1a

    .line 3491
    iput-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_19

    .line 3493
    :cond_38
    iget v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v3, v2, v3

    iput-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_19

    .line 3497
    :cond_39
    iget-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v5, 0x2c

    if-ne v3, v5, :cond_3a

    goto :goto_1a

    :cond_3a
    const/4 v0, 0x0

    :goto_1a
    iput-boolean v0, v1, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v0, :cond_3d

    .line 3499
    iget v0, v1, Lcom/alibaba/fastjson2/x;->e:I

    iget v3, v1, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v0, v3, :cond_3b

    const/16 v0, 0x1a

    .line 3500
    iput-char v0, v1, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_1c

    .line 3502
    :cond_3b
    iget v0, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v3, v0, 0x1

    iput v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v0, v2, v0

    iput-char v0, v1, Lcom/alibaba/fastjson2/x;->f:C

    .line 3503
    :goto_1b
    iget-char v0, v1, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v0, v4, :cond_3d

    const-wide/16 v5, 0x1

    iget-char v0, v1, Lcom/alibaba/fastjson2/x;->f:C

    shl-long/2addr v5, v0

    const-wide v7, 0x100003700L

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-eqz v0, :cond_3d

    .line 3504
    iget v0, v1, Lcom/alibaba/fastjson2/x;->e:I

    iget v3, v1, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v0, v3, :cond_3c

    const/16 v0, 0x1a

    .line 3505
    iput-char v0, v1, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_1b

    :cond_3c
    const/16 v0, 0x1a

    .line 3507
    iget v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v3, v2, v3

    iput-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_1b

    :cond_3d
    :goto_1c
    if-eqz v16, :cond_3e

    return-wide v10

    .line 3516
    :cond_3e
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v2, "illegal input error"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ai()Ljava/math/BigDecimal;
    .locals 24

    move-object/from16 v1, p0

    .line 5126
    iget-object v0, v1, Lcom/alibaba/fastjson2/x;->A:[C

    .line 5131
    iget-char v2, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x1a

    const/16 v6, 0x22

    if-eq v2, v6, :cond_1

    iget-char v2, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v6, 0x27

    if-ne v2, v6, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_2

    .line 5132
    :cond_1
    :goto_0
    iget-char v2, v1, Lcom/alibaba/fastjson2/x;->f:C

    .line 5133
    iget v6, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v6, v0, v6

    iput-char v6, v1, Lcom/alibaba/fastjson2/x;->f:C

    .line 5135
    iget-char v6, v1, Lcom/alibaba/fastjson2/x;->f:C

    if-ne v6, v2, :cond_3

    .line 5136
    iget v2, v1, Lcom/alibaba/fastjson2/x;->e:I

    iget v4, v1, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v2, v4, :cond_2

    .line 5137
    iput-char v5, v1, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_1

    .line 5139
    :cond_2
    iget v2, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v0, v0, v2

    iput-char v0, v1, Lcom/alibaba/fastjson2/x;->f:C

    .line 5141
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->x()Z

    return-object v3

    .line 5146
    :cond_3
    :goto_2
    iget v6, v1, Lcom/alibaba/fastjson2/x;->e:I

    .line 5147
    iget-char v7, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v8, 0x2b

    const/16 v9, 0x2d

    const/4 v10, 0x1

    if-ne v7, v9, :cond_4

    .line 5148
    iput-boolean v10, v1, Lcom/alibaba/fastjson2/x;->l:Z

    .line 5149
    iget v7, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v7, v0, v7

    iput-char v7, v1, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_3

    .line 5151
    :cond_4
    iput-boolean v4, v1, Lcom/alibaba/fastjson2/x;->l:Z

    .line 5152
    iget-char v7, v1, Lcom/alibaba/fastjson2/x;->f:C

    if-ne v7, v8, :cond_5

    .line 5153
    iget v7, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v11, v7, 0x1

    iput v11, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v7, v0, v7

    iput-char v7, v1, Lcom/alibaba/fastjson2/x;->f:C

    .line 5157
    :cond_5
    :goto_3
    iput-byte v10, v1, Lcom/alibaba/fastjson2/x;->m:B

    const-wide/16 v11, 0x0

    move v7, v4

    move v15, v7

    move-wide v13, v11

    .line 5160
    :goto_4
    iget-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v17, 0x1f

    const/16 v8, 0x39

    const-wide/16 v18, 0xa

    const/16 v9, 0x30

    if-lt v3, v9, :cond_a

    iget-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v3, v8, :cond_a

    if-nez v7, :cond_8

    mul-long v20, v13, v18

    or-long v22, v13, v18

    ushr-long v22, v22, v17

    cmp-long v3, v22, v11

    if-eqz v3, :cond_7

    .line 5164
    div-long v22, v20, v18

    cmp-long v3, v22, v13

    if-nez v3, :cond_6

    goto :goto_5

    :cond_6
    move v7, v10

    goto :goto_6

    .line 5165
    :cond_7
    :goto_5
    iget-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    sub-int/2addr v3, v9

    int-to-long v13, v3

    add-long v20, v20, v13

    move-wide/from16 v13, v20

    .line 5171
    :cond_8
    :goto_6
    iget v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    iget v15, v1, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v3, v15, :cond_9

    .line 5172
    iput-char v5, v1, Lcom/alibaba/fastjson2/x;->f:C

    .line 5173
    iget v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/2addr v3, v10

    iput v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    move v15, v10

    goto :goto_7

    .line 5176
    :cond_9
    iget v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v8, v3, 0x1

    iput v8, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v3, v0, v3

    iput-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    move v15, v10

    const/16 v8, 0x2b

    const/16 v9, 0x2d

    goto :goto_4

    .line 5179
    :cond_a
    :goto_7
    iput-short v4, v1, Lcom/alibaba/fastjson2/x;->o:S

    .line 5180
    iget-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v4, 0x2e

    const/4 v5, 0x2

    if-ne v3, v4, :cond_f

    .line 5181
    iput-byte v5, v1, Lcom/alibaba/fastjson2/x;->m:B

    .line 5182
    iget v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v3, v0, v3

    iput-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    .line 5183
    :goto_8
    iget-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    if-lt v3, v9, :cond_f

    iget-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v3, v8, :cond_f

    .line 5185
    iget-short v3, v1, Lcom/alibaba/fastjson2/x;->o:S

    add-int/2addr v3, v10

    int-to-short v3, v3

    iput-short v3, v1, Lcom/alibaba/fastjson2/x;->o:S

    if-nez v7, :cond_d

    mul-long v3, v13, v18

    or-long v22, v13, v18

    ushr-long v22, v22, v17

    cmp-long v15, v22, v11

    if-eqz v15, :cond_c

    .line 5188
    div-long v22, v3, v18

    cmp-long v15, v22, v13

    if-nez v15, :cond_b

    goto :goto_9

    :cond_b
    move v7, v10

    goto :goto_a

    .line 5189
    :cond_c
    :goto_9
    iget-char v13, v1, Lcom/alibaba/fastjson2/x;->f:C

    sub-int/2addr v13, v9

    int-to-long v13, v13

    add-long/2addr v3, v13

    move-wide v13, v3

    .line 5195
    :cond_d
    :goto_a
    iget v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    iget v4, v1, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v3, v4, :cond_e

    const/16 v3, 0x1a

    .line 5196
    iput-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    .line 5197
    iget v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/2addr v3, v10

    iput v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    move v15, v10

    goto :goto_b

    .line 5200
    :cond_e
    iget v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v3, v0, v3

    iput-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    move v15, v10

    goto :goto_8

    .line 5205
    :cond_f
    :goto_b
    iget-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v4, 0x65

    if-eq v3, v4, :cond_11

    iget-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v4, 0x45

    if-ne v3, v4, :cond_10

    goto :goto_c

    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_f

    .line 5207
    :cond_11
    :goto_c
    iget v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v3, v0, v3

    iput-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    .line 5209
    iget-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_12

    .line 5211
    iget v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v3, v0, v3

    iput-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    move v4, v10

    const/4 v3, 0x0

    goto :goto_d

    .line 5212
    :cond_12
    iget-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_13

    .line 5213
    iget v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v3, v0, v3

    iput-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    :cond_13
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 5216
    :goto_d
    iget-char v11, v1, Lcom/alibaba/fastjson2/x;->f:C

    if-lt v11, v9, :cond_16

    iget-char v11, v1, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v11, v8, :cond_16

    .line 5218
    iget-char v11, v1, Lcom/alibaba/fastjson2/x;->f:C

    sub-int/2addr v11, v9

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v11

    const/16 v11, 0x3ff

    if-gt v3, v11, :cond_15

    .line 5224
    iget v11, v1, Lcom/alibaba/fastjson2/x;->e:I

    iget v12, v1, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v11, v12, :cond_14

    const/16 v11, 0x1a

    .line 5225
    iput-char v11, v1, Lcom/alibaba/fastjson2/x;->f:C

    .line 5226
    iget v8, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/2addr v8, v10

    iput v8, v1, Lcom/alibaba/fastjson2/x;->e:I

    move v15, v10

    goto :goto_e

    .line 5229
    :cond_14
    iget v11, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v11, v0, v11

    iput-char v11, v1, Lcom/alibaba/fastjson2/x;->f:C

    move v15, v10

    goto :goto_d

    .line 5221
    :cond_15
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "too large exp value : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_e
    if-eqz v4, :cond_17

    neg-int v3, v3

    :cond_17
    move v4, v3

    int-to-short v3, v4

    .line 5236
    iput-short v3, v1, Lcom/alibaba/fastjson2/x;->n:S

    .line 5237
    iput-byte v5, v1, Lcom/alibaba/fastjson2/x;->m:B

    .line 5240
    :goto_f
    iget v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    if-ne v3, v6, :cond_21

    .line 5241
    iget-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v5, 0x6e

    const/16 v8, 0x75

    const/16 v9, 0x6c

    if-ne v3, v5, :cond_1a

    .line 5242
    iget v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v3, v0, v3

    if-ne v3, v8, :cond_21

    iget v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v3, v0, v3

    if-ne v3, v9, :cond_21

    iget v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v3, v0, v3

    if-ne v3, v9, :cond_21

    .line 5247
    iget-object v3, v1, Lcom/alibaba/fastjson2/x;->a:Lcom/alibaba/fastjson2/u$c;

    iget-wide v8, v3, Lcom/alibaba/fastjson2/u$c;->p:J

    sget-object v3, Lcom/alibaba/fastjson2/u$d;->ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/u$d;

    iget-wide v11, v3, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v8, v11

    const-wide/16 v11, 0x0

    cmp-long v3, v8, v11

    if-nez v3, :cond_19

    .line 5251
    iput-boolean v10, v1, Lcom/alibaba/fastjson2/x;->j:Z

    .line 5253
    iget v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    iget v5, v1, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v3, v5, :cond_18

    const/16 v3, 0x1a

    .line 5254
    iput-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    .line 5255
    iget v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/2addr v3, v10

    iput v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    goto :goto_10

    .line 5257
    :cond_18
    iget v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v3, v0, v3

    iput-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    :goto_10
    move v3, v10

    move v15, v3

    goto/16 :goto_12

    .line 5248
    :cond_19
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v2, "long value not support input null"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5260
    :cond_1a
    iget-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v5, 0x74

    if-ne v3, v5, :cond_1c

    .line 5261
    iget v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v3, v0, v3

    const/16 v5, 0x72

    if-ne v3, v5, :cond_21

    iget v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v3, v0, v3

    if-ne v3, v8, :cond_21

    iget v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v3, v0, v3

    const/16 v5, 0x65

    if-ne v3, v5, :cond_21

    .line 5267
    sget-object v3, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 5268
    iget v5, v1, Lcom/alibaba/fastjson2/x;->e:I

    iget v8, v1, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v5, v8, :cond_1b

    const/16 v5, 0x1a

    .line 5269
    iput-char v5, v1, Lcom/alibaba/fastjson2/x;->f:C

    .line 5270
    iget v5, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/2addr v5, v10

    iput v5, v1, Lcom/alibaba/fastjson2/x;->e:I

    goto/16 :goto_11

    .line 5272
    :cond_1b
    iget v5, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v8, v5, 0x1

    iput v8, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v5, v0, v5

    iput-char v5, v1, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_11

    .line 5275
    :cond_1c
    iget-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v5, 0x66

    if-ne v3, v5, :cond_1e

    .line 5276
    iget v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v3, v0, v3

    const/16 v5, 0x61

    if-ne v3, v5, :cond_21

    iget v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v3, v0, v3

    if-ne v3, v9, :cond_21

    iget v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v3, v0, v3

    const/16 v5, 0x73

    if-ne v3, v5, :cond_21

    iget v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v3, v0, v3

    const/16 v5, 0x65

    if-ne v3, v5, :cond_21

    .line 5282
    sget-object v3, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 5284
    iget v5, v1, Lcom/alibaba/fastjson2/x;->e:I

    iget v8, v1, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v5, v8, :cond_1d

    const/16 v5, 0x1a

    .line 5285
    iput-char v5, v1, Lcom/alibaba/fastjson2/x;->f:C

    .line 5286
    iget v5, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/2addr v5, v10

    iput v5, v1, Lcom/alibaba/fastjson2/x;->e:I

    goto :goto_11

    .line 5288
    :cond_1d
    iget v5, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v8, v5, 0x1

    iput v8, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v5, v0, v5

    iput-char v5, v1, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_11

    .line 5291
    :cond_1e
    iget-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v5, 0x7b

    if-ne v3, v5, :cond_1f

    if-nez v2, :cond_1f

    .line 5293
    new-instance v3, Lcom/alibaba/fastjson2/e;

    invoke-direct {v3}, Lcom/alibaba/fastjson2/e;-><init>()V

    const-wide/16 v8, 0x0

    .line 5294
    invoke-virtual {v1, v3, v8, v9}, Lcom/alibaba/fastjson2/x;->a(Ljava/lang/Object;J)V

    .line 5295
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson2/x;->a(Lcom/alibaba/fastjson2/e;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 5297
    iput-boolean v10, v1, Lcom/alibaba/fastjson2/x;->j:Z

    :goto_11
    move-object/from16 v16, v3

    move v3, v10

    move v15, v3

    goto :goto_13

    .line 5298
    :cond_1f
    iget-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v5, 0x5b

    if-ne v3, v5, :cond_21

    if-nez v2, :cond_21

    .line 5300
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->aZ()Ljava/util/List;

    move-result-object v3

    .line 5301
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 5305
    iput-boolean v10, v1, Lcom/alibaba/fastjson2/x;->j:Z

    goto/16 :goto_10

    .line 5302
    :cond_20
    new-instance v0, Lcom/alibaba/fastjson2/c;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->be()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    const/4 v3, 0x0

    :goto_12
    const/16 v16, 0x0

    .line 5309
    :goto_13
    iget v5, v1, Lcom/alibaba/fastjson2/x;->e:I

    sub-int/2addr v5, v6

    if-eqz v2, :cond_24

    .line 5312
    iget-char v8, v1, Lcom/alibaba/fastjson2/x;->f:C

    if-eq v8, v2, :cond_22

    .line 5313
    iget v0, v1, Lcom/alibaba/fastjson2/x;->e:I

    sub-int/2addr v0, v10

    iput v0, v1, Lcom/alibaba/fastjson2/x;->e:I

    .line 5314
    iput-char v2, v1, Lcom/alibaba/fastjson2/x;->f:C

    .line 5315
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->aN()Ljava/lang/String;

    move-result-object v0

    .line 5317
    :try_start_0
    invoke-static {v0}, Labo;->b(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 5319
    new-instance v0, Lcom/alibaba/fastjson2/c;

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson2/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 5322
    :cond_22
    iget v2, v1, Lcom/alibaba/fastjson2/x;->e:I

    iget v8, v1, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v2, v8, :cond_23

    const/16 v2, 0x1a

    .line 5323
    iput-char v2, v1, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_14

    .line 5325
    :cond_23
    iget v2, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v8, v2, 0x1

    iput v8, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v2, v0, v2

    iput-char v2, v1, Lcom/alibaba/fastjson2/x;->f:C

    :cond_24
    :goto_14
    if-nez v3, :cond_2f

    if-nez v4, :cond_26

    if-nez v7, :cond_26

    const-wide/16 v7, 0x0

    cmp-long v2, v13, v7

    if-eqz v2, :cond_26

    .line 5331
    iget-boolean v2, v1, Lcom/alibaba/fastjson2/x;->l:Z

    if-eqz v2, :cond_25

    neg-long v13, v13

    :cond_25
    iget-short v2, v1, Lcom/alibaba/fastjson2/x;->o:S

    invoke-static {v13, v14, v2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v16

    move v3, v10

    :cond_26
    if-nez v3, :cond_27

    sub-int/2addr v6, v10

    .line 5336
    invoke-static {v0, v6, v5}, Labo;->d([CII)Ljava/math/BigDecimal;

    move-result-object v2

    move-object/from16 v16, v2

    .line 5339
    :cond_27
    iget-char v2, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v3, 0x4c

    if-eq v2, v3, :cond_28

    iget-char v2, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v3, 0x46

    if-eq v2, v3, :cond_28

    iget-char v2, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v3, 0x44

    if-eq v2, v3, :cond_28

    iget-char v2, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v3, 0x42

    if-eq v2, v3, :cond_28

    iget-char v2, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v3, 0x53

    if-ne v2, v3, :cond_2f

    .line 5340
    :cond_28
    iget-char v2, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v3, 0x42

    if-eq v2, v3, :cond_2d

    const/16 v3, 0x44

    if-eq v2, v3, :cond_2c

    const/16 v3, 0x46

    if-eq v2, v3, :cond_2b

    const/16 v3, 0x4c

    if-eq v2, v3, :cond_2a

    const/16 v3, 0x53

    if-eq v2, v3, :cond_29

    goto :goto_15

    :cond_29
    const/16 v2, 0xa

    .line 5345
    iput-byte v2, v1, Lcom/alibaba/fastjson2/x;->m:B

    goto :goto_15

    :cond_2a
    const/16 v2, 0xb

    .line 5348
    iput-byte v2, v1, Lcom/alibaba/fastjson2/x;->m:B

    goto :goto_15

    :cond_2b
    const/16 v2, 0xc

    .line 5351
    iput-byte v2, v1, Lcom/alibaba/fastjson2/x;->m:B

    goto :goto_15

    :cond_2c
    const/16 v2, 0xd

    .line 5354
    iput-byte v2, v1, Lcom/alibaba/fastjson2/x;->m:B

    goto :goto_15

    :cond_2d
    const/16 v2, 0x9

    .line 5342
    iput-byte v2, v1, Lcom/alibaba/fastjson2/x;->m:B

    .line 5359
    :goto_15
    iget v2, v1, Lcom/alibaba/fastjson2/x;->e:I

    iget v3, v1, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v2, v3, :cond_2e

    const/16 v2, 0x1a

    .line 5360
    iput-char v2, v1, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_16

    .line 5362
    :cond_2e
    iget v2, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v2, v0, v2

    iput-char v2, v1, Lcom/alibaba/fastjson2/x;->f:C

    .line 5367
    :cond_2f
    :goto_16
    iget-char v2, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v3, 0x20

    if-gt v2, v3, :cond_31

    const-wide/16 v2, 0x1

    iget-char v4, v1, Lcom/alibaba/fastjson2/x;->f:C

    shl-long/2addr v2, v4

    const-wide v4, 0x100003700L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_31

    .line 5368
    iget v2, v1, Lcom/alibaba/fastjson2/x;->e:I

    iget v3, v1, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v2, v3, :cond_30

    const/16 v2, 0x1a

    .line 5369
    iput-char v2, v1, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_16

    .line 5371
    :cond_30
    iget v2, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v2, v0, v2

    iput-char v2, v1, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_16

    .line 5375
    :cond_31
    iget-char v2, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_32

    goto :goto_17

    :cond_32
    const/4 v10, 0x0

    :goto_17
    iput-boolean v10, v1, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v10, :cond_35

    .line 5377
    iget v2, v1, Lcom/alibaba/fastjson2/x;->e:I

    iget v3, v1, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v2, v3, :cond_33

    const/16 v2, 0x1a

    .line 5378
    iput-char v2, v1, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_19

    .line 5380
    :cond_33
    iget v2, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v2, v0, v2

    iput-char v2, v1, Lcom/alibaba/fastjson2/x;->f:C

    .line 5381
    :goto_18
    iget-char v2, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v3, 0x20

    if-gt v2, v3, :cond_35

    const-wide/16 v2, 0x1

    iget-char v4, v1, Lcom/alibaba/fastjson2/x;->f:C

    shl-long/2addr v2, v4

    const-wide v4, 0x100003700L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_35

    .line 5382
    iget v2, v1, Lcom/alibaba/fastjson2/x;->e:I

    iget v3, v1, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v2, v3, :cond_34

    const/16 v2, 0x1a

    .line 5383
    iput-char v2, v1, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_18

    :cond_34
    const/16 v2, 0x1a

    .line 5385
    iget v3, v1, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v6, v3, 0x1

    iput v6, v1, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v3, v0, v3

    iput-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_18

    :cond_35
    :goto_19
    if-eqz v15, :cond_36

    return-object v16

    .line 5394
    :cond_36
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v2, "illegal input error"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final aj()Ljava/util/UUID;
    .locals 17

    move-object/from16 v0, p0

    .line 5400
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    const/4 v2, 0x0

    const/16 v3, 0x6e

    if-ne v1, v3, :cond_0

    .line 5402
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->aQ()V

    return-object v2

    :cond_0
    const/16 v3, 0x22

    if-eq v1, v3, :cond_2

    const/16 v3, 0x27

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 5407
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson2/c;

    const-string v2, "syntax error, can not read uuid"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5410
    :cond_2
    :goto_0
    iget-object v3, v0, Lcom/alibaba/fastjson2/x;->A:[C

    .line 5411
    iget v4, v0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v5, v4, 0x24

    .line 5412
    array-length v6, v3

    const/16 v9, 0x20

    const-wide/16 v10, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x1

    if-ge v5, v6, :cond_d

    aget-char v5, v3, v5

    if-ne v5, v1, :cond_d

    add-int/lit8 v1, v4, 0x8

    .line 5413
    aget-char v1, v3, v1

    add-int/lit8 v5, v4, 0xd

    .line 5414
    aget-char v5, v3, v5

    add-int/lit8 v6, v4, 0x12

    .line 5415
    aget-char v6, v3, v6

    add-int/lit8 v14, v4, 0x17

    .line 5416
    aget-char v14, v3, v14

    const/16 v15, 0x2d

    if-ne v1, v15, :cond_15

    if-ne v5, v15, :cond_15

    if-ne v6, v15, :cond_15

    if-ne v14, v15, :cond_15

    move-wide v5, v10

    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x8

    if-ge v1, v2, :cond_3

    shl-long/2addr v5, v12

    .line 5420
    sget-object v2, Lcom/alibaba/fastjson2/d;->L:[B

    add-int v14, v4, v1

    aget-char v14, v3, v14

    add-int/lit8 v14, v14, -0x30

    aget-byte v2, v2, v14

    int-to-long v14, v2

    add-long/2addr v5, v14

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/16 v1, 0x9

    :goto_2
    const/16 v2, 0xd

    if-ge v1, v2, :cond_4

    shl-long/2addr v5, v12

    .line 5423
    sget-object v2, Lcom/alibaba/fastjson2/d;->L:[B

    add-int v14, v4, v1

    aget-char v14, v3, v14

    add-int/lit8 v14, v14, -0x30

    aget-byte v2, v2, v14

    int-to-long v14, v2

    add-long/2addr v5, v14

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const/16 v1, 0xe

    :goto_3
    const/16 v2, 0x12

    if-ge v1, v2, :cond_5

    shl-long/2addr v5, v12

    .line 5426
    sget-object v2, Lcom/alibaba/fastjson2/d;->L:[B

    add-int v14, v4, v1

    aget-char v14, v3, v14

    add-int/lit8 v14, v14, -0x30

    aget-byte v2, v2, v14

    int-to-long v14, v2

    add-long/2addr v5, v14

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    const/16 v1, 0x13

    move-wide v14, v10

    :goto_4
    const/16 v2, 0x17

    if-ge v1, v2, :cond_6

    shl-long/2addr v14, v12

    .line 5431
    sget-object v2, Lcom/alibaba/fastjson2/d;->L:[B

    add-int v16, v4, v1

    aget-char v16, v3, v16

    add-int/lit8 v16, v16, -0x30

    aget-byte v2, v2, v16

    int-to-long v7, v2

    add-long/2addr v14, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    const/16 v1, 0x18

    :goto_5
    const/16 v2, 0x24

    if-ge v1, v2, :cond_7

    shl-long v7, v14, v12

    .line 5434
    sget-object v2, Lcom/alibaba/fastjson2/d;->L:[B

    add-int v14, v4, v1

    aget-char v14, v3, v14

    add-int/lit8 v14, v14, -0x30

    aget-byte v2, v2, v14

    int-to-long v14, v2

    add-long/2addr v14, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 5437
    :cond_7
    new-instance v1, Ljava/util/UUID;

    invoke-direct {v1, v5, v6, v14, v15}, Ljava/util/UUID;-><init>(JJ)V

    add-int/lit8 v4, v4, 0x25

    .line 5439
    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v4, v2, :cond_8

    :goto_6
    const/16 v7, 0x1a

    goto :goto_8

    :cond_8
    add-int/lit8 v2, v4, 0x1

    .line 5442
    aget-char v7, v3, v4

    :goto_7
    move v4, v2

    :goto_8
    if-gt v7, v9, :cond_a

    const-wide/16 v5, 0x1

    shl-long/2addr v5, v7

    const-wide v14, 0x100003700L

    and-long/2addr v5, v14

    cmp-long v2, v5, v10

    if-eqz v2, :cond_a

    .line 5446
    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v4, v2, :cond_9

    goto :goto_6

    :cond_9
    add-int/lit8 v2, v4, 0x1

    .line 5449
    aget-char v7, v3, v4

    goto :goto_7

    .line 5453
    :cond_a
    iput v4, v0, Lcom/alibaba/fastjson2/x;->e:I

    const/16 v2, 0x2c

    if-ne v7, v2, :cond_b

    goto :goto_9

    :cond_b
    const/4 v13, 0x0

    .line 5454
    :goto_9
    iput-boolean v13, v0, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v13, :cond_c

    .line 5455
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->E()V

    goto :goto_a

    .line 5457
    :cond_c
    iput-char v7, v0, Lcom/alibaba/fastjson2/x;->f:C

    :goto_a
    return-object v1

    :cond_d
    add-int/lit8 v5, v4, 0x20

    .line 5462
    array-length v6, v3

    if-ge v5, v6, :cond_15

    aget-char v5, v3, v5

    if-ne v5, v1, :cond_15

    move-wide v5, v10

    const/4 v1, 0x0

    :goto_b
    const/16 v2, 0x10

    if-ge v1, v2, :cond_e

    shl-long/2addr v5, v12

    .line 5465
    sget-object v2, Lcom/alibaba/fastjson2/d;->L:[B

    add-int v7, v4, v1

    aget-char v7, v3, v7

    add-int/lit8 v7, v7, -0x30

    aget-byte v2, v2, v7

    int-to-long v7, v2

    add-long/2addr v5, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_e
    move-wide v7, v10

    :goto_c
    if-ge v2, v9, :cond_f

    shl-long/2addr v7, v12

    .line 5469
    sget-object v1, Lcom/alibaba/fastjson2/d;->L:[B

    add-int v14, v4, v2

    aget-char v14, v3, v14

    add-int/lit8 v14, v14, -0x30

    aget-byte v1, v1, v14

    int-to-long v14, v1

    add-long/2addr v7, v14

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 5471
    :cond_f
    new-instance v1, Ljava/util/UUID;

    invoke-direct {v1, v5, v6, v7, v8}, Ljava/util/UUID;-><init>(JJ)V

    add-int/lit8 v4, v4, 0x21

    .line 5473
    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v4, v2, :cond_10

    :goto_d
    const/16 v7, 0x1a

    goto :goto_f

    :cond_10
    add-int/lit8 v2, v4, 0x1

    .line 5476
    aget-char v7, v3, v4

    :goto_e
    move v4, v2

    :goto_f
    if-gt v7, v9, :cond_12

    const-wide/16 v5, 0x1

    shl-long/2addr v5, v7

    const-wide v14, 0x100003700L

    and-long/2addr v5, v14

    cmp-long v2, v5, v10

    if-eqz v2, :cond_12

    .line 5480
    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v4, v2, :cond_11

    goto :goto_d

    :cond_11
    add-int/lit8 v2, v4, 0x1

    .line 5483
    aget-char v7, v3, v4

    goto :goto_e

    .line 5487
    :cond_12
    iput v4, v0, Lcom/alibaba/fastjson2/x;->e:I

    const/16 v2, 0x2c

    if-ne v7, v2, :cond_13

    goto :goto_10

    :cond_13
    const/4 v13, 0x0

    .line 5488
    :goto_10
    iput-boolean v13, v0, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v13, :cond_14

    .line 5489
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->E()V

    goto :goto_11

    .line 5491
    :cond_14
    iput-char v7, v0, Lcom/alibaba/fastjson2/x;->f:C

    :goto_11
    return-object v1

    .line 5496
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->aN()Ljava/lang/String;

    move-result-object v1

    .line 5497
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_16

    return-object v2

    .line 5500
    :cond_16
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    return-object v1
.end method

.method public final ak()Ljava/time/LocalDate;
    .locals 11

    .line 5777
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    .line 5778
    iget-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x22

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x27

    if-ne v1, v2, :cond_8

    .line 5779
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/x;->a:Lcom/alibaba/fastjson2/u$c;

    iget-object v1, v1, Lcom/alibaba/fastjson2/u$c;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/fastjson2/x;->a:Lcom/alibaba/fastjson2/u$c;

    iget-boolean v1, v1, Lcom/alibaba/fastjson2/u$c;->b:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/fastjson2/x;->a:Lcom/alibaba/fastjson2/u$c;

    iget-boolean v1, v1, Lcom/alibaba/fastjson2/u$c;->c:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/fastjson2/x;->a:Lcom/alibaba/fastjson2/u$c;

    iget-boolean v1, v1, Lcom/alibaba/fastjson2/u$c;->e:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/fastjson2/x;->a:Lcom/alibaba/fastjson2/u$c;

    iget-boolean v1, v1, Lcom/alibaba/fastjson2/u$c;->h:Z

    if-eqz v1, :cond_8

    .line 5785
    :cond_1
    iget-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    .line 5786
    iget v2, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v2, v2, 0xa

    .line 5787
    array-length v3, v0

    if-ge v2, v3, :cond_8

    iget v3, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-ge v2, v3, :cond_8

    iget v2, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v2, v2, 0x4

    aget-char v2, v0, v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_8

    iget v2, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v2, v2, 0x7

    aget-char v2, v0, v2

    if-ne v2, v3, :cond_8

    iget v2, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v2, v2, 0xa

    aget-char v2, v0, v2

    if-ne v2, v1, :cond_8

    .line 5793
    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v0, v1

    .line 5794
    iget v2, p0, Lcom/alibaba/fastjson2/x;->e:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aget-char v2, v0, v2

    .line 5795
    iget v4, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v4, v4, 0x2

    aget-char v4, v0, v4

    .line 5796
    iget v5, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v5, v5, 0x3

    aget-char v5, v0, v5

    .line 5798
    iget v6, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v6, v6, 0x5

    aget-char v6, v0, v6

    .line 5799
    iget v7, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v7, v7, 0x6

    aget-char v7, v0, v7

    .line 5801
    iget v8, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v8, v8, 0x8

    aget-char v8, v0, v8

    .line 5802
    iget v9, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v9, v9, 0x9

    aget-char v0, v0, v9

    const/16 v9, 0x30

    if-lt v1, v9, :cond_7

    const/16 v10, 0x39

    if-gt v1, v10, :cond_7

    if-lt v2, v9, :cond_7

    if-gt v2, v10, :cond_7

    if-lt v4, v9, :cond_7

    if-gt v4, v10, :cond_7

    if-lt v5, v9, :cond_7

    if-gt v5, v10, :cond_7

    sub-int/2addr v1, v9

    mul-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v2, v9

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    sub-int/2addr v4, v9

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v1, v4

    sub-int/2addr v5, v9

    add-int/2addr v1, v5

    if-lt v6, v9, :cond_6

    if-gt v6, v10, :cond_6

    if-lt v7, v9, :cond_6

    if-gt v7, v10, :cond_6

    sub-int/2addr v6, v9

    mul-int/lit8 v6, v6, 0xa

    sub-int/2addr v7, v9

    add-int/2addr v6, v7

    if-lt v8, v9, :cond_5

    if-gt v8, v10, :cond_5

    if-lt v0, v9, :cond_5

    if-gt v0, v10, :cond_5

    sub-int/2addr v8, v9

    mul-int/lit8 v8, v8, 0xa

    sub-int/2addr v0, v9

    add-int/2addr v8, v0

    if-nez v1, :cond_2

    if-nez v6, :cond_2

    if-nez v8, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 5838
    :cond_2
    :try_start_0
    invoke-static {v1, v6, v8}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5844
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v1, v1, 0xb

    iput v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 5845
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    .line 5846
    iget-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v3, :cond_4

    .line 5847
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    :cond_4
    return-object v0

    :catch_0
    move-exception v0

    .line 5841
    new-instance v1, Lcom/alibaba/fastjson2/c;

    const-string v2, "read date error"

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 5830
    :cond_5
    invoke-super {p0}, Lcom/alibaba/fastjson2/u;->ak()Ljava/time/LocalDate;

    move-result-object v0

    return-object v0

    .line 5821
    :cond_6
    invoke-super {p0}, Lcom/alibaba/fastjson2/u;->ak()Ljava/time/LocalDate;

    move-result-object v0

    return-object v0

    .line 5812
    :cond_7
    invoke-super {p0}, Lcom/alibaba/fastjson2/u;->ak()Ljava/time/LocalDate;

    move-result-object v0

    return-object v0

    .line 5853
    :cond_8
    invoke-super {p0}, Lcom/alibaba/fastjson2/u;->ak()Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public final am()Ljava/time/OffsetDateTime;
    .locals 21

    move-object/from16 v1, p0

    .line 5857
    iget-object v0, v1, Lcom/alibaba/fastjson2/x;->A:[C

    .line 5858
    iget v2, v1, Lcom/alibaba/fastjson2/x;->e:I

    .line 5859
    iget-object v3, v1, Lcom/alibaba/fastjson2/x;->a:Lcom/alibaba/fastjson2/u$c;

    .line 5860
    iget-char v4, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v6, 0x22

    if-eq v4, v6, :cond_1

    iget-char v4, v1, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v6, 0x27

    if-ne v4, v6, :cond_0

    goto :goto_0

    :cond_0
    move-object v8, v1

    goto/16 :goto_b

    .line 5861
    :cond_1
    :goto_0
    iget-object v4, v3, Lcom/alibaba/fastjson2/u$c;->a:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-boolean v4, v3, Lcom/alibaba/fastjson2/u$c;->b:Z

    if-nez v4, :cond_2

    iget-boolean v4, v3, Lcom/alibaba/fastjson2/u$c;->c:Z

    if-nez v4, :cond_2

    iget-boolean v4, v3, Lcom/alibaba/fastjson2/u$c;->e:Z

    if-nez v4, :cond_2

    iget-boolean v3, v3, Lcom/alibaba/fastjson2/u$c;->h:Z

    if-eqz v3, :cond_0

    .line 5867
    :cond_2
    iget-char v3, v1, Lcom/alibaba/fastjson2/x;->f:C

    add-int/lit8 v4, v2, 0x13

    .line 5870
    array-length v6, v0

    if-ge v4, v6, :cond_0

    iget v6, v1, Lcom/alibaba/fastjson2/x;->D:I

    if-ge v4, v6, :cond_0

    add-int/lit8 v6, v2, 0x4

    aget-char v6, v0, v6

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_0

    add-int/lit8 v6, v2, 0x7

    aget-char v6, v0, v6

    if-ne v6, v7, :cond_0

    add-int/lit8 v6, v2, 0xa

    aget-char v6, v0, v6

    const/16 v7, 0x20

    if-eq v6, v7, :cond_3

    const/16 v7, 0x54

    if-ne v6, v7, :cond_0

    :cond_3
    add-int/lit8 v6, v2, 0xd

    aget-char v6, v0, v6

    const/16 v7, 0x3a

    if-ne v6, v7, :cond_0

    add-int/lit8 v6, v2, 0x10

    aget-char v6, v0, v6

    if-ne v6, v7, :cond_0

    .line 5878
    aget-char v6, v0, v2

    add-int/lit8 v7, v2, 0x1

    .line 5879
    aget-char v7, v0, v7

    add-int/lit8 v8, v2, 0x2

    .line 5880
    aget-char v8, v0, v8

    add-int/lit8 v9, v2, 0x3

    .line 5881
    aget-char v9, v0, v9

    add-int/lit8 v10, v2, 0x5

    .line 5882
    aget-char v10, v0, v10

    add-int/lit8 v11, v2, 0x6

    .line 5883
    aget-char v11, v0, v11

    add-int/lit8 v12, v2, 0x8

    .line 5884
    aget-char v12, v0, v12

    add-int/lit8 v13, v2, 0x9

    .line 5885
    aget-char v13, v0, v13

    add-int/lit8 v14, v2, 0xb

    .line 5886
    aget-char v14, v0, v14

    add-int/lit8 v15, v2, 0xc

    .line 5887
    aget-char v15, v0, v15

    add-int/lit8 v16, v2, 0xe

    .line 5888
    aget-char v5, v0, v16

    add-int/lit8 v16, v2, 0xf

    move/from16 v18, v4

    .line 5889
    aget-char v4, v0, v16

    add-int/lit8 v16, v2, 0x11

    move/from16 v19, v3

    .line 5890
    aget-char v3, v0, v16

    add-int/lit8 v16, v2, 0x12

    .line 5891
    aget-char v1, v0, v16

    move-object/from16 v16, v0

    const/16 v0, 0x30

    if-lt v6, v0, :cond_17

    move/from16 v20, v2

    const/16 v2, 0x39

    if-gt v6, v2, :cond_17

    if-lt v7, v0, :cond_17

    if-gt v7, v2, :cond_17

    if-lt v8, v0, :cond_17

    if-gt v8, v2, :cond_17

    if-lt v9, v0, :cond_17

    if-gt v9, v2, :cond_17

    sub-int/2addr v6, v0

    mul-int/lit16 v6, v6, 0x3e8

    sub-int/2addr v7, v0

    mul-int/lit8 v7, v7, 0x64

    add-int/2addr v6, v7

    sub-int/2addr v8, v0

    mul-int/lit8 v8, v8, 0xa

    add-int/2addr v6, v8

    sub-int/2addr v9, v0

    add-int/2addr v6, v9

    if-lt v10, v0, :cond_15

    if-gt v10, v2, :cond_15

    if-lt v11, v0, :cond_15

    if-gt v11, v2, :cond_15

    sub-int/2addr v10, v0

    mul-int/lit8 v10, v10, 0xa

    sub-int/2addr v11, v0

    add-int/2addr v10, v11

    if-lt v12, v0, :cond_13

    if-gt v12, v2, :cond_13

    if-lt v13, v0, :cond_13

    if-gt v13, v2, :cond_13

    sub-int/2addr v12, v0

    mul-int/lit8 v12, v12, 0xa

    sub-int/2addr v13, v0

    add-int/2addr v12, v13

    if-lt v14, v0, :cond_11

    if-gt v14, v2, :cond_11

    if-lt v15, v0, :cond_11

    if-gt v15, v2, :cond_11

    sub-int/2addr v14, v0

    mul-int/lit8 v14, v14, 0xa

    sub-int/2addr v15, v0

    add-int/2addr v14, v15

    if-lt v5, v0, :cond_f

    if-gt v5, v2, :cond_f

    if-lt v4, v0, :cond_f

    if-gt v4, v2, :cond_f

    sub-int/2addr v5, v0

    mul-int/lit8 v5, v5, 0xa

    sub-int/2addr v4, v0

    add-int/2addr v5, v4

    if-lt v3, v0, :cond_d

    if-gt v3, v2, :cond_d

    if-lt v1, v0, :cond_d

    if-gt v1, v2, :cond_d

    sub-int/2addr v3, v0

    mul-int/lit8 v3, v3, 0xa

    sub-int/2addr v1, v0

    add-int/2addr v3, v1

    if-nez v6, :cond_4

    if-nez v10, :cond_4

    if-nez v12, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    .line 5960
    :cond_4
    :try_start_0
    invoke-static {v6, v10, v12}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v20, 0x1f

    move/from16 v1, v18

    :goto_2
    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v1, v2, :cond_6

    move-object/from16 v8, p0

    .line 5968
    iget v9, v8, Lcom/alibaba/fastjson2/x;->D:I

    if-ge v1, v9, :cond_7

    move-object/from16 v9, v16

    array-length v10, v9

    if-ge v1, v10, :cond_8

    .line 5969
    aget-char v10, v9, v1

    move/from16 v11, v19

    if-ne v10, v11, :cond_5

    add-int/lit8 v10, v1, -0x1

    aget-char v10, v9, v10

    const/16 v12, 0x5a

    if-ne v10, v12, :cond_5

    sub-int v2, v1, v18

    add-int/lit8 v2, v2, -0x2

    sub-int v1, v1, v20

    add-int/2addr v1, v7

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v16, v9

    move/from16 v19, v11

    goto :goto_2

    :cond_6
    move-object/from16 v8, p0

    :cond_7
    move-object/from16 v9, v16

    :cond_8
    move v2, v4

    move v1, v6

    :goto_3
    if-ne v2, v4, :cond_9

    const/16 v4, 0x15

    if-ne v1, v4, :cond_19

    :cond_9
    if-gtz v2, :cond_a

    move v2, v6

    goto :goto_4

    :cond_a
    add-int/lit8 v4, v20, 0x14

    .line 5976
    invoke-static {v9, v2, v4}, Laay;->e([CII)I

    move-result v2

    .line 5977
    :goto_4
    invoke-static {v14, v5, v3, v2}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v2

    .line 5978
    invoke-static {v0, v2}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 5979
    sget-object v2, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-static {v0, v2}, Ljava/time/OffsetDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v0

    .line 5980
    iget v2, v8, Lcom/alibaba/fastjson2/x;->e:I

    add-int/2addr v2, v1

    iput v2, v8, Lcom/alibaba/fastjson2/x;->e:I

    .line 5981
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->E()V

    .line 5982
    iget-char v1, v8, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_b

    move v6, v7

    :cond_b
    iput-boolean v6, v8, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v6, :cond_c

    .line 5983
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->E()V

    :cond_c
    return-object v0

    :catch_0
    move-exception v0

    move-object/from16 v8, p0

    move-object v1, v0

    .line 5963
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v2, "read date error"

    invoke-virtual {v8, v2}, Lcom/alibaba/fastjson2/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_d
    move-object/from16 v8, p0

    .line 5951
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->an()Ljava/time/ZonedDateTime;

    move-result-object v0

    if-nez v0, :cond_e

    const/16 v17, 0x0

    goto :goto_5

    .line 5952
    :cond_e
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object v5

    move-object/from16 v17, v5

    :goto_5
    return-object v17

    :cond_f
    move-object/from16 v8, p0

    .line 5941
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->an()Ljava/time/ZonedDateTime;

    move-result-object v0

    if-nez v0, :cond_10

    const/16 v17, 0x0

    goto :goto_6

    .line 5942
    :cond_10
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object v5

    move-object/from16 v17, v5

    :goto_6
    return-object v17

    :cond_11
    move-object/from16 v8, p0

    .line 5931
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->an()Ljava/time/ZonedDateTime;

    move-result-object v0

    if-nez v0, :cond_12

    const/16 v17, 0x0

    goto :goto_7

    .line 5932
    :cond_12
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object v5

    move-object/from16 v17, v5

    :goto_7
    return-object v17

    :cond_13
    move-object/from16 v8, p0

    .line 5921
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->an()Ljava/time/ZonedDateTime;

    move-result-object v0

    if-nez v0, :cond_14

    const/16 v17, 0x0

    goto :goto_8

    .line 5922
    :cond_14
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object v5

    move-object/from16 v17, v5

    :goto_8
    return-object v17

    :cond_15
    move-object/from16 v8, p0

    .line 5911
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->an()Ljava/time/ZonedDateTime;

    move-result-object v0

    if-nez v0, :cond_16

    const/16 v17, 0x0

    goto :goto_9

    .line 5912
    :cond_16
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object v5

    move-object/from16 v17, v5

    :goto_9
    return-object v17

    :cond_17
    move-object/from16 v8, p0

    .line 5902
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->an()Ljava/time/ZonedDateTime;

    move-result-object v0

    if-nez v0, :cond_18

    const/16 v17, 0x0

    goto :goto_a

    .line 5903
    :cond_18
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object v5

    move-object/from16 v17, v5

    :goto_a
    return-object v17

    .line 5990
    :cond_19
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/x;->an()Ljava/time/ZonedDateTime;

    move-result-object v0

    if-nez v0, :cond_1a

    const/16 v17, 0x0

    goto :goto_c

    .line 5991
    :cond_1a
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object v5

    move-object/from16 v17, v5

    :goto_c
    return-object v17
.end method

.method public final ao()Ljava/time/OffsetTime;
    .locals 15

    .line 5996
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    .line 5997
    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 5998
    iget-object v2, p0, Lcom/alibaba/fastjson2/x;->a:Lcom/alibaba/fastjson2/u$c;

    .line 5999
    iget-char v3, p0, Lcom/alibaba/fastjson2/x;->f:C

    const-string v4, "illegal offsetTime"

    const/16 v5, 0x22

    if-eq v3, v5, :cond_0

    iget-char v3, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v5, 0x27

    if-ne v3, v5, :cond_c

    .line 6000
    :cond_0
    iget-object v2, v2, Lcom/alibaba/fastjson2/u$c;->a:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 6001
    iget-char v2, p0, Lcom/alibaba/fastjson2/x;->f:C

    add-int/lit8 v3, v1, 0x8

    .line 6003
    array-length v5, v0

    if-ge v3, v5, :cond_c

    iget v5, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-ge v3, v5, :cond_c

    add-int/lit8 v5, v1, 0x2

    aget-char v5, v0, v5

    const/16 v6, 0x3a

    if-ne v5, v6, :cond_c

    add-int/lit8 v5, v1, 0x5

    aget-char v5, v0, v5

    if-ne v5, v6, :cond_c

    .line 6008
    aget-char v5, v0, v1

    add-int/lit8 v6, v1, 0x1

    .line 6009
    aget-char v6, v0, v6

    add-int/lit8 v7, v1, 0x3

    .line 6010
    aget-char v7, v0, v7

    add-int/lit8 v8, v1, 0x4

    .line 6011
    aget-char v8, v0, v8

    add-int/lit8 v9, v1, 0x6

    .line 6012
    aget-char v9, v0, v9

    add-int/lit8 v10, v1, 0x7

    .line 6013
    aget-char v10, v0, v10

    const/16 v11, 0x30

    if-lt v5, v11, :cond_b

    const/16 v12, 0x39

    if-gt v5, v12, :cond_b

    if-lt v6, v11, :cond_b

    if-gt v6, v12, :cond_b

    sub-int/2addr v5, v11

    mul-int/lit8 v5, v5, 0xa

    sub-int/2addr v6, v11

    add-int/2addr v5, v6

    if-lt v7, v11, :cond_a

    if-gt v7, v12, :cond_a

    if-lt v8, v11, :cond_a

    if-gt v8, v12, :cond_a

    sub-int/2addr v7, v11

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr v8, v11

    add-int/2addr v7, v8

    if-lt v9, v11, :cond_9

    if-gt v9, v12, :cond_9

    if-lt v10, v11, :cond_9

    if-gt v10, v12, :cond_9

    sub-int/2addr v9, v11

    mul-int/lit8 v9, v9, 0xa

    sub-int/2addr v10, v11

    add-int/2addr v9, v10

    add-int/lit8 v4, v1, 0x19

    const/4 v6, -0x1

    move v8, v3

    move v10, v6

    :goto_0
    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ge v8, v4, :cond_4

    .line 6044
    iget v13, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-ge v8, v13, :cond_4

    array-length v13, v0

    if-ge v8, v13, :cond_4

    .line 6045
    aget-char v13, v0, v8

    if-ne v10, v6, :cond_2

    const/16 v14, 0x5a

    if-eq v13, v14, :cond_1

    const/16 v14, 0x2b

    if-eq v13, v14, :cond_1

    const/16 v14, 0x2d

    if-ne v13, v14, :cond_2

    :cond_1
    sub-int v10, v8, v3

    sub-int/2addr v10, v12

    :cond_2
    if-ne v13, v2, :cond_3

    sub-int v2, v8, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    move v2, v11

    :goto_1
    if-gtz v10, :cond_5

    move v3, v11

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v1, 0x9

    .line 6055
    invoke-static {v0, v10, v3}, Laay;->e([CII)I

    move-result v3

    :goto_2
    add-int/lit8 v4, v2, -0x9

    sub-int/2addr v4, v10

    if-gt v4, v12, :cond_6

    .line 6060
    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    goto :goto_3

    .line 6062
    :cond_6
    new-instance v6, Ljava/lang/String;

    add-int/lit8 v1, v1, 0x9

    add-int/2addr v1, v10

    invoke-direct {v6, v0, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 6063
    invoke-static {v6}, Ljava/time/ZoneOffset;->of(Ljava/lang/String;)Ljava/time/ZoneOffset;

    move-result-object v0

    .line 6065
    :goto_3
    invoke-static {v5, v7, v9, v3}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v1

    .line 6066
    invoke-static {v1, v0}, Ljava/time/OffsetTime;->of(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    .line 6067
    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 6068
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    .line 6069
    iget-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_7

    move v11, v12

    :cond_7
    iput-boolean v11, p0, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v11, :cond_8

    .line 6070
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    :cond_8
    return-object v0

    .line 6039
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson2/c;

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6030
    :cond_a
    new-instance v0, Lcom/alibaba/fastjson2/c;

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6021
    :cond_b
    new-instance v0, Lcom/alibaba/fastjson2/c;

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6076
    :cond_c
    new-instance v0, Lcom/alibaba/fastjson2/c;

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final aq()I
    .locals 6

    .line 5505
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 5506
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "string length only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5508
    :cond_1
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/4 v1, 0x0

    .line 5511
    iget v2, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 5512
    iget-object v3, p0, Lcom/alibaba/fastjson2/x;->A:[C

    add-int/lit8 v4, v2, 0x8

    .line 5515
    iget v5, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-ge v4, v5, :cond_2

    array-length v5, v3

    if-ge v4, v5, :cond_2

    .line 5516
    aget-char v5, v3, v2

    if-eq v5, v0, :cond_2

    add-int/lit8 v5, v2, 0x1

    aget-char v5, v3, v5

    if-eq v5, v0, :cond_2

    add-int/lit8 v5, v2, 0x2

    aget-char v5, v3, v5

    if-eq v5, v0, :cond_2

    add-int/lit8 v5, v2, 0x3

    aget-char v5, v3, v5

    if-eq v5, v0, :cond_2

    add-int/lit8 v5, v2, 0x4

    aget-char v5, v3, v5

    if-eq v5, v0, :cond_2

    add-int/lit8 v5, v2, 0x5

    aget-char v5, v3, v5

    if-eq v5, v0, :cond_2

    add-int/lit8 v5, v2, 0x6

    aget-char v5, v3, v5

    if-eq v5, v0, :cond_2

    add-int/lit8 v5, v2, 0x7

    aget-char v5, v3, v5

    if-eq v5, v0, :cond_2

    const/16 v1, 0x8

    move v2, v4

    .line 5530
    :cond_2
    :goto_1
    iget v4, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-ge v2, v4, :cond_4

    .line 5531
    aget-char v4, v3, v2

    if-ne v4, v0, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return v1
.end method

.method protected final at()Ljava/time/LocalDateTime;
    .locals 3

    .line 5559
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 5560
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "date only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5563
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-static {v0, v1}, Laay;->k([CI)Ljava/time/LocalDateTime;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 5568
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v1, v1, 0xd

    iput v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 5569
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    .line 5570
    iget-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v1, :cond_4

    .line 5571
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    :cond_4
    return-object v0
.end method

.method protected final au()Ljava/time/LocalDateTime;
    .locals 3

    .line 5540
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 5541
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "date only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5544
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-static {v0, v1}, Laay;->l([CI)Ljava/time/LocalDateTime;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 5549
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v1, v1, 0xf

    iput v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 5550
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    .line 5551
    iget-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v1, :cond_4

    .line 5552
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    :cond_4
    return-object v0
.end method

.method protected final av()Ljava/time/LocalDateTime;
    .locals 3

    .line 5578
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 5579
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "date only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5582
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-static {v0, v1}, Laay;->m([CI)Ljava/time/LocalDateTime;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 5587
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v1, v1, 0x11

    iput v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 5588
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    .line 5589
    iget-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v1, :cond_4

    .line 5590
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    :cond_4
    return-object v0
.end method

.method protected final aw()Ljava/time/LocalDateTime;
    .locals 3

    .line 5597
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 5598
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "date only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5601
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-static {v0, v1}, Laay;->n([CI)Ljava/time/LocalDateTime;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 5606
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v1, v1, 0x12

    iput v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 5607
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    .line 5608
    iget-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v1, :cond_4

    .line 5609
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    :cond_4
    return-object v0
.end method

.method protected final ax()Ljava/time/LocalDateTime;
    .locals 3

    .line 5616
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 5617
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "date only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5620
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-static {v0, v1}, Laay;->o([CI)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 5622
    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v1, v1, 0x13

    iput v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 5623
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    .line 5624
    iget-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v1, :cond_3

    .line 5625
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    :cond_3
    return-object v0
.end method

.method protected final ay()Ljava/time/LocalDateTime;
    .locals 3

    .line 6120
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 6121
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "date only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6124
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-static {v0, v1}, Laay;->p([CI)Ljava/time/LocalDateTime;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 6129
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v1, v1, 0x14

    iput v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 6130
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    .line 6131
    iget-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v1, :cond_4

    .line 6132
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    :cond_4
    return-object v0
.end method

.method protected final az()Ljava/time/LocalDateTime;
    .locals 3

    .line 6139
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 6140
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "date only support string input"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6143
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-static {v0, v1}, Laay;->q([CI)Ljava/time/LocalDateTime;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 6148
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v1, v1, 0x15

    iput v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 6149
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    .line 6150
    iget-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v1, :cond_4

    .line 6151
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    :cond_4
    return-object v0
.end method

.method protected final b(I)Ljava/time/LocalDateTime;
    .locals 3

    .line 6185
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 6186
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string v0, "date only support string input"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6190
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/2addr v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-char v0, v0, v1

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_2

    .line 6191
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-static {v0, v1, p1}, Laay;->d([CII)Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 6192
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson2/x;->a:Lcom/alibaba/fastjson2/u$c;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/u$c;->h()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_1

    .line 6194
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-static {v0, v1, p1}, Laay;->c([CII)Ljava/time/LocalDateTime;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_3

    const/4 p1, 0x0

    return-object p1

    .line 6201
    :cond_3
    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/2addr p1, v2

    add-int/2addr v1, p1

    iput v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 6202
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    .line 6203
    iget-char p1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x2c

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v2, :cond_5

    .line 6204
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    :cond_5
    return-object v0
.end method

.method protected final bf()V
    .locals 15

    .line 3943
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    .line 3944
    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    const/4 v2, 0x0

    .line 3947
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/x;->i:Z

    move v3, v1

    move v4, v2

    .line 3950
    :goto_0
    iget-object v5, p0, Lcom/alibaba/fastjson2/x;->A:[C

    aget-char v6, v5, v3

    const/16 v7, 0x78

    const/16 v8, 0x75

    const/16 v9, 0x5c

    const/4 v10, 0x1

    if-ne v6, v9, :cond_2

    .line 3952
    iput-boolean v10, p0, Lcom/alibaba/fastjson2/x;->i:Z

    add-int/lit8 v3, v3, 0x1

    .line 3953
    aget-char v5, v5, v3

    if-eq v5, v8, :cond_1

    if-eq v5, v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x4

    :goto_1
    add-int/2addr v3, v10

    goto/16 :goto_7

    :cond_2
    if-ne v6, v0, :cond_e

    .line 3978
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/x;->i:Z

    if-eqz v0, :cond_7

    .line 3979
    new-array v0, v4, [C

    move v3, v1

    move v1, v2

    .line 3982
    :goto_2
    iget-object v4, p0, Lcom/alibaba/fastjson2/x;->A:[C

    aget-char v5, v4, v3

    const/16 v6, 0x22

    if-ne v5, v9, :cond_5

    add-int/lit8 v3, v3, 0x1

    .line 3984
    aget-char v5, v4, v3

    if-eq v5, v6, :cond_6

    if-eq v5, v9, :cond_6

    if-eq v5, v8, :cond_4

    if-eq v5, v7, :cond_3

    .line 4004
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson2/x;->a(I)C

    move-result v5

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 3995
    aget-char v5, v4, v3

    add-int/2addr v3, v10

    .line 3996
    aget-char v4, v4, v3

    .line 3997
    invoke-static {v5, v4}, Lcom/alibaba/fastjson2/x;->a(II)C

    move-result v5

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 3987
    aget-char v5, v4, v3

    add-int/2addr v3, v10

    .line 3988
    aget-char v6, v4, v3

    add-int/2addr v3, v10

    .line 3989
    aget-char v11, v4, v3

    add-int/2addr v3, v10

    .line 3990
    aget-char v4, v4, v3

    .line 3991
    invoke-static {v5, v6, v11, v4}, Lcom/alibaba/fastjson2/x;->a(IIII)C

    move-result v5

    goto :goto_3

    :cond_5
    if-ne v5, v6, :cond_6

    .line 4014
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_4

    .line 4010
    :cond_6
    :goto_3
    aput-char v5, v0, v1

    add-int/2addr v3, v10

    add-int/2addr v1, v10

    goto :goto_2

    .line 4016
    :cond_7
    new-instance v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v4, p0, Lcom/alibaba/fastjson2/x;->e:I

    iget v5, p0, Lcom/alibaba/fastjson2/x;->e:I

    sub-int v5, v3, v5

    invoke-direct {v1, v0, v4, v5}, Ljava/lang/String;-><init>([CII)V

    :goto_4
    add-int/2addr v3, v10

    .line 4021
    iget v0, p0, Lcom/alibaba/fastjson2/x;->D:I

    const/16 v4, 0x1a

    if-ne v3, v0, :cond_8

    move v0, v4

    goto :goto_5

    .line 4024
    :cond_8
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    aget-char v0, v0, v3

    :goto_5
    const-wide/16 v5, 0x0

    const-wide v7, 0x100003700L

    const-wide/16 v11, 0x1

    const/16 v9, 0x20

    if-gt v0, v9, :cond_9

    shl-long v13, v11, v0

    and-long/2addr v13, v7

    cmp-long v13, v13, v5

    if-eqz v13, :cond_9

    .line 4027
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    add-int/lit8 v3, v3, 0x1

    aget-char v0, v0, v3

    goto :goto_5

    :cond_9
    const/16 v13, 0x2c

    if-ne v0, v13, :cond_a

    move v2, v10

    .line 4030
    :cond_a
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v2, :cond_c

    add-int/2addr v3, v10

    .line 4031
    iput v3, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 4034
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v0, v0, v2

    iput-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    .line 4036
    :goto_6
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v0, v9, :cond_d

    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    shl-long v2, v11, v0

    and-long/2addr v2, v7

    cmp-long v0, v2, v5

    if-eqz v0, :cond_d

    .line 4037
    iget v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    iget v2, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v0, v2, :cond_b

    .line 4038
    iput-char v4, p0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_6

    .line 4040
    :cond_b
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v0, v0, v2

    iput-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_6

    :cond_c
    add-int/2addr v3, v10

    .line 4044
    iput v3, p0, Lcom/alibaba/fastjson2/x;->e:I

    int-to-char v0, v0

    .line 4045
    iput-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    .line 4048
    :cond_d
    iput-object v1, p0, Lcom/alibaba/fastjson2/x;->u:Ljava/lang/String;

    return-void

    :cond_e
    add-int/lit8 v3, v3, 0x1

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0
.end method

.method public final bg()Z
    .locals 2

    .line 5066
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    iget v1, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v0, v0, v1

    const/16 v1, 0x75

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final c(I)Ljava/time/ZonedDateTime;
    .locals 5

    .line 6081
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 6082
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string v0, "date only support string input"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/16 v0, 0x13

    const/4 v1, 0x0

    if-ge p1, v0, :cond_2

    return-object v1

    :cond_2
    const/16 v0, 0x1e

    const/16 v2, 0x1d

    const/16 v3, 0x5a

    if-ne p1, v0, :cond_3

    .line 6090
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v4, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/2addr v4, v2

    aget-char v0, v0, v4

    if-ne v0, v3, :cond_3

    .line 6091
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, p0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-static {v0, v2}, Laay;->u([CI)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 6092
    sget-object v2, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-static {v0, v2}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/16 v0, 0x1c

    if-ne p1, v2, :cond_4

    .line 6093
    iget-object v2, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v4, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/2addr v4, v0

    aget-char v2, v2, v4

    if-ne v2, v3, :cond_4

    .line 6094
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, p0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-static {v0, v2}, Laay;->t([CI)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 6095
    sget-object v2, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-static {v0, v2}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/16 v2, 0x1b

    if-ne p1, v0, :cond_5

    .line 6096
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v4, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/2addr v4, v2

    aget-char v0, v0, v4

    if-ne v0, v3, :cond_5

    .line 6097
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, p0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-static {v0, v2}, Laay;->s([CI)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 6098
    sget-object v2, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-static {v0, v2}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_1

    :cond_5
    if-ne p1, v2, :cond_6

    .line 6099
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v2, v2, 0x1a

    aget-char v0, v0, v2

    if-ne v0, v3, :cond_6

    .line 6100
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, p0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-static {v0, v2}, Laay;->r([CI)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 6101
    sget-object v2, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-static {v0, v2}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_1

    .line 6103
    :cond_6
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, p0, Lcom/alibaba/fastjson2/x;->e:I

    iget-object v3, p0, Lcom/alibaba/fastjson2/x;->a:Lcom/alibaba/fastjson2/u$c;

    iget-object v3, v3, Lcom/alibaba/fastjson2/u$c;->o:Ljava/time/ZoneId;

    invoke-static {v0, v2, p1, v3}, Laay;->b([CIILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_7

    return-object v1

    .line 6110
    :cond_7
    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    const/4 v2, 0x1

    add-int/2addr p1, v2

    add-int/2addr v1, p1

    iput v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 6111
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    .line 6112
    iget-char p1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x2c

    if-ne p1, v1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v2, :cond_9

    .line 6113
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->E()V

    :cond_9
    return-object v0
.end method

.method public final close()V
    .locals 3

    .line 6479
    iget v0, p0, Lcom/alibaba/fastjson2/x;->J:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    array-length v0, v0

    const/high16 v1, 0x100000

    if-ge v0, v1, :cond_0

    .line 6480
    sget-object v0, Lcom/alibaba/fastjson2/d;->y:[Lcom/alibaba/fastjson2/d$a;

    iget v1, p0, Lcom/alibaba/fastjson2/x;->J:I

    aget-object v0, v0, v1

    .line 6481
    sget-object v1, Lcom/alibaba/fastjson2/d;->z:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v2, p0, Lcom/alibaba/fastjson2/x;->A:[C

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6484
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->I:Ljava/io/Closeable;

    if-eqz v0, :cond_1

    .line 6486
    :try_start_0
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    move v3, v1

    move v4, v3

    .line 6451
    :goto_0
    iget v5, p0, Lcom/alibaba/fastjson2/x;->e:I

    if-ge v2, v5, :cond_0

    move v5, v1

    goto :goto_1

    :cond_0
    move v5, v0

    :goto_1
    iget v6, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-ge v2, v6, :cond_1

    move v6, v1

    goto :goto_2

    :cond_1
    move v6, v0

    :goto_2
    and-int/2addr v5, v6

    const/16 v6, 0xa

    if-eqz v5, :cond_3

    .line 6452
    iget-object v5, p0, Lcom/alibaba/fastjson2/x;->A:[C

    aget-char v5, v5, v2

    if-ne v5, v6, :cond_2

    add-int/lit8 v3, v3, 0x1

    move v4, v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v4, v1

    goto :goto_0

    .line 6458
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_4

    .line 6460
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 6461
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string p1, "offset "

    .line 6464
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", character "

    .line 6465
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char p1, p0, Lcom/alibaba/fastjson2/x;->f:C

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, ", line "

    .line 6466
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", column "

    .line 6467
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", fastjson-version "

    .line 6468
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "2.0.43"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v3, v1, :cond_5

    goto :goto_3

    :cond_5
    const/16 v6, 0x20

    .line 6469
    :goto_3
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6472
    iget-object p1, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v1, p0, Lcom/alibaba/fastjson2/x;->C:I

    iget v2, p0, Lcom/alibaba/fastjson2/x;->B:I

    const v3, 0xffff

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 6474
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final f()Ljava/util/Date;
    .locals 14

    .line 4962
    iget v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/alibaba/fastjson2/x;->D:I

    const-wide/16 v2, 0x0

    const-wide v4, 0x100003700L

    const-wide/16 v6, 0x1

    const/16 v8, 0x20

    const/16 v9, 0x1a

    const/4 v10, 0x1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v0, v0, v1

    const/16 v1, 0x75

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/2addr v1, v10

    aget-char v0, v0, v1

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v11, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v11, v11, 0x2

    aget-char v0, v0, v11

    if-ne v0, v1, :cond_1

    .line 4966
    iget v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v0, v1, :cond_0

    .line 4967
    iput-char v9, p0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_0

    .line 4969
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    .line 4971
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    const/4 v0, 0x0

    goto/16 :goto_7

    .line 4972
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/2addr v0, v10

    iget v1, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-ge v0, v1, :cond_14

    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v0, v0, v1

    const/16 v1, 0x65

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v11, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/2addr v11, v10

    aget-char v0, v0, v11

    const/16 v11, 0x77

    if-ne v0, v11, :cond_14

    .line 4975
    iget v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v0, v0, 0x3

    iget v11, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v0, v11, :cond_2

    .line 4976
    iput-char v9, p0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_1

    .line 4978
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v11, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v11, v11, 0x2

    aget-char v0, v0, v11

    iput-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    .line 4980
    :goto_1
    iget v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 4982
    :goto_2
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v0, v8, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    shl-long v11, v6, v0

    and-long/2addr v11, v4

    cmp-long v0, v11, v2

    if-eqz v0, :cond_4

    .line 4983
    iget v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    iget v11, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v0, v11, :cond_3

    .line 4984
    iput-char v9, p0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_2

    .line 4986
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v11, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v0, v0, v11

    iput-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_2

    .line 4990
    :cond_4
    iget v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v0, v0, 0x4

    iget v11, p0, Lcom/alibaba/fastjson2/x;->D:I

    const-string v12, "json syntax error, not match new Date"

    if-ge v0, v11, :cond_13

    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v11, 0x44

    if-ne v0, v11, :cond_13

    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v11, p0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v0, v0, v11

    const/16 v11, 0x61

    if-ne v0, v11, :cond_13

    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v11, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/2addr v11, v10

    aget-char v0, v0, v11

    const/16 v11, 0x74

    if-ne v0, v11, :cond_13

    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v11, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v11, v11, 0x2

    aget-char v0, v0, v11

    if-ne v0, v1, :cond_13

    .line 4995
    iget v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v0, v1, :cond_5

    .line 4996
    iput-char v9, p0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_3

    .line 4998
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    .line 5000
    :goto_3
    iget v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 5005
    :goto_4
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v0, v8, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    shl-long v0, v6, v0

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    .line 5006
    iget v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    iget v1, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v0, v1, :cond_6

    .line 5007
    iput-char v9, p0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_4

    .line 5009
    :cond_6
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v11, v1, 0x1

    iput v11, p0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_4

    .line 5013
    :cond_7
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x28

    if-ne v0, v1, :cond_12

    iget v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    iget v1, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-ge v0, v1, :cond_12

    .line 5016
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v11, v1, 0x1

    iput v11, p0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    .line 5018
    :goto_5
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v0, v8, :cond_9

    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    shl-long v0, v6, v0

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    .line 5019
    iget v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    iget v1, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v0, v1, :cond_8

    .line 5020
    iput-char v9, p0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_5

    .line 5022
    :cond_8
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v11, v1, 0x1

    iput v11, p0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_5

    .line 5026
    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->aa()J

    move-result-wide v0

    .line 5028
    iget-char v11, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v13, 0x29

    if-ne v11, v13, :cond_11

    .line 5031
    iget v11, p0, Lcom/alibaba/fastjson2/x;->e:I

    iget v12, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v11, v12, :cond_a

    .line 5032
    iput-char v9, p0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_6

    .line 5034
    :cond_a
    iget-object v11, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v12, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v11, v11, v12

    iput-char v11, p0, Lcom/alibaba/fastjson2/x;->f:C

    .line 5037
    :goto_6
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object v0, v11

    .line 5042
    :goto_7
    iget-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v1, v8, :cond_c

    iget-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    shl-long v11, v6, v1

    and-long/2addr v11, v4

    cmp-long v1, v11, v2

    if-eqz v1, :cond_c

    .line 5043
    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    iget v11, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v1, v11, :cond_b

    .line 5044
    iput-char v9, p0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_7

    .line 5046
    :cond_b
    iget-object v1, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v11, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v11

    iput-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_7

    .line 5049
    :cond_c
    iget-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v11, 0x2c

    if-ne v1, v11, :cond_d

    goto :goto_8

    :cond_d
    const/4 v10, 0x0

    :goto_8
    iput-boolean v10, p0, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v10, :cond_10

    .line 5050
    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    iget v10, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v1, v10, :cond_e

    move v1, v9

    goto :goto_9

    :cond_e
    iget-object v1, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v10, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v10

    :goto_9
    iput-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    .line 5052
    :goto_a
    iget-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v1, v8, :cond_10

    iget-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    shl-long v10, v6, v1

    and-long/2addr v10, v4

    cmp-long v1, v10, v2

    if-eqz v1, :cond_10

    .line 5053
    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    iget v10, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v1, v10, :cond_f

    .line 5054
    iput-char v9, p0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_a

    .line 5056
    :cond_f
    iget-object v1, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v10, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v10

    iput-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_a

    :cond_10
    return-object v0

    .line 5029
    :cond_11
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5014
    :cond_12
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5002
    :cond_13
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5039
    :cond_14
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "json syntax error, not match null or new Date"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/fastjson2/x;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()Z
    .locals 2

    .line 5071
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v0, v0, v1

    const/16 v1, 0x75

    if-ne v0, v1, :cond_0

    .line 5072
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->aQ()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final m()Z
    .locals 10

    .line 971
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 976
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 977
    iget v1, p0, Lcom/alibaba/fastjson2/x;->D:I

    const/16 v2, 0x1a

    const/4 v3, 0x1

    if-lt v0, v1, :cond_1

    .line 978
    iput-char v2, p0, Lcom/alibaba/fastjson2/x;->f:C

    return v3

    .line 982
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/x;->A:[C

    add-int/lit8 v4, v0, 0x1

    .line 984
    aget-char v0, v1, v0

    :goto_0
    if-eqz v0, :cond_4

    const/16 v5, 0x20

    if-gt v0, v5, :cond_2

    const-wide/16 v5, 0x1

    shl-long/2addr v5, v0

    const-wide v7, 0x100003700L

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    goto :goto_1

    .line 994
    :cond_2
    iput-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    .line 995
    iput v4, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 997
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_3

    .line 998
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->aV()V

    :cond_3
    return v3

    .line 986
    :cond_4
    :goto_1
    iget v0, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v4, v0, :cond_5

    .line 987
    iput-char v2, p0, Lcom/alibaba/fastjson2/x;->f:C

    .line 988
    iput v4, p0, Lcom/alibaba/fastjson2/x;->e:I

    return v3

    :cond_5
    add-int/lit8 v0, v4, 0x1

    .line 991
    aget-char v4, v1, v4

    move v9, v4

    move v4, v0

    move v0, v9

    goto :goto_0
.end method

.method public final n()Z
    .locals 17

    move-object/from16 v0, p0

    .line 685
    iget-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 686
    iget v2, v0, Lcom/alibaba/fastjson2/x;->D:I

    .line 687
    iget v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    .line 688
    iget-object v4, v0, Lcom/alibaba/fastjson2/x;->A:[C

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x6e

    if-ne v1, v7, :cond_0

    add-int/lit8 v7, v3, 0x2

    if-ge v7, v2, :cond_0

    .line 689
    aget-char v8, v4, v3

    const/16 v9, 0x75

    if-ne v8, v9, :cond_0

    add-int/lit8 v8, v3, 0x1

    aget-char v8, v4, v8

    const/16 v9, 0x6c

    if-ne v8, v9, :cond_0

    aget-char v7, v4, v7

    if-ne v7, v9, :cond_0

    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    :cond_0
    const/16 v7, 0x22

    if-eq v1, v7, :cond_1

    const/16 v7, 0x27

    if-ne v1, v7, :cond_b

    :cond_1
    if-ge v3, v2, :cond_b

    .line 696
    aget-char v7, v4, v3

    if-ne v7, v1, :cond_b

    add-int/2addr v3, v6

    :goto_0
    const/16 v1, 0x1a

    if-ne v3, v2, :cond_2

    move v7, v1

    goto :goto_1

    .line 702
    :cond_2
    aget-char v7, v4, v3

    :goto_1
    const-wide/16 v8, 0x0

    const-wide v10, 0x100003700L

    const-wide/16 v12, 0x1

    const/16 v14, 0x20

    if-gt v7, v14, :cond_4

    shl-long v15, v12, v7

    and-long/2addr v15, v10

    cmp-long v15, v15, v8

    if-eqz v15, :cond_4

    add-int/lit8 v3, v3, 0x1

    if-lt v3, v2, :cond_3

    .line 707
    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 708
    iput v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    return v6

    .line 711
    :cond_3
    aget-char v7, v4, v3

    goto :goto_1

    :cond_4
    const/16 v15, 0x2c

    if-ne v7, v15, :cond_5

    move v5, v6

    .line 714
    :cond_5
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v5, :cond_7

    add-int/lit8 v3, v3, 0x1

    if-lt v3, v2, :cond_6

    move v5, v1

    goto :goto_2

    .line 719
    :cond_6
    aget-char v5, v4, v3

    goto :goto_2

    :cond_7
    move v5, v7

    :goto_2
    if-lt v3, v2, :cond_8

    .line 724
    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    .line 725
    iput v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    return v6

    :cond_8
    :goto_3
    if-gt v5, v14, :cond_a

    shl-long v15, v12, v5

    and-long/2addr v15, v10

    cmp-long v7, v15, v8

    if-eqz v7, :cond_a

    add-int/lit8 v3, v3, 0x1

    if-lt v3, v2, :cond_9

    .line 732
    iput-char v1, v0, Lcom/alibaba/fastjson2/x;->f:C

    return v6

    .line 735
    :cond_9
    aget-char v5, v4, v3

    goto :goto_3

    :cond_a
    add-int/2addr v3, v6

    .line 737
    iput v3, v0, Lcom/alibaba/fastjson2/x;->e:I

    .line 738
    iput-char v5, v0, Lcom/alibaba/fastjson2/x;->f:C

    return v6

    :cond_b
    return v5
.end method

.method public final o()Z
    .locals 15

    .line 1004
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_9

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_9

    const/16 v2, 0x7d

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1013
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 1014
    iget v2, p0, Lcom/alibaba/fastjson2/x;->D:I

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    .line 1015
    iput-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    return v3

    .line 1019
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/x;->A:[C

    add-int/lit8 v4, v0, 0x1

    .line 1021
    aget-char v0, v2, v0

    :goto_0
    if-eqz v0, :cond_7

    const-wide/16 v5, 0x0

    const-wide v7, 0x100003700L

    const-wide/16 v9, 0x1

    const/16 v11, 0x20

    if-gt v0, v11, :cond_2

    shl-long v12, v9, v0

    and-long/2addr v12, v7

    cmp-long v12, v12, v5

    if-eqz v12, :cond_2

    goto :goto_2

    :cond_2
    const/16 v12, 0x2c

    if-ne v0, v12, :cond_5

    .line 1032
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/x;->g:Z

    add-int/lit8 v0, v4, 0x1

    .line 1033
    aget-char v4, v2, v4

    :goto_1
    move v14, v4

    move v4, v0

    move v0, v14

    if-eqz v0, :cond_3

    if-gt v0, v11, :cond_5

    shl-long v12, v9, v0

    and-long/2addr v12, v7

    cmp-long v12, v12, v5

    if-eqz v12, :cond_5

    .line 1035
    :cond_3
    iget v0, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v4, v0, :cond_4

    .line 1036
    iput-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    .line 1037
    iput v4, p0, Lcom/alibaba/fastjson2/x;->e:I

    return v3

    :cond_4
    add-int/lit8 v0, v4, 0x1

    .line 1040
    aget-char v4, v2, v4

    goto :goto_1

    .line 1044
    :cond_5
    iput-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    .line 1045
    iput v4, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 1047
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_6

    .line 1048
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->aV()V

    :cond_6
    return v3

    .line 1023
    :cond_7
    :goto_2
    iget v0, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v4, v0, :cond_8

    .line 1024
    iput-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    .line 1025
    iput v4, p0, Lcom/alibaba/fastjson2/x;->e:I

    return v3

    :cond_8
    add-int/lit8 v0, v4, 0x1

    .line 1028
    aget-char v4, v2, v4

    move v14, v4

    move v4, v0

    move v0, v14

    goto :goto_0

    .line 1006
    :cond_9
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal syntax: `"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x60

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final q()Z
    .locals 15

    .line 175
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    .line 176
    iget-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    .line 177
    iget v2, p0, Lcom/alibaba/fastjson2/x;->e:I

    const/4 v3, 0x0

    const/16 v4, 0x7b

    if-eq v1, v4, :cond_0

    return v3

    .line 183
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v2, v1, :cond_1

    return v3

    .line 187
    :cond_1
    aget-char v1, v0, v2

    :goto_0
    const-wide/16 v4, 0x0

    const-wide v6, 0x100003700L

    const-wide/16 v8, 0x1

    const/16 v10, 0x20

    if-gt v1, v10, :cond_3

    shl-long v11, v8, v1

    and-long/2addr v11, v6

    cmp-long v11, v11, v4

    if-eqz v11, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 190
    iget v1, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v2, v1, :cond_2

    return v3

    .line 193
    :cond_2
    aget-char v1, v0, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v11, v2, 0x6

    .line 197
    iget v12, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-ge v11, v12, :cond_b

    add-int/lit8 v12, v2, 0x1

    aget-char v12, v0, v12

    const/16 v13, 0x24

    if-ne v12, v13, :cond_b

    add-int/lit8 v12, v2, 0x2

    aget-char v12, v0, v12

    const/16 v13, 0x72

    if-ne v12, v13, :cond_b

    add-int/lit8 v12, v2, 0x3

    aget-char v12, v0, v12

    const/16 v13, 0x65

    if-ne v12, v13, :cond_b

    add-int/lit8 v12, v2, 0x4

    aget-char v12, v0, v12

    const/16 v13, 0x66

    if-ne v12, v13, :cond_b

    add-int/lit8 v2, v2, 0x5

    aget-char v2, v0, v2

    if-eq v2, v1, :cond_4

    goto :goto_3

    .line 208
    :cond_4
    aget-char v2, v0, v11

    :goto_1
    if-gt v2, v10, :cond_6

    shl-long v12, v8, v2

    and-long/2addr v12, v6

    cmp-long v12, v12, v4

    if-eqz v12, :cond_6

    add-int/lit8 v11, v11, 0x1

    .line 211
    iget v2, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v11, v2, :cond_5

    return v3

    .line 214
    :cond_5
    aget-char v2, v0, v11

    goto :goto_1

    :cond_6
    const/16 v12, 0x3a

    if-ne v2, v12, :cond_b

    const/4 v2, 0x1

    add-int/2addr v11, v2

    .line 217
    iget v12, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v11, v12, :cond_7

    goto :goto_3

    .line 221
    :cond_7
    aget-char v12, v0, v11

    :goto_2
    if-gt v12, v10, :cond_9

    shl-long v13, v8, v12

    and-long/2addr v13, v6

    cmp-long v13, v13, v4

    if-eqz v13, :cond_9

    add-int/lit8 v11, v11, 0x1

    .line 224
    iget v12, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v11, v12, :cond_8

    return v3

    .line 227
    :cond_8
    aget-char v12, v0, v11

    goto :goto_2

    :cond_9
    if-eq v12, v1, :cond_a

    return v3

    .line 234
    :cond_a
    iput v11, p0, Lcom/alibaba/fastjson2/x;->H:I

    return v2

    :cond_b
    :goto_3
    return v3
.end method

.method public final r()Ljava/lang/String;
    .locals 13

    .line 240
    iget v0, p0, Lcom/alibaba/fastjson2/x;->H:I

    iget v1, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 243
    :cond_0
    iput v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 244
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    .line 246
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->aN()Ljava/lang/String;

    move-result-object v0

    .line 248
    :goto_0
    iget-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const-wide/16 v2, 0x0

    const-wide v4, 0x100003700L

    const-wide/16 v6, 0x1

    const/16 v8, 0x20

    const/16 v9, 0x1a

    const/4 v10, 0x1

    if-gt v1, v8, :cond_2

    iget-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    shl-long v11, v6, v1

    and-long/2addr v11, v4

    cmp-long v1, v11, v2

    if-eqz v1, :cond_2

    .line 249
    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/2addr v1, v10

    iput v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 250
    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    iget v2, p0, Lcom/alibaba/fastjson2/x;->B:I

    if-lt v1, v2, :cond_1

    .line 251
    iput-char v9, p0, Lcom/alibaba/fastjson2/x;->f:C

    return-object v0

    .line 254
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v2, p0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v2

    iput-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_0

    .line 257
    :cond_2
    iget-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v11, 0x7d

    if-ne v1, v11, :cond_a

    .line 261
    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    iget v11, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-ne v1, v11, :cond_3

    .line 262
    iput-char v9, p0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_1

    .line 264
    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v11, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v11

    iput-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    .line 267
    :goto_1
    iget-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v1, v8, :cond_5

    iget-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    shl-long v11, v6, v1

    and-long/2addr v11, v4

    cmp-long v1, v11, v2

    if-eqz v1, :cond_5

    .line 268
    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    iget v11, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v1, v11, :cond_4

    .line 269
    iput-char v9, p0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_1

    .line 271
    :cond_4
    iget-object v1, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v11, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v11

    iput-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_1

    .line 275
    :cond_5
    iget-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v11, 0x2c

    if-ne v1, v11, :cond_6

    goto :goto_2

    :cond_6
    const/4 v10, 0x0

    :goto_2
    iput-boolean v10, p0, Lcom/alibaba/fastjson2/x;->g:Z

    if-eqz v10, :cond_9

    .line 276
    iget-object v1, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v10, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v10

    iput-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    .line 278
    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    iget v10, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v1, v10, :cond_7

    .line 279
    iput-char v9, p0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_4

    .line 281
    :cond_7
    :goto_3
    iget-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    if-gt v1, v8, :cond_9

    iget-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    shl-long v10, v6, v1

    and-long/2addr v10, v4

    cmp-long v1, v10, v2

    if-eqz v1, :cond_9

    .line 282
    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    iget v10, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v1, v10, :cond_8

    .line 283
    iput-char v9, p0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_3

    .line 285
    :cond_8
    iget-object v1, p0, Lcom/alibaba/fastjson2/x;->A:[C

    iget v10, p0, Lcom/alibaba/fastjson2/x;->e:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/alibaba/fastjson2/x;->e:I

    aget-char v1, v1, v10

    iput-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    goto :goto_3

    :cond_9
    :goto_4
    return-object v0

    .line 258
    :cond_a
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal reference : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final x()Z
    .locals 9

    .line 564
    iget-object v0, p0, Lcom/alibaba/fastjson2/x;->A:[C

    .line 565
    iget v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 566
    iget-char v2, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_0

    .line 568
    iput-char v2, p0, Lcom/alibaba/fastjson2/x;->f:C

    .line 569
    iput v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v2, 0x1

    .line 572
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/x;->g:Z

    .line 574
    iget v3, p0, Lcom/alibaba/fastjson2/x;->D:I

    const/16 v4, 0x1a

    if-lt v1, v3, :cond_1

    .line 575
    iput v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 576
    iput-char v4, p0, Lcom/alibaba/fastjson2/x;->f:C

    return v2

    .line 580
    :cond_1
    aget-char v3, v0, v1

    :goto_0
    if-eqz v3, :cond_4

    const/16 v5, 0x20

    if-gt v3, v5, :cond_2

    const-wide/16 v5, 0x1

    shl-long/2addr v5, v3

    const-wide v7, 0x100003700L

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/2addr v1, v2

    .line 590
    iput v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 591
    iput-char v3, p0, Lcom/alibaba/fastjson2/x;->f:C

    .line 592
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_3

    .line 593
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->aV()V

    :cond_3
    return v2

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 583
    iget v3, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v1, v3, :cond_5

    .line 584
    iput v1, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 585
    iput-char v4, p0, Lcom/alibaba/fastjson2/x;->f:C

    return v2

    .line 588
    :cond_5
    aget-char v3, v0, v1

    goto :goto_0
.end method

.method public final y()Z
    .locals 10

    .line 600
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 605
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 606
    iget v1, p0, Lcom/alibaba/fastjson2/x;->D:I

    const/16 v2, 0x1a

    const/4 v3, 0x1

    if-lt v0, v1, :cond_1

    .line 607
    iput-char v2, p0, Lcom/alibaba/fastjson2/x;->f:C

    return v3

    .line 611
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/x;->A:[C

    add-int/lit8 v4, v0, 0x1

    .line 613
    aget-char v0, v1, v0

    :goto_0
    if-eqz v0, :cond_4

    const/16 v5, 0x20

    if-gt v0, v5, :cond_2

    const-wide/16 v5, 0x1

    shl-long/2addr v5, v0

    const-wide v7, 0x100003700L

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    goto :goto_1

    .line 623
    :cond_2
    iput-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    .line 624
    iput v4, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 626
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_3

    .line 627
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->aV()V

    :cond_3
    return v3

    .line 615
    :cond_4
    :goto_1
    iget v0, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v4, v0, :cond_5

    .line 616
    iput-char v2, p0, Lcom/alibaba/fastjson2/x;->f:C

    .line 617
    iput v4, p0, Lcom/alibaba/fastjson2/x;->e:I

    return v3

    :cond_5
    add-int/lit8 v0, v4, 0x1

    .line 620
    aget-char v4, v1, v4

    move v9, v4

    move v4, v0

    move v0, v9

    goto :goto_0
.end method

.method public final z()Z
    .locals 15

    .line 634
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_9

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_9

    const/16 v2, 0x5d

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 643
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 644
    iget v2, p0, Lcom/alibaba/fastjson2/x;->D:I

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    .line 645
    iput-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    return v3

    .line 649
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/x;->A:[C

    add-int/lit8 v4, v0, 0x1

    .line 651
    aget-char v0, v2, v0

    :goto_0
    if-eqz v0, :cond_7

    const-wide/16 v5, 0x0

    const-wide v7, 0x100003700L

    const-wide/16 v9, 0x1

    const/16 v11, 0x20

    if-gt v0, v11, :cond_2

    shl-long v12, v9, v0

    and-long/2addr v12, v7

    cmp-long v12, v12, v5

    if-eqz v12, :cond_2

    goto :goto_2

    :cond_2
    const/16 v12, 0x2c

    if-ne v0, v12, :cond_5

    .line 662
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/x;->g:Z

    add-int/lit8 v0, v4, 0x1

    .line 663
    aget-char v4, v2, v4

    :goto_1
    move v14, v4

    move v4, v0

    move v0, v14

    if-eqz v0, :cond_3

    if-gt v0, v11, :cond_5

    shl-long v12, v9, v0

    and-long/2addr v12, v7

    cmp-long v12, v12, v5

    if-eqz v12, :cond_5

    .line 665
    :cond_3
    iget v0, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v4, v0, :cond_4

    .line 666
    iput-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    .line 667
    iput v4, p0, Lcom/alibaba/fastjson2/x;->e:I

    return v3

    :cond_4
    add-int/lit8 v0, v4, 0x1

    .line 670
    aget-char v4, v2, v4

    goto :goto_1

    .line 674
    :cond_5
    iput-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    .line 675
    iput v4, p0, Lcom/alibaba/fastjson2/x;->e:I

    .line 677
    iget-char v0, p0, Lcom/alibaba/fastjson2/x;->f:C

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_6

    .line 678
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/x;->aV()V

    :cond_6
    return v3

    .line 653
    :cond_7
    :goto_2
    iget v0, p0, Lcom/alibaba/fastjson2/x;->D:I

    if-lt v4, v0, :cond_8

    .line 654
    iput-char v1, p0, Lcom/alibaba/fastjson2/x;->f:C

    .line 655
    iput v4, p0, Lcom/alibaba/fastjson2/x;->e:I

    return v3

    :cond_8
    add-int/lit8 v0, v4, 0x1

    .line 658
    aget-char v4, v2, v4

    move v14, v4

    move v4, v0

    move v0, v14

    goto :goto_0

    .line 636
    :cond_9
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal syntax: `"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x60

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1
.end method
