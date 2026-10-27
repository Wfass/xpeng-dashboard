.class public Lcem;
.super Ljava/lang/Object;
.source "MqttConnectOptions.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Lcep;

.field private e:Ljava/lang/String;

.field private f:[C

.field private g:Ljavax/net/SocketFactory;

.field private h:Ljava/util/Properties;

.field private i:Ljavax/net/ssl/HostnameVerifier;

.field private j:Z

.field private k:I

.field private l:[Ljava/lang/String;

.field private m:I

.field private n:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    .line 69
    iput v0, p0, Lcem;->a:I

    const/16 v0, 0xa

    .line 70
    iput v0, p0, Lcem;->b:I

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcem;->c:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcem;->d:Lcep;

    .line 76
    iput-object v0, p0, Lcem;->h:Ljava/util/Properties;

    .line 77
    iput-object v0, p0, Lcem;->i:Ljavax/net/ssl/HostnameVerifier;

    const/4 v1, 0x1

    .line 78
    iput-boolean v1, p0, Lcem;->j:Z

    const/16 v1, 0x1e

    .line 79
    iput v1, p0, Lcem;->k:I

    .line 80
    iput-object v0, p0, Lcem;->l:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcem;->m:I

    .line 82
    iput-boolean v0, p0, Lcem;->n:Z

    return-void
.end method

.method public static b(Ljava/lang/String;)I
    .locals 3

    .line 528
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const-string v1, "ws"

    .line 529
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const-string v1, "wss"

    .line 532
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x4

    return p0

    .line 536
    :cond_1
    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 540
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    const-string v1, "tcp"

    .line 542
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    const-string v1, "ssl"

    .line 545
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    const-string v1, "local"

    .line 548
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x2

    return p0

    .line 552
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 262
    iput p1, p0, Lcem;->b:I

    return-void

    .line 260
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 133
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 136
    :cond_1
    :goto_0
    iput-object p1, p0, Lcem;->e:Ljava/lang/String;

    return-void
.end method

.method public a(Ljavax/net/SocketFactory;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcem;->g:Ljavax/net/SocketFactory;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 463
    iput-boolean p1, p0, Lcem;->j:Z

    return-void
.end method

.method public a([C)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcem;->f:[C

    return-void
.end method

.method public a()[C
    .locals 1

    .line 107
    iget-object v0, p0, Lcem;->f:[C

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcem;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 287
    iput p1, p0, Lcem;->k:I

    return-void

    .line 285
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public b(Z)V
    .locals 0

    .line 601
    iput-boolean p1, p0, Lcem;->n:Z

    return-void
.end method

.method public c()I
    .locals 1

    .line 207
    iget v0, p0, Lcem;->a:I

    return v0
.end method

.method public c(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 573
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 575
    :cond_1
    :goto_0
    iput p1, p0, Lcem;->m:I

    return-void
.end method

.method public d()I
    .locals 1

    .line 216
    iget v0, p0, Lcem;->m:I

    return v0
.end method

.method public e()I
    .locals 1

    .line 249
    iget v0, p0, Lcem;->b:I

    return v0
.end method

.method public f()I
    .locals 1

    .line 271
    iget v0, p0, Lcem;->k:I

    return v0
.end method

.method public g()Ljavax/net/SocketFactory;
    .locals 1

    .line 296
    iget-object v0, p0, Lcem;->g:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 316
    iget-object v0, p0, Lcem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public i()Lcep;
    .locals 1

    .line 327
    iget-object v0, p0, Lcem;->d:Lcep;

    return-object v0
.end method

.method public j()Ljava/util/Properties;
    .locals 1

    .line 335
    iget-object v0, p0, Lcem;->h:Ljava/util/Properties;

    return-object v0
.end method

.method public k()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 418
    iget-object v0, p0, Lcem;->i:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public l()Z
    .locals 1

    .line 439
    iget-boolean v0, p0, Lcem;->j:Z

    return v0
.end method

.method public m()[Ljava/lang/String;
    .locals 1

    .line 471
    iget-object v0, p0, Lcem;->l:[Ljava/lang/String;

    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 584
    iget-boolean v0, p0, Lcem;->n:Z

    return v0
.end method

.method public o()Ljava/util/Properties;
    .locals 4

    .line 610
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 611
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcem;->d()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "MqttVersion"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    invoke-virtual {p0}, Lcem;->l()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "CleanSession"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcem;->f()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "ConTimeout"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcem;->c()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "KeepAliveInterval"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    invoke-virtual {p0}, Lcem;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcem;->b()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v3, "UserName"

    invoke-virtual {v0, v3, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    invoke-virtual {p0}, Lcem;->h()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcem;->h()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v3, "WillDestination"

    invoke-virtual {v0, v3, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    invoke-virtual {p0}, Lcem;->g()Ljavax/net/SocketFactory;

    move-result-object v1

    const-string v3, "SocketFactory"

    if-nez v1, :cond_2

    .line 618
    invoke-virtual {v0, v3, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 620
    :cond_2
    invoke-virtual {p0}, Lcem;->g()Ljavax/net/SocketFactory;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    :goto_2
    invoke-virtual {p0}, Lcem;->j()Ljava/util/Properties;

    move-result-object v1

    const-string v3, "SSLProperties"

    if-nez v1, :cond_3

    .line 623
    invoke-virtual {v0, v3, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 625
    :cond_3
    invoke-virtual {p0}, Lcem;->j()Ljava/util/Properties;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 631
    invoke-virtual {p0}, Lcem;->o()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "Connection options"

    invoke-static {v0, v1}, Lchc;->a(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
