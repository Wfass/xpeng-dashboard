.class public final Lcom/amap/api/services/a/co;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/a/co$c;,
        Lcom/amap/api/services/a/co$a;,
        Lcom/amap/api/services/a/co$b;
    }
.end annotation


# static fields
.field static final a:Ljava/util/regex/Pattern;

.field private static final q:Ljava/io/OutputStream;


# instance fields
.field final b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private final e:Ljava/io/File;

.field private final f:Ljava/io/File;

.field private final g:I

.field private h:J

.field private final i:I

.field private j:J

.field private k:Ljava/io/Writer;

.field private final l:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/amap/api/services/a/co$c;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:Lcom/amap/api/services/a/cp;

.field private o:J

.field private final p:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 100
    const-string v0, "[a-z0-9_-]{1,120}"

    .line 101
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amap/api/services/a/co;->a:Ljava/util/regex/Pattern;

    .line 757
    new-instance v0, Lcom/amap/api/services/a/co$2;

    invoke-direct {v0}, Lcom/amap/api/services/a/co$2;-><init>()V

    sput-object v0, Lcom/amap/api/services/a/co;->q:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    .line 188
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 146
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/amap/api/services/a/co;->j:J

    .line 148
    new-instance v4, Ljava/util/LinkedHashMap;

    const/4 v5, 0x0

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v4, v0, Lcom/amap/api/services/a/co;->l:Ljava/util/LinkedHashMap;

    .line 165
    iput-wide v2, v0, Lcom/amap/api/services/a/co;->o:J

    .line 168
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x3c

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v2, v0, Lcom/amap/api/services/a/co;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 171
    new-instance v2, Lcom/amap/api/services/a/co$1;

    invoke-direct {v2, v0}, Lcom/amap/api/services/a/co$1;-><init>(Lcom/amap/api/services/a/co;)V

    iput-object v2, v0, Lcom/amap/api/services/a/co;->p:Ljava/util/concurrent/Callable;

    .line 189
    iput-object v1, v0, Lcom/amap/api/services/a/co;->c:Ljava/io/File;

    .line 190
    move/from16 v2, p2

    iput v2, v0, Lcom/amap/api/services/a/co;->g:I

    .line 191
    new-instance v2, Ljava/io/File;

    const-string v3, "journal"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/amap/api/services/a/co;->d:Ljava/io/File;

    .line 192
    new-instance v2, Ljava/io/File;

    const-string v3, "journal.tmp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/amap/api/services/a/co;->e:Ljava/io/File;

    .line 193
    new-instance v2, Ljava/io/File;

    const-string v3, "journal.bkp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/amap/api/services/a/co;->f:Ljava/io/File;

    .line 194
    move/from16 v1, p3

    iput v1, v0, Lcom/amap/api/services/a/co;->i:I

    .line 195
    move-wide/from16 v1, p4

    iput-wide v1, v0, Lcom/amap/api/services/a/co;->h:J

    .line 196
    return-void
.end method

.method static synthetic a(Lcom/amap/api/services/a/co;I)I
    .locals 0

    .line 92
    iput p1, p0, Lcom/amap/api/services/a/co;->m:I

    return p1
.end method

.method private declared-synchronized a(Ljava/lang/String;J)Lcom/amap/api/services/a/co$a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 481
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/services/a/co;->i()V

    .line 482
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/co;->e(Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/amap/api/services/a/co;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/a/co$c;

    .line 484
    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 485
    invoke-static {v0}, Lcom/amap/api/services/a/co$c;->e(Lcom/amap/api/services/a/co$c;)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p2, v3, p2

    if-eqz p2, :cond_1

    .line 486
    :cond_0
    monitor-exit p0

    return-object v2

    .line 488
    :cond_1
    if-nez v0, :cond_2

    .line 489
    :try_start_1
    new-instance v0, Lcom/amap/api/services/a/co$c;

    invoke-direct {v0, p0, p1, v2}, Lcom/amap/api/services/a/co$c;-><init>(Lcom/amap/api/services/a/co;Ljava/lang/String;Lcom/amap/api/services/a/co$1;)V

    .line 490
    iget-object p2, p0, Lcom/amap/api/services/a/co;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 491
    :cond_2
    invoke-static {v0}, Lcom/amap/api/services/a/co$c;->a(Lcom/amap/api/services/a/co$c;)Lcom/amap/api/services/a/co$a;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_3

    .line 492
    monitor-exit p0

    return-object v2

    .line 495
    :cond_3
    :goto_0
    :try_start_2
    new-instance p2, Lcom/amap/api/services/a/co$a;

    invoke-direct {p2, p0, v0, v2}, Lcom/amap/api/services/a/co$a;-><init>(Lcom/amap/api/services/a/co;Lcom/amap/api/services/a/co$c;Lcom/amap/api/services/a/co$1;)V

    .line 496
    invoke-static {v0, p2}, Lcom/amap/api/services/a/co$c;->a(Lcom/amap/api/services/a/co$c;Lcom/amap/api/services/a/co$a;)Lcom/amap/api/services/a/co$a;

    .line 499
    iget-object p3, p0, Lcom/amap/api/services/a/co;->k:Ljava/io/Writer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DIRTY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 500
    iget-object p1, p0, Lcom/amap/api/services/a/co;->k:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 501
    monitor-exit p0

    return-object p2

    .line 480
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static a(Ljava/io/File;IIJ)Lcom/amap/api/services/a/co;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_4

    .line 216
    if-lez p2, :cond_3

    .line 221
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 226
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 232
    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/co;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 237
    :cond_1
    :goto_0
    new-instance v0, Lcom/amap/api/services/a/co;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/amap/api/services/a/co;-><init>(Ljava/io/File;IIJ)V

    .line 239
    iget-object v1, v0, Lcom/amap/api/services/a/co;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 241
    :try_start_0
    invoke-direct {v0}, Lcom/amap/api/services/a/co;->e()V

    .line 242
    invoke-direct {v0}, Lcom/amap/api/services/a/co;->f()V

    .line 243
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v0, Lcom/amap/api/services/a/co;->d:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lcom/amap/api/services/a/cr;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, v0, Lcom/amap/api/services/a/co;->k:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    return-object v0

    .line 247
    :catch_0
    move-exception v1

    .line 251
    invoke-virtual {v0}, Lcom/amap/api/services/a/co;->c()V

    .line 256
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 260
    new-instance v0, Lcom/amap/api/services/a/co;

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/amap/api/services/a/co;-><init>(Ljava/io/File;IIJ)V

    .line 261
    invoke-direct {v0}, Lcom/amap/api/services/a/co;->g()V

    .line 262
    return-object v0

    .line 217
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "valueCount <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 214
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxSize <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/amap/api/services/a/co;)Ljava/io/Writer;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/amap/api/services/a/co;->k:Ljava/io/Writer;

    return-object p0
.end method

.method private declared-synchronized a(Lcom/amap/api/services/a/co$a;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 537
    :try_start_0
    invoke-static {p1}, Lcom/amap/api/services/a/co$a;->a(Lcom/amap/api/services/a/co$a;)Lcom/amap/api/services/a/co$c;

    move-result-object v0

    .line 538
    invoke-static {v0}, Lcom/amap/api/services/a/co$c;->a(Lcom/amap/api/services/a/co$c;)Lcom/amap/api/services/a/co$a;

    move-result-object v1

    if-ne v1, p1, :cond_a

    .line 544
    const/4 v1, 0x0

    if-eqz p2, :cond_2

    invoke-static {v0}, Lcom/amap/api/services/a/co$c;->d(Lcom/amap/api/services/a/co$c;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 545
    move v2, v1

    :goto_0
    iget v3, p0, Lcom/amap/api/services/a/co;->i:I

    if-ge v2, v3, :cond_2

    .line 546
    invoke-static {p1}, Lcom/amap/api/services/a/co$a;->b(Lcom/amap/api/services/a/co$a;)[Z

    move-result-object v3

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    .line 552
    invoke-virtual {v0, v2}, Lcom/amap/api/services/a/co$c;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 553
    invoke-virtual {p1}, Lcom/amap/api/services/a/co$a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    monitor-exit p0

    return-void

    .line 545
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 547
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/amap/api/services/a/co$a;->b()V

    .line 548
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Newly created entry didn\'t create value for index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 559
    :cond_2
    :goto_1
    iget p1, p0, Lcom/amap/api/services/a/co;->i:I

    if-ge v1, p1, :cond_5

    .line 560
    invoke-virtual {v0, v1}, Lcom/amap/api/services/a/co$c;->b(I)Ljava/io/File;

    move-result-object p1

    .line 561
    if-eqz p2, :cond_3

    .line 562
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 563
    invoke-virtual {v0, v1}, Lcom/amap/api/services/a/co$c;->a(I)Ljava/io/File;

    move-result-object v2

    .line 564
    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 568
    invoke-static {v0}, Lcom/amap/api/services/a/co$c;->b(Lcom/amap/api/services/a/co$c;)[J

    move-result-object p1

    aget-wide v3, p1, v1

    .line 569
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 570
    invoke-static {v0}, Lcom/amap/api/services/a/co$c;->b(Lcom/amap/api/services/a/co$c;)[J

    move-result-object p1

    aput-wide v5, p1, v1

    .line 571
    iget-wide v7, p0, Lcom/amap/api/services/a/co;->j:J

    sub-long/2addr v7, v3

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/amap/api/services/a/co;->j:J

    .line 572
    goto :goto_2

    .line 574
    :cond_3
    invoke-static {p1}, Lcom/amap/api/services/a/co;->a(Ljava/io/File;)V

    .line 559
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 578
    :cond_5
    iget p1, p0, Lcom/amap/api/services/a/co;->m:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/amap/api/services/a/co;->m:I

    .line 579
    const/4 p1, 0x0

    invoke-static {v0, p1}, Lcom/amap/api/services/a/co$c;->a(Lcom/amap/api/services/a/co$c;Lcom/amap/api/services/a/co$a;)Lcom/amap/api/services/a/co$a;

    .line 580
    invoke-static {v0}, Lcom/amap/api/services/a/co$c;->d(Lcom/amap/api/services/a/co$c;)Z

    move-result p1

    or-int/2addr p1, p2

    const/16 v2, 0xa

    if-eqz p1, :cond_6

    .line 581
    invoke-static {v0, v1}, Lcom/amap/api/services/a/co$c;->a(Lcom/amap/api/services/a/co$c;Z)Z

    .line 582
    iget-object p1, p0, Lcom/amap/api/services/a/co;->k:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CLEAN "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/amap/api/services/a/co$c;->c(Lcom/amap/api/services/a/co$c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amap/api/services/a/co$c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 584
    if-eqz p2, :cond_7

    .line 585
    iget-wide p1, p0, Lcom/amap/api/services/a/co;->o:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/amap/api/services/a/co;->o:J

    invoke-static {v0, p1, p2}, Lcom/amap/api/services/a/co$c;->a(Lcom/amap/api/services/a/co$c;J)J

    goto :goto_3

    .line 588
    :cond_6
    iget-object p1, p0, Lcom/amap/api/services/a/co;->l:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lcom/amap/api/services/a/co$c;->c(Lcom/amap/api/services/a/co$c;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    iget-object p1, p0, Lcom/amap/api/services/a/co;->k:Ljava/io/Writer;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "REMOVE "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/amap/api/services/a/co$c;->c(Lcom/amap/api/services/a/co$c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 591
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/amap/api/services/a/co;->k:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 593
    iget-wide p1, p0, Lcom/amap/api/services/a/co;->j:J

    iget-wide v0, p0, Lcom/amap/api/services/a/co;->h:J

    cmp-long p1, p1, v0

    if-gtz p1, :cond_8

    invoke-direct {p0}, Lcom/amap/api/services/a/co;->h()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 594
    :cond_8
    iget-object p1, p0, Lcom/amap/api/services/a/co;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p2, p0, Lcom/amap/api/services/a/co;->p:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 596
    :cond_9
    monitor-exit p0

    return-void

    .line 539
    :cond_a
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 536
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/amap/api/services/a/co;Lcom/amap/api/services/a/co$a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/a/co;->a(Lcom/amap/api/services/a/co$a;Z)V

    return-void
.end method

.method private static a(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 410
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 411
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    .line 413
    :cond_1
    :goto_0
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/File;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 417
    if-eqz p2, :cond_0

    .line 418
    invoke-static {p1}, Lcom/amap/api/services/a/co;->a(Ljava/io/File;)V

    .line 420
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 423
    return-void

    .line 421
    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method static synthetic b(Lcom/amap/api/services/a/co;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Lcom/amap/api/services/a/co;->j()V

    return-void
.end method

.method static synthetic c(Lcom/amap/api/services/a/co;)Z
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/amap/api/services/a/co;->h()Z

    move-result p0

    return p0
.end method

.method static synthetic d()Ljava/io/OutputStream;
    .locals 1

    .line 92
    sget-object v0, Lcom/amap/api/services/a/co;->q:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic d(Lcom/amap/api/services/a/co;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Lcom/amap/api/services/a/co;->g()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 300
    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    .line 304
    add-int/lit8 v3, v1, 0x1

    .line 305
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 307
    if-ne v0, v2, :cond_0

    .line 308
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 309
    const-string v4, "REMOVE"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v1, v4, :cond_1

    const-string v4, "REMOVE"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 310
    iget-object p1, p0, Lcom/amap/api/services/a/co;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    return-void

    .line 314
    :cond_0
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 317
    :cond_1
    iget-object v4, p0, Lcom/amap/api/services/a/co;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/services/a/co$c;

    .line 318
    const/4 v5, 0x0

    if-nez v4, :cond_2

    .line 319
    new-instance v4, Lcom/amap/api/services/a/co$c;

    invoke-direct {v4, p0, v3, v5}, Lcom/amap/api/services/a/co$c;-><init>(Lcom/amap/api/services/a/co;Ljava/lang/String;Lcom/amap/api/services/a/co$1;)V

    .line 320
    iget-object v6, p0, Lcom/amap/api/services/a/co;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    :cond_2
    if-eq v0, v2, :cond_3

    const-string v3, "CLEAN"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_3

    const-string v3, "CLEAN"

    .line 324
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 325
    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 326
    invoke-static {v4, v1}, Lcom/amap/api/services/a/co$c;->a(Lcom/amap/api/services/a/co$c;Z)Z

    .line 327
    invoke-static {v4, v5}, Lcom/amap/api/services/a/co$c;->a(Lcom/amap/api/services/a/co$c;Lcom/amap/api/services/a/co$a;)Lcom/amap/api/services/a/co$a;

    .line 328
    invoke-static {v4, p1}, Lcom/amap/api/services/a/co$c;->a(Lcom/amap/api/services/a/co$c;[Ljava/lang/String;)V

    .line 329
    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_4

    const-string v3, "DIRTY"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_4

    const-string v3, "DIRTY"

    .line 330
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 331
    new-instance p1, Lcom/amap/api/services/a/co$a;

    invoke-direct {p1, p0, v4, v5}, Lcom/amap/api/services/a/co$a;-><init>(Lcom/amap/api/services/a/co;Lcom/amap/api/services/a/co$c;Lcom/amap/api/services/a/co$1;)V

    invoke-static {v4, p1}, Lcom/amap/api/services/a/co$c;->a(Lcom/amap/api/services/a/co$c;Lcom/amap/api/services/a/co$a;)Lcom/amap/api/services/a/co$a;

    goto :goto_0

    .line 332
    :cond_4
    if-ne v0, v2, :cond_5

    const-string v0, "READ"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v1, v0, :cond_5

    const-string v0, "READ"

    .line 333
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 338
    :goto_0
    return-void

    .line 336
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic e(Lcom/amap/api/services/a/co;)I
    .locals 0

    .line 92
    iget p0, p0, Lcom/amap/api/services/a/co;->i:I

    return p0
.end method

.method private e()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    new-instance v0, Lcom/amap/api/services/a/cq;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/amap/api/services/a/co;->d:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Lcom/amap/api/services/a/cr;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Lcom/amap/api/services/a/cq;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 269
    :try_start_0
    invoke-virtual {v0}, Lcom/amap/api/services/a/cq;->a()Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-virtual {v0}, Lcom/amap/api/services/a/cq;->a()Ljava/lang/String;

    move-result-object v2

    .line 271
    invoke-virtual {v0}, Lcom/amap/api/services/a/cq;->a()Ljava/lang/String;

    move-result-object v3

    .line 272
    invoke-virtual {v0}, Lcom/amap/api/services/a/cq;->a()Ljava/lang/String;

    move-result-object v4

    .line 273
    invoke-virtual {v0}, Lcom/amap/api/services/a/cq;->a()Ljava/lang/String;

    move-result-object v5

    .line 274
    const-string v6, "libcore.io.DiskLruCache"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/amap/api/services/a/co;->g:I

    .line 275
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/amap/api/services/a/co;->i:I

    .line 276
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    .line 277
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 283
    const/4 v1, 0x0

    .line 286
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lcom/amap/api/services/a/cq;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amap/api/services/a/co;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    add-int/lit8 v1, v1, 0x1

    .line 290
    goto :goto_0

    .line 288
    :catch_0
    move-exception v2

    .line 289
    nop

    .line 292
    :try_start_2
    iget-object v2, p0, Lcom/amap/api/services/a/co;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/amap/api/services/a/co;->m:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 293
    nop

    .line 296
    invoke-static {v0}, Lcom/amap/api/services/a/cr;->a(Ljava/io/Closeable;)V

    .line 295
    nop

    .line 296
    return-void

    .line 278
    :cond_0
    :try_start_3
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected journal header: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 294
    :catchall_0
    move-exception v1

    .line 296
    invoke-static {v0}, Lcom/amap/api/services/a/cr;->a(Ljava/io/Closeable;)V

    .line 294
    throw v1
.end method

.method private e(Ljava/lang/String;)V
    .locals 3

    .line 699
    sget-object v0, Lcom/amap/api/services/a/co;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 700
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    return-void

    .line 701
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic f(Lcom/amap/api/services/a/co;)Ljava/io/File;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/amap/api/services/a/co;->c:Ljava/io/File;

    return-object p0
.end method

.method private f()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/amap/api/services/a/co;->e:Ljava/io/File;

    invoke-static {v0}, Lcom/amap/api/services/a/co;->a(Ljava/io/File;)V

    .line 346
    iget-object v0, p0, Lcom/amap/api/services/a/co;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 347
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/a/co$c;

    .line 348
    invoke-static {v1}, Lcom/amap/api/services/a/co$c;->a(Lcom/amap/api/services/a/co$c;)Lcom/amap/api/services/a/co$a;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 349
    :goto_1
    iget v2, p0, Lcom/amap/api/services/a/co;->i:I

    if-ge v3, v2, :cond_2

    .line 350
    iget-wide v4, p0, Lcom/amap/api/services/a/co;->j:J

    invoke-static {v1}, Lcom/amap/api/services/a/co$c;->b(Lcom/amap/api/services/a/co$c;)[J

    move-result-object v2

    aget-wide v6, v2, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/amap/api/services/a/co;->j:J

    .line 349
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 353
    :cond_0
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/amap/api/services/a/co$c;->a(Lcom/amap/api/services/a/co$c;Lcom/amap/api/services/a/co$a;)Lcom/amap/api/services/a/co$a;

    .line 354
    :goto_2
    iget v2, p0, Lcom/amap/api/services/a/co;->i:I

    if-ge v3, v2, :cond_1

    .line 355
    invoke-virtual {v1, v3}, Lcom/amap/api/services/a/co$c;->a(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/services/a/co;->a(Ljava/io/File;)V

    .line 356
    invoke-virtual {v1, v3}, Lcom/amap/api/services/a/co$c;->b(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/services/a/co;->a(Ljava/io/File;)V

    .line 354
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 358
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 360
    :cond_2
    goto :goto_0

    .line 361
    :cond_3
    return-void
.end method

.method private declared-synchronized g()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/co;->k:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/amap/api/services/a/co;->k:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 372
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/amap/api/services/a/co;->e:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/amap/api/services/a/cr;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 375
    :try_start_1
    const-string v1, "libcore.io.DiskLruCache"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 376
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 377
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 378
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 379
    iget v1, p0, Lcom/amap/api/services/a/co;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 380
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 381
    iget v1, p0, Lcom/amap/api/services/a/co;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 382
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 383
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 385
    iget-object v1, p0, Lcom/amap/api/services/a/co;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/services/a/co$c;

    .line 386
    invoke-static {v2}, Lcom/amap/api/services/a/co$c;->a(Lcom/amap/api/services/a/co$c;)Lcom/amap/api/services/a/co$a;

    move-result-object v3

    const/16 v4, 0xa

    if-eqz v3, :cond_1

    .line 387
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DIRTY "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/amap/api/services/a/co$c;->c(Lcom/amap/api/services/a/co$c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 389
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CLEAN "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/amap/api/services/a/co$c;->c(Lcom/amap/api/services/a/co$c;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/amap/api/services/a/co$c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 392
    :goto_1
    goto :goto_0

    .line 393
    :cond_2
    nop

    .line 407
    :try_start_2
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 395
    nop

    .line 397
    iget-object v0, p0, Lcom/amap/api/services/a/co;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 398
    iget-object v0, p0, Lcom/amap/api/services/a/co;->d:Ljava/io/File;

    iget-object v2, p0, Lcom/amap/api/services/a/co;->f:Ljava/io/File;

    invoke-static {v0, v2, v1}, Lcom/amap/api/services/a/co;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 400
    :cond_3
    iget-object v0, p0, Lcom/amap/api/services/a/co;->e:Ljava/io/File;

    iget-object v2, p0, Lcom/amap/api/services/a/co;->d:Ljava/io/File;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/amap/api/services/a/co;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 401
    iget-object v0, p0, Lcom/amap/api/services/a/co;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 405
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/amap/api/services/a/co;->d:Ljava/io/File;

    invoke-direct {v3, v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v1, Lcom/amap/api/services/a/cr;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/amap/api/services/a/co;->k:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 407
    monitor-exit p0

    return-void

    .line 394
    :catchall_0
    move-exception v1

    .line 407
    :try_start_3
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 394
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 367
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private h()Z
    .locals 2

    .line 603
    nop

    .line 604
    iget v0, p0, Lcom/amap/api/services/a/co;->m:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/amap/api/services/a/co;->m:I

    iget-object v1, p0, Lcom/amap/api/services/a/co;->l:Ljava/util/LinkedHashMap;

    .line 605
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private i()V
    .locals 2

    .line 648
    iget-object v0, p0, Lcom/amap/api/services/a/co;->k:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 651
    return-void

    .line 649
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 677
    :goto_0
    iget-wide v0, p0, Lcom/amap/api/services/a/co;->j:J

    iget-wide v2, p0, Lcom/amap/api/services/a/co;->h:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 678
    iget-object v0, p0, Lcom/amap/api/services/a/co;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 679
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 680
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 681
    invoke-virtual {p0, v0}, Lcom/amap/api/services/a/co;->c(Ljava/lang/String;)Z

    .line 682
    iget-object v1, p0, Lcom/amap/api/services/a/co;->n:Lcom/amap/api/services/a/cp;

    if-eqz v1, :cond_0

    .line 683
    iget-object v1, p0, Lcom/amap/api/services/a/co;->n:Lcom/amap/api/services/a/cp;

    invoke-interface {v1, v0}, Lcom/amap/api/services/a/cp;->a(Ljava/lang/String;)V

    .line 685
    :cond_0
    goto :goto_0

    .line 686
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lcom/amap/api/services/a/co$b;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 431
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/services/a/co;->i()V

    .line 432
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/co;->e(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/amap/api/services/a/co;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/a/co$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 435
    monitor-exit p0

    return-object v1

    .line 438
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/amap/api/services/a/co$c;->d(Lcom/amap/api/services/a/co$c;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    .line 439
    monitor-exit p0

    return-object v1

    .line 445
    :cond_1
    :try_start_2
    iget v2, p0, Lcom/amap/api/services/a/co;->i:I

    new-array v8, v2, [Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 447
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    :try_start_3
    iget v4, p0, Lcom/amap/api/services/a/co;->i:I

    if-ge v3, v4, :cond_2

    .line 448
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v0, v3}, Lcom/amap/api/services/a/co$c;->a(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v4, v8, v3
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 447
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 460
    :cond_2
    nop

    .line 462
    :try_start_4
    iget v1, p0, Lcom/amap/api/services/a/co;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amap/api/services/a/co;->m:I

    .line 463
    iget-object v1, p0, Lcom/amap/api/services/a/co;->k:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "READ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 464
    invoke-direct {p0}, Lcom/amap/api/services/a/co;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 465
    iget-object v1, p0, Lcom/amap/api/services/a/co;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/amap/api/services/a/co;->p:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 468
    :cond_3
    new-instance v1, Lcom/amap/api/services/a/co$b;

    invoke-static {v0}, Lcom/amap/api/services/a/co$c;->e(Lcom/amap/api/services/a/co$c;)J

    move-result-wide v6

    invoke-static {v0}, Lcom/amap/api/services/a/co$c;->b(Lcom/amap/api/services/a/co$c;)[J

    move-result-object v9

    const/4 v10, 0x0

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v10}, Lcom/amap/api/services/a/co$b;-><init>(Lcom/amap/api/services/a/co;Ljava/lang/String;J[Ljava/io/InputStream;[JLcom/amap/api/services/a/co$1;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v1

    .line 450
    :catch_0
    move-exception p1

    .line 452
    :goto_1
    :try_start_5
    iget p1, p0, Lcom/amap/api/services/a/co;->i:I

    if-ge v2, p1, :cond_4

    .line 453
    aget-object p1, v8, v2

    if-eqz p1, :cond_4

    .line 454
    aget-object p1, v8, v2

    invoke-static {p1}, Lcom/amap/api/services/a/cr;->a(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 452
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 459
    :cond_4
    monitor-exit p0

    return-object v1

    .line 430
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/amap/api/services/a/cp;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/amap/api/services/a/co;->n:Lcom/amap/api/services/a/cp;

    .line 158
    return-void
.end method

.method public declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    .line 644
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/co;->k:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/String;)Lcom/amap/api/services/a/co$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 476
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/amap/api/services/a/co;->a(Ljava/lang/String;J)Lcom/amap/api/services/a/co$a;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 655
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/services/a/co;->i()V

    .line 656
    invoke-direct {p0}, Lcom/amap/api/services/a/co;->j()V

    .line 657
    iget-object v0, p0, Lcom/amap/api/services/a/co;->k:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    monitor-exit p0

    return-void

    .line 654
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 694
    invoke-virtual {p0}, Lcom/amap/api/services/a/co;->close()V

    .line 695
    iget-object v0, p0, Lcom/amap/api/services/a/co;->c:Ljava/io/File;

    invoke-static {v0}, Lcom/amap/api/services/a/cr;->a(Ljava/io/File;)V

    .line 696
    return-void
.end method

.method public declared-synchronized c(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 615
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/services/a/co;->i()V

    .line 616
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/co;->e(Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/amap/api/services/a/co;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/a/co$c;

    .line 618
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/amap/api/services/a/co$c;->a(Lcom/amap/api/services/a/co$c;)Lcom/amap/api/services/a/co$a;

    move-result-object v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 622
    :cond_0
    :goto_0
    iget v2, p0, Lcom/amap/api/services/a/co;->i:I

    if-ge v1, v2, :cond_3

    .line 623
    invoke-virtual {v0, v1}, Lcom/amap/api/services/a/co$c;->a(I)Ljava/io/File;

    move-result-object v2

    .line 624
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 625
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to delete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 627
    :cond_2
    :goto_1
    iget-wide v2, p0, Lcom/amap/api/services/a/co;->j:J

    invoke-static {v0}, Lcom/amap/api/services/a/co$c;->b(Lcom/amap/api/services/a/co$c;)[J

    move-result-object v4

    aget-wide v4, v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/amap/api/services/a/co;->j:J

    .line 628
    invoke-static {v0}, Lcom/amap/api/services/a/co$c;->b(Lcom/amap/api/services/a/co$c;)[J

    move-result-object v2

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    .line 622
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 631
    :cond_3
    iget v0, p0, Lcom/amap/api/services/a/co;->m:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amap/api/services/a/co;->m:I

    .line 632
    iget-object v0, p0, Lcom/amap/api/services/a/co;->k:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REMOVE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 633
    iget-object v0, p0, Lcom/amap/api/services/a/co;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    invoke-direct {p0}, Lcom/amap/api/services/a/co;->h()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 636
    iget-object p1, p0, Lcom/amap/api/services/a/co;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcom/amap/api/services/a/co;->p:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    :cond_4
    monitor-exit p0

    return v1

    .line 619
    :cond_5
    :goto_2
    monitor-exit p0

    return v1

    .line 614
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 662
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/co;->k:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 663
    monitor-exit p0

    return-void

    .line 665
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amap/api/services/a/co;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/a/co$c;

    .line 666
    invoke-static {v1}, Lcom/amap/api/services/a/co$c;->a(Lcom/amap/api/services/a/co$c;)Lcom/amap/api/services/a/co$a;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 667
    invoke-static {v1}, Lcom/amap/api/services/a/co$c;->a(Lcom/amap/api/services/a/co$c;)Lcom/amap/api/services/a/co$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/a/co$a;->b()V

    .line 669
    :cond_1
    goto :goto_0

    .line 670
    :cond_2
    invoke-direct {p0}, Lcom/amap/api/services/a/co;->j()V

    .line 671
    iget-object v0, p0, Lcom/amap/api/services/a/co;->k:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 672
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/a/co;->k:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 673
    monitor-exit p0

    return-void

    .line 661
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
