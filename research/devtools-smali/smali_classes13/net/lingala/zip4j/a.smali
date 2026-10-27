.class public Lnet/lingala/zip4j/a;
.super Ljava/lang/Object;
.source "ZipFile.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private alk:Ljava/io/File;

.field private alm:Lnet/lingala/zip4j/model/p;

.field private aln:Lnet/lingala/zip4j/progress/ProgressMonitor;

.field private alo:Z

.field private alp:[C

.field private alq:Lnet/lingala/zip4j/headers/d;

.field private alr:Ljava/util/concurrent/ThreadFactory;

.field private als:I

.field private alt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private charset:Ljava/nio/charset/Charset;

.field private executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/io/File;[C)V
    .locals 1

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Lnet/lingala/zip4j/headers/d;

    invoke-direct {v0}, Lnet/lingala/zip4j/headers/d;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/a;->alq:Lnet/lingala/zip4j/headers/d;

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/lingala/zip4j/a;->charset:Ljava/nio/charset/Charset;

    .line 100
    const/16 v0, 0x1000

    iput v0, p0, Lnet/lingala/zip4j/a;->als:I

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/a;->alt:Ljava/util/List;

    .line 144
    if-eqz p1, :cond_0

    .line 148
    iput-object p1, p0, Lnet/lingala/zip4j/a;->alk:Ljava/io/File;

    .line 149
    iput-object p2, p0, Lnet/lingala/zip4j/a;->alp:[C

    .line 150
    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/lingala/zip4j/a;->alo:Z

    .line 151
    new-instance p1, Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-direct {p1}, Lnet/lingala/zip4j/progress/ProgressMonitor;-><init>()V

    iput-object p1, p0, Lnet/lingala/zip4j/a;->aln:Lnet/lingala/zip4j/progress/ProgressMonitor;

    .line 152
    return-void

    .line 145
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "input zip file parameter is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 110
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lnet/lingala/zip4j/a;-><init>(Ljava/io/File;[C)V

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[C)V
    .locals 1

    .line 121
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lnet/lingala/zip4j/a;-><init>(Ljava/io/File;[C)V

    .line 122
    return-void
.end method

.method private a(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 378
    invoke-direct {p0}, Lnet/lingala/zip4j/a;->si()V

    .line 380
    iget-object v0, p0, Lnet/lingala/zip4j/a;->alm:Lnet/lingala/zip4j/model/p;

    if-eqz v0, :cond_2

    .line 384
    if-eqz p3, :cond_1

    .line 385
    iget-object p3, p0, Lnet/lingala/zip4j/a;->alm:Lnet/lingala/zip4j/model/p;

    invoke-virtual {p3}, Lnet/lingala/zip4j/model/p;->tC()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 386
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "This is a split archive. Zip file format does not allow updating split/spanned files"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 390
    :cond_1
    :goto_0
    new-instance p3, Lnet/lingala/zip4j/c/e;

    iget-object v0, p0, Lnet/lingala/zip4j/a;->alm:Lnet/lingala/zip4j/model/p;

    iget-object v1, p0, Lnet/lingala/zip4j/a;->alp:[C

    iget-object v2, p0, Lnet/lingala/zip4j/a;->alq:Lnet/lingala/zip4j/headers/d;

    invoke-direct {p0}, Lnet/lingala/zip4j/a;->sl()Lnet/lingala/zip4j/c/f$a;

    move-result-object v3

    invoke-direct {p3, v0, v1, v2, v3}, Lnet/lingala/zip4j/c/e;-><init>(Lnet/lingala/zip4j/model/p;[CLnet/lingala/zip4j/headers/d;Lnet/lingala/zip4j/c/f$a;)V

    new-instance v0, Lnet/lingala/zip4j/c/e$a;

    .line 391
    invoke-direct {p0}, Lnet/lingala/zip4j/a;->sm()Lnet/lingala/zip4j/model/k;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lnet/lingala/zip4j/c/e$a;-><init>(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/model/k;)V

    .line 390
    invoke-virtual {p3, v0}, Lnet/lingala/zip4j/c/e;->execute(Ljava/lang/Object;)V

    .line 392
    return-void

    .line 381
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "internal error: zip model is null"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private si()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1119
    iget-object v0, p0, Lnet/lingala/zip4j/a;->alm:Lnet/lingala/zip4j/model/p;

    if-eqz v0, :cond_0

    .line 1120
    return-void

    .line 1123
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/a;->alk:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1124
    invoke-direct {p0}, Lnet/lingala/zip4j/a;->sj()V

    .line 1125
    return-void

    .line 1128
    :cond_1
    iget-object v0, p0, Lnet/lingala/zip4j/a;->alk:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1132
    :try_start_0
    invoke-direct {p0}, Lnet/lingala/zip4j/a;->sk()Ljava/io/RandomAccessFile;

    move-result-object v0
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x0

    .line 1133
    :try_start_1
    new-instance v2, Lnet/lingala/zip4j/headers/b;

    invoke-direct {v2}, Lnet/lingala/zip4j/headers/b;-><init>()V

    .line 1134
    invoke-direct {p0}, Lnet/lingala/zip4j/a;->sm()Lnet/lingala/zip4j/model/k;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lnet/lingala/zip4j/headers/b;->a(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/model/k;)Lnet/lingala/zip4j/model/p;

    move-result-object v2

    iput-object v2, p0, Lnet/lingala/zip4j/a;->alm:Lnet/lingala/zip4j/model/p;

    .line 1135
    iget-object v2, p0, Lnet/lingala/zip4j/a;->alm:Lnet/lingala/zip4j/model/p;

    iget-object v3, p0, Lnet/lingala/zip4j/a;->alk:Ljava/io/File;

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/p;->j(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1136
    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1140
    :cond_2
    nop

    .line 1141
    return-void

    .line 1136
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 1132
    :catch_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1136
    :goto_0
    if-eqz v0, :cond_4

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_4
    :goto_1
    throw v2
    :try_end_5
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1138
    :catch_2
    move-exception v0

    .line 1139
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 1136
    :catch_3
    move-exception v0

    .line 1137
    throw v0

    .line 1129
    :cond_5
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "no read access for the input zip file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private sj()V
    .locals 2

    .line 1144
    new-instance v0, Lnet/lingala/zip4j/model/p;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/p;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/a;->alm:Lnet/lingala/zip4j/model/p;

    .line 1145
    iget-object v0, p0, Lnet/lingala/zip4j/a;->alm:Lnet/lingala/zip4j/model/p;

    iget-object v1, p0, Lnet/lingala/zip4j/a;->alk:Ljava/io/File;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/p;->j(Ljava/io/File;)V

    .line 1146
    return-void
.end method

.method private sk()Ljava/io/RandomAccessFile;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1149
    iget-object v0, p0, Lnet/lingala/zip4j/a;->alk:Ljava/io/File;

    invoke-static {v0}, Lnet/lingala/zip4j/d/c;->l(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1150
    iget-object v0, p0, Lnet/lingala/zip4j/a;->alk:Ljava/io/File;

    invoke-static {v0}, Lnet/lingala/zip4j/d/c;->n(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    .line 1151
    new-instance v1, Lnet/lingala/zip4j/b/a/a;

    iget-object v2, p0, Lnet/lingala/zip4j/a;->alk:Ljava/io/File;

    sget-object v3, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->apd:Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    .line 1152
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lnet/lingala/zip4j/b/a/a;-><init>(Ljava/io/File;Ljava/lang/String;[Ljava/io/File;)V

    .line 1153
    invoke-virtual {v1}, Lnet/lingala/zip4j/b/a/a;->sw()V

    .line 1154
    return-object v1

    .line 1157
    :cond_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lnet/lingala/zip4j/a;->alk:Ljava/io/File;

    sget-object v2, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->apd:Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private sl()Lnet/lingala/zip4j/c/f$a;
    .locals 4

    .line 1161
    iget-boolean v0, p0, Lnet/lingala/zip4j/a;->alo:Z

    if-eqz v0, :cond_1

    .line 1162
    iget-object v0, p0, Lnet/lingala/zip4j/a;->alr:Ljava/util/concurrent/ThreadFactory;

    if-nez v0, :cond_0

    .line 1163
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/a;->alr:Ljava/util/concurrent/ThreadFactory;

    .line 1165
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/a;->alr:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/a;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 1168
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/c/f$a;

    iget-object v1, p0, Lnet/lingala/zip4j/a;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-boolean v2, p0, Lnet/lingala/zip4j/a;->alo:Z

    iget-object v3, p0, Lnet/lingala/zip4j/a;->aln:Lnet/lingala/zip4j/progress/ProgressMonitor;

    invoke-direct {v0, v1, v2, v3}, Lnet/lingala/zip4j/c/f$a;-><init>(Ljava/util/concurrent/ExecutorService;ZLnet/lingala/zip4j/progress/ProgressMonitor;)V

    return-object v0
.end method

.method private sm()Lnet/lingala/zip4j/model/k;
    .locals 3

    .line 1236
    new-instance v0, Lnet/lingala/zip4j/model/k;

    iget-object v1, p0, Lnet/lingala/zip4j/a;->charset:Ljava/nio/charset/Charset;

    iget v2, p0, Lnet/lingala/zip4j/a;->als:I

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/model/k;-><init>(Ljava/nio/charset/Charset;I)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 275
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lnet/lingala/zip4j/a;->a(Ljava/util/List;Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 276
    return-void
.end method

.method public a(Ljava/util/List;Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Lnet/lingala/zip4j/model/ZipParameters;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 300
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 304
    if-eqz p2, :cond_3

    .line 308
    invoke-direct {p0}, Lnet/lingala/zip4j/a;->si()V

    .line 310
    iget-object v0, p0, Lnet/lingala/zip4j/a;->alm:Lnet/lingala/zip4j/model/p;

    if-eqz v0, :cond_2

    .line 314
    iget-object v0, p0, Lnet/lingala/zip4j/a;->alk:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/lingala/zip4j/a;->alm:Lnet/lingala/zip4j/model/p;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/p;->tC()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 315
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Zip file already exists. Zip file format does not allow updating split/spanned files"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 318
    :cond_1
    :goto_0
    new-instance v0, Lnet/lingala/zip4j/c/d;

    iget-object v1, p0, Lnet/lingala/zip4j/a;->alm:Lnet/lingala/zip4j/model/p;

    iget-object v2, p0, Lnet/lingala/zip4j/a;->alp:[C

    iget-object v3, p0, Lnet/lingala/zip4j/a;->alq:Lnet/lingala/zip4j/headers/d;

    invoke-direct {p0}, Lnet/lingala/zip4j/a;->sl()Lnet/lingala/zip4j/c/f$a;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/lingala/zip4j/c/d;-><init>(Lnet/lingala/zip4j/model/p;[CLnet/lingala/zip4j/headers/d;Lnet/lingala/zip4j/c/f$a;)V

    new-instance v1, Lnet/lingala/zip4j/c/d$a;

    .line 319
    invoke-direct {p0}, Lnet/lingala/zip4j/a;->sm()Lnet/lingala/zip4j/model/k;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lnet/lingala/zip4j/c/d$a;-><init>(Ljava/util/List;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/model/k;)V

    .line 318
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/c/d;->execute(Ljava/lang/Object;)V

    .line 320
    return-void

    .line 311
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "internal error: zip model is null"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 305
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input parameters are null"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 301
    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input file List is null or empty"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 345
    if-eqz p1, :cond_4

    .line 349
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 353
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    if-eqz p2, :cond_0

    .line 365
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lnet/lingala/zip4j/a;->a(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;Z)V

    .line 366
    return-void

    .line 362
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input parameters are null, cannot add folder to zip file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 358
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "cannot read input folder"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 354
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input folder is not a directory"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 350
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "folder does not exist"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 346
    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input path is null, cannot add folder to zip file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1073
    iget-object v0, p0, Lnet/lingala/zip4j/a;->alt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 1074
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1075
    goto :goto_0

    .line 1076
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/a;->alt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1077
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1232
    iget-object v0, p0, Lnet/lingala/zip4j/a;->alk:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
