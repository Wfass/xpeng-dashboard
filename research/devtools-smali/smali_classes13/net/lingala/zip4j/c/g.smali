.class public Lnet/lingala/zip4j/c/g;
.super Lnet/lingala/zip4j/c/b;
.source "RemoveFilesFromZipTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lingala/zip4j/c/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/lingala/zip4j/c/b<",
        "Lnet/lingala/zip4j/c/g$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final alm:Lnet/lingala/zip4j/model/p;

.field private final alq:Lnet/lingala/zip4j/headers/d;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/model/p;Lnet/lingala/zip4j/headers/d;Lnet/lingala/zip4j/c/f$a;)V
    .locals 0

    .line 28
    invoke-direct {p0, p3}, Lnet/lingala/zip4j/c/b;-><init>(Lnet/lingala/zip4j/c/f$a;)V

    .line 29
    iput-object p1, p0, Lnet/lingala/zip4j/c/g;->alm:Lnet/lingala/zip4j/model/p;

    .line 30
    iput-object p2, p0, Lnet/lingala/zip4j/c/g;->alq:Lnet/lingala/zip4j/headers/d;

    .line 31
    return-void
.end method

.method private F(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 89
    iget-object v2, p0, Lnet/lingala/zip4j/c/g;->alm:Lnet/lingala/zip4j/model/p;

    invoke-static {v2, v1}, Lnet/lingala/zip4j/headers/c;->a(Lnet/lingala/zip4j/model/p;Ljava/lang/String;)Lnet/lingala/zip4j/model/i;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 90
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_0
    goto :goto_0

    .line 94
    :cond_1
    return-object v0
.end method

.method private L(J)J
    .locals 2

    .line 140
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 144
    neg-long p1, p1

    return-wide p1

    .line 141
    :cond_0
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string p2, "long overflow"

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/util/List;Lnet/lingala/zip4j/model/i;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/i;",
            ">;",
            "Lnet/lingala/zip4j/model/i;",
            "J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 114
    iget-object v2, p0, Lnet/lingala/zip4j/c/g;->alm:Lnet/lingala/zip4j/model/p;

    invoke-direct {p0, p3, p4}, Lnet/lingala/zip4j/c/g;->L(J)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lnet/lingala/zip4j/c/g;->a(Ljava/util/List;Lnet/lingala/zip4j/model/p;Lnet/lingala/zip4j/model/i;J)V

    .line 116
    iget-object p1, p0, Lnet/lingala/zip4j/c/g;->alm:Lnet/lingala/zip4j/model/p;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tB()Lnet/lingala/zip4j/model/f;

    move-result-object p1

    .line 117
    nop

    .line 118
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/f;->td()J

    move-result-wide v0

    sub-long/2addr v0, p3

    .line 117
    invoke-virtual {p1, v0, v1}, Lnet/lingala/zip4j/model/f;->v(J)V

    .line 119
    nop

    .line 120
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/f;->tc()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    .line 119
    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/model/f;->fj(I)V

    .line 122
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/f;->tb()I

    move-result p2

    if-lez p2, :cond_0

    .line 123
    nop

    .line 124
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/f;->tb()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    .line 123
    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/model/f;->fi(I)V

    .line 127
    :cond_0
    iget-object p1, p0, Lnet/lingala/zip4j/c/g;->alm:Lnet/lingala/zip4j/model/p;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tG()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 128
    iget-object p1, p0, Lnet/lingala/zip4j/c/g;->alm:Lnet/lingala/zip4j/model/p;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tF()Lnet/lingala/zip4j/model/m;

    move-result-object p1

    iget-object p2, p0, Lnet/lingala/zip4j/c/g;->alm:Lnet/lingala/zip4j/model/p;

    .line 129
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/p;->tF()Lnet/lingala/zip4j/model/m;

    move-result-object p2

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/m;->tx()J

    move-result-wide v0

    sub-long/2addr v0, p3

    .line 128
    invoke-virtual {p1, v0, v1}, Lnet/lingala/zip4j/model/m;->E(J)V

    .line 131
    iget-object p1, p0, Lnet/lingala/zip4j/c/g;->alm:Lnet/lingala/zip4j/model/p;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tF()Lnet/lingala/zip4j/model/m;

    move-result-object p1

    iget-object p2, p0, Lnet/lingala/zip4j/c/g;->alm:Lnet/lingala/zip4j/model/p;

    .line 132
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/p;->tF()Lnet/lingala/zip4j/model/m;

    move-result-object p2

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/m;->tv()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 131
    invoke-virtual {p1, v0, v1}, Lnet/lingala/zip4j/model/m;->B(J)V

    .line 134
    iget-object p1, p0, Lnet/lingala/zip4j/c/g;->alm:Lnet/lingala/zip4j/model/p;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tE()Lnet/lingala/zip4j/model/l;

    move-result-object p1

    iget-object p2, p0, Lnet/lingala/zip4j/c/g;->alm:Lnet/lingala/zip4j/model/p;

    .line 135
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/p;->tE()Lnet/lingala/zip4j/model/l;

    move-result-object p2

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/l;->tq()J

    move-result-wide v0

    sub-long/2addr v0, p3

    .line 134
    invoke-virtual {p1, v0, v1}, Lnet/lingala/zip4j/model/l;->z(J)V

    .line 137
    :cond_1
    return-void
.end method

.method private a(Lnet/lingala/zip4j/model/i;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/lingala/zip4j/model/i;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 98
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 101
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    return v2

    .line 104
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/i;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    return v2

    .line 107
    :cond_1
    goto :goto_0

    .line 109
    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected a(Lnet/lingala/zip4j/c/g$a;)J
    .locals 2

    .line 82
    iget-object p1, p0, Lnet/lingala/zip4j/c/g;->alm:Lnet/lingala/zip4j/model/p;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/p;->tD()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->length()J

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

    .line 22
    check-cast p1, Lnet/lingala/zip4j/c/g$a;

    invoke-virtual {p0, p1, p2}, Lnet/lingala/zip4j/c/g;->a(Lnet/lingala/zip4j/c/g$a;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    return-void
.end method

.method protected a(Lnet/lingala/zip4j/c/g$a;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    .line 36
    iget-object v1, v10, Lnet/lingala/zip4j/c/g;->alm:Lnet/lingala/zip4j/model/p;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/p;->tC()Z

    move-result v1

    if-nez v1, :cond_6

    .line 40
    invoke-static/range {p1 .. p1}, Lnet/lingala/zip4j/c/g$a;->b(Lnet/lingala/zip4j/c/g$a;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v10, v1}, Lnet/lingala/zip4j/c/g;->F(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 42
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    return-void

    .line 46
    :cond_0
    iget-object v1, v10, Lnet/lingala/zip4j/c/g;->alm:Lnet/lingala/zip4j/model/p;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/p;->tD()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lnet/lingala/zip4j/c/g;->fw(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 47
    nop

    .line 49
    :try_start_0
    new-instance v14, Lnet/lingala/zip4j/b/b/h;

    invoke-direct {v14, v12}, Lnet/lingala/zip4j/b/b/h;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 50
    const/4 v15, 0x0

    :try_start_1
    new-instance v9, Ljava/io/RandomAccessFile;

    iget-object v1, v10, Lnet/lingala/zip4j/c/g;->alm:Lnet/lingala/zip4j/model/p;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/p;->tD()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->apd:Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 49
    nop

    .line 52
    const-wide/16 v1, 0x0

    .line 53
    :try_start_2
    iget-object v3, v10, Lnet/lingala/zip4j/c/g;->alm:Lnet/lingala/zip4j/model/p;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/p;->tA()Lnet/lingala/zip4j/model/d;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/d;->sX()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v10, v3}, Lnet/lingala/zip4j/c/g;->E(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 55
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide/from16 v16, v1

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/lingala/zip4j/model/i;

    .line 56
    iget-object v2, v10, Lnet/lingala/zip4j/c/g;->alm:Lnet/lingala/zip4j/model/p;

    invoke-virtual {v10, v8, v1, v2}, Lnet/lingala/zip4j/c/g;->a(Ljava/util/List;Lnet/lingala/zip4j/model/i;Lnet/lingala/zip4j/model/p;)J

    move-result-wide v2

    invoke-virtual {v14}, Lnet/lingala/zip4j/b/b/h;->getFilePointer()J

    move-result-wide v4

    sub-long v4, v2, v4

    .line 57
    invoke-direct {v10, v1, v11}, Lnet/lingala/zip4j/c/g;->a(Lnet/lingala/zip4j/model/i;Ljava/util/List;)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v2, :cond_2

    .line 58
    :try_start_3
    invoke-direct {v10, v8, v1, v4, v5}, Lnet/lingala/zip4j/c/g;->a(Ljava/util/List;Lnet/lingala/zip4j/model/i;J)V

    .line 60
    iget-object v2, v10, Lnet/lingala/zip4j/c/g;->alm:Lnet/lingala/zip4j/model/p;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/p;->tA()Lnet/lingala/zip4j/model/d;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/d;->sX()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    add-long v16, v16, v4

    .line 70
    move-object/from16 v21, v6

    move-object/from16 v19, v8

    move-object v13, v9

    goto :goto_1

    .line 61
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "Could not remove entry from list of central directory headers"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v13, v9

    goto/16 :goto_3

    .line 49
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v13, v9

    goto/16 :goto_5

    .line 67
    :cond_2
    :try_start_4
    iget-object v1, v0, Lnet/lingala/zip4j/c/g$a;->anb:Lnet/lingala/zip4j/model/k;

    .line 68
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/k;->tn()I

    move-result v18
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 67
    move-object v1, v10

    move-object v2, v9

    move-object v3, v14

    move-wide/from16 v19, v4

    move-wide/from16 v4, v16

    move-object/from16 v21, v6

    move-wide/from16 v6, v19

    move-object/from16 v19, v8

    move-object/from16 v8, p2

    move-object v13, v9

    move/from16 v9, v18

    :try_start_5
    invoke-super/range {v1 .. v9}, Lnet/lingala/zip4j/c/b;->a(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;I)J

    move-result-wide v1

    add-long v16, v16, v1

    .line 70
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lnet/lingala/zip4j/c/g;->ue()V

    .line 71
    nop

    .line 55
    move-object v9, v13

    move-object/from16 v8, v19

    move-object/from16 v6, v21

    goto :goto_0

    .line 73
    :cond_3
    move-object v13, v9

    iget-object v1, v10, Lnet/lingala/zip4j/c/g;->alq:Lnet/lingala/zip4j/headers/d;

    iget-object v2, v10, Lnet/lingala/zip4j/c/g;->alm:Lnet/lingala/zip4j/model/p;

    iget-object v0, v0, Lnet/lingala/zip4j/c/g$a;->anb:Lnet/lingala/zip4j/model/k;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/k;->tm()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v1, v2, v14, v0}, Lnet/lingala/zip4j/headers/d;->a(Lnet/lingala/zip4j/model/p;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 74
    const/4 v1, 0x1

    .line 75
    :try_start_6
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {v14}, Lnet/lingala/zip4j/b/b/h;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 76
    iget-object v0, v10, Lnet/lingala/zip4j/c/g;->alm:Lnet/lingala/zip4j/model/p;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/p;->tD()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v10, v1, v0, v12}, Lnet/lingala/zip4j/c/g;->a(ZLjava/io/File;Ljava/io/File;)V

    .line 77
    nop

    .line 78
    return-void

    .line 76
    :catchall_1
    move-exception v0

    move v13, v1

    goto/16 :goto_b

    .line 75
    :catchall_2
    move-exception v0

    move v13, v1

    move-object v1, v0

    goto :goto_9

    .line 49
    :catch_1
    move-exception v0

    move-object v15, v0

    move/from16 v22, v1

    goto :goto_8

    .line 75
    :catchall_3
    move-exception v0

    goto :goto_2

    .line 49
    :catch_2
    move-exception v0

    goto :goto_4

    .line 75
    :catchall_4
    move-exception v0

    move-object v13, v9

    :goto_2
    move-object v1, v0

    :goto_3
    move-object v2, v15

    goto :goto_6

    .line 49
    :catch_3
    move-exception v0

    move-object v13, v9

    :goto_4
    move-object v1, v0

    :goto_5
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 75
    :catchall_5
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    :goto_6
    if-eqz v2, :cond_4

    :try_start_9
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto :goto_7

    :catch_4
    move-exception v0

    move-object v3, v0

    :try_start_a
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_4
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V

    :goto_7
    throw v1
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_6
    move-exception v0

    move-object v1, v0

    const/4 v13, 0x0

    goto :goto_9

    .line 49
    :catch_5
    move-exception v0

    move-object v15, v0

    const/16 v22, 0x0

    :goto_8
    :try_start_b
    throw v15
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 75
    :catchall_7
    move-exception v0

    move-object v1, v0

    move/from16 v13, v22

    :goto_9
    if-eqz v15, :cond_5

    :try_start_c
    invoke-virtual {v14}, Lnet/lingala/zip4j/b/b/h;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    goto :goto_a

    :catch_6
    move-exception v0

    move-object v2, v0

    :try_start_d
    invoke-virtual {v15, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_5
    invoke-virtual {v14}, Lnet/lingala/zip4j/b/b/h;->close()V

    :goto_a
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 76
    :catchall_8
    move-exception v0

    goto :goto_b

    :catchall_9
    move-exception v0

    const/4 v13, 0x0

    :goto_b
    iget-object v1, v10, Lnet/lingala/zip4j/c/g;->alm:Lnet/lingala/zip4j/model/p;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/p;->tD()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v10, v13, v1, v12}, Lnet/lingala/zip4j/c/g;->a(ZLjava/io/File;Ljava/io/File;)V

    .line 77
    throw v0

    .line 37
    :cond_6
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "This is a split archive. Zip file format does not allow updating split/spanned files"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected synthetic q(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 22
    check-cast p1, Lnet/lingala/zip4j/c/g$a;

    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/c/g;->a(Lnet/lingala/zip4j/c/g$a;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected uc()Lnet/lingala/zip4j/progress/ProgressMonitor$Task;
    .locals 1

    .line 149
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->apy:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    return-object v0
.end method
