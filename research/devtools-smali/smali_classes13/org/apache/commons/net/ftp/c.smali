.class public Lorg/apache/commons/net/ftp/c;
.super Lorg/apache/commons/net/ftp/b;
.source "FTPClient.java"

# interfaces
.implements Lorg/apache/commons/net/ftp/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/net/ftp/c$a;,
        Lorg/apache/commons/net/ftp/c$c;,
        Lorg/apache/commons/net/ftp/c$b;,
        Lorg/apache/commons/net/ftp/c$d;
    }
.end annotation


# static fields
.field private static final aqY:Ljava/util/regex/Pattern;


# instance fields
.field private aqA:I

.field private aqB:Ljava/net/InetAddress;

.field private aqC:Ljava/net/InetAddress;

.field private aqD:Ljava/net/InetAddress;

.field private aqE:I

.field private aqF:I

.field private aqG:I

.field private aqH:I

.field private aqI:Z

.field private aqJ:J

.field private aqK:Lorg/apache/commons/net/ftp/parser/d;

.field private aqL:I

.field private aqM:I

.field private aqN:I

.field private aqO:Z

.field private aqP:Z

.field private aqQ:Ljava/lang/String;

.field private aqR:Lorg/apache/commons/net/ftp/e;

.field private aqS:Ljava/lang/String;

.field private aqT:Lorg/apache/commons/net/ftp/d;

.field private aqU:Lorg/apache/commons/net/io/c;

.field private aqV:J

.field private aqW:I

.field private aqX:Lorg/apache/commons/net/ftp/c$b;

.field private aqZ:Z

.field private aqu:I

.field private aqv:I

.field private aqw:I

.field private aqx:Ljava/lang/String;

.field private final aqy:Ljava/util/Random;

.field private aqz:I

.field private ara:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 418
    const-string v0, "(\\d{1,3},\\d{1,3},\\d{1,3},\\d{1,3}),(\\d{1,3}),(\\d{1,3})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/ftp/c;->aqY:Ljava/util/regex/Pattern;

    .line 420
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 476
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/b;-><init>()V

    .line 406
    const/16 v0, 0x3e8

    iput v0, p0, Lorg/apache/commons/net/ftp/c;->aqW:I

    .line 412
    new-instance v0, Lorg/apache/commons/net/ftp/c$c;

    invoke-direct {v0, p0}, Lorg/apache/commons/net/ftp/c$c;-><init>(Lorg/apache/commons/net/ftp/c;)V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/c;->aqX:Lorg/apache/commons/net/ftp/c$b;

    .line 423
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/c;->aqZ:Z

    .line 477
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/c;->uD()V

    .line 478
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/commons/net/ftp/c;->aqv:I

    .line 479
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/net/ftp/c;->aqI:Z

    .line 480
    new-instance v1, Lorg/apache/commons/net/ftp/parser/c;

    invoke-direct {v1}, Lorg/apache/commons/net/ftp/parser/c;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/net/ftp/c;->aqK:Lorg/apache/commons/net/ftp/parser/d;

    .line 481
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/net/ftp/c;->aqT:Lorg/apache/commons/net/ftp/d;

    .line 482
    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/c;->aqO:Z

    .line 483
    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/c;->aqP:Z

    .line 484
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/c;->aqy:Ljava/util/Random;

    .line 485
    iput-object v1, p0, Lorg/apache/commons/net/ftp/c;->aqD:Ljava/net/InetAddress;

    .line 486
    return-void
.end method

.method private a(Lorg/apache/commons/net/ftp/e;Ljava/lang/String;)Lorg/apache/commons/net/ftp/i;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3409
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->arB:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, p2}, Lorg/apache/commons/net/ftp/c;->fN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/net/ftp/c;->b(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object p2

    .line 3411
    new-instance v0, Lorg/apache/commons/net/ftp/i;

    iget-object v1, p0, Lorg/apache/commons/net/ftp/c;->aqT:Lorg/apache/commons/net/ftp/d;

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/net/ftp/i;-><init>(Lorg/apache/commons/net/ftp/e;Lorg/apache/commons/net/ftp/d;)V

    .line 3412
    if-nez p2, :cond_0

    .line 3414
    return-object v0

    .line 3418
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/c;->up()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/net/ftp/i;->b(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3421
    invoke-static {p2}, Lorg/apache/commons/net/io/h;->closeQuietly(Ljava/net/Socket;)V

    .line 3422
    nop

    .line 3424
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/c;->uJ()Z

    .line 3425
    return-object v0

    .line 3421
    :catchall_0
    move-exception p1

    invoke-static {p2}, Lorg/apache/commons/net/io/h;->closeQuietly(Ljava/net/Socket;)V

    throw p1
.end method

.method private a(Lorg/apache/commons/net/io/c;)Lorg/apache/commons/net/io/c;
    .locals 1

    .line 3917
    if-nez p1, :cond_0

    .line 3918
    iget-object p1, p0, Lorg/apache/commons/net/ftp/c;->aqU:Lorg/apache/commons/net/io/c;

    return-object p1

    .line 3920
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/c;->aqU:Lorg/apache/commons/net/io/c;

    if-nez v0, :cond_1

    .line 3921
    return-object p1

    .line 3924
    :cond_1
    new-instance v0, Lorg/apache/commons/net/io/b;

    invoke-direct {v0}, Lorg/apache/commons/net/io/b;-><init>()V

    .line 3925
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/io/b;->b(Lorg/apache/commons/net/io/c;)V

    .line 3926
    iget-object p1, p0, Lorg/apache/commons/net/ftp/c;->aqU:Lorg/apache/commons/net/io/c;

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/io/b;->b(Lorg/apache/commons/net/io/c;)V

    .line 3927
    return-object v0
.end method

.method private a(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 639
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPCmd;->getCommand()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/net/ftp/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result p1

    return p1
.end method

.method private c(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2

    .line 3853
    iget v0, p0, Lorg/apache/commons/net/ftp/c;->aqL:I

    if-lez v0, :cond_0

    .line 3854
    new-instance v0, Ljava/io/BufferedInputStream;

    iget v1, p0, Lorg/apache/commons/net/ftp/c;->aqL:I

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0

    .line 3856
    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method private d(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 2

    .line 3846
    iget v0, p0, Lorg/apache/commons/net/ftp/c;->aqL:I

    if-lez v0, :cond_0

    .line 3847
    new-instance v0, Ljava/io/BufferedOutputStream;

    iget v1, p0, Lorg/apache/commons/net/ftp/c;->aqL:I

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-object v0

    .line 3849
    :cond_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method private static uC()Ljava/util/Properties;
    .locals 1

    .line 454
    sget-object v0, Lorg/apache/commons/net/ftp/c$d;->arg:Ljava/util/Properties;

    return-object v0
.end method

.method private uD()V
    .locals 4

    .line 491
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/ftp/c;->aqu:I

    .line 492
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/net/ftp/c;->aqx:Ljava/lang/String;

    .line 493
    const/4 v2, -0x1

    iput v2, p0, Lorg/apache/commons/net/ftp/c;->aqw:I

    .line 494
    iput-object v1, p0, Lorg/apache/commons/net/ftp/c;->aqB:Ljava/net/InetAddress;

    .line 495
    iput-object v1, p0, Lorg/apache/commons/net/ftp/c;->aqC:Ljava/net/InetAddress;

    .line 496
    iput v0, p0, Lorg/apache/commons/net/ftp/c;->aqz:I

    .line 497
    iput v0, p0, Lorg/apache/commons/net/ftp/c;->aqA:I

    .line 498
    iput v0, p0, Lorg/apache/commons/net/ftp/c;->aqE:I

    .line 499
    const/4 v0, 0x7

    iput v0, p0, Lorg/apache/commons/net/ftp/c;->aqG:I

    .line 500
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/net/ftp/c;->aqF:I

    .line 501
    const/16 v0, 0xa

    iput v0, p0, Lorg/apache/commons/net/ftp/c;->aqH:I

    .line 502
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/apache/commons/net/ftp/c;->aqJ:J

    .line 503
    iput-object v1, p0, Lorg/apache/commons/net/ftp/c;->aqQ:Ljava/lang/String;

    .line 504
    iput-object v1, p0, Lorg/apache/commons/net/ftp/c;->aqR:Lorg/apache/commons/net/ftp/e;

    .line 505
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/net/ftp/c;->aqS:Ljava/lang/String;

    .line 506
    iput-object v1, p0, Lorg/apache/commons/net/ftp/c;->ara:Ljava/util/HashMap;

    .line 507
    return-void
.end method

.method private uG()I
    .locals 3

    .line 1406
    iget v0, p0, Lorg/apache/commons/net/ftp/c;->aqz:I

    if-lez v0, :cond_1

    iget v0, p0, Lorg/apache/commons/net/ftp/c;->aqA:I

    iget v1, p0, Lorg/apache/commons/net/ftp/c;->aqz:I

    if-lt v0, v1, :cond_1

    .line 1408
    iget v0, p0, Lorg/apache/commons/net/ftp/c;->aqA:I

    iget v1, p0, Lorg/apache/commons/net/ftp/c;->aqz:I

    if-ne v0, v1, :cond_0

    .line 1409
    iget v0, p0, Lorg/apache/commons/net/ftp/c;->aqA:I

    return v0

    .line 1412
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/c;->aqy:Ljava/util/Random;

    iget v1, p0, Lorg/apache/commons/net/ftp/c;->aqA:I

    iget v2, p0, Lorg/apache/commons/net/ftp/c;->aqz:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/net/ftp/c;->aqz:I

    add-int/2addr v0, v1

    return v0

    .line 1417
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private uH()Ljava/net/InetAddress;
    .locals 1

    .line 1429
    iget-object v0, p0, Lorg/apache/commons/net/ftp/c;->aqB:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    .line 1431
    iget-object v0, p0, Lorg/apache/commons/net/ftp/c;->aqB:Ljava/net/InetAddress;

    return-object v0

    .line 1436
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/c;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method private uI()Ljava/net/InetAddress;
    .locals 1

    .line 1449
    iget-object v0, p0, Lorg/apache/commons/net/ftp/c;->aqC:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    .line 1450
    iget-object v0, p0, Lorg/apache/commons/net/ftp/c;->aqC:Ljava/net/InetAddress;

    return-object v0

    .line 1452
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/c;->uH()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method private uK()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2391
    iget-object v0, p0, Lorg/apache/commons/net/ftp/c;->ara:Ljava/util/HashMap;

    const/4 v1, 0x1

    if-nez v0, :cond_5

    .line 2393
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/c;->uy()I

    move-result v0

    .line 2394
    const/16 v2, 0x212

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 2395
    return v3

    .line 2397
    :cond_0
    invoke-static {v0}, Lorg/apache/commons/net/ftp/j;->fB(I)Z

    move-result v0

    .line 2399
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/net/ftp/c;->ara:Ljava/util/HashMap;

    .line 2400
    if-nez v0, :cond_1

    .line 2401
    return v3

    .line 2403
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/c;->ut()[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v0, v3

    .line 2404
    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2406
    const-string v5, ""

    .line 2407
    const/16 v6, 0x20

    invoke-virtual {v4, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 2408
    if-lez v6, :cond_2

    .line 2409
    invoke-virtual {v4, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 2410
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 2414
    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    goto :goto_1

    .line 2412
    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 2414
    :goto_1
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 2415
    iget-object v6, p0, Lorg/apache/commons/net/ftp/c;->ara:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 2416
    if-nez v6, :cond_3

    .line 2417
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 2418
    iget-object v7, p0, Lorg/apache/commons/net/ftp/c;->ara:Ljava/util/HashMap;

    invoke-virtual {v7, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2420
    :cond_3
    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2403
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2424
    :cond_5
    return v1
.end method


# virtual methods
.method protected O(J)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2583
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/net/ftp/c;->aqJ:J

    .line 2584
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/c;->fH(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/j;->fC(I)Z

    move-result p1

    return p1
.end method

.method public a(Lorg/apache/commons/net/ftp/d;)V
    .locals 0

    .line 3656
    iput-object p1, p0, Lorg/apache/commons/net/ftp/c;->aqT:Lorg/apache/commons/net/ftp/d;

    .line 3657
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2030
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->arY:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/ftp/c;->a(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/io/OutputStream;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1885
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->arR:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPCmd;->getCommand()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/net/ftp/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)Z

    move-result p1

    return p1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 653
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/c;->ay(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object p1

    .line 655
    if-nez p1, :cond_0

    .line 656
    const/4 p1, 0x0

    return p1

    .line 661
    :cond_0
    iget p2, p0, Lorg/apache/commons/net/ftp/c;->aqE:I

    if-nez p2, :cond_1

    .line 662
    new-instance p2, Lorg/apache/commons/net/io/g;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/c;->d(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/apache/commons/net/io/g;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 664
    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/apache/commons/net/ftp/c;->d(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p2

    .line 667
    :goto_0
    const/4 v0, 0x0

    .line 668
    iget-wide v1, p0, Lorg/apache/commons/net/ftp/c;->aqV:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 669
    new-instance v0, Lorg/apache/commons/net/ftp/c$a;

    iget-wide v1, p0, Lorg/apache/commons/net/ftp/c;->aqV:J

    iget v3, p0, Lorg/apache/commons/net/ftp/c;->aqW:I

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/apache/commons/net/ftp/c$a;-><init>(Lorg/apache/commons/net/ftp/c;JI)V

    .line 675
    :cond_2
    move-object v7, v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/c;->tn()I

    move-result v2

    const-wide/16 v3, -0x1

    invoke-direct {p0, v7}, Lorg/apache/commons/net/ftp/c;->a(Lorg/apache/commons/net/io/c;)Lorg/apache/commons/net/io/c;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p3

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/net/io/h;->a(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/c;Z)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 686
    nop

    .line 688
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 689
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 690
    if-eqz v7, :cond_3

    .line 691
    invoke-virtual {v7}, Lorg/apache/commons/net/ftp/c$a;->uP()V

    .line 694
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/c;->uJ()Z

    move-result p1

    .line 695
    return p1

    .line 679
    :catch_0
    move-exception p2

    .line 681
    invoke-static {p1}, Lorg/apache/commons/net/io/h;->closeQuietly(Ljava/net/Socket;)V

    .line 682
    if-eqz v7, :cond_4

    .line 683
    invoke-virtual {v7}, Lorg/apache/commons/net/ftp/c$a;->uP()V

    .line 685
    :cond_4
    throw p2
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1899
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/c;->ay(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object p1

    .line 1901
    if-nez p1, :cond_0

    .line 1902
    const/4 p1, 0x0

    return p1

    .line 1906
    :cond_0
    iget p2, p0, Lorg/apache/commons/net/ftp/c;->aqE:I

    if-nez p2, :cond_1

    .line 1907
    new-instance p2, Lorg/apache/commons/net/io/d;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/c;->c(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/apache/commons/net/io/d;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 1909
    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/apache/commons/net/ftp/c;->c(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p2

    .line 1912
    :goto_0
    const/4 v0, 0x0

    .line 1913
    iget-wide v1, p0, Lorg/apache/commons/net/ftp/c;->aqV:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 1914
    new-instance v0, Lorg/apache/commons/net/ftp/c$a;

    iget-wide v1, p0, Lorg/apache/commons/net/ftp/c;->aqV:J

    iget v3, p0, Lorg/apache/commons/net/ftp/c;->aqW:I

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/apache/commons/net/ftp/c$a;-><init>(Lorg/apache/commons/net/ftp/c;JI)V

    .line 1920
    :cond_2
    move-object v7, v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/c;->tn()I

    move-result v2

    const-wide/16 v3, -0x1

    invoke-direct {p0, v7}, Lorg/apache/commons/net/ftp/c;->a(Lorg/apache/commons/net/io/c;)Lorg/apache/commons/net/io/c;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p2

    move-object v1, p3

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/net/io/h;->a(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/c;Z)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1924
    invoke-static {p2}, Lorg/apache/commons/net/io/h;->closeQuietly(Ljava/io/Closeable;)V

    .line 1925
    invoke-static {p1}, Lorg/apache/commons/net/io/h;->closeQuietly(Ljava/net/Socket;)V

    .line 1926
    if-eqz v7, :cond_3

    .line 1927
    invoke-virtual {v7}, Lorg/apache/commons/net/ftp/c$a;->uP()V

    .line 1932
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/c;->uJ()Z

    move-result p1

    .line 1933
    return p1

    .line 1924
    :catchall_0
    move-exception p3

    invoke-static {p2}, Lorg/apache/commons/net/io/h;->closeQuietly(Ljava/io/Closeable;)V

    .line 1925
    invoke-static {p1}, Lorg/apache/commons/net/io/h;->closeQuietly(Ljava/net/Socket;)V

    .line 1926
    if-eqz v7, :cond_4

    .line 1927
    invoke-virtual {v7}, Lorg/apache/commons/net/ftp/c$a;->uP()V

    :cond_4
    throw p3
.end method

.method public aA(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/net/ftp/i;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3338
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/c;->fM(Ljava/lang/String;)V

    .line 3339
    iget-object p1, p0, Lorg/apache/commons/net/ftp/c;->aqR:Lorg/apache/commons/net/ftp/e;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/ftp/c;->a(Lorg/apache/commons/net/ftp/e;Ljava/lang/String;)Lorg/apache/commons/net/ftp/i;

    move-result-object p1

    return-object p1
.end method

.method protected ay(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 810
    iget v0, p0, Lorg/apache/commons/net/ftp/c;->aqu:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/commons/net/ftp/c;->aqu:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 812
    return-object v1

    .line 815
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/c;->ul()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    .line 819
    iget v2, p0, Lorg/apache/commons/net/ftp/c;->aqu:I

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_9

    .line 823
    iget-object v2, p0, Lorg/apache/commons/net/ftp/c;->aqh:Ljavax/net/ServerSocketFactory;

    invoke-direct {p0}, Lorg/apache/commons/net/ftp/c;->uG()I

    move-result v6

    invoke-direct {p0}, Lorg/apache/commons/net/ftp/c;->uH()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v2, v6, v5, v7}, Ljavax/net/ServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object v2

    .line 833
    if-eqz v0, :cond_1

    .line 834
    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/c;->uI()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v5

    invoke-virtual {p0, v0, v5}, Lorg/apache/commons/net/ftp/c;->b(Ljava/net/InetAddress;I)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/j;->fB(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 835
    nop

    .line 871
    :goto_0
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 838
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/c;->uI()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v5

    invoke-virtual {p0, v0, v5}, Lorg/apache/commons/net/ftp/c;->a(Ljava/net/InetAddress;I)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/j;->fB(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 839
    goto :goto_0

    .line 843
    :cond_2
    iget-wide v5, p0, Lorg/apache/commons/net/ftp/c;->aqJ:J

    cmp-long v0, v5, v3

    if-lez v0, :cond_3

    iget-wide v3, p0, Lorg/apache/commons/net/ftp/c;->aqJ:J

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/net/ftp/c;->O(J)Z

    move-result v0

    if-nez v0, :cond_3

    .line 844
    goto :goto_0

    .line 847
    :cond_3
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/c;->aw(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/j;->fA(I)Z

    move-result p1

    if-nez p1, :cond_4

    .line 848
    goto :goto_0

    .line 855
    :cond_4
    iget p1, p0, Lorg/apache/commons/net/ftp/c;->aqv:I

    if-ltz p1, :cond_5

    .line 856
    iget p1, p0, Lorg/apache/commons/net/ftp/c;->aqv:I

    invoke-virtual {v2, p1}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 858
    :cond_5
    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object p1

    .line 861
    iget p2, p0, Lorg/apache/commons/net/ftp/c;->aqv:I

    if-ltz p2, :cond_6

    .line 862
    iget p2, p0, Lorg/apache/commons/net/ftp/c;->aqv:I

    invoke-virtual {p1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 864
    :cond_6
    iget p2, p0, Lorg/apache/commons/net/ftp/c;->aqN:I

    if-lez p2, :cond_7

    .line 865
    iget p2, p0, Lorg/apache/commons/net/ftp/c;->aqN:I

    invoke-virtual {p1, p2}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 867
    :cond_7
    iget p2, p0, Lorg/apache/commons/net/ftp/c;->aqM:I

    if-lez p2, :cond_8

    .line 868
    iget p2, p0, Lorg/apache/commons/net/ftp/c;->aqM:I

    invoke-virtual {p1, p2}, Ljava/net/Socket;->setSendBufferSize(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 871
    :cond_8
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V

    .line 872
    nop

    .line 873
    goto/16 :goto_5

    .line 871
    :goto_1
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V

    throw p1

    .line 884
    :cond_9
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/c;->uO()Z

    move-result v2

    const/4 v6, 0x0

    if-nez v2, :cond_b

    if-eqz v0, :cond_a

    goto :goto_2

    .line 885
    :cond_a
    move v5, v6

    goto :goto_3

    .line 884
    :cond_b
    :goto_2
    nop

    .line 885
    :goto_3
    if-eqz v5, :cond_c

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/c;->ux()I

    move-result v2

    const/16 v5, 0xe5

    if-ne v2, v5, :cond_c

    .line 887
    iget-object v0, p0, Lorg/apache/commons/net/ftp/c;->aql:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/c;->fJ(Ljava/lang/String;)V

    goto :goto_4

    .line 891
    :cond_c
    if-eqz v0, :cond_d

    .line 892
    return-object v1

    .line 895
    :cond_d
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/c;->uw()I

    move-result v0

    const/16 v2, 0xe3

    if-eq v0, v2, :cond_e

    .line 896
    return-object v1

    .line 898
    :cond_e
    iget-object v0, p0, Lorg/apache/commons/net/ftp/c;->aql:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/c;->fI(Ljava/lang/String;)V

    .line 901
    :goto_4
    iget-object v0, p0, Lorg/apache/commons/net/ftp/c;->aqg:Ljavax/net/SocketFactory;

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 902
    iget v2, p0, Lorg/apache/commons/net/ftp/c;->aqN:I

    if-lez v2, :cond_f

    .line 903
    iget v2, p0, Lorg/apache/commons/net/ftp/c;->aqN:I

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 905
    :cond_f
    iget v2, p0, Lorg/apache/commons/net/ftp/c;->aqM:I

    if-lez v2, :cond_10

    .line 906
    iget v2, p0, Lorg/apache/commons/net/ftp/c;->aqM:I

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 908
    :cond_10
    iget-object v2, p0, Lorg/apache/commons/net/ftp/c;->aqD:Ljava/net/InetAddress;

    if-eqz v2, :cond_11

    .line 909
    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lorg/apache/commons/net/ftp/c;->aqD:Ljava/net/InetAddress;

    invoke-direct {v2, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v2}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 916
    :cond_11
    iget v2, p0, Lorg/apache/commons/net/ftp/c;->aqv:I

    if-ltz v2, :cond_12

    .line 917
    iget v2, p0, Lorg/apache/commons/net/ftp/c;->aqv:I

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 920
    :cond_12
    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lorg/apache/commons/net/ftp/c;->aqx:Ljava/lang/String;

    iget v6, p0, Lorg/apache/commons/net/ftp/c;->aqw:I

    invoke-direct {v2, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget v5, p0, Lorg/apache/commons/net/ftp/c;->connectTimeout:I

    invoke-virtual {v0, v2, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 921
    iget-wide v5, p0, Lorg/apache/commons/net/ftp/c;->aqJ:J

    cmp-long v2, v5, v3

    if-lez v2, :cond_13

    iget-wide v2, p0, Lorg/apache/commons/net/ftp/c;->aqJ:J

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/net/ftp/c;->O(J)Z

    move-result v2

    if-nez v2, :cond_13

    .line 923
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 924
    return-object v1

    .line 927
    :cond_13
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/c;->aw(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/j;->fA(I)Z

    move-result p1

    if-nez p1, :cond_14

    .line 929
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 930
    return-object v1

    .line 934
    :cond_14
    move-object p1, v0

    :goto_5
    iget-boolean p2, p0, Lorg/apache/commons/net/ftp/c;->aqI:Z

    if-eqz p2, :cond_16

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/c;->b(Ljava/net/Socket;)Z

    move-result p2

    if-eqz p2, :cond_15

    goto :goto_6

    .line 936
    :cond_15
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 938
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Host attempting data connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not same as server "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/c;->ul()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 943
    :cond_16
    :goto_6
    return-object p1
.end method

.method public az(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1073
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/c;->fE(Ljava/lang/String;)I

    .line 1075
    iget p1, p0, Lorg/apache/commons/net/ftp/c;->aqk:I

    invoke-static {p1}, Lorg/apache/commons/net/ftp/j;->fB(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1076
    const/4 p1, 0x1

    return p1

    .line 1081
    :cond_0
    iget p1, p0, Lorg/apache/commons/net/ftp/c;->aqk:I

    invoke-static {p1}, Lorg/apache/commons/net/ftp/j;->fC(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1082
    const/4 p1, 0x0

    return p1

    .line 1085
    :cond_1
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/ftp/c;->fF(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/j;->fB(I)Z

    move-result p1

    return p1
.end method

.method protected b(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)Ljava/net/Socket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 785
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPCmd;->getCommand()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/c;->ay(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method protected b(Ljava/io/Reader;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 962
    invoke-super {p0, p1}, Lorg/apache/commons/net/ftp/b;->b(Ljava/io/Reader;)V

    .line 963
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/c;->uD()V

    .line 966
    iget-boolean p1, p0, Lorg/apache/commons/net/ftp/c;->aqZ:Z

    if-eqz p1, :cond_2

    .line 968
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/apache/commons/net/ftp/c;->aql:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 969
    iget v0, p0, Lorg/apache/commons/net/ftp/c;->aqk:I

    .line 970
    const-string v1, "UTF8"

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/ftp/c;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/ftp/c;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 972
    :cond_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/ftp/c;->fC(Ljava/lang/String;)V

    .line 973
    new-instance v1, Lorg/apache/commons/net/io/a;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lorg/apache/commons/net/ftp/c;->aqe:Ljava/io/InputStream;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/c;->up()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/apache/commons/net/io/a;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lorg/apache/commons/net/ftp/c;->aqs:Ljava/io/BufferedReader;

    .line 975
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Lorg/apache/commons/net/ftp/c;->aqf:Ljava/io/OutputStream;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/c;->up()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lorg/apache/commons/net/ftp/c;->aqt:Ljava/io/BufferedWriter;

    .line 979
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/net/ftp/c;->aql:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 980
    iget-object v1, p0, Lorg/apache/commons/net/ftp/c;->aql:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 981
    iput v0, p0, Lorg/apache/commons/net/ftp/c;->aqk:I

    .line 982
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/c;->aqm:Z

    .line 984
    :cond_2
    return-void
.end method

.method public bE(Z)V
    .locals 0

    .line 1041
    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/c;->aqI:Z

    .line 1042
    return-void
.end method

.method public disconnect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1025
    invoke-super {p0}, Lorg/apache/commons/net/ftp/b;->disconnect()V

    .line 1026
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/c;->uD()V

    .line 1027
    return-void
.end method

.method protected fI(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/MalformedServerReplyException;
        }
    .end annotation

    .line 566
    sget-object v0, Lorg/apache/commons/net/ftp/c;->aqY:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 567
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 572
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c

    const/16 v3, 0x2e

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/net/ftp/c;->aqx:Ljava/lang/String;

    .line 576
    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 577
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 578
    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/net/ftp/c;->aqw:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 584
    nop

    .line 586
    iget-object v0, p0, Lorg/apache/commons/net/ftp/c;->aqX:Lorg/apache/commons/net/ftp/c$b;

    if-eqz v0, :cond_1

    .line 588
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/c;->aqX:Lorg/apache/commons/net/ftp/c$b;

    iget-object v1, p0, Lorg/apache/commons/net/ftp/c;->aqx:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/commons/net/ftp/c$b;->fO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 589
    iget-object v1, p0, Lorg/apache/commons/net/ftp/c;->aqx:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 590
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Replacing PASV mode reply address "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/commons/net/ftp/c;->aqx:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/net/ftp/c;->k(ILjava/lang/String;)V

    .line 592
    iput-object v0, p0, Lorg/apache/commons/net/ftp/c;->aqx:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    .line 597
    :cond_0
    goto :goto_0

    .line 594
    :catch_0
    move-exception v0

    .line 595
    new-instance v0, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse passive host information.\nServer Reply: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 599
    :cond_1
    :goto_0
    return-void

    .line 580
    :catch_1
    move-exception v0

    .line 582
    new-instance v0, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse passive port information.\nServer Reply: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :cond_2
    new-instance v0, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse passive host information.\nServer Reply: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected fJ(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/MalformedServerReplyException;
        }
    .end annotation

    .line 604
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/16 v2, 0x29

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 608
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 609
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 610
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 611
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 613
    if-ne v0, v2, :cond_0

    if-ne v2, v3, :cond_0

    if-ne v3, v4, :cond_0

    .line 622
    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    nop

    .line 632
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/c;->ul()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/net/ftp/c;->aqx:Ljava/lang/String;

    .line 633
    iput v0, p0, Lorg/apache/commons/net/ftp/c;->aqw:I

    .line 634
    return-void

    .line 624
    :catch_0
    move-exception v0

    .line 626
    new-instance v0, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse extended passive host information.\nServer Reply: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 615
    :cond_0
    new-instance v0, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse extended passive host information.\nServer Reply: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fK(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1167
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/c;->fG(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/j;->fB(I)Z

    move-result p1

    return p1
.end method

.method public fL(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3016
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/c;->aA(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/net/ftp/i;

    move-result-object p1

    .line 3017
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/i;->uZ()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object p1

    return-object p1
.end method

.method fM(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3347
    iget-object v0, p0, Lorg/apache/commons/net/ftp/c;->aqR:Lorg/apache/commons/net/ftp/e;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_5

    iget-object v0, p0, Lorg/apache/commons/net/ftp/c;->aqS:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3348
    :cond_0
    if-eqz p1, :cond_1

    .line 3351
    iget-object v0, p0, Lorg/apache/commons/net/ftp/c;->aqK:Lorg/apache/commons/net/ftp/parser/d;

    invoke-interface {v0, p1}, Lorg/apache/commons/net/ftp/parser/d;->fZ(Ljava/lang/String;)Lorg/apache/commons/net/ftp/e;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/c;->aqR:Lorg/apache/commons/net/ftp/e;

    .line 3353
    iput-object p1, p0, Lorg/apache/commons/net/ftp/c;->aqS:Ljava/lang/String;

    goto :goto_1

    .line 3358
    :cond_1
    iget-object p1, p0, Lorg/apache/commons/net/ftp/c;->aqT:Lorg/apache/commons/net/ftp/d;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/apache/commons/net/ftp/c;->aqT:Lorg/apache/commons/net/ftp/d;

    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/d;->uQ()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 3359
    iget-object p1, p0, Lorg/apache/commons/net/ftp/c;->aqK:Lorg/apache/commons/net/ftp/parser/d;

    iget-object v0, p0, Lorg/apache/commons/net/ftp/c;->aqT:Lorg/apache/commons/net/ftp/d;

    invoke-interface {p1, v0}, Lorg/apache/commons/net/ftp/parser/d;->b(Lorg/apache/commons/net/ftp/d;)Lorg/apache/commons/net/ftp/e;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/net/ftp/c;->aqR:Lorg/apache/commons/net/ftp/e;

    .line 3361
    iget-object p1, p0, Lorg/apache/commons/net/ftp/c;->aqT:Lorg/apache/commons/net/ftp/d;

    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/d;->uQ()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/net/ftp/c;->aqS:Ljava/lang/String;

    goto :goto_1

    .line 3367
    :cond_2
    const-string p1, "org.apache.commons.net.ftp.systemType"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3368
    if-nez p1, :cond_3

    .line 3369
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/c;->uL()Ljava/lang/String;

    move-result-object p1

    .line 3370
    invoke-static {}, Lorg/apache/commons/net/ftp/c;->uC()Ljava/util/Properties;

    move-result-object v0

    .line 3371
    if-eqz v0, :cond_3

    .line 3372
    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3373
    if-eqz v0, :cond_3

    .line 3374
    nop

    .line 3378
    move-object p1, v0

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/net/ftp/c;->aqT:Lorg/apache/commons/net/ftp/d;

    if-eqz v0, :cond_4

    .line 3379
    iget-object v0, p0, Lorg/apache/commons/net/ftp/c;->aqK:Lorg/apache/commons/net/ftp/parser/d;

    new-instance v1, Lorg/apache/commons/net/ftp/d;

    iget-object v2, p0, Lorg/apache/commons/net/ftp/c;->aqT:Lorg/apache/commons/net/ftp/d;

    invoke-direct {v1, p1, v2}, Lorg/apache/commons/net/ftp/d;-><init>(Ljava/lang/String;Lorg/apache/commons/net/ftp/d;)V

    invoke-interface {v0, v1}, Lorg/apache/commons/net/ftp/parser/d;->b(Lorg/apache/commons/net/ftp/d;)Lorg/apache/commons/net/ftp/e;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/c;->aqR:Lorg/apache/commons/net/ftp/e;

    goto :goto_0

    .line 3381
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/net/ftp/c;->aqK:Lorg/apache/commons/net/ftp/parser/d;

    invoke-interface {v0, p1}, Lorg/apache/commons/net/ftp/parser/d;->fZ(Ljava/lang/String;)Lorg/apache/commons/net/ftp/e;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/c;->aqR:Lorg/apache/commons/net/ftp/e;

    .line 3383
    :goto_0
    iput-object p1, p0, Lorg/apache/commons/net/ftp/c;->aqS:Ljava/lang/String;

    .line 3389
    :cond_5
    :goto_1
    return-void
.end method

.method protected fN(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3460
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/c;->uN()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3462
    if-eqz p1, :cond_0

    .line 3464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3465
    const-string v1, "-a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3466
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3467
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3471
    :cond_0
    const-string p1, "-a"

    return-object p1

    .line 3475
    :cond_1
    return-object p1
.end method

.method public fx(I)V
    .locals 0

    .line 999
    iput p1, p0, Lorg/apache/commons/net/ftp/c;->aqv:I

    .line 1000
    return-void
.end method

.method public fy(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1559
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/c;->fw(I)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/j;->fB(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1561
    iput p1, p0, Lorg/apache/commons/net/ftp/c;->aqE:I

    .line 1562
    const/4 p1, 0x4

    iput p1, p0, Lorg/apache/commons/net/ftp/c;->aqF:I

    .line 1563
    const/4 p1, 0x1

    return p1

    .line 1565
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hasFeature(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2355
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/c;->uK()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2356
    const/4 p1, 0x0

    return p1

    .line 2358
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/c;->ara:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public tn()I
    .locals 1

    .line 3603
    iget v0, p0, Lorg/apache/commons/net/ftp/c;->aqL:I

    return v0
.end method

.method public uE()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1148
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/c;->uv()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/j;->fB(I)Z

    move-result v0

    return v0
.end method

.method public uF()V
    .locals 1

    .line 1273
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/commons/net/ftp/c;->aqu:I

    .line 1276
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/c;->aqx:Ljava/lang/String;

    .line 1277
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/net/ftp/c;->aqw:I

    .line 1278
    return-void
.end method

.method public uJ()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1853
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/c;->us()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/j;->fB(I)Z

    move-result v0

    return v0
.end method

.method public uL()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2791
    iget-object v0, p0, Lorg/apache/commons/net/ftp/c;->aqQ:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 2792
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/c;->uz()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/j;->fB(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2794
    iget-object v0, p0, Lorg/apache/commons/net/ftp/c;->aql:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/net/ftp/c;->aql:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/c;->aqQ:Ljava/lang/String;

    goto :goto_0

    .line 2797
    :cond_0
    const-string v0, "org.apache.commons.net.ftp.systemType.default"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2798
    if-eqz v0, :cond_1

    .line 2799
    iput-object v0, p0, Lorg/apache/commons/net/ftp/c;->aqQ:Ljava/lang/String;

    goto :goto_0

    .line 2801
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to determine system type - response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/c;->uu()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2805
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/c;->aqQ:Ljava/lang/String;

    return-object v0
.end method

.method public uM()[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3069
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/c;->fL(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    return-object v0
.end method

.method public uN()Z
    .locals 1

    .line 3678
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/c;->aqO:Z

    return v0
.end method

.method public uO()Z
    .locals 1

    .line 3688
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/c;->aqP:Z

    return v0
.end method

.method protected uk()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 950
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/c;->b(Ljava/io/Reader;)V

    .line 951
    return-void
.end method
