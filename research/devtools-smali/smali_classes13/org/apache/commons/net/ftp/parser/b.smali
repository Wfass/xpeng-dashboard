.class public abstract Lorg/apache/commons/net/ftp/parser/b;
.super Lorg/apache/commons/net/ftp/parser/m;
.source "ConfigurableFTPFileEntryParserImpl.java"

# interfaces
.implements Lorg/apache/commons/net/ftp/a;


# instance fields
.field private final asV:Lorg/apache/commons/net/ftp/parser/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lorg/apache/commons/net/ftp/parser/m;-><init>(Ljava/lang/String;)V

    .line 56
    new-instance p1, Lorg/apache/commons/net/ftp/parser/f;

    invoke-direct {p1}, Lorg/apache/commons/net/ftp/parser/f;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/net/ftp/parser/b;->asV:Lorg/apache/commons/net/ftp/parser/e;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/ftp/parser/m;-><init>(Ljava/lang/String;I)V

    .line 70
    new-instance p1, Lorg/apache/commons/net/ftp/parser/f;

    invoke-direct {p1}, Lorg/apache/commons/net/ftp/parser/f;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/net/ftp/parser/b;->asV:Lorg/apache/commons/net/ftp/parser/e;

    .line 71
    return-void
.end method


# virtual methods
.method public a(Lorg/apache/commons/net/ftp/d;)V
    .locals 2

    .line 104
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/b;->asV:Lorg/apache/commons/net/ftp/parser/e;

    instance-of v0, v0, Lorg/apache/commons/net/ftp/a;

    if-eqz v0, :cond_3

    .line 105
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/parser/b;->vb()Lorg/apache/commons/net/ftp/d;

    move-result-object v0

    .line 106
    if-eqz p1, :cond_2

    .line 107
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/d;->uR()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 108
    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/d;->uR()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/commons/net/ftp/d;->fP(Ljava/lang/String;)V

    .line 110
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/d;->uS()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 111
    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/d;->uS()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/net/ftp/d;->fQ(Ljava/lang/String;)V

    .line 113
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/b;->asV:Lorg/apache/commons/net/ftp/parser/e;

    check-cast v0, Lorg/apache/commons/net/ftp/a;

    invoke-interface {v0, p1}, Lorg/apache/commons/net/ftp/a;->a(Lorg/apache/commons/net/ftp/d;)V

    goto :goto_0

    .line 115
    :cond_2
    iget-object p1, p0, Lorg/apache/commons/net/ftp/parser/b;->asV:Lorg/apache/commons/net/ftp/parser/e;

    check-cast p1, Lorg/apache/commons/net/ftp/a;

    invoke-interface {p1, v0}, Lorg/apache/commons/net/ftp/a;->a(Lorg/apache/commons/net/ftp/d;)V

    .line 118
    :cond_3
    :goto_0
    return-void
.end method

.method public fY(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/b;->asV:Lorg/apache/commons/net/ftp/parser/e;

    invoke-interface {v0, p1}, Lorg/apache/commons/net/ftp/parser/e;->fY(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method protected abstract vb()Lorg/apache/commons/net/ftp/d;
.end method
