.class public Lnet/lingala/zip4j/c/d;
.super Lnet/lingala/zip4j/c/a;
.source "AddFilesToZipTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lingala/zip4j/c/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/lingala/zip4j/c/a<",
        "Lnet/lingala/zip4j/c/d$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/model/p;[CLnet/lingala/zip4j/headers/d;Lnet/lingala/zip4j/c/f$a;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/lingala/zip4j/c/a;-><init>(Lnet/lingala/zip4j/model/p;[CLnet/lingala/zip4j/headers/d;Lnet/lingala/zip4j/c/f$a;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected a(Lnet/lingala/zip4j/c/d$a;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 32
    invoke-static {p1}, Lnet/lingala/zip4j/c/d$a;->c(Lnet/lingala/zip4j/c/d$a;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lnet/lingala/zip4j/c/d$a;->b(Lnet/lingala/zip4j/c/d$a;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lnet/lingala/zip4j/c/d;->b(Ljava/util/List;Lnet/lingala/zip4j/model/ZipParameters;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    check-cast p1, Lnet/lingala/zip4j/c/d$a;

    invoke-virtual {p0, p1, p2}, Lnet/lingala/zip4j/c/d;->a(Lnet/lingala/zip4j/c/d$a;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    return-void
.end method

.method protected a(Lnet/lingala/zip4j/c/d$a;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-static {p1}, Lnet/lingala/zip4j/c/d$a;->b(Lnet/lingala/zip4j/c/d$a;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/c/d;->e(Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 27
    invoke-static {p1}, Lnet/lingala/zip4j/c/d$a;->c(Lnet/lingala/zip4j/c/d$a;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lnet/lingala/zip4j/c/d$a;->b(Lnet/lingala/zip4j/c/d$a;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v1

    iget-object p1, p1, Lnet/lingala/zip4j/c/d$a;->anb:Lnet/lingala/zip4j/model/k;

    invoke-virtual {p0, v0, p2, v1, p1}, Lnet/lingala/zip4j/c/d;->a(Ljava/util/List;Lnet/lingala/zip4j/progress/ProgressMonitor;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/model/k;)V

    .line 28
    return-void
.end method

.method protected synthetic q(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 15
    check-cast p1, Lnet/lingala/zip4j/c/d$a;

    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/c/d;->a(Lnet/lingala/zip4j/c/d$a;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected uc()Lnet/lingala/zip4j/progress/ProgressMonitor$Task;
    .locals 1

    .line 37
    invoke-super {p0}, Lnet/lingala/zip4j/c/a;->uc()Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    move-result-object v0

    return-object v0
.end method
