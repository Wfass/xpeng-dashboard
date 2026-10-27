.class Lnet/lingala/zip4j/b/b/f;
.super Lnet/lingala/zip4j/b/b/b;
.source "NoCipherOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lingala/zip4j/b/b/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/lingala/zip4j/b/b/b<",
        "Lnet/lingala/zip4j/b/b/f$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/b/b/j;Lnet/lingala/zip4j/model/ZipParameters;[C)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/b/b/b;-><init>(Lnet/lingala/zip4j/b/b/j;Lnet/lingala/zip4j/model/ZipParameters;[C)V

    .line 14
    return-void
.end method


# virtual methods
.method protected synthetic b(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipParameters;[C)Lnet/lingala/zip4j/a/c;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lnet/lingala/zip4j/b/b/f;->c(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipParameters;[C)Lnet/lingala/zip4j/b/b/f$a;

    move-result-object p1

    return-object p1
.end method

.method protected c(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipParameters;[C)Lnet/lingala/zip4j/b/b/f$a;
    .locals 0

    .line 18
    new-instance p1, Lnet/lingala/zip4j/b/b/f$a;

    invoke-direct {p1}, Lnet/lingala/zip4j/b/b/f$a;-><init>()V

    return-object p1
.end method
