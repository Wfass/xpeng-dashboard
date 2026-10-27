.class public Lorg/apache/commons/net/ftp/i;
.super Ljava/lang/Object;
.source "FTPListParseEngine.java"


# instance fields
.field private final aro:Z

.field private asQ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private asR:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final asS:Lorg/apache/commons/net/ftp/e;


# direct methods
.method constructor <init>(Lorg/apache/commons/net/ftp/e;Lorg/apache/commons/net/ftp/d;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/i;->asQ:Ljava/util/List;

    .line 80
    iget-object v0, p0, Lorg/apache/commons/net/ftp/i;->asQ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/i;->asR:Ljava/util/ListIterator;

    .line 95
    iput-object p1, p0, Lorg/apache/commons/net/ftp/i;->asS:Lorg/apache/commons/net/ftp/e;

    .line 96
    if-eqz p2, :cond_0

    .line 97
    invoke-virtual {p2}, Lorg/apache/commons/net/ftp/d;->uX()Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/i;->aro:Z

    goto :goto_0

    .line 99
    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/i;->aro:Z

    .line 101
    :goto_0
    return-void
.end method

.method private c(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-static {p2}, Lorg/apache/commons/net/util/a;->gc(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 143
    iget-object p1, p0, Lorg/apache/commons/net/ftp/i;->asS:Lorg/apache/commons/net/ftp/e;

    invoke-interface {p1, v0}, Lorg/apache/commons/net/ftp/e;->a(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object p1

    .line 145
    :goto_0
    if-eqz p1, :cond_0

    .line 147
    iget-object p2, p0, Lorg/apache/commons/net/ftp/i;->asQ:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object p1, p0, Lorg/apache/commons/net/ftp/i;->asS:Lorg/apache/commons/net/ftp/e;

    invoke-interface {p1, v0}, Lorg/apache/commons/net/ftp/e;->a(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 151
    return-void
.end method


# virtual methods
.method public a(Lorg/apache/commons/net/ftp/g;)[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    iget-object v1, p0, Lorg/apache/commons/net/ftp/i;->asQ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 271
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 272
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 273
    iget-object v3, p0, Lorg/apache/commons/net/ftp/i;->asS:Lorg/apache/commons/net/ftp/e;

    invoke-interface {v3, v2}, Lorg/apache/commons/net/ftp/e;->fX(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v3

    .line 274
    if-nez v3, :cond_0

    iget-boolean v4, p0, Lorg/apache/commons/net/ftp/i;->aro:Z

    if-eqz v4, :cond_0

    .line 275
    new-instance v3, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v3, v2}, Lorg/apache/commons/net/ftp/FTPFile;-><init>(Ljava/lang/String;)V

    .line 277
    :cond_0
    invoke-interface {p1, v3}, Lorg/apache/commons/net/ftp/g;->a(Lorg/apache/commons/net/ftp/FTPFile;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 278
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_1
    goto :goto_0

    .line 281
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lorg/apache/commons/net/ftp/FTPFile;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/commons/net/ftp/FTPFile;

    return-object p1
.end method

.method public b(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/i;->asQ:Ljava/util/List;

    .line 119
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/ftp/i;->c(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Lorg/apache/commons/net/ftp/i;->asS:Lorg/apache/commons/net/ftp/e;

    iget-object p2, p0, Lorg/apache/commons/net/ftp/i;->asQ:Ljava/util/List;

    invoke-interface {p1, p2}, Lorg/apache/commons/net/ftp/e;->G(Ljava/util/List;)Ljava/util/List;

    .line 121
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/i;->va()V

    .line 122
    return-void
.end method

.method public uZ()[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    sget-object v0, Lorg/apache/commons/net/ftp/h;->asO:Lorg/apache/commons/net/ftp/g;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/i;->a(Lorg/apache/commons/net/ftp/g;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    return-object v0
.end method

.method public va()V
    .locals 1

    .line 311
    iget-object v0, p0, Lorg/apache/commons/net/ftp/i;->asQ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/i;->asR:Ljava/util/ListIterator;

    .line 312
    return-void
.end method
