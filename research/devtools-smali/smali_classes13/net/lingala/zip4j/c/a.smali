.class public abstract Lnet/lingala/zip4j/c/a;
.super Lnet/lingala/zip4j/c/f;
.source "AbstractAddFileToZipTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/lingala/zip4j/c/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final alm:Lnet/lingala/zip4j/model/p;

.field private final alp:[C

.field private final alq:Lnet/lingala/zip4j/headers/d;


# direct methods
.method constructor <init>(Lnet/lingala/zip4j/model/p;[CLnet/lingala/zip4j/headers/d;Lnet/lingala/zip4j/c/f$a;)V
    .locals 0

    .line 52
    invoke-direct {p0, p4}, Lnet/lingala/zip4j/c/f;-><init>(Lnet/lingala/zip4j/c/f$a;)V

    .line 53
    iput-object p1, p0, Lnet/lingala/zip4j/c/a;->alm:Lnet/lingala/zip4j/model/p;

    .line 54
    iput-object p2, p0, Lnet/lingala/zip4j/c/a;->alp:[C

    .line 55
    iput-object p3, p0, Lnet/lingala/zip4j/c/a;->alq:Lnet/lingala/zip4j/headers/d;

    .line 57
    return-void
.end method

.method private a(Ljava/util/List;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Lnet/lingala/zip4j/model/k;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Lnet/lingala/zip4j/model/ZipParameters;",
            "Lnet/lingala/zip4j/progress/ProgressMonitor;",
            "Lnet/lingala/zip4j/model/k;",
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

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 243
    iget-object v1, p0, Lnet/lingala/zip4j/c/a;->alm:Lnet/lingala/zip4j/model/p;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/p;->tD()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    return-object v0

    .line 247
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 250
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/lingala/zip4j/d/f;->fA(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 251
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 254
    :cond_1
    invoke-static {v1, p2}, Lnet/lingala/zip4j/d/c;->c(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)Ljava/lang/String;

    move-result-object v2

    .line 256
    iget-object v3, p0, Lnet/lingala/zip4j/c/a;->alm:Lnet/lingala/zip4j/model/p;

    invoke-static {v3, v2}, Lnet/lingala/zip4j/headers/c;->a(Lnet/lingala/zip4j/model/p;Ljava/lang/String;)Lnet/lingala/zip4j/model/i;

    move-result-object v2

    .line 257
    if-eqz v2, :cond_3

    .line 258
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->tS()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 259
    sget-object v1, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->apy:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    invoke-virtual {p3, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->a(Lnet/lingala/zip4j/progress/ProgressMonitor$Task;)V

    .line 260
    invoke-virtual {p0, v2, p3, p4}, Lnet/lingala/zip4j/c/a;->a(Lnet/lingala/zip4j/model/i;Lnet/lingala/zip4j/progress/ProgressMonitor;Lnet/lingala/zip4j/model/k;)V

    .line 261
    invoke-virtual {p0}, Lnet/lingala/zip4j/c/a;->ue()V

    .line 262
    sget-object v1, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->apx:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    invoke-virtual {p3, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->a(Lnet/lingala/zip4j/progress/ProgressMonitor$Task;)V

    goto :goto_1

    .line 264
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 267
    :cond_3
    :goto_1
    goto :goto_0

    .line 269
    :cond_4
    return-object v0
.end method

.method private a(Lnet/lingala/zip4j/model/ZipParameters;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;)Lnet/lingala/zip4j/model/ZipParameters;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    new-instance v0, Lnet/lingala/zip4j/model/ZipParameters;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/model/ZipParameters;-><init>(Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 203
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-static {v1, v2}, Lnet/lingala/zip4j/d/f;->M(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/ZipParameters;->H(J)V

    .line 205
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {v0, v2, v3}, Lnet/lingala/zip4j/model/ZipParameters;->I(J)V

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/ZipParameters;->I(J)V

    .line 211
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipParameters;->bB(Z)V

    .line 212
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/ZipParameters;->H(J)V

    .line 214
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tO()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/lingala/zip4j/d/f;->fA(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 215
    invoke-static {p2, p1}, Lnet/lingala/zip4j/d/c;->c(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)Ljava/lang/String;

    move-result-object p1

    .line 216
    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/model/ZipParameters;->fv(Ljava/lang/String;)V

    .line 219
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 220
    sget-object p1, Lnet/lingala/zip4j/model/enums/CompressionMethod;->aoU:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/model/ZipParameters;->a(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V

    .line 221
    sget-object p1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->aoY:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/model/ZipParameters;->a(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V

    .line 222
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipParameters;->bA(Z)V

    goto :goto_1

    .line 224
    :cond_2
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->tH()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->sR()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object p1

    sget-object v1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->aoZ:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne p1, v1, :cond_3

    .line 225
    sget-object p1, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->apz:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    invoke-virtual {p3, p1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->a(Lnet/lingala/zip4j/progress/ProgressMonitor$Task;)V

    .line 226
    invoke-static {p2, p3}, Lnet/lingala/zip4j/d/b;->a(Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/ZipParameters;->G(J)V

    .line 227
    sget-object p1, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->apx:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    invoke-virtual {p3, p1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->a(Lnet/lingala/zip4j/progress/ProgressMonitor$Task;)V

    .line 230
    :cond_3
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-nez p1, :cond_4

    .line 231
    sget-object p1, Lnet/lingala/zip4j/model/enums/CompressionMethod;->aoU:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/model/ZipParameters;->a(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V

    .line 235
    :cond_4
    :goto_1
    return-object v0
.end method

.method private a(Ljava/io/File;Lnet/lingala/zip4j/b/b/k;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/b/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    new-instance v0, Lnet/lingala/zip4j/model/ZipParameters;

    invoke-direct {v0, p3}, Lnet/lingala/zip4j/model/ZipParameters;-><init>(Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 94
    invoke-virtual {p3}, Lnet/lingala/zip4j/model/ZipParameters;->tO()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, v1}, Lnet/lingala/zip4j/c/a;->at(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lnet/lingala/zip4j/model/ZipParameters;->fv(Ljava/lang/String;)V

    .line 95
    const/4 p3, 0x0

    invoke-virtual {v0, p3}, Lnet/lingala/zip4j/model/ZipParameters;->bA(Z)V

    .line 96
    sget-object p3, Lnet/lingala/zip4j/model/enums/CompressionMethod;->aoU:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    invoke-virtual {v0, p3}, Lnet/lingala/zip4j/model/ZipParameters;->a(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V

    .line 98
    invoke-virtual {p2, v0}, Lnet/lingala/zip4j/b/b/k;->b(Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 100
    invoke-static {p1}, Lnet/lingala/zip4j/d/c;->p(Ljava/io/File;)Ljava/lang/String;

    move-result-object p3

    .line 101
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {p2, p3}, Lnet/lingala/zip4j/b/b/k;->write([B)V

    .line 103
    const/4 p3, 0x1

    invoke-direct {p0, p2, p4, p1, p3}, Lnet/lingala/zip4j/c/a;->a(Lnet/lingala/zip4j/b/b/k;Lnet/lingala/zip4j/b/b/h;Ljava/io/File;Z)V

    .line 104
    return-void
.end method

.method private a(Ljava/io/File;Lnet/lingala/zip4j/b/b/k;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/b/b/h;Lnet/lingala/zip4j/progress/ProgressMonitor;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    invoke-virtual {p2, p3}, Lnet/lingala/zip4j/b/b/k;->b(Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 112
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p3

    if-nez p3, :cond_2

    .line 113
    new-instance p3, Ljava/io/FileInputStream;

    invoke-direct {p3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    .line 114
    :goto_0
    :try_start_0
    invoke-virtual {p3, p6}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 115
    invoke-virtual {p2, p6, v0, v2}, Lnet/lingala/zip4j/b/b/k;->write([BII)V

    .line 116
    int-to-long v2, v2

    invoke-virtual {p5, v2, v3}, Lnet/lingala/zip4j/progress/ProgressMonitor;->J(J)V

    .line 117
    invoke-virtual {p0}, Lnet/lingala/zip4j/c/a;->ue()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 113
    :catch_0
    move-exception p1

    move-object v1, p1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    :goto_1
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    :goto_2
    throw p1

    .line 122
    :cond_2
    :goto_3
    invoke-direct {p0, p2, p4, p1, v0}, Lnet/lingala/zip4j/c/a;->a(Lnet/lingala/zip4j/b/b/k;Lnet/lingala/zip4j/b/b/h;Ljava/io/File;Z)V

    .line 123
    return-void
.end method

.method private a(Lnet/lingala/zip4j/b/b/k;Lnet/lingala/zip4j/b/b/h;Ljava/io/File;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    invoke-virtual {p1}, Lnet/lingala/zip4j/b/b/k;->sF()Lnet/lingala/zip4j/model/i;

    move-result-object p1

    .line 128
    invoke-static {p3}, Lnet/lingala/zip4j/d/c;->k(Ljava/io/File;)[B

    move-result-object p3

    .line 130
    if-nez p4, :cond_0

    .line 132
    const/4 p4, 0x3

    aget-byte v0, p3, p4

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lnet/lingala/zip4j/d/a;->c(BI)B

    move-result v0

    aput-byte v0, p3, p4

    .line 135
    :cond_0
    invoke-virtual {p1, p3}, Lnet/lingala/zip4j/model/i;->P([B)V

    .line 137
    invoke-virtual {p0, p1, p2}, Lnet/lingala/zip4j/c/a;->a(Lnet/lingala/zip4j/model/i;Lnet/lingala/zip4j/b/b/h;)V

    .line 138
    return-void
.end method

.method private at(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 281
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 285
    :cond_0
    return-object p2
.end method

.method private g(Lnet/lingala/zip4j/model/ZipParameters;)Z
    .locals 2

    .line 290
    sget-object v0, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->aoz:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tU()Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->aoB:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 291
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tU()Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 290
    :goto_1
    return p1
.end method


# virtual methods
.method a(Lnet/lingala/zip4j/b/b/h;Lnet/lingala/zip4j/model/k;)Lnet/lingala/zip4j/b/b/k;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lnet/lingala/zip4j/c/a;->alm:Lnet/lingala/zip4j/model/p;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/p;->tD()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lnet/lingala/zip4j/c/a;->alm:Lnet/lingala/zip4j/model/p;

    invoke-static {v0}, Lnet/lingala/zip4j/headers/c;->b(Lnet/lingala/zip4j/model/p;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lnet/lingala/zip4j/b/b/h;->seek(J)V

    .line 171
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/b/b/k;

    iget-object v1, p0, Lnet/lingala/zip4j/c/a;->alp:[C

    iget-object v2, p0, Lnet/lingala/zip4j/c/a;->alm:Lnet/lingala/zip4j/model/p;

    invoke-direct {v0, p1, v1, p2, v2}, Lnet/lingala/zip4j/b/b/k;-><init>(Ljava/io/OutputStream;[CLnet/lingala/zip4j/model/k;Lnet/lingala/zip4j/model/p;)V

    return-object v0
.end method

.method a(Ljava/util/List;Lnet/lingala/zip4j/progress/ProgressMonitor;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/model/k;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Lnet/lingala/zip4j/progress/ProgressMonitor;",
            "Lnet/lingala/zip4j/model/ZipParameters;",
            "Lnet/lingala/zip4j/model/k;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-virtual {p3}, Lnet/lingala/zip4j/model/ZipParameters;->tU()Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/lingala/zip4j/d/c;->a(Ljava/util/List;Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;)V

    .line 64
    invoke-virtual {p4}, Lnet/lingala/zip4j/model/k;->tn()I

    move-result v0

    new-array v0, v0, [B

    .line 65
    invoke-direct {p0, p1, p3, p2, p4}, Lnet/lingala/zip4j/c/a;->a(Ljava/util/List;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;Lnet/lingala/zip4j/model/k;)Ljava/util/List;

    move-result-object p1

    .line 67
    new-instance v8, Lnet/lingala/zip4j/b/b/h;

    iget-object v1, p0, Lnet/lingala/zip4j/c/a;->alm:Lnet/lingala/zip4j/model/p;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/p;->tD()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lnet/lingala/zip4j/c/a;->alm:Lnet/lingala/zip4j/model/p;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/p;->sB()J

    move-result-wide v2

    invoke-direct {v8, v1, v2, v3}, Lnet/lingala/zip4j/b/b/h;-><init>(Ljava/io/File;J)V

    .line 68
    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {p0, v8, p4}, Lnet/lingala/zip4j/c/a;->a(Lnet/lingala/zip4j/b/b/h;Lnet/lingala/zip4j/model/k;)Lnet/lingala/zip4j/b/b/k;

    move-result-object p4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 67
    nop

    .line 70
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/io/File;

    .line 71
    invoke-virtual {p0}, Lnet/lingala/zip4j/c/a;->ue()V

    .line 72
    invoke-direct {p0, p3, v2, p2}, Lnet/lingala/zip4j/c/a;->a(Lnet/lingala/zip4j/model/ZipParameters;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v4

    .line 73
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setFileName(Ljava/lang/String;)V

    .line 75
    invoke-static {v2}, Lnet/lingala/zip4j/d/c;->o(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-direct {p0, v4}, Lnet/lingala/zip4j/c/a;->g(Lnet/lingala/zip4j/model/ZipParameters;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-direct {p0, v2, p4, v4, v8}, Lnet/lingala/zip4j/c/a;->a(Ljava/io/File;Lnet/lingala/zip4j/b/b/k;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/b/b/h;)V

    .line 79
    sget-object v1, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->aoz:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ZipParameters;->tU()Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    goto :goto_0

    .line 85
    :cond_0
    move-object v1, p0

    move-object v3, p4

    move-object v5, v8

    move-object v6, p2

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lnet/lingala/zip4j/c/a;->a(Ljava/io/File;Lnet/lingala/zip4j/b/b/k;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/b/b/h;Lnet/lingala/zip4j/progress/ProgressMonitor;[B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    goto :goto_0

    .line 87
    :cond_1
    if-eqz p4, :cond_2

    :try_start_2
    invoke-virtual {p4}, Lnet/lingala/zip4j/b/b/k;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_2
    invoke-virtual {v8}, Lnet/lingala/zip4j/b/b/h;->close()V

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception p1

    move-object p2, v9

    goto :goto_1

    .line 67
    :catch_0
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 87
    :catchall_1
    move-exception p2

    move-object v10, p2

    move-object p2, p1

    move-object p1, v10

    :goto_1
    if-eqz p4, :cond_4

    if-eqz p2, :cond_3

    :try_start_4
    invoke-virtual {p4}, Lnet/lingala/zip4j/b/b/k;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catch_1
    move-exception p3

    :try_start_5
    invoke-virtual {p2, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p4}, Lnet/lingala/zip4j/b/b/k;->close()V

    :cond_4
    :goto_2
    throw p1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_3

    .line 67
    :catch_2
    move-exception p1

    move-object v9, p1

    :try_start_6
    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 87
    :goto_3
    if-eqz v9, :cond_5

    :try_start_7
    invoke-virtual {v8}, Lnet/lingala/zip4j/b/b/h;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    :catch_3
    move-exception p2

    invoke-virtual {v9, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v8}, Lnet/lingala/zip4j/b/b/h;->close()V

    :goto_4
    throw p1
.end method

.method a(Lnet/lingala/zip4j/model/i;Lnet/lingala/zip4j/b/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lnet/lingala/zip4j/c/a;->alq:Lnet/lingala/zip4j/headers/d;

    invoke-virtual {p0}, Lnet/lingala/zip4j/c/a;->ud()Lnet/lingala/zip4j/model/p;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lnet/lingala/zip4j/headers/d;->a(Lnet/lingala/zip4j/model/i;Lnet/lingala/zip4j/model/p;Lnet/lingala/zip4j/b/b/h;)V

    .line 198
    return-void
.end method

.method a(Lnet/lingala/zip4j/model/i;Lnet/lingala/zip4j/progress/ProgressMonitor;Lnet/lingala/zip4j/model/k;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 273
    new-instance v0, Lnet/lingala/zip4j/c/f$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p2}, Lnet/lingala/zip4j/c/f$a;-><init>(Ljava/util/concurrent/ExecutorService;ZLnet/lingala/zip4j/progress/ProgressMonitor;)V

    .line 274
    new-instance p2, Lnet/lingala/zip4j/c/g;

    iget-object v1, p0, Lnet/lingala/zip4j/c/a;->alm:Lnet/lingala/zip4j/model/p;

    iget-object v2, p0, Lnet/lingala/zip4j/c/a;->alq:Lnet/lingala/zip4j/headers/d;

    invoke-direct {p2, v1, v2, v0}, Lnet/lingala/zip4j/c/g;-><init>(Lnet/lingala/zip4j/model/p;Lnet/lingala/zip4j/headers/d;Lnet/lingala/zip4j/c/f$a;)V

    .line 275
    new-instance v0, Lnet/lingala/zip4j/c/g$a;

    .line 276
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1, p3}, Lnet/lingala/zip4j/c/g$a;-><init>(Ljava/util/List;Lnet/lingala/zip4j/model/k;)V

    .line 277
    invoke-virtual {p2, v0}, Lnet/lingala/zip4j/c/g;->execute(Ljava/lang/Object;)V

    .line 278
    return-void
.end method

.method b(Ljava/util/List;Lnet/lingala/zip4j/model/ZipParameters;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Lnet/lingala/zip4j/model/ZipParameters;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 141
    nop

    .line 143
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 144
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 145
    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->tH()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->sR()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v3

    sget-object v4, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->aoZ:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne v3, v4, :cond_1

    .line 149
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x2

    mul-long/2addr v3, v5

    add-long/2addr v0, v3

    goto :goto_1

    .line 151
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 156
    :goto_1
    invoke-static {v2, p2}, Lnet/lingala/zip4j/d/c;->c(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-virtual {p0}, Lnet/lingala/zip4j/c/a;->ud()Lnet/lingala/zip4j/model/p;

    move-result-object v3

    invoke-static {v3, v2}, Lnet/lingala/zip4j/headers/c;->a(Lnet/lingala/zip4j/model/p;Ljava/lang/String;)Lnet/lingala/zip4j/model/i;

    move-result-object v2

    .line 158
    if-eqz v2, :cond_2

    .line 159
    invoke-virtual {p0}, Lnet/lingala/zip4j/c/a;->ud()Lnet/lingala/zip4j/model/p;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/p;->tD()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/i;->getCompressedSize()J

    move-result-wide v5

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 161
    :cond_2
    goto :goto_0

    .line 163
    :cond_3
    return-wide v0
.end method

.method e(Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 175
    if-eqz p1, :cond_5

    .line 179
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->sL()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionMethod;->aoU:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->sL()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionMethod;->aoV:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "unsupported compression type"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 183
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->tH()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 184
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->sR()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object p1

    sget-object v0, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->aoY:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-eq p1, v0, :cond_3

    .line 188
    iget-object p1, p0, Lnet/lingala/zip4j/c/a;->alp:[C

    if-eqz p1, :cond_2

    iget-object p1, p0, Lnet/lingala/zip4j/c/a;->alp:[C

    array-length p1, p1

    if-lez p1, :cond_2

    goto :goto_1

    .line 189
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "input password is empty or null"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 185
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "Encryption method has to be set, when encrypt files flag is set"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 192
    :cond_4
    sget-object v0, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->aoY:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipParameters;->a(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V

    .line 194
    :goto_1
    return-void

    .line 176
    :cond_5
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "cannot validate zip parameters"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected uc()Lnet/lingala/zip4j/progress/ProgressMonitor$Task;
    .locals 1

    .line 296
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->apx:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    return-object v0
.end method

.method protected ud()Lnet/lingala/zip4j/model/p;
    .locals 1

    .line 300
    iget-object v0, p0, Lnet/lingala/zip4j/c/a;->alm:Lnet/lingala/zip4j/model/p;

    return-object v0
.end method
