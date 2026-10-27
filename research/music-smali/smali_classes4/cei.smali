.class public Lcei;
.super Ljava/lang/Object;
.source "MqttAsyncClient.java"

# interfaces
.implements Lcee;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcei$a;,
        Lcei$b;,
        Lcei$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "cei"

.field private static final c:Lcgw;

.field private static l:I

.field private static n:Ljava/lang/Object;


# instance fields
.field protected b:Lcew;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Hashtable;

.field private g:Lcel;

.field private h:Lcej;

.field private i:Lcem;

.field private j:Ljava/lang/Object;

.field private k:Ljava/util/Timer;

.field private m:Z

.field private o:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 103
    sget-object v0, Lcei;->a:Ljava/lang/String;

    const-string v1, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    invoke-static {v1, v0}, Lcgx;->a(Ljava/lang/String;Ljava/lang/String;)Lcgw;

    move-result-object v0

    sput-object v0, Lcei;->c:Lcgw;

    const/16 v0, 0x3e8

    .line 119
    sput v0, Lcei;->l:I

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcei;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcel;Lces;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 5

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcei;->m:Z

    .line 447
    sget-object v1, Lcei;->c:Lcgw;

    invoke-interface {v1, p2}, Lcgw;->setResourceName(Ljava/lang/String;)V

    if-eqz p2, :cond_5

    move v1, v0

    move v2, v1

    .line 454
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-lt v1, v3, :cond_3

    const v1, 0xffff

    if-gt v2, v1, :cond_2

    .line 463
    invoke-static {p1}, Lcem;->b(Ljava/lang/String;)I

    .line 465
    iput-object p1, p0, Lcei;->e:Ljava/lang/String;

    .line 466
    iput-object p2, p0, Lcei;->d:Ljava/lang/String;

    .line 468
    iput-object p3, p0, Lcei;->g:Lcel;

    .line 469
    iget-object v1, p0, Lcei;->g:Lcel;

    if-nez v1, :cond_0

    .line 470
    new-instance v1, Lcgy;

    invoke-direct {v1}, Lcgy;-><init>()V

    iput-object v1, p0, Lcei;->g:Lcel;

    .line 473
    :cond_0
    iput-object p5, p0, Lcei;->o:Ljava/util/concurrent/ScheduledExecutorService;

    .line 474
    iget-object p5, p0, Lcei;->o:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez p5, :cond_1

    const/16 p5, 0xa

    .line 475
    invoke-static {p5}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p5

    iput-object p5, p0, Lcei;->o:Ljava/util/concurrent/ScheduledExecutorService;

    .line 479
    :cond_1
    sget-object p5, Lcei;->c:Lcgw;

    sget-object v1, Lcei;->a:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v0

    aput-object p1, v2, v4

    const/4 v0, 0x2

    aput-object p3, v2, v0

    const-string p3, "MqttAsyncClient"

    const-string v0, "101"

    invoke-interface {p5, v1, p3, v0, v2}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 481
    iget-object p3, p0, Lcei;->g:Lcel;

    invoke-interface {p3, p2, p1}, Lcel;->open(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    new-instance p1, Lcew;

    iget-object p2, p0, Lcei;->g:Lcel;

    iget-object p3, p0, Lcei;->o:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p1, p0, p2, p4, p3}, Lcew;-><init>(Lcee;Lcel;Lces;Ljava/util/concurrent/ExecutorService;)V

    iput-object p1, p0, Lcei;->b:Lcew;

    .line 483
    iget-object p1, p0, Lcei;->g:Lcel;

    invoke-interface {p1}, Lcel;->close()V

    .line 484
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lcei;->f:Ljava/util/Hashtable;

    return-void

    .line 460
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ClientId longer than 65535 characters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 455
    :cond_3
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcei;->a(C)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v4

    goto :goto_0

    .line 450
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null clientId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x3a

    .line 677
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x2f

    .line 679
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 682
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_1
    const/4 v1, 0x0

    .line 684
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(I)V
    .locals 0

    .line 119
    sput p0, Lcei;->l:I

    return-void
.end method

.method static synthetic a(Lcei;)V
    .locals 0

    .line 1403
    invoke-direct {p0}, Lcei;->i()V

    return-void
.end method

.method static synthetic a(Lcei;Z)V
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcei;->m:Z

    return-void
.end method

.method protected static a(C)Z
    .locals 1

    const v0, 0xd800

    if-lt p0, v0, :cond_0

    const v0, 0xdbff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private b(Ljava/lang/String;Lcem;)Lcfj;
    .locals 11

    .line 548
    sget-object v0, Lcei;->c:Lcgw;

    sget-object v1, Lcei;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string v5, "createNetworkModule"

    const-string v6, "115"

    invoke-interface {v0, v1, v5, v6, v3}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 551
    invoke-virtual {p2}, Lcem;->g()Ljavax/net/SocketFactory;

    move-result-object v0

    .line 553
    invoke-static {p1}, Lcem;->b(Ljava/lang/String;)I

    move-result v1

    .line 557
    :try_start_0
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 560
    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    if-nez v6, :cond_0

    const-string v6, "_"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v6, :cond_0

    .line 562
    :try_start_1
    const-class v6, Ljava/net/URI;

    const-string v8, "host"

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 563
    invoke-virtual {v6, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 565
    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 566
    invoke-direct {p0, v8}, Lcei;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v3, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    goto :goto_0

    :catch_2
    move-exception p2

    goto :goto_0

    :catch_3
    move-exception p2

    .line 569
    :goto_0
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-static {p2}, Lcfe;->a(Ljava/lang/Throwable;)Lceo;

    move-result-object p2

    throw p2
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_4

    .line 577
    :cond_0
    :goto_1
    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    .line 578
    invoke-virtual {v3}, Ljava/net/URI;->getPort()I

    move-result v3

    const/16 v8, 0x7d69

    const/4 v9, -0x1

    const/4 v10, 0x0

    if-eqz v1, :cond_11

    if-eq v1, v2, :cond_b

    if-eq v1, v7, :cond_7

    const/4 v7, 0x4

    if-eq v1, v7, :cond_1

    .line 670
    sget-object p2, Lcei;->c:Lcgw;

    sget-object v0, Lcei;->a:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "119"

    invoke-interface {p2, v0, v5, p1, v1}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_1
    if-ne v3, v9, :cond_2

    const/16 v1, 0x1bb

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    if-nez v0, :cond_4

    .line 646
    new-instance v0, Lcfo;

    invoke-direct {v0}, Lcfo;-><init>()V

    .line 647
    invoke-virtual {p2}, Lcem;->j()Ljava/util/Properties;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 649
    invoke-virtual {v0, v1, v10}, Lcfo;->a(Ljava/util/Properties;Ljava/lang/String;)V

    .line 650
    :cond_3
    invoke-virtual {v0, v10}, Lcfo;->o(Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    move-object v7, v0

    move-object v0, v1

    goto :goto_3

    .line 653
    :cond_4
    instance-of v1, v0, Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_6

    move-object v7, v10

    .line 658
    :goto_3
    new-instance v8, Lcfx;

    move-object v1, v0

    check-cast v1, Ljavax/net/ssl/SSLSocketFactory;

    iget-object v5, p0, Lcei;->d:Ljava/lang/String;

    move-object v0, v8

    move-object v2, p1

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcfx;-><init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 659
    move-object p1, v8

    check-cast p1, Lcfx;

    invoke-virtual {p2}, Lcem;->f()I

    move-result p2

    invoke-virtual {p1, p2}, Lcfx;->a(I)V

    if-eqz v7, :cond_5

    .line 662
    invoke-virtual {v7, v10}, Lcfo;->n(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 664
    move-object p2, v8

    check-cast p2, Lcfl;

    invoke-virtual {p2, p1}, Lcfl;->a([Ljava/lang/String;)V

    :cond_5
    move-object v10, v8

    goto/16 :goto_8

    .line 654
    :cond_6
    invoke-static {v8}, Lcfe;->a(I)Lceo;

    move-result-object p1

    throw p1

    :cond_7
    if-ne v3, v9, :cond_8

    const/16 v1, 0x50

    move v4, v1

    goto :goto_4

    :cond_8
    move v4, v3

    :goto_4
    if-nez v0, :cond_9

    .line 632
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    goto :goto_5

    .line 634
    :cond_9
    instance-of v1, v0, Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_a

    :goto_5
    move-object v1, v0

    .line 637
    new-instance v7, Lcfv;

    iget-object v5, p0, Lcei;->d:Ljava/lang/String;

    move-object v0, v7

    move-object v2, p1

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcfv;-><init>(Ljavax/net/SocketFactory;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 638
    move-object p1, v7

    check-cast p1, Lcfv;

    invoke-virtual {p2}, Lcem;->f()I

    move-result p2

    invoke-virtual {p1, p2}, Lcfv;->b(I)V

    move-object v10, v7

    goto/16 :goto_8

    .line 635
    :cond_a
    invoke-static {v8}, Lcfe;->a(I)Lceo;

    move-result-object p1

    throw p1

    :cond_b
    if-ne v3, v9, :cond_c

    const/16 v3, 0x22b3

    :cond_c
    if-nez v0, :cond_e

    .line 601
    new-instance p1, Lcfo;

    invoke-direct {p1}, Lcfo;-><init>()V

    .line 602
    invoke-virtual {p2}, Lcem;->j()Ljava/util/Properties;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 604
    invoke-virtual {p1, v0, v10}, Lcfo;->a(Ljava/util/Properties;Ljava/lang/String;)V

    .line 605
    :cond_d
    invoke-virtual {p1, v10}, Lcfo;->o(Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    goto :goto_6

    .line 611
    :cond_e
    instance-of p1, v0, Ljavax/net/ssl/SSLSocketFactory;

    if-eqz p1, :cond_10

    move-object p1, v10

    .line 616
    :goto_6
    new-instance v1, Lcfl;

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    iget-object v2, p0, Lcei;->d:Ljava/lang/String;

    invoke-direct {v1, v0, v6, v3, v2}, Lcfl;-><init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/lang/String;ILjava/lang/String;)V

    .line 617
    move-object v0, v1

    check-cast v0, Lcfl;

    invoke-virtual {p2}, Lcem;->f()I

    move-result v2

    invoke-virtual {v0, v2}, Lcfl;->a(I)V

    .line 618
    invoke-virtual {p2}, Lcem;->k()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcfl;->a(Ljavax/net/ssl/HostnameVerifier;)V

    if-eqz p1, :cond_f

    .line 621
    invoke-virtual {p1, v10}, Lcfo;->n(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 623
    invoke-virtual {v0, p1}, Lcfl;->a([Ljava/lang/String;)V

    :cond_f
    move-object v10, v1

    goto :goto_8

    .line 612
    :cond_10
    invoke-static {v8}, Lcfe;->a(I)Lceo;

    move-result-object p1

    throw p1

    :cond_11
    if-ne v3, v9, :cond_12

    const/16 v3, 0x75b

    :cond_12
    if-nez v0, :cond_13

    .line 586
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    goto :goto_7

    .line 588
    :cond_13
    instance-of p1, v0, Ljavax/net/ssl/SSLSocketFactory;

    if-nez p1, :cond_14

    .line 591
    :goto_7
    new-instance v10, Lcfm;

    iget-object p1, p0, Lcei;->d:Ljava/lang/String;

    invoke-direct {v10, v0, v6, v3, p1}, Lcfm;-><init>(Ljavax/net/SocketFactory;Ljava/lang/String;ILjava/lang/String;)V

    .line 592
    move-object p1, v10

    check-cast p1, Lcfm;

    invoke-virtual {p2}, Lcem;->f()I

    move-result p2

    invoke-virtual {p1, p2}, Lcfm;->b(I)V

    :goto_8
    return-object v10

    .line 589
    :cond_14
    invoke-static {v8}, Lcfe;->a(I)Lceo;

    move-result-object p1

    throw p1

    :catch_4
    move-exception p2

    .line 574
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Malformed URI: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic b(Lcei;)V
    .locals 0

    .line 1418
    invoke-direct {p0}, Lcei;->j()V

    return-void
.end method

.method static synthetic c(Lcei;)V
    .locals 0

    .line 1426
    invoke-direct {p0}, Lcei;->k()V

    return-void
.end method

.method static synthetic d(Lcei;)Ljava/lang/String;
    .locals 0

    .line 110
    iget-object p0, p0, Lcei;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcei;)Lcem;
    .locals 0

    .line 116
    iget-object p0, p0, Lcei;->i:Lcem;

    return-object p0
.end method

.method static synthetic e()Lcgw;
    .locals 1

    .line 103
    sget-object v0, Lcei;->c:Lcgw;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .line 102
    sget-object v0, Lcei;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcei;)Ljava/util/Timer;
    .locals 0

    .line 118
    iget-object p0, p0, Lcei;->k:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic g()I
    .locals 1

    .line 119
    sget v0, Lcei;->l:I

    return v0
.end method

.method static synthetic h()Ljava/lang/Object;
    .locals 1

    .line 122
    sget-object v0, Lcei;->n:Ljava/lang/Object;

    return-object v0
.end method

.method private i()V
    .locals 7

    .line 1406
    sget-object v0, Lcei;->c:Lcgw;

    sget-object v1, Lcei;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcei;->d:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "attemptReconnect"

    const-string v4, "500"

    invoke-interface {v0, v1, v3, v4, v2}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1408
    :try_start_0
    iget-object v0, p0, Lcei;->i:Lcem;

    iget-object v1, p0, Lcei;->j:Ljava/lang/Object;

    new-instance v2, Lcei$a;

    invoke-direct {v2, p0, v3}, Lcei$a;-><init>(Lcei;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1, v2}, Lcei;->a(Lcem;Ljava/lang/Object;Lced;)Lceh;
    :try_end_0
    .catch Lcet; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lceo; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    .line 1414
    sget-object v1, Lcei;->c:Lcgw;

    sget-object v2, Lcei;->a:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "attemptReconnect"

    const-string v4, "804"

    invoke-interface/range {v1 .. v6}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v6, v0

    .line 1411
    sget-object v1, Lcei;->c:Lcgw;

    sget-object v2, Lcei;->a:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "attemptReconnect"

    const-string v4, "804"

    invoke-interface/range {v1 .. v6}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private j()V
    .locals 6

    .line 1421
    sget-object v0, Lcei;->c:Lcgw;

    sget-object v1, Lcei;->a:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcei;->d:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/Long;

    sget v4, Lcei;->l:I

    int-to-long v4, v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "startReconnectCycle"

    const-string v4, "503"

    invoke-interface {v0, v1, v3, v4, v2}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1422
    new-instance v0, Ljava/util/Timer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MQTT Reconnect: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcei;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcei;->k:Ljava/util/Timer;

    .line 1423
    iget-object v0, p0, Lcei;->k:Ljava/util/Timer;

    new-instance v1, Lcei$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcei$c;-><init>(Lcei;Lcei$c;)V

    sget v2, Lcei;->l:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private k()V
    .locals 5

    .line 1429
    sget-object v0, Lcei;->c:Lcgw;

    sget-object v1, Lcei;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcei;->d:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "stopReconnectCycle"

    const-string v4, "504"

    invoke-interface {v0, v1, v3, v4, v2}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1430
    sget-object v0, Lcei;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 1431
    :try_start_0
    iget-object v1, p0, Lcei;->i:Lcem;

    invoke-virtual {v1}, Lcem;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1432
    iget-object v1, p0, Lcei;->k:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 1433
    iget-object v1, p0, Lcei;->k:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    .line 1434
    iput-object v1, p0, Lcei;->k:Ljava/util/Timer;

    :cond_0
    const/16 v1, 0x3e8

    .line 1436
    sput v1, Lcei;->l:I

    .line 1430
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcep;Ljava/lang/Object;Lced;)Lcef;
    .locals 7

    .line 1343
    sget-object v0, Lcei;->c:Lcgw;

    sget-object v1, Lcei;->a:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p3, v2, v4

    const/4 v5, 0x2

    aput-object p4, v2, v5

    const-string v5, "publish"

    const-string v6, "111"

    invoke-interface {v0, v1, v5, v6, v2}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1346
    invoke-static {p1, v3}, Lcev;->a(Ljava/lang/String;Z)V

    .line 1348
    new-instance v0, Lcen;

    invoke-virtual {p0}, Lcei;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcen;-><init>(Ljava/lang/String;)V

    .line 1349
    invoke-virtual {v0, p4}, Lcen;->a(Lced;)V

    .line 1350
    invoke-virtual {v0, p3}, Lcen;->a(Ljava/lang/Object;)V

    .line 1351
    invoke-virtual {v0, p2}, Lcen;->a(Lcep;)V

    .line 1352
    iget-object p3, v0, Lcen;->a:Lcfn;

    new-array p4, v4, [Ljava/lang/String;

    aput-object p1, p4, v3

    invoke-virtual {p3, p4}, Lcfn;->a([Ljava/lang/String;)V

    .line 1354
    new-instance p3, Lcgm;

    invoke-direct {p3, p1, p2}, Lcgm;-><init>(Ljava/lang/String;Lcep;)V

    .line 1355
    iget-object p1, p0, Lcei;->b:Lcew;

    invoke-virtual {p1, p3, v0}, Lcew;->b(Lcgs;Lceu;)V

    .line 1358
    sget-object p1, Lcei;->c:Lcgw;

    sget-object p2, Lcei;->a:Ljava/lang/String;

    const-string p3, "112"

    invoke-interface {p1, p2, v5, p3}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(JLjava/lang/Object;Lced;)Lceh;
    .locals 6

    .line 818
    sget-object v0, Lcei;->c:Lcgw;

    sget-object v1, Lcei;->a:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p1, p2}, Ljava/lang/Long;-><init>(J)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const-string v3, "disconnect"

    const-string v4, "104"

    invoke-interface {v0, v1, v3, v4, v2}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 820
    new-instance v0, Lceu;

    invoke-virtual {p0}, Lcei;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lceu;-><init>(Ljava/lang/String;)V

    .line 821
    invoke-virtual {v0, p4}, Lceu;->a(Lced;)V

    .line 822
    invoke-virtual {v0, p3}, Lceu;->a(Ljava/lang/Object;)V

    .line 824
    new-instance p3, Lcgc;

    invoke-direct {p3}, Lcgc;-><init>()V

    .line 826
    :try_start_0
    iget-object p4, p0, Lcei;->b:Lcew;

    invoke-virtual {p4, p3, p1, p2, v0}, Lcew;->a(Lcgc;JLceu;)V
    :try_end_0
    .catch Lceo; {:try_start_0 .. :try_end_0} :catch_0

    .line 833
    sget-object p1, Lcei;->c:Lcgw;

    sget-object p2, Lcei;->a:Ljava/lang/String;

    const-string p3, "108"

    invoke-interface {p1, p2, v3, p3}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception p1

    .line 829
    sget-object v0, Lcei;->c:Lcgw;

    sget-object v1, Lcei;->a:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v2, "disconnect"

    const-string v3, "105"

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 830
    throw p1
.end method

.method public a(Lcem;Ljava/lang/Object;Lced;)Lceh;
    .locals 11

    .line 730
    iget-object v0, p0, Lcei;->b:Lcew;

    invoke-virtual {v0}, Lcew;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 733
    iget-object v0, p0, Lcei;->b:Lcew;

    invoke-virtual {v0}, Lcew;->b()Z

    move-result v0

    if-nez v0, :cond_6

    .line 736
    iget-object v0, p0, Lcei;->b:Lcew;

    invoke-virtual {v0}, Lcew;->d()Z

    move-result v0

    if-nez v0, :cond_5

    .line 739
    iget-object v0, p0, Lcei;->b:Lcew;

    invoke-virtual {v0}, Lcew;->e()Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p1, :cond_0

    .line 743
    new-instance p1, Lcem;

    invoke-direct {p1}, Lcem;-><init>()V

    :cond_0
    move-object v4, p1

    .line 745
    iput-object v4, p0, Lcei;->i:Lcem;

    .line 746
    iput-object p2, p0, Lcei;->j:Ljava/lang/Object;

    .line 747
    invoke-virtual {v4}, Lcem;->n()Z

    move-result p1

    .line 751
    sget-object v0, Lcei;->c:Lcgw;

    sget-object v1, Lcei;->a:Ljava/lang/String;

    const/16 v2, 0x8

    .line 752
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcem;->l()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v9, 0x0

    aput-object v3, v2, v9

    const/4 v3, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {v4}, Lcem;->f()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v2, v3

    const/4 v3, 0x2

    .line 753
    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {v4}, Lcem;->c()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v4}, Lcem;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x4

    .line 754
    invoke-virtual {v4}, Lcem;->a()[C

    move-result-object v5

    const-string v6, "[null]"

    const-string v7, "[notnull]"

    if-nez v5, :cond_1

    move-object v5, v6

    goto :goto_0

    :cond_1
    move-object v5, v7

    :goto_0
    aput-object v5, v2, v3

    const/4 v3, 0x5

    .line 755
    invoke-virtual {v4}, Lcem;->i()Lcep;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    move-object v6, v7

    :goto_1
    aput-object v6, v2, v3

    const/4 v3, 0x6

    aput-object p2, v2, v3

    const/4 v3, 0x7

    aput-object p3, v2, v3

    const-string v3, "connect"

    const-string v5, "103"

    .line 751
    invoke-interface {v0, v1, v3, v5, v2}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 756
    iget-object v0, p0, Lcei;->b:Lcew;

    iget-object v1, p0, Lcei;->e:Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lcei;->a(Ljava/lang/String;Lcem;)[Lcfj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcew;->a([Lcfj;)V

    .line 757
    iget-object v0, p0, Lcei;->b:Lcew;

    new-instance v1, Lcei$b;

    invoke-direct {v1, p0, p1}, Lcei$b;-><init>(Lcei;Z)V

    invoke-virtual {v0, v1}, Lcew;->a(Lcek;)V

    .line 761
    new-instance p1, Lceu;

    invoke-virtual {p0}, Lcei;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lceu;-><init>(Ljava/lang/String;)V

    .line 762
    new-instance v10, Lcfc;

    iget-object v2, p0, Lcei;->g:Lcel;

    iget-object v3, p0, Lcei;->b:Lcew;

    .line 763
    iget-boolean v8, p0, Lcei;->m:Z

    move-object v0, v10

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    .line 762
    invoke-direct/range {v0 .. v8}, Lcfc;-><init>(Lcei;Lcel;Lcew;Lcem;Lceu;Ljava/lang/Object;Lced;Z)V

    .line 764
    invoke-virtual {p1, v10}, Lceu;->a(Lced;)V

    .line 765
    invoke-virtual {p1, p0}, Lceu;->a(Ljava/lang/Object;)V

    .line 769
    iget-object p2, p0, Lcei;->h:Lcej;

    instance-of p3, p2, Lcek;

    if-eqz p3, :cond_3

    .line 770
    check-cast p2, Lcek;

    invoke-virtual {v10, p2}, Lcfc;->a(Lcek;)V

    .line 773
    :cond_3
    iget-object p2, p0, Lcei;->b:Lcew;

    invoke-virtual {p2, v9}, Lcew;->a(I)V

    .line 774
    invoke-virtual {v10}, Lcfc;->a()V

    return-object p1

    .line 740
    :cond_4
    new-instance p1, Lceo;

    const/16 p2, 0x7d6f

    invoke-direct {p1, p2}, Lceo;-><init>(I)V

    throw p1

    .line 737
    :cond_5
    new-instance p1, Lceo;

    const/16 p2, 0x7d66

    invoke-direct {p1, p2}, Lceo;-><init>(I)V

    throw p1

    .line 734
    :cond_6
    new-instance p1, Lceo;

    const/16 p2, 0x7d6e

    invoke-direct {p1, p2}, Lceo;-><init>(I)V

    throw p1

    :cond_7
    const/16 p1, 0x7d64

    .line 731
    invoke-static {p1}, Lcfe;->a(I)Lceo;

    move-result-object p1

    throw p1
.end method

.method public a(Ljava/lang/Object;Lced;)Lceh;
    .locals 2

    const-wide/16 v0, 0x7530

    .line 787
    invoke-virtual {p0, v0, v1, p1, p2}, Lcei;->a(JLjava/lang/Object;Lced;)Lceh;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;ILjava/lang/Object;Lced;)Lceh;
    .locals 3

    const/4 v0, 0x1

    .line 1025
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-array p1, v0, [I

    aput p2, p1, v2

    invoke-virtual {p0, v1, p1, p3, p4}, Lcei;->a([Ljava/lang/String;[ILjava/lang/Object;Lced;)Lceh;

    move-result-object p1

    return-object p1
.end method

.method public a([Ljava/lang/String;[ILjava/lang/Object;Lced;)Lceh;
    .locals 7

    .line 1059
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    move v1, v0

    .line 1064
    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_3

    .line 1069
    sget-object v1, Lcei;->c:Lcgw;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Lcgw;->isLoggable(I)Z

    move-result v1

    const-string v2, "subscribe"

    if-eqz v1, :cond_2

    .line 1070
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    move v3, v0

    .line 1071
    :goto_1
    array-length v4, p1

    const/4 v5, 0x1

    if-lt v3, v4, :cond_0

    .line 1081
    sget-object v3, Lcei;->c:Lcgw;

    sget-object v4, Lcei;->a:Ljava/lang/String;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    aput-object p3, v6, v5

    const/4 v0, 0x2

    aput-object p4, v6, v0

    const-string v0, "106"

    invoke-interface {v3, v4, v2, v0, v6}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    if-lez v3, :cond_1

    const-string v4, ", "

    .line 1073
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v4, "topic="

    .line 1075
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v4, p1, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " qos="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget v4, p2, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1078
    aget-object v4, p1, v3

    invoke-static {v4, v5}, Lcev;->a(Ljava/lang/String;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1084
    :cond_2
    :goto_2
    new-instance v0, Lceu;

    invoke-virtual {p0}, Lcei;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lceu;-><init>(Ljava/lang/String;)V

    .line 1085
    invoke-virtual {v0, p4}, Lceu;->a(Lced;)V

    .line 1086
    invoke-virtual {v0, p3}, Lceu;->a(Ljava/lang/Object;)V

    .line 1087
    iget-object p3, v0, Lceu;->a:Lcfn;

    invoke-virtual {p3, p1}, Lcfn;->a([Ljava/lang/String;)V

    .line 1089
    new-instance p3, Lcgp;

    invoke-direct {p3, p1, p2}, Lcgp;-><init>([Ljava/lang/String;[I)V

    .line 1091
    iget-object p1, p0, Lcei;->b:Lcew;

    invoke-virtual {p1, p3, v0}, Lcew;->b(Lcgs;Lceu;)V

    .line 1093
    sget-object p1, Lcei;->c:Lcgw;

    sget-object p2, Lcei;->a:Ljava/lang/String;

    const-string p3, "109"

    invoke-interface {p1, p2, v2, p3}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1065
    :cond_3
    iget-object v2, p0, Lcei;->b:Lcew;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Lcew;->a(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1060
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public a(JJZ)V
    .locals 6

    .line 889
    iget-object v0, p0, Lcei;->b:Lcew;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcew;->a(JJZ)V

    return-void
.end method

.method public a(Lcec;)V
    .locals 2

    .line 1532
    iget-object v0, p0, Lcei;->b:Lcew;

    new-instance v1, Lcfd;

    invoke-direct {v1, p1}, Lcfd;-><init>(Lcec;)V

    invoke-virtual {v0, v1}, Lcew;->a(Lcfd;)V

    return-void
.end method

.method public a(Lcej;)V
    .locals 1

    .line 1246
    iput-object p1, p0, Lcei;->h:Lcej;

    .line 1247
    iget-object v0, p0, Lcei;->b:Lcew;

    invoke-virtual {v0, p1}, Lcew;->a(Lcej;)V

    return-void
.end method

.method public a(Z)V
    .locals 4

    .line 1594
    sget-object v0, Lcei;->c:Lcgw;

    sget-object v1, Lcei;->a:Ljava/lang/String;

    const-string v2, "close"

    const-string v3, "113"

    invoke-interface {v0, v1, v2, v3}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    iget-object v0, p0, Lcei;->b:Lcew;

    invoke-virtual {v0, p1}, Lcew;->a(Z)V

    .line 1597
    sget-object p1, Lcei;->c:Lcgw;

    sget-object v0, Lcei;->a:Ljava/lang/String;

    const-string v1, "114"

    invoke-interface {p1, v0, v2, v1}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 898
    iget-object v0, p0, Lcei;->b:Lcew;

    invoke-virtual {v0}, Lcew;->a()Z

    move-result v0

    return v0
.end method

.method protected a(Ljava/lang/String;Lcem;)[Lcfj;
    .locals 7

    .line 515
    sget-object v0, Lcei;->c:Lcgw;

    sget-object v1, Lcei;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string v5, "createNetworkModules"

    const-string v6, "116"

    invoke-interface {v0, v1, v5, v6, v3}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 518
    invoke-virtual {p2}, Lcem;->m()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 521
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v4

    goto :goto_0

    .line 522
    :cond_0
    array-length v1, v0

    if-nez v1, :cond_1

    .line 523
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v4

    .line 528
    :cond_1
    :goto_0
    array-length p1, v0

    new-array p1, p1, [Lcfj;

    .line 529
    :goto_1
    array-length v1, v0

    if-lt v4, v1, :cond_2

    .line 533
    sget-object p2, Lcei;->c:Lcgw;

    sget-object v0, Lcei;->a:Ljava/lang/String;

    const-string v1, "108"

    invoke-interface {p2, v0, v5, v1}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 530
    :cond_2
    aget-object v1, v0, v4

    invoke-direct {p0, v1, p2}, Lcei;->b(Ljava/lang/String;Lcem;)Lcfj;

    move-result-object v1

    aput-object v1, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 907
    iget-object v0, p0, Lcei;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 916
    iget-object v0, p0, Lcei;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()V
    .locals 5

    .line 1372
    sget-object v0, Lcei;->c:Lcgw;

    sget-object v1, Lcei;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcei;->d:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "reconnect"

    const-string v4, "500"

    invoke-interface {v0, v1, v3, v4, v2}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1375
    iget-object v0, p0, Lcei;->b:Lcew;

    invoke-virtual {v0}, Lcew;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1378
    iget-object v0, p0, Lcei;->b:Lcew;

    invoke-virtual {v0}, Lcew;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1381
    iget-object v0, p0, Lcei;->b:Lcew;

    invoke-virtual {v0}, Lcew;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1384
    iget-object v0, p0, Lcei;->b:Lcew;

    invoke-virtual {v0}, Lcew;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1388
    invoke-direct {p0}, Lcei;->k()V

    .line 1390
    invoke-direct {p0}, Lcei;->i()V

    return-void

    .line 1385
    :cond_0
    new-instance v0, Lceo;

    const/16 v1, 0x7d6f

    invoke-direct {v0, v1}, Lceo;-><init>(I)V

    throw v0

    .line 1382
    :cond_1
    new-instance v0, Lceo;

    const/16 v1, 0x7d66

    invoke-direct {v0, v1}, Lceo;-><init>(I)V

    throw v0

    .line 1379
    :cond_2
    new-instance v0, Lceo;

    const/16 v1, 0x7d6e

    invoke-direct {v0, v1}, Lceo;-><init>(I)V

    throw v0

    :cond_3
    const/16 v0, 0x7d64

    .line 1376
    invoke-static {v0}, Lcfe;->a(I)Lceo;

    move-result-object v0

    throw v0
.end method
