.class public Lorg/apache/commons/net/ftp/parser/a;
.super Lorg/apache/commons/net/ftp/f;
.source "CompositeFileEntryParser.java"


# instance fields
.field private final asT:[Lorg/apache/commons/net/ftp/e;

.field private asU:Lorg/apache/commons/net/ftp/e;


# direct methods
.method public constructor <init>([Lorg/apache/commons/net/ftp/e;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/f;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/a;->asU:Lorg/apache/commons/net/ftp/e;

    .line 41
    iput-object p1, p0, Lorg/apache/commons/net/ftp/parser/a;->asT:[Lorg/apache/commons/net/ftp/e;

    .line 42
    return-void
.end method


# virtual methods
.method public fX(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 5

    .line 47
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/a;->asU:Lorg/apache/commons/net/ftp/e;

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/a;->asU:Lorg/apache/commons/net/ftp/e;

    invoke-interface {v0, p1}, Lorg/apache/commons/net/ftp/e;->fX(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object p1

    .line 50
    if-eqz p1, :cond_0

    .line 52
    return-object p1

    .line 54
    :cond_0
    goto :goto_1

    .line 57
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/a;->asT:[Lorg/apache/commons/net/ftp/e;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 59
    invoke-interface {v3, p1}, Lorg/apache/commons/net/ftp/e;->fX(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v4

    .line 60
    if-eqz v4, :cond_2

    .line 62
    iput-object v3, p0, Lorg/apache/commons/net/ftp/parser/a;->asU:Lorg/apache/commons/net/ftp/e;

    .line 63
    return-object v4

    .line 57
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
