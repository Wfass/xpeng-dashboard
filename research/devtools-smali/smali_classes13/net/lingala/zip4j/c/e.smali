.class public Lnet/lingala/zip4j/c/e;
.super Lnet/lingala/zip4j/c/a;
.source "AddFolderToZipTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lingala/zip4j/c/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/lingala/zip4j/c/a<",
        "Lnet/lingala/zip4j/c/e$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/model/p;[CLnet/lingala/zip4j/headers/d;Lnet/lingala/zip4j/c/f$a;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/lingala/zip4j/c/a;-><init>(Lnet/lingala/zip4j/model/p;[CLnet/lingala/zip4j/headers/d;Lnet/lingala/zip4j/c/f$a;)V

    .line 21
    return-void
.end method

.method private b(Lnet/lingala/zip4j/c/e$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-static {p1}, Lnet/lingala/zip4j/c/e$a;->e(Lnet/lingala/zip4j/c/e$a;)Ljava/io/File;

    move-result-object v0

    .line 48
    invoke-static {p1}, Lnet/lingala/zip4j/c/e$a;->d(Lnet/lingala/zip4j/c/e$a;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipParameters;->tL()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 50
    if-nez v1, :cond_0

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 55
    :goto_0
    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_1
    invoke-static {p1}, Lnet/lingala/zip4j/c/e$a;->d(Lnet/lingala/zip4j/c/e$a;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object p1

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipParameters;->fu(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method private c(Lnet/lingala/zip4j/c/e$a;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/lingala/zip4j/c/e$a;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 63
    invoke-static {p1}, Lnet/lingala/zip4j/c/e$a;->e(Lnet/lingala/zip4j/c/e$a;)Ljava/io/File;

    move-result-object v0

    .line 64
    invoke-static {p1}, Lnet/lingala/zip4j/c/e$a;->d(Lnet/lingala/zip4j/c/e$a;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipParameters;->tJ()Z

    move-result v1

    .line 65
    invoke-static {p1}, Lnet/lingala/zip4j/c/e$a;->d(Lnet/lingala/zip4j/c/e$a;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipParameters;->tK()Z

    move-result v2

    .line 66
    invoke-static {p1}, Lnet/lingala/zip4j/c/e$a;->d(Lnet/lingala/zip4j/c/e$a;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipParameters;->tV()Lnet/lingala/zip4j/model/g;

    move-result-object v3

    .line 63
    invoke-static {v0, v1, v2, v3}, Lnet/lingala/zip4j/d/c;->a(Ljava/io/File;ZZLnet/lingala/zip4j/model/g;)Ljava/util/List;

    move-result-object v0

    .line 68
    invoke-static {p1}, Lnet/lingala/zip4j/c/e$a;->d(Lnet/lingala/zip4j/c/e$a;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipParameters;->tL()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-static {p1}, Lnet/lingala/zip4j/c/e$a;->e(Lnet/lingala/zip4j/c/e$a;)Ljava/io/File;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected a(Lnet/lingala/zip4j/c/e$a;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 33
    invoke-static {p1}, Lnet/lingala/zip4j/c/e$a;->e(Lnet/lingala/zip4j/c/e$a;)Ljava/io/File;

    move-result-object v0

    .line 34
    invoke-static {p1}, Lnet/lingala/zip4j/c/e$a;->d(Lnet/lingala/zip4j/c/e$a;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipParameters;->tJ()Z

    move-result v1

    .line 35
    invoke-static {p1}, Lnet/lingala/zip4j/c/e$a;->d(Lnet/lingala/zip4j/c/e$a;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipParameters;->tK()Z

    move-result v2

    .line 36
    invoke-static {p1}, Lnet/lingala/zip4j/c/e$a;->d(Lnet/lingala/zip4j/c/e$a;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipParameters;->tV()Lnet/lingala/zip4j/model/g;

    move-result-object v3

    .line 33
    invoke-static {v0, v1, v2, v3}, Lnet/lingala/zip4j/d/c;->a(Ljava/io/File;ZZLnet/lingala/zip4j/model/g;)Ljava/util/List;

    move-result-object v0

    .line 38
    invoke-static {p1}, Lnet/lingala/zip4j/c/e$a;->d(Lnet/lingala/zip4j/c/e$a;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipParameters;->tL()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-static {p1}, Lnet/lingala/zip4j/c/e$a;->e(Lnet/lingala/zip4j/c/e$a;)Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_0
    invoke-static {p1}, Lnet/lingala/zip4j/c/e$a;->d(Lnet/lingala/zip4j/c/e$a;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lnet/lingala/zip4j/c/e;->b(Ljava/util/List;Lnet/lingala/zip4j/model/ZipParameters;)J

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

    .line 17
    check-cast p1, Lnet/lingala/zip4j/c/e$a;

    invoke-virtual {p0, p1, p2}, Lnet/lingala/zip4j/c/e;->a(Lnet/lingala/zip4j/c/e$a;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    return-void
.end method

.method protected a(Lnet/lingala/zip4j/c/e$a;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/c/e;->c(Lnet/lingala/zip4j/c/e$a;)Ljava/util/List;

    move-result-object v0

    .line 27
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/c/e;->b(Lnet/lingala/zip4j/c/e$a;)V

    .line 28
    invoke-static {p1}, Lnet/lingala/zip4j/c/e$a;->d(Lnet/lingala/zip4j/c/e$a;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v1

    iget-object p1, p1, Lnet/lingala/zip4j/c/e$a;->anb:Lnet/lingala/zip4j/model/k;

    invoke-virtual {p0, v0, p2, v1, p1}, Lnet/lingala/zip4j/c/e;->a(Ljava/util/List;Lnet/lingala/zip4j/progress/ProgressMonitor;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/model/k;)V

    .line 29
    return-void
.end method

.method protected synthetic q(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 17
    check-cast p1, Lnet/lingala/zip4j/c/e$a;

    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/c/e;->a(Lnet/lingala/zip4j/c/e$a;)J

    move-result-wide v0

    return-wide v0
.end method
