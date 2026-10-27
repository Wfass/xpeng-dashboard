.class public abstract Lcom/amap/api/services/a/v;
.super Ljava/lang/Object;
.source "LogProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/a/v$a;
    }
.end annotation


# instance fields
.field private b:I

.field private eN:Lcom/amap/api/services/a/l;

.field private eO:Lcom/amap/api/services/a/ay;

.field private eP:Lcom/amap/api/services/a/ax;


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/amap/api/services/a/v;->b:I

    .line 47
    return-void
.end method

.method private I(Ljava/lang/String;)I
    .locals 4

    .line 558
    nop

    .line 559
    nop

    .line 560
    invoke-static {p1}, Lcom/amap/api/services/a/m;->a(Ljava/lang/String;)[B

    move-result-object p1

    .line 559
    invoke-static {p1}, Lcom/amap/api/services/a/m;->p([B)[B

    move-result-object p1

    .line 561
    new-instance v0, Lcom/amap/api/services/a/q;

    invoke-direct {v0, p1}, Lcom/amap/api/services/a/q;-><init>([B)V

    .line 563
    const/4 p1, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/amap/api/services/a/bb;->bw()Lcom/amap/api/services/a/bb;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amap/api/services/a/bb;->b(Lcom/amap/api/services/a/bh;)[B

    move-result-object v0

    .line 565
    if-nez v0, :cond_0

    .line 566
    return v1

    .line 568
    :cond_0
    invoke-static {v0}, Lcom/amap/api/services/a/m;->a([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/amap/api/services/a/au; {:try_start_0 .. :try_end_0} :catch_1

    .line 570
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 571
    const-string v0, "code"

    .line 572
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 573
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/amap/api/services/a/au; {:try_start_1 .. :try_end_1} :catch_1

    .line 582
    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    goto :goto_1

    .line 576
    :catch_0
    move-exception v0

    .line 578
    nop

    .line 579
    :try_start_2
    const-string v2, "LogProcessor"

    const-string v3, "processUpdate"

    invoke-static {v0, v2, v3}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/amap/api/services/a/au; {:try_start_2 .. :try_end_2} :catch_1

    .line 593
    :goto_1
    goto :goto_3

    .line 584
    :catch_1
    move-exception v0

    .line 585
    invoke-virtual {v0}, Lcom/amap/api/services/a/au;->b()I

    move-result v2

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_2

    .line 586
    nop

    .line 591
    move p1, v1

    goto :goto_2

    .line 588
    :cond_2
    nop

    .line 591
    :goto_2
    const-string v1, "LogProcessor"

    const-string v2, "processUpdate"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    :goto_3
    return p1
.end method

.method private J(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/amap/api/services/a/l;",
            ">;"
        }
    .end annotation

    .line 242
    nop

    .line 244
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :try_start_1
    new-instance v2, Lcom/amap/api/services/a/ah;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/amap/api/services/a/ah;-><init>(Landroid/content/Context;Z)V

    .line 247
    invoke-virtual {v2}, Lcom/amap/api/services/a/ah;->a()Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 248
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 251
    goto :goto_1

    .line 248
    :catchall_0
    move-exception v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 249
    :catch_0
    move-exception p1

    .line 250
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 252
    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 333
    nop

    .line 335
    :try_start_0
    invoke-static {p2}, Lcom/amap/api/services/a/m;->a(Ljava/lang/String;)[B

    move-result-object p2

    .line 336
    invoke-static {p1, p2}, Lcom/amap/api/services/a/f;->e(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    goto :goto_0

    .line 337
    :catch_0
    move-exception p1

    .line 338
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 340
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 317
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 318
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "\"timestamp\":\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    const-string p2, "\",\"et\":\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 322
    const-string p2, "\",\"classname\":\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    invoke-virtual {p1, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    const-string p2, "\","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    const-string p2, "\"detail\":\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    invoke-virtual {p1, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    const-string p2, "\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 329
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amap/api/services/a/ag;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 661
    const-string v1, "{\"pinfo\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/amap/api/services/a/v;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\",\"els\":["

    .line 662
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    nop

    .line 664
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/a/ag;

    .line 665
    invoke-virtual {v1}, Lcom/amap/api/services/a/ag;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amap/api/services/a/v;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 669
    if-eqz v2, :cond_2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 672
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "||"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/amap/api/services/a/ag;->v()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 673
    if-eqz p2, :cond_1

    .line 674
    const/4 p2, 0x0

    goto :goto_1

    .line 676
    :cond_1
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    :goto_1
    const-string v2, "{\"log\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    :cond_2
    :goto_2
    goto :goto_0

    .line 681
    :cond_3
    if-eqz p2, :cond_4

    .line 682
    const/4 p1, 0x0

    return-object p1

    .line 684
    :cond_4
    const-string p1, "]}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/amap/api/services/a/af;I)V
    .locals 2

    .line 546
    const/4 v0, 0x2

    .line 547
    :try_start_0
    invoke-static {p2}, Lcom/amap/api/services/a/p;->G(I)Ljava/lang/Class;

    move-result-object v1

    .line 546
    invoke-virtual {p1, v0, v1}, Lcom/amap/api/services/a/af;->a(ILjava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 548
    invoke-direct {p0, v0, p1, p2}, Lcom/amap/api/services/a/v;->a(Ljava/util/List;Lcom/amap/api/services/a/af;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    goto :goto_0

    .line 549
    :catch_0
    move-exception p1

    .line 551
    const-string p2, "LogProcessor"

    const-string v0, "processDeleteFail"

    invoke-static {p1, p2, v0}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :goto_0
    return-void
.end method

.method private a(Lcom/amap/api/services/a/af;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    .line 257
    invoke-static {p4}, Lcom/amap/api/services/a/p;->H(I)Lcom/amap/api/services/a/ag;

    move-result-object p4

    .line 259
    const/4 p5, 0x0

    invoke-virtual {p4, p5}, Lcom/amap/api/services/a/ag;->a(I)V

    .line 261
    invoke-virtual {p4, p2}, Lcom/amap/api/services/a/ag;->b(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p4, p3}, Lcom/amap/api/services/a/ag;->a(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p1, p4}, Lcom/amap/api/services/a/af;->a(Lcom/amap/api/services/a/ag;)V

    .line 265
    return-void
.end method

.method private a(Ljava/util/List;Lcom/amap/api/services/a/af;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amap/api/services/a/ag;",
            ">;",
            "Lcom/amap/api/services/a/af;",
            "I)V"
        }
    .end annotation

    .line 599
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_1

    .line 600
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amap/api/services/a/ag;

    .line 601
    invoke-virtual {p3}, Lcom/amap/api/services/a/ag;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/services/a/v;->b(Ljava/lang/String;)Z

    move-result v0

    .line 602
    if-eqz v0, :cond_0

    .line 603
    invoke-virtual {p3}, Lcom/amap/api/services/a/ag;->b()Ljava/lang/String;

    move-result-object v0

    .line 604
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    .line 603
    invoke-virtual {p2, v0, p3}, Lcom/amap/api/services/a/af;->a(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_1

    .line 606
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p3, v0}, Lcom/amap/api/services/a/ag;->a(I)V

    .line 607
    nop

    .line 608
    invoke-virtual {p2, p3}, Lcom/amap/api/services/a/af;->b(Lcom/amap/api/services/a/ag;)V

    .line 611
    :goto_1
    goto :goto_0

    .line 614
    :cond_1
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/services/a/af;)Z
    .locals 4

    .line 374
    nop

    .line 375
    nop

    .line 376
    nop

    .line 378
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, p3}, Lcom/amap/api/services/a/p;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 379
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 381
    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_0

    .line 382
    nop

    .line 430
    nop

    .line 415
    nop

    .line 422
    nop

    .line 427
    nop

    .line 382
    return v1

    .line 385
    :cond_0
    const-wide/16 v2, 0x5000

    const/4 p1, 0x1

    invoke-static {p3, p1, p1, v2, v3}, Lcom/amap/api/services/a/ax;->a(Ljava/io/File;IIJ)Lcom/amap/api/services/a/ax;

    move-result-object p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 386
    :try_start_1
    invoke-virtual {p0, p5}, Lcom/amap/api/services/a/v;->a(Lcom/amap/api/services/a/af;)Lcom/amap/api/services/a/ay;

    move-result-object p5

    invoke-virtual {p3, p5}, Lcom/amap/api/services/a/ax;->a(Lcom/amap/api/services/a/ay;)V

    .line 387
    invoke-virtual {p3, p2}, Lcom/amap/api/services/a/ax;->K(Ljava/lang/String;)Lcom/amap/api/services/a/ax$b;

    move-result-object p5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 389
    if-eqz p5, :cond_3

    .line 390
    nop

    .line 427
    nop

    .line 415
    if-eqz p5, :cond_1

    .line 417
    :try_start_2
    invoke-virtual {p5}, Lcom/amap/api/services/a/ax$b;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 420
    goto :goto_0

    .line 418
    :catch_0
    move-exception p1

    .line 419
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 422
    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/amap/api/services/a/ax;->a()Z

    move-result p1

    if-nez p1, :cond_2

    .line 424
    :try_start_3
    invoke-virtual {p3}, Lcom/amap/api/services/a/ax;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 427
    goto :goto_1

    .line 425
    :catch_1
    move-exception p1

    .line 426
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 427
    :cond_2
    :goto_1
    nop

    .line 390
    return v1

    .line 393
    :cond_3
    :try_start_4
    invoke-static {p4}, Lcom/amap/api/services/a/m;->a(Ljava/lang/String;)[B

    move-result-object p4

    .line 395
    invoke-virtual {p3, p2}, Lcom/amap/api/services/a/ax;->L(Ljava/lang/String;)Lcom/amap/api/services/a/ax$a;

    move-result-object p2

    .line 396
    invoke-virtual {p2, v1}, Lcom/amap/api/services/a/ax$a;->J(I)Ljava/io/OutputStream;

    move-result-object v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 397
    :try_start_5
    invoke-virtual {v2, p4}, Ljava/io/OutputStream;->write([B)V

    .line 398
    invoke-virtual {p2}, Lcom/amap/api/services/a/ax$a;->a()V

    .line 399
    invoke-virtual {p3}, Lcom/amap/api/services/a/ax;->b()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 401
    nop

    .line 427
    if-eqz v2, :cond_4

    .line 410
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    .line 413
    goto :goto_2

    .line 411
    :catch_2
    move-exception p2

    .line 412
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 415
    :cond_4
    :goto_2
    if-eqz p5, :cond_5

    .line 417
    :try_start_7
    invoke-virtual {p5}, Lcom/amap/api/services/a/ax$b;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    .line 420
    goto :goto_3

    .line 418
    :catch_3
    move-exception p2

    .line 419
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 422
    :cond_5
    :goto_3
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Lcom/amap/api/services/a/ax;->a()Z

    move-result p2

    if-nez p2, :cond_6

    .line 424
    :try_start_8
    invoke-virtual {p3}, Lcom/amap/api/services/a/ax;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    .line 427
    goto :goto_4

    .line 425
    :catch_4
    move-exception p2

    .line 426
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 427
    :cond_6
    :goto_4
    nop

    .line 401
    return p1

    .line 408
    :catchall_0
    move-exception p1

    move-object v0, v2

    goto/16 :goto_c

    .line 404
    :catch_5
    move-exception p1

    move-object v0, v2

    goto :goto_5

    .line 402
    :catch_6
    move-exception p1

    move-object v0, v2

    goto :goto_8

    .line 404
    :catch_7
    move-exception p1

    goto :goto_5

    .line 402
    :catch_8
    move-exception p1

    goto :goto_8

    .line 408
    :catchall_1
    move-exception p1

    move-object p5, v0

    goto/16 :goto_c

    .line 404
    :catch_9
    move-exception p1

    move-object p5, v0

    goto :goto_5

    .line 402
    :catch_a
    move-exception p1

    move-object p5, v0

    goto :goto_8

    .line 408
    :catchall_2
    move-exception p1

    move-object p3, v0

    move-object p5, p3

    goto :goto_c

    .line 404
    :catch_b
    move-exception p1

    move-object p3, v0

    move-object p5, p3

    .line 406
    :goto_5
    :try_start_9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 407
    nop

    .line 427
    if-eqz v0, :cond_7

    .line 410
    :try_start_a
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_c

    .line 413
    goto :goto_6

    .line 411
    :catch_c
    move-exception p1

    .line 412
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 415
    :cond_7
    :goto_6
    if-eqz p5, :cond_8

    .line 417
    :try_start_b
    invoke-virtual {p5}, Lcom/amap/api/services/a/ax$b;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_d

    .line 420
    goto :goto_7

    .line 418
    :catch_d
    move-exception p1

    .line 419
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 422
    :cond_8
    :goto_7
    if-eqz p3, :cond_b

    invoke-virtual {p3}, Lcom/amap/api/services/a/ax;->a()Z

    move-result p1

    if-nez p1, :cond_b

    .line 424
    :try_start_c
    invoke-virtual {p3}, Lcom/amap/api/services/a/ax;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_e

    .line 427
    goto :goto_b

    .line 425
    :catch_e
    move-exception p1

    .line 426
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b

    .line 402
    :catch_f
    move-exception p1

    move-object p3, v0

    move-object p5, p3

    .line 403
    :goto_8
    :try_start_d
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 404
    nop

    .line 427
    if-eqz v0, :cond_9

    .line 410
    :try_start_e
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_10

    .line 413
    goto :goto_9

    .line 411
    :catch_10
    move-exception p1

    .line 412
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 415
    :cond_9
    :goto_9
    if-eqz p5, :cond_a

    .line 417
    :try_start_f
    invoke-virtual {p5}, Lcom/amap/api/services/a/ax$b;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_11

    .line 420
    goto :goto_a

    .line 418
    :catch_11
    move-exception p1

    .line 419
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 422
    :cond_a
    :goto_a
    if-eqz p3, :cond_b

    invoke-virtual {p3}, Lcom/amap/api/services/a/ax;->a()Z

    move-result p1

    if-nez p1, :cond_b

    .line 424
    :try_start_10
    invoke-virtual {p3}, Lcom/amap/api/services/a/ax;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_12

    .line 427
    goto :goto_b

    .line 425
    :catch_12
    move-exception p1

    .line 426
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 427
    :cond_b
    :goto_b
    nop

    .line 429
    nop

    .line 430
    return v1

    .line 408
    :catchall_3
    move-exception p1

    .line 427
    :goto_c
    if-eqz v0, :cond_c

    .line 410
    :try_start_11
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_13

    .line 413
    goto :goto_d

    .line 411
    :catch_13
    move-exception p2

    .line 412
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 415
    :cond_c
    :goto_d
    if-eqz p5, :cond_d

    .line 417
    :try_start_12
    invoke-virtual {p5}, Lcom/amap/api/services/a/ax$b;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_14

    .line 420
    goto :goto_e

    .line 418
    :catch_14
    move-exception p2

    .line 419
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 422
    :cond_d
    :goto_e
    if-eqz p3, :cond_e

    invoke-virtual {p3}, Lcom/amap/api/services/a/ax;->a()Z

    move-result p2

    if-nez p2, :cond_e

    .line 424
    :try_start_13
    invoke-virtual {p3}, Lcom/amap/api/services/a/ax;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_15

    .line 427
    goto :goto_f

    .line 425
    :catch_15
    move-exception p2

    .line 426
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 427
    :cond_e
    :goto_f
    nop

    .line 408
    throw p1
.end method

.method public static a([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 434
    nop

    .line 436
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    .line 439
    :cond_0
    :try_start_0
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 440
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 441
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 442
    invoke-static {p0, v3}, Lcom/amap/api/services/a/v;->b([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    .line 443
    const/4 p0, 0x1

    return p0

    .line 440
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 448
    :cond_2
    goto :goto_1

    .line 446
    :catch_0
    move-exception p0

    .line 447
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 449
    :goto_1
    return v0

    .line 437
    :cond_3
    :goto_2
    return v0
.end method

.method public static b(Landroid/content/Context;Lcom/amap/api/services/a/l;)Ljava/lang/String;
    .locals 3

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/a/g;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 178
    const-string v2, "\"sim\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"sdkversion\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amap/api/services/a/l;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"product\":\""

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amap/api/services/a/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"ed\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {p1}, Lcom/amap/api/services/a/l;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"nt\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-static {p0}, Lcom/amap/api/services/a/g;->n(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\",\"np\":\""

    .line 183
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/amap/api/services/a/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"mnc\":\""

    .line 184
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/amap/api/services/a/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"ant\":\""

    .line 187
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/amap/api/services/a/g;->o(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    goto :goto_0

    .line 188
    :catch_0
    move-exception p0

    .line 189
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 192
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    .line 786
    invoke-static {p0}, Lcom/amap/api/services/a/m;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3

    .line 518
    iget-object v0, p0, Lcom/amap/api/services/a/v;->eP:Lcom/amap/api/services/a/ax;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 519
    return v1

    .line 521
    :cond_0
    nop

    .line 523
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/v;->eP:Lcom/amap/api/services/a/ax;

    invoke-virtual {v0, p1}, Lcom/amap/api/services/a/ax;->c(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    goto :goto_0

    .line 524
    :catch_0
    move-exception p1

    .line 526
    const-string v0, "LogUpdateProcessor"

    const-string v2, "deleteLogData"

    invoke-static {p1, v0, v2}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    move p1, v1

    :goto_0
    return p1
.end method

.method public static b([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 452
    nop

    .line 454
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    .line 457
    :cond_0
    :try_start_0
    array-length v1, p0

    move-object v2, p1

    move p1, v0

    :goto_0
    if-ge p1, v1, :cond_2

    aget-object v3, p0, p1

    .line 458
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 459
    const-string v4, "at "

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    .line 460
    nop

    .line 461
    const/4 p0, 0x1

    return p0

    .line 457
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 466
    :cond_2
    goto :goto_1

    .line 464
    :catch_0
    move-exception p0

    .line 465
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 467
    :goto_1
    return v0

    .line 455
    :cond_3
    :goto_2
    return v0
.end method

.method private d(Landroid/content/Context;Ljava/lang/String;)Lcom/amap/api/services/a/ax;
    .locals 3

    .line 758
    nop

    .line 760
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, p2}, Lcom/amap/api/services/a/p;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 761
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 762
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 763
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_0

    .line 764
    return-object v0

    .line 767
    :cond_0
    const-wide/16 v1, 0x5000

    const/4 p1, 0x1

    invoke-static {p2, p1, p1, v1, v2}, Lcom/amap/api/services/a/ax;->a(Ljava/io/File;IIJ)Lcom/amap/api/services/a/ax;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    goto :goto_1

    .line 771
    :catch_0
    move-exception p1

    .line 772
    const-string p2, "LogProcessor"

    const-string v1, "initDiskLru"

    invoke-static {p1, p2, v1}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 768
    :catch_1
    move-exception p1

    .line 769
    const-string p2, "LogProcessor"

    const-string v1, "initDiskLru"

    invoke-static {p1, p2, v1}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    nop

    .line 776
    :goto_0
    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .line 345
    nop

    .line 347
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 348
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amap/api/services/a/m;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 350
    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 622
    :try_start_0
    const-string v1, "\"key\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/amap/api/services/a/d;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"platform\":\"android\",\"diu\":\""

    .line 623
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/amap/api/services/a/g;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"pkg\":\""

    .line 624
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/amap/api/services/a/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"model\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 625
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"appname\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/amap/api/services/a/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"appversion\":\""

    .line 626
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/amap/api/services/a/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\",\"sysversion\":\""

    .line 627
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    goto :goto_0

    .line 628
    :catch_0
    move-exception p0

    .line 630
    const-string v1, "CInfo"

    const-string v2, "getPublicJSONInfo"

    invoke-static {p0, v1, v2}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 689
    nop

    .line 690
    nop

    .line 691
    nop

    .line 694
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/services/a/v;->eP:Lcom/amap/api/services/a/ax;

    if-nez v1, :cond_0

    .line 695
    nop

    .line 735
    nop

    .line 725
    nop

    .line 732
    nop

    .line 695
    return-object v0

    .line 697
    :cond_0
    iget-object v1, p0, Lcom/amap/api/services/a/v;->eP:Lcom/amap/api/services/a/ax;

    invoke-virtual {v1, p1}, Lcom/amap/api/services/a/ax;->K(Ljava/lang/String;)Lcom/amap/api/services/a/ax$b;

    move-result-object p1

    .line 698
    if-nez p1, :cond_1

    .line 699
    nop

    .line 732
    nop

    .line 725
    nop

    .line 732
    nop

    .line 699
    return-object v0

    .line 701
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/amap/api/services/a/ax$b;->K(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 702
    nop

    .line 703
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 704
    const/16 v3, 0x400

    :try_start_2
    new-array v3, v3, [B

    .line 705
    :goto_0
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 706
    invoke-virtual {v2, v3, v1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 708
    :cond_2
    nop

    .line 709
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/m;->a([B)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 732
    nop

    .line 718
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 723
    goto :goto_1

    .line 719
    :catch_0
    move-exception v0

    .line 720
    const-string v2, "LogProcessor"

    const-string v3, "readLog1"

    .line 721
    invoke-static {v0, v2, v3}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    :goto_1
    if-eqz p1, :cond_3

    .line 727
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 732
    goto :goto_2

    .line 728
    :catch_1
    move-exception p1

    .line 729
    const-string v0, "LogProcessor"

    const-string v2, "readLog2"

    .line 730
    invoke-static {p1, v0, v2}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    :cond_3
    :goto_2
    nop

    .line 709
    return-object v1

    .line 711
    :catch_2
    move-exception v1

    goto :goto_3

    .line 716
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_6

    .line 711
    :catch_3
    move-exception v1

    move-object v2, v0

    goto :goto_3

    .line 716
    :catchall_1
    move-exception p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    goto :goto_6

    .line 711
    :catch_4
    move-exception v1

    move-object p1, v0

    move-object v2, p1

    .line 712
    :goto_3
    :try_start_5
    const-string v3, "LogProcessor"

    const-string v4, "readLog"

    invoke-static {v1, v3, v4}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 714
    nop

    .line 732
    if-eqz v2, :cond_4

    .line 718
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 723
    goto :goto_4

    .line 719
    :catch_5
    move-exception v1

    .line 720
    const-string v2, "LogProcessor"

    const-string v3, "readLog1"

    .line 721
    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    :cond_4
    :goto_4
    if-eqz p1, :cond_5

    .line 727
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 732
    goto :goto_5

    .line 728
    :catch_6
    move-exception p1

    .line 729
    const-string v1, "LogProcessor"

    const-string v2, "readLog2"

    .line 730
    invoke-static {p1, v1, v2}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    :cond_5
    :goto_5
    nop

    .line 734
    nop

    .line 735
    return-object v0

    .line 716
    :catchall_2
    move-exception v0

    .line 732
    :goto_6
    if-eqz v2, :cond_6

    .line 718
    :try_start_8
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 723
    goto :goto_7

    .line 719
    :catch_7
    move-exception v1

    .line 720
    const-string v2, "LogProcessor"

    const-string v3, "readLog1"

    .line 721
    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    :cond_6
    :goto_7
    if-eqz p1, :cond_7

    .line 727
    :try_start_9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 732
    goto :goto_8

    .line 728
    :catch_8
    move-exception p1

    .line 729
    nop

    .line 730
    const-string v1, "LogProcessor"

    const-string v2, "readLog2"

    invoke-static {p1, v1, v2}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    :cond_7
    :goto_8
    nop

    .line 716
    throw v0
.end method

.method private e(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    .line 366
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private e(Landroid/content/Context;)V
    .locals 2

    .line 57
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/services/a/v;->a()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/amap/api/services/a/v;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/amap/api/services/a/ax;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/services/a/v;->eP:Lcom/amap/api/services/a/ax;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_0

    .line 59
    :catch_0
    move-exception p1

    .line 60
    const-string v0, "LogProcessor"

    const-string v1, "LogUpDateProcessor"

    invoke-static {p1, v0, v1}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :goto_0
    return-void
.end method

.method private g(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 636
    nop

    .line 640
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/amap/api/services/a/v;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 641
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 642
    return-object v0

    .line 644
    :cond_0
    invoke-static {v1}, Lcom/amap/api/services/a/m;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 645
    invoke-static {p1, v1}, Lcom/amap/api/services/a/f;->b(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    goto :goto_0

    .line 647
    :catch_0
    move-exception p1

    .line 649
    const-string v1, "LogProcessor"

    const-string v2, "getPublicInfo"

    invoke-static {p1, v1, v2}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    move-object p1, v0

    :goto_0
    return-object p1
.end method


# virtual methods
.method protected a(Lcom/amap/api/services/a/af;)Lcom/amap/api/services/a/ay;
    .locals 1

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/v;->eO:Lcom/amap/api/services/a/ay;

    if-nez v0, :cond_0

    .line 281
    new-instance v0, Lcom/amap/api/services/a/v$a;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/services/a/v$a;-><init>(Lcom/amap/api/services/a/v;Lcom/amap/api/services/a/af;)V

    iput-object v0, p0, Lcom/amap/api/services/a/v;->eO:Lcom/amap/api/services/a/ay;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :cond_0
    goto :goto_0

    .line 284
    :catch_0
    move-exception p1

    .line 285
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 287
    :goto_0
    iget-object p1, p0, Lcom/amap/api/services/a/v;->eO:Lcom/amap/api/services/a/ay;

    return-object p1
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .line 533
    iget v0, p0, Lcom/amap/api/services/a/v;->b:I

    invoke-static {v0}, Lcom/amap/api/services/a/p;->I(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 271
    invoke-static {p1}, Lcom/amap/api/services/a/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 272
    return-object p1
.end method

.method protected a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    .line 354
    nop

    .line 356
    :try_start_0
    invoke-static {p1}, Lcom/amap/api/services/a/v;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    goto :goto_0

    .line 358
    :catch_0
    move-exception p1

    .line 359
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 361
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method a(Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 123
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/v;->J(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 128
    :cond_0
    invoke-virtual {p0, p2}, Lcom/amap/api/services/a/v;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    .line 129
    if-eqz v6, :cond_5

    const-string v2, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 140
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/amap/api/services/a/l;

    .line 141
    invoke-virtual {v3}, Lcom/amap/api/services/a/l;->bl()[Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-static {v2, v6}, Lcom/amap/api/services/a/v;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 143
    const-string v0, "\n"

    const-string v2, "<br/>"

    invoke-virtual {v6, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 144
    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/amap/api/services/a/v;->a(Lcom/amap/api/services/a/l;Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void

    .line 153
    :cond_2
    goto :goto_0

    .line 154
    :cond_3
    const-string v0, "com.amap.api.col"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 157
    :try_start_0
    new-instance v0, Lcom/amap/api/services/a/l$a;

    const-string v2, "collection"

    const-string v3, "1.0"

    const-string v4, "AMap_collection_1.0"

    invoke-direct {v0, v2, v3, v4}, Lcom/amap/api/services/a/l$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.amap.api.collection"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-virtual {v0, v2}, Lcom/amap/api/services/a/l$a;->b([Ljava/lang/String;)Lcom/amap/api/services/a/l$a;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/amap/api/services/a/l$a;->bm()Lcom/amap/api/services/a/l;

    move-result-object v3

    .line 160
    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/amap/api/services/a/v;->a(Lcom/amap/api/services/a/l;Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amap/api/services/a/au; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    goto :goto_1

    .line 162
    :catch_0
    move-exception v0

    .line 163
    invoke-virtual {v0}, Lcom/amap/api/services/a/au;->printStackTrace()V

    .line 169
    :cond_4
    :goto_1
    return-void

    .line 134
    :cond_5
    :goto_2
    return-void

    .line 125
    :cond_6
    :goto_3
    return-void
.end method

.method protected a(Lcom/amap/api/services/a/l;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/amap/api/services/a/v;->eN:Lcom/amap/api/services/a/l;

    .line 239
    return-void
.end method

.method a(Lcom/amap/api/services/a/l;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    move-object v0, p0

    move-object v8, p2

    move-object/from16 v6, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    .line 77
    move-object/from16 v3, p6

    invoke-virtual {v0, p1}, Lcom/amap/api/services/a/v;->a(Lcom/amap/api/services/a/l;)V

    .line 78
    invoke-direct {v0}, Lcom/amap/api/services/a/v;->d()Ljava/lang/String;

    move-result-object v4

    .line 79
    move-object v9, p1

    invoke-static {v8, v9}, Lcom/amap/api/services/a/v;->b(Landroid/content/Context;Lcom/amap/api/services/a/l;)Ljava/lang/String;

    move-result-object v5

    .line 80
    invoke-static {v8}, Lcom/amap/api/services/a/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 81
    nop

    .line 82
    if-eqz v6, :cond_5

    const-string v10, ""

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto/16 :goto_1

    .line 85
    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/services/a/v;->b()I

    move-result v10

    .line 86
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    if-eqz v2, :cond_1

    .line 88
    const-string v12, "class:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :cond_1
    if-eqz v3, :cond_2

    .line 92
    const-string v2, " method:"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<br/>"

    .line 93
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    :cond_2
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0, v1}, Lcom/amap/api/services/a/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 98
    nop

    .line 99
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 98
    move-object v1, v0

    move-object v2, v7

    move-object v3, v5

    move v5, v10

    move-object v7, v11

    invoke-direct/range {v1 .. v7}, Lcom/amap/api/services/a/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    if-eqz v1, :cond_4

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 103
    :cond_3
    invoke-direct {v0, v8, v1}, Lcom/amap/api/services/a/v;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 106
    invoke-virtual {v0}, Lcom/amap/api/services/a/v;->a()Ljava/lang/String;

    move-result-object v4

    .line 108
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    monitor-enter v7

    .line 109
    :try_start_0
    new-instance v11, Lcom/amap/api/services/a/af;

    invoke-direct {v11, v8}, Lcom/amap/api/services/a/af;-><init>(Landroid/content/Context;)V

    .line 110
    move-object v1, v0

    move-object v2, v8

    move-object v3, v12

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/services/a/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/services/a/af;)Z

    move-result v6

    .line 112
    invoke-virtual {v9}, Lcom/amap/api/services/a/l;->a()Ljava/lang/String;

    move-result-object v3

    move-object v1, v0

    move-object v2, v11

    move-object v4, v12

    move v5, v10

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/services/a/v;->a(Lcom/amap/api/services/a/af;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 114
    monitor-exit v7

    .line 115
    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 101
    :cond_4
    :goto_0
    return-void

    .line 83
    :cond_5
    :goto_1
    return-void
.end method

.method a(Lcom/amap/api/services/a/l;Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 69
    invoke-direct {p0, p3}, Lcom/amap/api/services/a/v;->e(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/services/a/v;->a(Lcom/amap/api/services/a/l;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method protected abstract a(Landroid/content/Context;)Z
.end method

.method protected b()I
    .locals 1

    .line 538
    iget v0, p0, Lcom/amap/api/services/a/v;->b:I

    return v0
.end method

.method b(Landroid/content/Context;)V
    .locals 14

    .line 196
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/v;->J(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 200
    :cond_0
    invoke-virtual {p0, v0}, Lcom/amap/api/services/a/v;->h(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_4

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 204
    :cond_1
    invoke-direct {p0}, Lcom/amap/api/services/a/v;->d()Ljava/lang/String;

    move-result-object v5

    .line 205
    iget-object v1, p0, Lcom/amap/api/services/a/v;->eN:Lcom/amap/api/services/a/l;

    invoke-static {p1, v1}, Lcom/amap/api/services/a/v;->b(Landroid/content/Context;Lcom/amap/api/services/a/l;)Ljava/lang/String;

    move-result-object v4

    .line 206
    invoke-static {p1}, Lcom/amap/api/services/a/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 207
    const-string v7, "ANR"

    .line 208
    invoke-virtual {p0}, Lcom/amap/api/services/a/v;->b()I

    move-result v12

    .line 209
    move-object v2, p0

    move v6, v12

    move-object v8, v0

    invoke-direct/range {v2 .. v8}, Lcom/amap/api/services/a/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    if-eqz v1, :cond_3

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 218
    :cond_2
    invoke-virtual {p0, v0}, Lcom/amap/api/services/a/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-direct {p0, p1, v1}, Lcom/amap/api/services/a/v;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 220
    invoke-virtual {p0}, Lcom/amap/api/services/a/v;->a()Ljava/lang/String;

    move-result-object v6

    .line 221
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1

    .line 222
    :try_start_0
    new-instance v2, Lcom/amap/api/services/a/af;

    invoke-direct {v2, p1}, Lcom/amap/api/services/a/af;-><init>(Landroid/content/Context;)V

    .line 223
    move-object v3, p0

    move-object v4, p1

    move-object v5, v0

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/amap/api/services/a/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/services/a/af;)Z

    move-result v13

    .line 225
    iget-object p1, p0, Lcom/amap/api/services/a/v;->eN:Lcom/amap/api/services/a/l;

    invoke-virtual {p1}, Lcom/amap/api/services/a/l;->a()Ljava/lang/String;

    move-result-object v10

    move-object v8, p0

    move-object v9, v2

    move-object v11, v0

    invoke-direct/range {v8 .. v13}, Lcom/amap/api/services/a/v;->a(Lcom/amap/api/services/a/af;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 227
    monitor-exit v1

    .line 228
    return-void

    .line 227
    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 216
    :cond_3
    :goto_0
    return-void

    .line 202
    :cond_4
    :goto_1
    return-void

    .line 198
    :cond_5
    :goto_2
    return-void
.end method

.method c()V
    .locals 3

    .line 741
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/v;->eP:Lcom/amap/api/services/a/ax;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/a/v;->eP:Lcom/amap/api/services/a/ax;

    invoke-virtual {v0}, Lcom/amap/api/services/a/ax;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/amap/api/services/a/v;->eP:Lcom/amap/api/services/a/ax;

    invoke-virtual {v0}, Lcom/amap/api/services/a/ax;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 747
    :catch_0
    move-exception v0

    .line 748
    const-string v1, "LogProcessor"

    const-string v2, "closeDiskLru"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 744
    :catch_1
    move-exception v0

    .line 745
    const-string v1, "LogProcessor"

    const-string v2, "closeDiskLru"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    :cond_0
    :goto_0
    nop

    .line 751
    :goto_1
    return-void
.end method

.method c(Landroid/content/Context;)V
    .locals 4

    .line 474
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/v;->e(Landroid/content/Context;)V

    .line 476
    invoke-virtual {p0, p1}, Lcom/amap/api/services/a/v;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    return-void

    .line 482
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :try_start_1
    new-instance v1, Lcom/amap/api/services/a/af;

    invoke-direct {v1, p1}, Lcom/amap/api/services/a/af;-><init>(Landroid/content/Context;)V

    .line 485
    invoke-virtual {p0}, Lcom/amap/api/services/a/v;->b()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/amap/api/services/a/v;->a(Lcom/amap/api/services/a/af;I)V

    .line 491
    const/4 v2, 0x0

    .line 492
    invoke-virtual {p0}, Lcom/amap/api/services/a/v;->b()I

    move-result v3

    invoke-static {v3}, Lcom/amap/api/services/a/p;->G(I)Ljava/lang/Class;

    move-result-object v3

    .line 491
    invoke-virtual {v1, v2, v3}, Lcom/amap/api/services/a/af;->a(ILjava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 494
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 498
    :cond_1
    invoke-direct {p0, v2, p1}, Lcom/amap/api/services/a/v;->a(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 499
    if-nez p1, :cond_2

    .line 500
    monitor-exit v0

    return-void

    .line 502
    :cond_2
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/v;->I(Ljava/lang/String;)I

    move-result p1

    .line 503
    const/4 v3, 0x1

    if-ne p1, v3, :cond_3

    .line 504
    invoke-virtual {p0}, Lcom/amap/api/services/a/v;->b()I

    move-result p1

    invoke-direct {p0, v2, v1, p1}, Lcom/amap/api/services/a/v;->a(Ljava/util/List;Lcom/amap/api/services/a/af;I)V

    .line 507
    :cond_3
    monitor-exit v0

    .line 514
    goto :goto_1

    .line 495
    :cond_4
    :goto_0
    monitor-exit v0

    return-void

    .line 507
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 509
    :catch_0
    move-exception p1

    .line 511
    const-string v0, "LogProcessor"

    const-string v1, "processUpdateLog"

    .line 512
    invoke-static {p1, v0, v1}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :goto_1
    return-void
.end method

.method protected abstract h(Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/services/a/l;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
