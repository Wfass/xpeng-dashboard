.class public Lnet/lingala/zip4j/headers/d;
.super Ljava/lang/Object;
.source "HeaderWriter.java"


# instance fields
.field private final amc:Lnet/lingala/zip4j/d/e;

.field private final amd:[B

.field private final amr:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lnet/lingala/zip4j/d/e;

    invoke-direct {v0}, Lnet/lingala/zip4j/d/e;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/headers/d;->amc:Lnet/lingala/zip4j/d/e;

    .line 53
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/lingala/zip4j/headers/d;->amr:[B

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/lingala/zip4j/headers/d;->amd:[B

    return-void
.end method

.method private a(Lnet/lingala/zip4j/model/i;Z)I
    .locals 5

    .line 519
    nop

    .line 521
    if-eqz p2, :cond_0

    .line 522
    const/16 p2, 0x20

    goto :goto_0

    .line 525
    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->sU()Lnet/lingala/zip4j/model/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 526
    add-int/lit8 p2, p2, 0xb

    .line 529
    :cond_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->sW()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 530
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->sW()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/model/h;

    .line 531
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/h;->tf()J

    move-result-wide v1

    sget-object v3, Lnet/lingala/zip4j/headers/HeaderSignature;->amp:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v3}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 532
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/h;->tf()J

    move-result-wide v1

    sget-object v3, Lnet/lingala/zip4j/headers/HeaderSignature;->amo:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v3}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 533
    goto :goto_1

    .line 536
    :cond_3
    const/4 v1, 0x4

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/h;->sY()I

    move-result v0

    add-int/2addr v1, v0

    add-int/2addr p2, v1

    .line 537
    goto :goto_1

    .line 540
    :cond_4
    return p2
.end method

.method private a(Lnet/lingala/zip4j/model/p;IJ)Lnet/lingala/zip4j/model/m;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 673
    new-instance v0, Lnet/lingala/zip4j/model/m;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/m;-><init>()V

    .line 675
    sget-object v1, Lnet/lingala/zip4j/headers/HeaderSignature;->amn:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/m;->a(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 676
    const-wide/16 v1, 0x2c

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/m;->A(J)V

    .line 678
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tA()Lnet/lingala/zip4j/model/d;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 679
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tA()Lnet/lingala/zip4j/model/d;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/d;->sX()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 680
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tA()Lnet/lingala/zip4j/model/d;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/d;->sX()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 681
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tA()Lnet/lingala/zip4j/model/d;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/d;->sX()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/lingala/zip4j/model/i;

    .line 682
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/i;->tg()I

    move-result v2

    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/m;->fl(I)V

    .line 683
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/i;->sM()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/m;->fc(I)V

    .line 686
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tB()Lnet/lingala/zip4j/model/f;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/f;->sZ()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/m;->fg(I)V

    .line 687
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tB()Lnet/lingala/zip4j/model/f;

    move-result-object v1

    .line 688
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/f;->ta()I

    move-result v1

    .line 687
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/m;->fq(I)V

    .line 690
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tA()Lnet/lingala/zip4j/model/d;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/d;->sX()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    .line 691
    nop

    .line 692
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tC()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 693
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tA()Lnet/lingala/zip4j/model/d;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/d;->sX()Ljava/util/List;

    move-result-object v3

    .line 694
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tB()Lnet/lingala/zip4j/model/f;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/f;->sZ()I

    move-result p1

    .line 693
    invoke-direct {p0, v3, p1}, Lnet/lingala/zip4j/headers/d;->d(Ljava/util/List;I)J

    move-result-wide v3

    goto :goto_0

    .line 697
    :cond_1
    move-wide v3, v1

    :goto_0
    invoke-virtual {v0, v3, v4}, Lnet/lingala/zip4j/model/m;->B(J)V

    .line 698
    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/m;->C(J)V

    .line 699
    int-to-long p1, p2

    invoke-virtual {v0, p1, p2}, Lnet/lingala/zip4j/model/m;->D(J)V

    .line 700
    invoke-virtual {v0, p3, p4}, Lnet/lingala/zip4j/model/m;->E(J)V

    .line 702
    return-object v0
.end method

.method private a(Lnet/lingala/zip4j/b/b/h;Lnet/lingala/zip4j/model/i;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/i;->sO()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    const/4 v1, 0x4

    const/4 v4, 0x0

    if-ltz v0, :cond_1

    .line 300
    iget-object v0, p0, Lnet/lingala/zip4j/headers/d;->amc:Lnet/lingala/zip4j/d/e;

    iget-object v5, p0, Lnet/lingala/zip4j/headers/d;->amr:[B

    invoke-virtual {v0, v5, v4, v2, v3}, Lnet/lingala/zip4j/d/e;->a([BIJ)V

    .line 301
    iget-object v0, p0, Lnet/lingala/zip4j/headers/d;->amr:[B

    invoke-virtual {p1, v0, v4, v1}, Lnet/lingala/zip4j/b/b/h;->write([BII)V

    .line 302
    iget-object v0, p0, Lnet/lingala/zip4j/headers/d;->amr:[B

    invoke-virtual {p1, v0, v4, v1}, Lnet/lingala/zip4j/b/b/h;->write([BII)V

    .line 311
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/i;->sP()I

    move-result v0

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    .line 312
    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/b/b/h;->skipBytes(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 315
    iget-object v0, p0, Lnet/lingala/zip4j/headers/d;->amc:Lnet/lingala/zip4j/d/e;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/i;->sO()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;J)V

    .line 316
    iget-object v0, p0, Lnet/lingala/zip4j/headers/d;->amc:Lnet/lingala/zip4j/d/e;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/i;->getCompressedSize()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;J)V

    .line 317
    goto :goto_0

    .line 313
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to skip "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes to update LFH"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 318
    :cond_1
    iget-object v0, p0, Lnet/lingala/zip4j/headers/d;->amc:Lnet/lingala/zip4j/d/e;

    iget-object v2, p0, Lnet/lingala/zip4j/headers/d;->amr:[B

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/i;->getCompressedSize()J

    move-result-wide v5

    invoke-virtual {v0, v2, v4, v5, v6}, Lnet/lingala/zip4j/d/e;->a([BIJ)V

    .line 319
    iget-object v0, p0, Lnet/lingala/zip4j/headers/d;->amr:[B

    invoke-virtual {p1, v0, v4, v1}, Lnet/lingala/zip4j/b/b/h;->write([BII)V

    .line 321
    iget-object v0, p0, Lnet/lingala/zip4j/headers/d;->amc:Lnet/lingala/zip4j/d/e;

    iget-object v2, p0, Lnet/lingala/zip4j/headers/d;->amr:[B

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/i;->sO()J

    move-result-wide v5

    invoke-virtual {v0, v2, v4, v5, v6}, Lnet/lingala/zip4j/d/e;->a([BIJ)V

    .line 322
    iget-object p2, p0, Lnet/lingala/zip4j/headers/d;->amr:[B

    invoke-virtual {p1, p2, v4, v1}, Lnet/lingala/zip4j/b/b/h;->write([BII)V

    .line 324
    :goto_0
    return-void
.end method

.method private a(Lnet/lingala/zip4j/model/i;Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 545
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->sW()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->sW()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 549
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->sW()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/model/h;

    .line 550
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/h;->tf()J

    move-result-wide v1

    sget-object v3, Lnet/lingala/zip4j/headers/HeaderSignature;->amp:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v3}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 551
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/h;->tf()J

    move-result-wide v1

    sget-object v3, Lnet/lingala/zip4j/headers/HeaderSignature;->amo:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v3}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 552
    goto :goto_0

    .line 555
    :cond_2
    iget-object v1, p0, Lnet/lingala/zip4j/headers/d;->amc:Lnet/lingala/zip4j/d/e;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/h;->tf()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, p2, v2}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;I)V

    .line 556
    iget-object v1, p0, Lnet/lingala/zip4j/headers/d;->amc:Lnet/lingala/zip4j/d/e;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/h;->sY()I

    move-result v2

    invoke-virtual {v1, p2, v2}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;I)V

    .line 558
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/h;->sY()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/h;->getData()[B

    move-result-object v1

    if-eqz v1, :cond_3

    .line 559
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/h;->getData()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 561
    :cond_3
    goto :goto_0

    .line 562
    :cond_4
    return-void

    .line 546
    :cond_5
    :goto_1
    return-void
.end method

.method private a(Lnet/lingala/zip4j/model/l;Ljava/io/ByteArrayOutputStream;Lnet/lingala/zip4j/d/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 581
    sget-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->amm:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v0}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p3, p2, v0}, Lnet/lingala/zip4j/d/e;->b(Ljava/io/OutputStream;I)V

    .line 582
    nop

    .line 583
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/l;->tp()I

    move-result v0

    .line 582
    invoke-virtual {p3, p2, v0}, Lnet/lingala/zip4j/d/e;->b(Ljava/io/OutputStream;I)V

    .line 584
    nop

    .line 585
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/l;->tq()J

    move-result-wide v0

    .line 584
    invoke-virtual {p3, p2, v0, v1}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;J)V

    .line 586
    nop

    .line 587
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/l;->tr()I

    move-result p1

    .line 586
    invoke-virtual {p3, p2, p1}, Lnet/lingala/zip4j/d/e;->b(Ljava/io/OutputStream;I)V

    .line 589
    return-void
.end method

.method private a(Lnet/lingala/zip4j/model/m;Ljava/io/ByteArrayOutputStream;Lnet/lingala/zip4j/d/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 566
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/m;->ty()Lnet/lingala/zip4j/headers/HeaderSignature;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p3, p2, v0}, Lnet/lingala/zip4j/d/e;->b(Ljava/io/OutputStream;I)V

    .line 567
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/m;->ts()J

    move-result-wide v0

    invoke-virtual {p3, p2, v0, v1}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;J)V

    .line 568
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/m;->tg()I

    move-result v0

    invoke-virtual {p3, p2, v0}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;I)V

    .line 569
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/m;->sM()I

    move-result v0

    invoke-virtual {p3, p2, v0}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;I)V

    .line 570
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/m;->sZ()I

    move-result v0

    invoke-virtual {p3, p2, v0}, Lnet/lingala/zip4j/d/e;->b(Ljava/io/OutputStream;I)V

    .line 571
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/m;->tt()I

    move-result v0

    invoke-virtual {p3, p2, v0}, Lnet/lingala/zip4j/d/e;->b(Ljava/io/OutputStream;I)V

    .line 572
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/m;->tu()J

    move-result-wide v0

    invoke-virtual {p3, p2, v0, v1}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;J)V

    .line 573
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/m;->tv()J

    move-result-wide v0

    invoke-virtual {p3, p2, v0, v1}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;J)V

    .line 574
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/m;->tw()J

    move-result-wide v0

    invoke-virtual {p3, p2, v0, v1}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;J)V

    .line 575
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/m;->tx()J

    move-result-wide v0

    invoke-virtual {p3, p2, v0, v1}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;J)V

    .line 576
    return-void
.end method

.method private a(Lnet/lingala/zip4j/model/p;IJLjava/io/ByteArrayOutputStream;Lnet/lingala/zip4j/d/e;Ljava/nio/charset/Charset;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 596
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 597
    sget-object v1, Lnet/lingala/zip4j/headers/HeaderSignature;->amh:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v1}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p6, p5, v1}, Lnet/lingala/zip4j/d/e;->b(Ljava/io/OutputStream;I)V

    .line 598
    nop

    .line 599
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tB()Lnet/lingala/zip4j/model/f;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/f;->sZ()I

    move-result v1

    .line 598
    invoke-virtual {p6, p5, v1}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;I)V

    .line 600
    nop

    .line 601
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tB()Lnet/lingala/zip4j/model/f;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/f;->ta()I

    move-result v1

    .line 600
    invoke-virtual {p6, p5, v1}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;I)V

    .line 603
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tA()Lnet/lingala/zip4j/model/d;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/d;->sX()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    .line 604
    nop

    .line 605
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tC()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 606
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tA()Lnet/lingala/zip4j/model/d;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/d;->sX()Ljava/util/List;

    move-result-object v3

    .line 607
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tB()Lnet/lingala/zip4j/model/f;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/f;->sZ()I

    move-result v4

    .line 606
    invoke-direct {p0, v3, v4}, Lnet/lingala/zip4j/headers/d;->d(Ljava/util/List;I)J

    move-result-wide v3

    goto :goto_0

    .line 610
    :cond_0
    move-wide v3, v1

    :goto_0
    const-wide/32 v5, 0xffff

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    .line 611
    nop

    .line 613
    move-wide v3, v5

    :cond_1
    long-to-int v3, v3

    invoke-virtual {p6, p5, v3}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;I)V

    .line 615
    cmp-long v3, v1, v5

    if-lez v3, :cond_2

    .line 616
    nop

    .line 618
    move-wide v1, v5

    :cond_2
    long-to-int v1, v1

    invoke-virtual {p6, p5, v1}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;I)V

    .line 620
    invoke-virtual {p6, p5, p2}, Lnet/lingala/zip4j/d/e;->b(Ljava/io/OutputStream;I)V

    .line 621
    const-wide v1, 0xffffffffL

    cmp-long p2, p3, v1

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-lez p2, :cond_3

    .line 622
    invoke-virtual {p6, v0, v4, v1, v2}, Lnet/lingala/zip4j/d/e;->a([BIJ)V

    .line 623
    invoke-virtual {p5, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 625
    :cond_3
    invoke-virtual {p6, v0, v4, p3, p4}, Lnet/lingala/zip4j/d/e;->a([BIJ)V

    .line 626
    invoke-virtual {p5, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 629
    :goto_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tB()Lnet/lingala/zip4j/model/f;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/f;->getComment()Ljava/lang/String;

    move-result-object p1

    .line 630
    invoke-static {p1}, Lnet/lingala/zip4j/d/f;->fA(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 631
    invoke-static {p1, p7}, Lnet/lingala/zip4j/headers/c;->b(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 632
    array-length p2, p1

    invoke-virtual {p6, p5, p2}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;I)V

    .line 633
    invoke-virtual {p5, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 634
    goto :goto_2

    .line 635
    :cond_4
    invoke-virtual {p6, p5, v4}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;I)V

    .line 637
    :goto_2
    return-void
.end method

.method private a(Lnet/lingala/zip4j/model/p;Ljava/io/ByteArrayOutputStream;Lnet/lingala/zip4j/d/e;Ljava/nio/charset/Charset;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 389
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tA()Lnet/lingala/zip4j/model/d;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tA()Lnet/lingala/zip4j/model/d;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/d;->sX()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 390
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tA()Lnet/lingala/zip4j/model/d;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/d;->sX()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 394
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tA()Lnet/lingala/zip4j/model/d;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/d;->sX()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lnet/lingala/zip4j/model/i;

    .line 395
    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lnet/lingala/zip4j/headers/d;->a(Lnet/lingala/zip4j/model/p;Lnet/lingala/zip4j/model/i;Ljava/io/ByteArrayOutputStream;Lnet/lingala/zip4j/d/e;Ljava/nio/charset/Charset;)V

    .line 396
    goto :goto_0

    .line 397
    :cond_1
    return-void

    .line 391
    :cond_2
    :goto_1
    return-void
.end method

.method private a(Lnet/lingala/zip4j/model/p;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    nop

    .line 362
    instance-of v0, p2, Lnet/lingala/zip4j/b/b/g;

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tB()Lnet/lingala/zip4j/model/f;

    move-result-object v0

    check-cast p2, Lnet/lingala/zip4j/b/b/g;

    .line 364
    invoke-interface {p2}, Lnet/lingala/zip4j/b/b/g;->getFilePointer()J

    move-result-wide v1

    .line 363
    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/f;->v(J)V

    .line 365
    invoke-interface {p2}, Lnet/lingala/zip4j/b/b/g;->sz()I

    move-result p2

    goto :goto_0

    .line 368
    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tG()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 369
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tF()Lnet/lingala/zip4j/model/m;

    move-result-object v0

    if-nez v0, :cond_1

    .line 370
    new-instance v0, Lnet/lingala/zip4j/model/m;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/m;-><init>()V

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/p;->a(Lnet/lingala/zip4j/model/m;)V

    .line 372
    :cond_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tE()Lnet/lingala/zip4j/model/l;

    move-result-object v0

    if-nez v0, :cond_2

    .line 373
    new-instance v0, Lnet/lingala/zip4j/model/l;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/l;-><init>()V

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/p;->a(Lnet/lingala/zip4j/model/l;)V

    .line 376
    :cond_2
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tF()Lnet/lingala/zip4j/model/m;

    move-result-object v0

    .line 377
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tB()Lnet/lingala/zip4j/model/f;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/f;->td()J

    move-result-wide v1

    .line 376
    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/m;->E(J)V

    .line 378
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tE()Lnet/lingala/zip4j/model/l;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/lingala/zip4j/model/l;->fo(I)V

    .line 380
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tE()Lnet/lingala/zip4j/model/l;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/l;->fp(I)V

    .line 382
    :cond_3
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tB()Lnet/lingala/zip4j/model/f;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/lingala/zip4j/model/f;->fg(I)V

    .line 383
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tB()Lnet/lingala/zip4j/model/f;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/model/f;->fh(I)V

    .line 384
    return-void
.end method

.method private a(Lnet/lingala/zip4j/model/p;Ljava/io/OutputStream;[BLjava/nio/charset/Charset;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    if-eqz p3, :cond_1

    .line 350
    instance-of v0, p2, Lnet/lingala/zip4j/b/b/d;

    if-eqz v0, :cond_0

    .line 351
    move-object v0, p2

    check-cast v0, Lnet/lingala/zip4j/b/b/d;

    array-length v1, p3

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/b/b/d;->eZ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {p0, p1, p2, p4}, Lnet/lingala/zip4j/headers/d;->a(Lnet/lingala/zip4j/model/p;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 353
    return-void

    .line 357
    :cond_0
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    .line 358
    return-void

    .line 347
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid buff to write as zip headers"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lnet/lingala/zip4j/model/p;Lnet/lingala/zip4j/model/i;Ljava/io/ByteArrayOutputStream;Lnet/lingala/zip4j/d/e;Ljava/nio/charset/Charset;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 401
    move-object/from16 v5, p5

    if-eqz v2, :cond_9

    .line 406
    const/4 v6, 0x2

    :try_start_0
    new-array v7, v6, [B

    fill-array-data v7, :array_0

    .line 407
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/headers/d;->b(Lnet/lingala/zip4j/model/i;)Z

    move-result v8

    .line 409
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/i;->ty()Lnet/lingala/zip4j/headers/HeaderSignature;

    move-result-object v9

    invoke-virtual {v9}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v9

    long-to-int v9, v9

    invoke-virtual {v4, v3, v9}, Lnet/lingala/zip4j/d/e;->b(Ljava/io/OutputStream;I)V

    .line 410
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/i;->tg()I

    move-result v9

    invoke-virtual {v4, v3, v9}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;I)V

    .line 411
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/i;->sM()I

    move-result v9

    invoke-virtual {v4, v3, v9}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;I)V

    .line 412
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/i;->sN()[B

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 413
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/i;->sL()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v9

    invoke-virtual {v9}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCode()I

    move-result v9

    invoke-virtual {v4, v3, v9}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;I)V

    .line 415
    iget-object v9, v0, Lnet/lingala/zip4j/headers/d;->amr:[B

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/i;->getLastModifiedTime()J

    move-result-wide v10

    const/4 v12, 0x0

    invoke-virtual {v4, v9, v12, v10, v11}, Lnet/lingala/zip4j/d/e;->a([BIJ)V

    .line 416
    iget-object v9, v0, Lnet/lingala/zip4j/headers/d;->amr:[B

    const/4 v10, 0x4

    invoke-virtual {v3, v9, v12, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 418
    iget-object v9, v0, Lnet/lingala/zip4j/headers/d;->amr:[B

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/i;->getCrc()J

    move-result-wide v13

    invoke-virtual {v4, v9, v12, v13, v14}, Lnet/lingala/zip4j/d/e;->a([BIJ)V

    .line 419
    iget-object v9, v0, Lnet/lingala/zip4j/headers/d;->amr:[B

    invoke-virtual {v3, v9, v12, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 421
    const-wide v13, 0xffffffffL

    const/4 v9, 0x1

    if-eqz v8, :cond_0

    .line 422
    iget-object v11, v0, Lnet/lingala/zip4j/headers/d;->amr:[B

    invoke-virtual {v4, v11, v12, v13, v14}, Lnet/lingala/zip4j/d/e;->a([BIJ)V

    .line 423
    iget-object v11, v0, Lnet/lingala/zip4j/headers/d;->amr:[B

    invoke-virtual {v3, v11, v12, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 424
    iget-object v11, v0, Lnet/lingala/zip4j/headers/d;->amr:[B

    invoke-virtual {v3, v11, v12, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 425
    invoke-virtual {v1, v9}, Lnet/lingala/zip4j/model/p;->bz(Z)V

    .line 433
    move-object v15, v7

    goto :goto_0

    .line 427
    :cond_0
    iget-object v11, v0, Lnet/lingala/zip4j/headers/d;->amr:[B

    move-object v15, v7

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/i;->getCompressedSize()J

    move-result-wide v6

    invoke-virtual {v4, v11, v12, v6, v7}, Lnet/lingala/zip4j/d/e;->a([BIJ)V

    .line 428
    iget-object v6, v0, Lnet/lingala/zip4j/headers/d;->amr:[B

    invoke-virtual {v3, v6, v12, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 429
    iget-object v6, v0, Lnet/lingala/zip4j/headers/d;->amr:[B

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/i;->sO()J

    move-result-wide v13

    invoke-virtual {v4, v6, v12, v13, v14}, Lnet/lingala/zip4j/d/e;->a([BIJ)V

    .line 430
    iget-object v6, v0, Lnet/lingala/zip4j/headers/d;->amr:[B

    invoke-virtual {v3, v6, v12, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 433
    :goto_0
    new-array v6, v12, [B

    .line 434
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/i;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lnet/lingala/zip4j/d/f;->fA(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 435
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/i;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lnet/lingala/zip4j/headers/c;->b(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v6

    .line 437
    :cond_1
    array-length v7, v6

    invoke-virtual {v4, v3, v7}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;I)V

    .line 441
    new-array v7, v10, [B

    .line 442
    if-eqz v8, :cond_2

    .line 443
    iget-object v11, v0, Lnet/lingala/zip4j/headers/d;->amr:[B

    const-wide v13, 0xffffffffL

    invoke-virtual {v4, v11, v12, v13, v14}, Lnet/lingala/zip4j/d/e;->a([BIJ)V

    .line 444
    iget-object v11, v0, Lnet/lingala/zip4j/headers/d;->amr:[B

    invoke-static {v11, v12, v7, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 446
    :cond_2
    iget-object v11, v0, Lnet/lingala/zip4j/headers/d;->amr:[B

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/i;->tj()J

    move-result-wide v13

    invoke-virtual {v4, v11, v12, v13, v14}, Lnet/lingala/zip4j/d/e;->a([BIJ)V

    .line 447
    iget-object v11, v0, Lnet/lingala/zip4j/headers/d;->amr:[B

    invoke-static {v11, v12, v7, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 450
    :goto_1
    invoke-direct {v0, v2, v8}, Lnet/lingala/zip4j/headers/d;->a(Lnet/lingala/zip4j/model/i;Z)I

    move-result v10

    .line 451
    invoke-virtual {v4, v3, v10}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;I)V

    .line 453
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/i;->tk()Ljava/lang/String;

    move-result-object v10

    .line 454
    new-array v11, v12, [B

    .line 455
    invoke-static {v10}, Lnet/lingala/zip4j/d/f;->fA(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 456
    invoke-static {v10, v5}, Lnet/lingala/zip4j/headers/c;->b(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v11

    .line 458
    :cond_3
    array-length v5, v11

    invoke-virtual {v4, v3, v5}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;I)V

    .line 460
    if-eqz v8, :cond_4

    .line 461
    iget-object v5, v0, Lnet/lingala/zip4j/headers/d;->amd:[B

    const v10, 0xffff

    invoke-virtual {v4, v5, v12, v10}, Lnet/lingala/zip4j/d/e;->g([BII)V

    .line 462
    iget-object v5, v0, Lnet/lingala/zip4j/headers/d;->amd:[B

    const/4 v10, 0x2

    invoke-virtual {v3, v5, v12, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    .line 464
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/i;->th()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;I)V

    .line 467
    :goto_2
    move-object v5, v15

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 470
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/i;->ti()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 473
    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 475
    array-length v5, v6

    if-lez v5, :cond_5

    .line 476
    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 479
    :cond_5
    if-eqz v8, :cond_6

    .line 480
    invoke-virtual {v1, v9}, Lnet/lingala/zip4j/model/p;->bz(Z)V

    .line 483
    sget-object v1, Lnet/lingala/zip4j/headers/HeaderSignature;->amo:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 484
    invoke-virtual {v1}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v5

    long-to-int v1, v5

    .line 483
    invoke-virtual {v4, v3, v1}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;I)V

    .line 487
    const/16 v1, 0x1c

    invoke-virtual {v4, v3, v1}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;I)V

    .line 488
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/i;->sO()J

    move-result-wide v5

    invoke-virtual {v4, v3, v5, v6}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;J)V

    .line 489
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/i;->getCompressedSize()J

    move-result-wide v5

    invoke-virtual {v4, v3, v5, v6}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;J)V

    .line 490
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/i;->tj()J

    move-result-wide v5

    invoke-virtual {v4, v3, v5, v6}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;J)V

    .line 491
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/i;->th()I

    move-result v1

    invoke-virtual {v4, v3, v1}, Lnet/lingala/zip4j/d/e;->b(Ljava/io/OutputStream;I)V

    .line 494
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/i;->sU()Lnet/lingala/zip4j/model/a;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 495
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/i;->sU()Lnet/lingala/zip4j/model/a;

    move-result-object v1

    .line 496
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/a;->ty()Lnet/lingala/zip4j/headers/HeaderSignature;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v4, v3, v5}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;I)V

    .line 497
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/a;->getDataSize()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;I)V

    .line 498
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/a;->sI()Lnet/lingala/zip4j/model/enums/AesVersion;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/enums/AesVersion;->cq()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;I)V

    .line 499
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/a;->sJ()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 501
    new-array v5, v9, [B

    .line 502
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/a;->sK()Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    move-result-object v6

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->tX()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v5, v12

    .line 503
    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 505
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/a;->sL()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCode()I

    move-result v1

    invoke-virtual {v4, v3, v1}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;I)V

    .line 508
    :cond_7
    invoke-direct {v0, v2, v3}, Lnet/lingala/zip4j/headers/d;->a(Lnet/lingala/zip4j/model/i;Ljava/io/OutputStream;)V

    .line 510
    array-length v0, v11

    if-lez v0, :cond_8

    .line 511
    invoke-virtual {v3, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    :cond_8
    nop

    .line 516
    return-void

    .line 513
    :catch_0
    move-exception v0

    .line 514
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 402
    :cond_9
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "input parameters is null, cannot write local file header"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private b(Ljava/io/OutputStream;)Z
    .locals 1

    .line 327
    instance-of v0, p1, Lnet/lingala/zip4j/b/b/h;

    if-eqz v0, :cond_0

    .line 328
    check-cast p1, Lnet/lingala/zip4j/b/b/h;

    invoke-virtual {p1}, Lnet/lingala/zip4j/b/b/h;->sC()Z

    move-result p1

    return p1

    .line 329
    :cond_0
    instance-of v0, p1, Lnet/lingala/zip4j/b/b/d;

    if-eqz v0, :cond_1

    .line 330
    check-cast p1, Lnet/lingala/zip4j/b/b/d;

    invoke-virtual {p1}, Lnet/lingala/zip4j/b/b/d;->sC()Z

    move-result p1

    return p1

    .line 333
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private b(Lnet/lingala/zip4j/model/i;)Z
    .locals 4

    .line 654
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->getCompressedSize()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 655
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->sO()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 656
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->tj()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 657
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->th()I

    move-result p1

    const v0, 0xffff

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 654
    :goto_1
    return p1
.end method

.method private c(Ljava/io/OutputStream;)I
    .locals 1

    .line 337
    instance-of v0, p1, Lnet/lingala/zip4j/b/b/h;

    if-eqz v0, :cond_0

    .line 338
    check-cast p1, Lnet/lingala/zip4j/b/b/h;

    invoke-virtual {p1}, Lnet/lingala/zip4j/b/b/h;->sz()I

    move-result p1

    return p1

    .line 340
    :cond_0
    check-cast p1, Lnet/lingala/zip4j/b/b/d;

    invoke-virtual {p1}, Lnet/lingala/zip4j/b/b/d;->sz()I

    move-result p1

    return p1
.end method

.method private c(Lnet/lingala/zip4j/model/p;)J
    .locals 4

    .line 661
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tF()Lnet/lingala/zip4j/model/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 663
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tF()Lnet/lingala/zip4j/model/m;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/m;->tx()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 664
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tF()Lnet/lingala/zip4j/model/m;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/m;->tx()J

    move-result-wide v0

    return-wide v0

    .line 667
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tB()Lnet/lingala/zip4j/model/f;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/f;->td()J

    move-result-wide v0

    return-wide v0
.end method

.method private d(Ljava/util/List;I)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/i;",
            ">;I)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 640
    if-eqz p1, :cond_2

    .line 644
    const/4 v0, 0x0

    .line 645
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/lingala/zip4j/model/i;

    .line 646
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/i;->th()I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 647
    add-int/lit8 v0, v0, 0x1

    .line 649
    :cond_0
    goto :goto_0

    .line 650
    :cond_1
    int-to-long p1, v0

    return-wide p1

    .line 641
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "file headers are null, cannot calculate number of entries on this disk"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lnet/lingala/zip4j/model/i;Lnet/lingala/zip4j/model/p;Lnet/lingala/zip4j/b/b/h;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 260
    nop

    .line 263
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->th()I

    move-result v0

    invoke-virtual {p3}, Lnet/lingala/zip4j/b/b/h;->sz()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    .line 264
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/p;->tD()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/p;->tD()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lnet/lingala/zip4j/d/c;->fy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 266
    const-string v1, ""

    .line 267
    if-eqz v0, :cond_0

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "file.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 270
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->th()I

    move-result v0

    const/16 v4, 0x9

    if-ge v0, v4, :cond_1

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".z0"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->th()I

    move-result p2

    add-int/2addr p2, v2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 273
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".z"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->th()I

    move-result p2

    add-int/2addr p2, v2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 275
    :goto_0
    new-instance v0, Lnet/lingala/zip4j/b/b/h;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/b/b/h;-><init>(Ljava/io/File;)V

    .line 276
    nop

    .line 277
    goto :goto_1

    .line 278
    :cond_2
    nop

    .line 281
    move-object v0, p3

    move v2, v3

    :goto_1
    invoke-virtual {v0}, Lnet/lingala/zip4j/b/b/h;->getFilePointer()J

    move-result-wide v4

    .line 283
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->tj()J

    move-result-wide v6

    const-wide/16 v8, 0xe

    add-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Lnet/lingala/zip4j/b/b/h;->seek(J)V

    .line 284
    iget-object p2, p0, Lnet/lingala/zip4j/headers/d;->amc:Lnet/lingala/zip4j/d/e;

    iget-object v1, p0, Lnet/lingala/zip4j/headers/d;->amr:[B

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->getCrc()J

    move-result-wide v6

    invoke-virtual {p2, v1, v3, v6, v7}, Lnet/lingala/zip4j/d/e;->a([BIJ)V

    .line 285
    iget-object p2, p0, Lnet/lingala/zip4j/headers/d;->amr:[B

    const/4 v1, 0x4

    invoke-virtual {v0, p2, v3, v1}, Lnet/lingala/zip4j/b/b/h;->write([BII)V

    .line 287
    invoke-direct {p0, v0, p1}, Lnet/lingala/zip4j/headers/d;->a(Lnet/lingala/zip4j/b/b/h;Lnet/lingala/zip4j/model/i;)V

    .line 289
    if-eqz v2, :cond_3

    .line 290
    invoke-virtual {v0}, Lnet/lingala/zip4j/b/b/h;->close()V

    goto :goto_2

    .line 292
    :cond_3
    invoke-virtual {p3, v4, v5}, Lnet/lingala/zip4j/b/b/h;->seek(J)V

    .line 294
    :goto_2
    return-void

    .line 257
    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid input parameters, cannot update local file header"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lnet/lingala/zip4j/model/j;Ljava/io/OutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 150
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    .line 151
    :try_start_0
    iget-object v2, p0, Lnet/lingala/zip4j/headers/d;->amc:Lnet/lingala/zip4j/d/e;

    sget-object v3, Lnet/lingala/zip4j/headers/HeaderSignature;->amf:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v3}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v0, v3}, Lnet/lingala/zip4j/d/e;->b(Ljava/io/OutputStream;I)V

    .line 153
    iget-object v2, p0, Lnet/lingala/zip4j/headers/d;->amc:Lnet/lingala/zip4j/d/e;

    iget-object v3, p0, Lnet/lingala/zip4j/headers/d;->amr:[B

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/j;->getCrc()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v4, v5}, Lnet/lingala/zip4j/d/e;->a([BIJ)V

    .line 154
    iget-object v2, p0, Lnet/lingala/zip4j/headers/d;->amr:[B

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v6, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 156
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/j;->tl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    iget-object v2, p0, Lnet/lingala/zip4j/headers/d;->amc:Lnet/lingala/zip4j/d/e;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/j;->getCompressedSize()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;J)V

    .line 158
    iget-object v2, p0, Lnet/lingala/zip4j/headers/d;->amc:Lnet/lingala/zip4j/d/e;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/j;->sO()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;J)V

    goto :goto_0

    .line 160
    :cond_0
    iget-object v2, p0, Lnet/lingala/zip4j/headers/d;->amc:Lnet/lingala/zip4j/d/e;

    iget-object v4, p0, Lnet/lingala/zip4j/headers/d;->amr:[B

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/j;->getCompressedSize()J

    move-result-wide v7

    invoke-virtual {v2, v4, v6, v7, v8}, Lnet/lingala/zip4j/d/e;->a([BIJ)V

    .line 161
    iget-object v2, p0, Lnet/lingala/zip4j/headers/d;->amr:[B

    invoke-virtual {v0, v2, v6, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 163
    iget-object v2, p0, Lnet/lingala/zip4j/headers/d;->amc:Lnet/lingala/zip4j/d/e;

    iget-object v4, p0, Lnet/lingala/zip4j/headers/d;->amr:[B

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/j;->sO()J

    move-result-wide v7

    invoke-virtual {v2, v4, v6, v7, v8}, Lnet/lingala/zip4j/d/e;->a([BIJ)V

    .line 164
    iget-object p1, p0, Lnet/lingala/zip4j/headers/d;->amr:[B

    invoke-virtual {v0, p1, v6, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 167
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 169
    return-void

    .line 168
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 150
    :catch_0
    move-exception p1

    move-object v1, p1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    :goto_1
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    :goto_2
    throw p1

    .line 147
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input parameters is null, cannot write extended local header"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lnet/lingala/zip4j/model/p;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 176
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v9, 0x0

    .line 177
    :try_start_0
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/headers/d;->a(Lnet/lingala/zip4j/model/p;Ljava/io/OutputStream;)V

    .line 178
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/headers/d;->c(Lnet/lingala/zip4j/model/p;)J

    move-result-wide v3

    .line 179
    iget-object v0, p0, Lnet/lingala/zip4j/headers/d;->amc:Lnet/lingala/zip4j/d/e;

    invoke-direct {p0, p1, v8, v0, p3}, Lnet/lingala/zip4j/headers/d;->a(Lnet/lingala/zip4j/model/p;Ljava/io/ByteArrayOutputStream;Lnet/lingala/zip4j/d/e;Ljava/nio/charset/Charset;)V

    .line 180
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    .line 182
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tG()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, v3, v0

    if-gez v0, :cond_0

    .line 183
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tA()Lnet/lingala/zip4j/model/d;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/d;->sX()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const v1, 0xffff

    if-lt v0, v1, :cond_4

    .line 185
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tF()Lnet/lingala/zip4j/model/m;

    move-result-object v0

    if-nez v0, :cond_1

    .line 186
    new-instance v0, Lnet/lingala/zip4j/model/m;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/m;-><init>()V

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/p;->a(Lnet/lingala/zip4j/model/m;)V

    .line 188
    :cond_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tE()Lnet/lingala/zip4j/model/l;

    move-result-object v0

    if-nez v0, :cond_2

    .line 189
    new-instance v0, Lnet/lingala/zip4j/model/l;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/l;-><init>()V

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/p;->a(Lnet/lingala/zip4j/model/l;)V

    .line 192
    :cond_2
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tE()Lnet/lingala/zip4j/model/l;

    move-result-object v0

    int-to-long v5, v2

    add-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Lnet/lingala/zip4j/model/l;->z(J)V

    .line 195
    invoke-direct {p0, p2}, Lnet/lingala/zip4j/headers/d;->b(Ljava/io/OutputStream;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 196
    invoke-direct {p0, p2}, Lnet/lingala/zip4j/headers/d;->c(Ljava/io/OutputStream;)I

    move-result v0

    .line 197
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tE()Lnet/lingala/zip4j/model/l;

    move-result-object v5

    invoke-virtual {v5, v0}, Lnet/lingala/zip4j/model/l;->fo(I)V

    .line 199
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tE()Lnet/lingala/zip4j/model/l;

    move-result-object v5

    add-int/2addr v0, v1

    invoke-virtual {v5, v0}, Lnet/lingala/zip4j/model/l;->fp(I)V

    .line 200
    goto :goto_0

    .line 201
    :cond_3
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tE()Lnet/lingala/zip4j/model/l;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lnet/lingala/zip4j/model/l;->fo(I)V

    .line 202
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tE()Lnet/lingala/zip4j/model/l;

    move-result-object v0

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/l;->fp(I)V

    .line 205
    :goto_0
    invoke-direct {p0, p1, v2, v3, v4}, Lnet/lingala/zip4j/headers/d;->a(Lnet/lingala/zip4j/model/p;IJ)Lnet/lingala/zip4j/model/m;

    move-result-object v0

    .line 207
    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/p;->a(Lnet/lingala/zip4j/model/m;)V

    .line 208
    iget-object v1, p0, Lnet/lingala/zip4j/headers/d;->amc:Lnet/lingala/zip4j/d/e;

    invoke-direct {p0, v0, v8, v1}, Lnet/lingala/zip4j/headers/d;->a(Lnet/lingala/zip4j/model/m;Ljava/io/ByteArrayOutputStream;Lnet/lingala/zip4j/d/e;)V

    .line 209
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tE()Lnet/lingala/zip4j/model/l;

    move-result-object v0

    iget-object v1, p0, Lnet/lingala/zip4j/headers/d;->amc:Lnet/lingala/zip4j/d/e;

    invoke-direct {p0, v0, v8, v1}, Lnet/lingala/zip4j/headers/d;->a(Lnet/lingala/zip4j/model/l;Ljava/io/ByteArrayOutputStream;Lnet/lingala/zip4j/d/e;)V

    .line 212
    :cond_4
    iget-object v6, p0, Lnet/lingala/zip4j/headers/d;->amc:Lnet/lingala/zip4j/d/e;

    move-object v0, p0

    move-object v1, p1

    move-object v5, v8

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lnet/lingala/zip4j/headers/d;->a(Lnet/lingala/zip4j/model/p;IJLjava/io/ByteArrayOutputStream;Lnet/lingala/zip4j/d/e;Ljava/nio/charset/Charset;)V

    .line 213
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lnet/lingala/zip4j/headers/d;->a(Lnet/lingala/zip4j/model/p;Ljava/io/OutputStream;[BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 215
    return-void

    .line 214
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 176
    :catch_0
    move-exception p1

    move-object v9, p1

    :try_start_1
    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    :goto_1
    if-eqz v9, :cond_5

    :try_start_2
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    invoke-virtual {v9, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    :goto_2
    throw p1

    .line 173
    :cond_6
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input parameters is null, cannot finalize zip file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lnet/lingala/zip4j/model/p;Lnet/lingala/zip4j/model/j;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 60
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lnet/lingala/zip4j/headers/d;->amc:Lnet/lingala/zip4j/d/e;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/j;->ty()Lnet/lingala/zip4j/headers/HeaderSignature;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v0, v3}, Lnet/lingala/zip4j/d/e;->b(Ljava/io/OutputStream;I)V

    .line 61
    iget-object v2, p0, Lnet/lingala/zip4j/headers/d;->amc:Lnet/lingala/zip4j/d/e;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/j;->sM()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;I)V

    .line 62
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/j;->sN()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 63
    iget-object v2, p0, Lnet/lingala/zip4j/headers/d;->amc:Lnet/lingala/zip4j/d/e;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/j;->sL()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCode()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;I)V

    .line 65
    iget-object v2, p0, Lnet/lingala/zip4j/headers/d;->amc:Lnet/lingala/zip4j/d/e;

    iget-object v3, p0, Lnet/lingala/zip4j/headers/d;->amr:[B

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/j;->getLastModifiedTime()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v4, v5}, Lnet/lingala/zip4j/d/e;->a([BIJ)V

    .line 66
    iget-object v2, p0, Lnet/lingala/zip4j/headers/d;->amr:[B

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v6, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 68
    iget-object v2, p0, Lnet/lingala/zip4j/headers/d;->amc:Lnet/lingala/zip4j/d/e;

    iget-object v4, p0, Lnet/lingala/zip4j/headers/d;->amr:[B

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/j;->getCrc()J

    move-result-wide v7

    invoke-virtual {v2, v4, v6, v7, v8}, Lnet/lingala/zip4j/d/e;->a([BIJ)V

    .line 69
    iget-object v2, p0, Lnet/lingala/zip4j/headers/d;->amr:[B

    invoke-virtual {v0, v2, v6, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 71
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/j;->getCompressedSize()J

    move-result-wide v4

    const-wide v7, 0xffffffffL

    cmp-long v2, v4, v7

    const/4 v4, 0x1

    if-gez v2, :cond_1

    .line 72
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/j;->sO()J

    move-result-wide v9

    cmp-long v2, v9, v7

    if-ltz v2, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    move v2, v6

    goto :goto_1

    .line 72
    :cond_1
    :goto_0
    nop

    .line 74
    move v2, v4

    :goto_1
    if-eqz v2, :cond_2

    .line 75
    iget-object v5, p0, Lnet/lingala/zip4j/headers/d;->amc:Lnet/lingala/zip4j/d/e;

    iget-object v9, p0, Lnet/lingala/zip4j/headers/d;->amr:[B

    invoke-virtual {v5, v9, v6, v7, v8}, Lnet/lingala/zip4j/d/e;->a([BIJ)V

    .line 79
    iget-object v5, p0, Lnet/lingala/zip4j/headers/d;->amr:[B

    invoke-virtual {v0, v5, v6, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 80
    iget-object v5, p0, Lnet/lingala/zip4j/headers/d;->amr:[B

    invoke-virtual {v0, v5, v6, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 82
    invoke-virtual {p1, v4}, Lnet/lingala/zip4j/model/p;->bz(Z)V

    .line 83
    invoke-virtual {p2, v4}, Lnet/lingala/zip4j/model/j;->bx(Z)V

    goto :goto_2

    .line 85
    :cond_2
    iget-object p1, p0, Lnet/lingala/zip4j/headers/d;->amc:Lnet/lingala/zip4j/d/e;

    iget-object v5, p0, Lnet/lingala/zip4j/headers/d;->amr:[B

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/j;->getCompressedSize()J

    move-result-wide v7

    invoke-virtual {p1, v5, v6, v7, v8}, Lnet/lingala/zip4j/d/e;->a([BIJ)V

    .line 86
    iget-object p1, p0, Lnet/lingala/zip4j/headers/d;->amr:[B

    invoke-virtual {v0, p1, v6, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 88
    iget-object p1, p0, Lnet/lingala/zip4j/headers/d;->amc:Lnet/lingala/zip4j/d/e;

    iget-object v5, p0, Lnet/lingala/zip4j/headers/d;->amr:[B

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/j;->sO()J

    move-result-wide v7

    invoke-virtual {p1, v5, v6, v7, v8}, Lnet/lingala/zip4j/d/e;->a([BIJ)V

    .line 89
    iget-object p1, p0, Lnet/lingala/zip4j/headers/d;->amr:[B

    invoke-virtual {v0, p1, v6, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 91
    invoke-virtual {p2, v6}, Lnet/lingala/zip4j/model/j;->bx(Z)V

    .line 94
    :goto_2
    new-array p1, v6, [B

    .line 95
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/j;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/lingala/zip4j/d/f;->fA(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 96
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/j;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p4}, Lnet/lingala/zip4j/headers/c;->b(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 98
    :cond_3
    iget-object p4, p0, Lnet/lingala/zip4j/headers/d;->amc:Lnet/lingala/zip4j/d/e;

    array-length v3, p1

    invoke-virtual {p4, v0, v3}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;I)V

    .line 100
    nop

    .line 101
    if-eqz v2, :cond_4

    .line 102
    const/16 p4, 0x14

    goto :goto_3

    .line 104
    :cond_4
    move p4, v6

    :goto_3
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/j;->sU()Lnet/lingala/zip4j/model/a;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 105
    add-int/lit8 p4, p4, 0xb

    .line 107
    :cond_5
    iget-object v3, p0, Lnet/lingala/zip4j/headers/d;->amc:Lnet/lingala/zip4j/d/e;

    invoke-virtual {v3, v0, p4}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;I)V

    .line 109
    array-length p4, p1

    if-lez p4, :cond_6

    .line 110
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 117
    :cond_6
    if-eqz v2, :cond_7

    .line 118
    iget-object p1, p0, Lnet/lingala/zip4j/headers/d;->amc:Lnet/lingala/zip4j/d/e;

    sget-object p4, Lnet/lingala/zip4j/headers/HeaderSignature;->amo:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 119
    invoke-virtual {p4}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v2

    long-to-int p4, v2

    .line 118
    invoke-virtual {p1, v0, p4}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;I)V

    .line 120
    iget-object p1, p0, Lnet/lingala/zip4j/headers/d;->amc:Lnet/lingala/zip4j/d/e;

    const/16 p4, 0x10

    invoke-virtual {p1, v0, p4}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;I)V

    .line 121
    iget-object p1, p0, Lnet/lingala/zip4j/headers/d;->amc:Lnet/lingala/zip4j/d/e;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/j;->sO()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;J)V

    .line 122
    iget-object p1, p0, Lnet/lingala/zip4j/headers/d;->amc:Lnet/lingala/zip4j/d/e;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/j;->getCompressedSize()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;J)V

    .line 125
    :cond_7
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/j;->sU()Lnet/lingala/zip4j/model/a;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 126
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/j;->sU()Lnet/lingala/zip4j/model/a;

    move-result-object p1

    .line 127
    iget-object p2, p0, Lnet/lingala/zip4j/headers/d;->amc:Lnet/lingala/zip4j/d/e;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/a;->ty()Lnet/lingala/zip4j/headers/HeaderSignature;

    move-result-object p4

    invoke-virtual {p4}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v2

    long-to-int p4, v2

    invoke-virtual {p2, v0, p4}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;I)V

    .line 128
    iget-object p2, p0, Lnet/lingala/zip4j/headers/d;->amc:Lnet/lingala/zip4j/d/e;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/a;->getDataSize()I

    move-result p4

    invoke-virtual {p2, v0, p4}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;I)V

    .line 129
    iget-object p2, p0, Lnet/lingala/zip4j/headers/d;->amc:Lnet/lingala/zip4j/d/e;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/a;->sI()Lnet/lingala/zip4j/model/enums/AesVersion;

    move-result-object p4

    invoke-virtual {p4}, Lnet/lingala/zip4j/model/enums/AesVersion;->cq()I

    move-result p4

    invoke-virtual {p2, v0, p4}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;I)V

    .line 130
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/a;->sJ()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 132
    new-array p2, v4, [B

    .line 133
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/a;->sK()Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    move-result-object p4

    invoke-virtual {p4}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->tX()I

    move-result p4

    int-to-byte p4, p4

    aput-byte p4, p2, v6

    .line 134
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 136
    iget-object p2, p0, Lnet/lingala/zip4j/headers/d;->amc:Lnet/lingala/zip4j/d/e;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/a;->sL()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCode()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Lnet/lingala/zip4j/d/e;->a(Ljava/io/OutputStream;I)V

    .line 139
    :cond_8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 141
    return-void

    .line 140
    :catchall_0
    move-exception p1

    goto :goto_4

    .line 59
    :catch_0
    move-exception p1

    move-object v1, p1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    :goto_4
    if-eqz v1, :cond_9

    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception p2

    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    :goto_5
    throw p1
.end method
