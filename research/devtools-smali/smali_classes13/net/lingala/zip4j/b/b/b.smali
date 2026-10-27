.class abstract Lnet/lingala/zip4j/b/b/b;
.super Ljava/io/OutputStream;
.source "CipherOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lnet/lingala/zip4j/a/c;",
        ">",
        "Ljava/io/OutputStream;"
    }
.end annotation


# instance fields
.field private amJ:Lnet/lingala/zip4j/b/b/j;

.field private amK:Lnet/lingala/zip4j/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/b/b/j;Lnet/lingala/zip4j/model/ZipParameters;[C)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 33
    iput-object p1, p0, Lnet/lingala/zip4j/b/b/b;->amJ:Lnet/lingala/zip4j/b/b/j;

    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lnet/lingala/zip4j/b/b/b;->b(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipParameters;[C)Lnet/lingala/zip4j/a/c;

    move-result-object p1

    iput-object p1, p0, Lnet/lingala/zip4j/b/b/b;->amK:Lnet/lingala/zip4j/a/c;

    .line 35
    return-void
.end method


# virtual methods
.method public L([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/b;->amJ:Lnet/lingala/zip4j/b/b/j;

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/b/b/j;->write([B)V

    .line 55
    return-void
.end method

.method protected abstract b(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipParameters;[C)Lnet/lingala/zip4j/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Lnet/lingala/zip4j/model/ZipParameters;",
            "[C)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/b;->amJ:Lnet/lingala/zip4j/b/b/j;

    invoke-virtual {v0}, Lnet/lingala/zip4j/b/b/j;->close()V

    .line 64
    return-void
.end method

.method public closeEntry()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/b;->amJ:Lnet/lingala/zip4j/b/b/j;

    invoke-virtual {v0}, Lnet/lingala/zip4j/b/b/j;->closeEntry()V

    .line 59
    return-void
.end method

.method public sx()J
    .locals 2

    .line 67
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/b;->amJ:Lnet/lingala/zip4j/b/b/j;

    invoke-virtual {v0}, Lnet/lingala/zip4j/b/b/j;->sx()J

    move-result-wide v0

    return-wide v0
.end method

.method protected sy()Lnet/lingala/zip4j/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/b;->amK:Lnet/lingala/zip4j/a/c;

    return-object v0
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/b;->amJ:Lnet/lingala/zip4j/b/b/j;

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/b/b/j;->write(I)V

    .line 40
    return-void
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/b;->amJ:Lnet/lingala/zip4j/b/b/j;

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/b/b/j;->write([B)V

    .line 45
    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/b;->amK:Lnet/lingala/zip4j/a/c;

    invoke-interface {v0, p1, p2, p3}, Lnet/lingala/zip4j/a/c;->d([BII)I

    .line 50
    iget-object v0, p0, Lnet/lingala/zip4j/b/b/b;->amJ:Lnet/lingala/zip4j/b/b/j;

    invoke-virtual {v0, p1, p2, p3}, Lnet/lingala/zip4j/b/b/j;->write([BII)V

    .line 51
    return-void
.end method
