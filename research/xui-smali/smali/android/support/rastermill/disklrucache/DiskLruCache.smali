.class public final Landroid/support/rastermill/disklrucache/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;,
        Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;,
        Landroid/support/rastermill/disklrucache/DiskLruCache$Value;
    }
.end annotation


# static fields
.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_BACKUP:Ljava/lang/String; = "journal.bkp"

.field static final JOURNAL_FILE_TEMP:Ljava/lang/String; = "journal.tmp"

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field final executorService:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final journalFile:Ljava/io/File;

.field private final journalFileBackup:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 15
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "appVersion"    # I
    .param p3, "valueCount"    # I
    .param p4, "maxSize"    # J

    move-object v0, p0

    move-object/from16 v1, p1

    .line 176
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 144
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/support/rastermill/disklrucache/DiskLruCache;->size:J

    .line 146
    new-instance v4, Ljava/util/LinkedHashMap;

    const/4 v5, 0x0

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v4, v0, Landroid/support/rastermill/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 155
    iput-wide v2, v0, Landroid/support/rastermill/disklrucache/DiskLruCache;->nextSequenceNumber:J

    .line 158
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x3c

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v2, v0, Landroid/support/rastermill/disklrucache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 160
    new-instance v2, Landroid/support/rastermill/disklrucache/DiskLruCache$1;

    invoke-direct {v2, v0}, Landroid/support/rastermill/disklrucache/DiskLruCache$1;-><init>(Landroid/support/rastermill/disklrucache/DiskLruCache;)V

    iput-object v2, v0, Landroid/support/rastermill/disklrucache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 177
    iput-object v1, v0, Landroid/support/rastermill/disklrucache/DiskLruCache;->directory:Ljava/io/File;

    .line 178
    move/from16 v2, p2

    iput v2, v0, Landroid/support/rastermill/disklrucache/DiskLruCache;->appVersion:I

    .line 179
    new-instance v3, Ljava/io/File;

    const-string v4, "journal"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, v0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    .line 180
    new-instance v3, Ljava/io/File;

    const-string v4, "journal.tmp"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, v0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 181
    new-instance v3, Ljava/io/File;

    const-string v4, "journal.bkp"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, v0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    .line 182
    move/from16 v3, p3

    iput v3, v0, Landroid/support/rastermill/disklrucache/DiskLruCache;->valueCount:I

    .line 183
    move-wide/from16 v4, p4

    iput-wide v4, v0, Landroid/support/rastermill/disklrucache/DiskLruCache;->maxSize:J

    .line 184
    return-void
.end method

.method static synthetic access$000(Landroid/support/rastermill/disklrucache/DiskLruCache;)Ljava/io/Writer;
    .locals 1
    .param p0, "x0"    # Landroid/support/rastermill/disklrucache/DiskLruCache;

    .line 85
    iget-object v0, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/rastermill/disklrucache/DiskLruCache;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/rastermill/disklrucache/DiskLruCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Landroid/support/rastermill/disklrucache/DiskLruCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$1600(Landroid/support/rastermill/disklrucache/DiskLruCache;Ljava/lang/String;J)Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;
    .locals 1
    .param p0, "x0"    # Landroid/support/rastermill/disklrucache/DiskLruCache;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/support/rastermill/disklrucache/DiskLruCache;->edit(Ljava/lang/String;J)Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-static {p0}, Landroid/support/rastermill/disklrucache/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Landroid/support/rastermill/disklrucache/DiskLruCache;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/rastermill/disklrucache/DiskLruCache;

    .line 85
    iget v0, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->valueCount:I

    return v0
.end method

.method static synthetic access$1900(Landroid/support/rastermill/disklrucache/DiskLruCache;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Landroid/support/rastermill/disklrucache/DiskLruCache;

    .line 85
    iget-object v0, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/rastermill/disklrucache/DiskLruCache;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/rastermill/disklrucache/DiskLruCache;

    .line 85
    invoke-direct {p0}, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Landroid/support/rastermill/disklrucache/DiskLruCache;Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/support/rastermill/disklrucache/DiskLruCache;
    .param p1, "x1"    # Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/support/rastermill/disklrucache/DiskLruCache;->completeEdit(Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/support/rastermill/disklrucache/DiskLruCache;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/rastermill/disklrucache/DiskLruCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Landroid/support/rastermill/disklrucache/DiskLruCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$402(Landroid/support/rastermill/disklrucache/DiskLruCache;I)I
    .locals 0
    .param p0, "x0"    # Landroid/support/rastermill/disklrucache/DiskLruCache;
    .param p1, "x1"    # I

    .line 85
    iput p1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->redundantOpCount:I

    return p1
.end method

.method private checkNotClosed()V
    .locals 2

    .line 617
    iget-object v0, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 620
    return-void

    .line 618
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized completeEdit(Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;Z)V
    .locals 10
    .param p1, "editor"    # Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 502
    :try_start_0
    invoke-static {p1}, Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;->access$1400(Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;)Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;

    move-result-object v0

    .line 503
    .local v0, "entry":Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;
    invoke-static {v0}, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;->access$700(Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;)Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;

    move-result-object v1

    if-ne v1, p1, :cond_a

    .line 508
    const/4 v1, 0x0

    if-eqz p2, :cond_2

    invoke-static {v0}, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;->access$600(Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 509
    move v2, v1

    .local v2, "i":I
    :goto_0
    iget v3, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_2

    .line 510
    invoke-static {p1}, Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;->access$1500(Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;)[Z

    move-result-object v3

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    .line 514
    invoke-virtual {v0, v2}, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 515
    invoke-virtual {p1}, Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    monitor-exit p0

    return-void

    .line 509
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 511
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;->abort()V

    .line 512
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Newly created entry didn\'t create value for index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 521
    .end local v2    # "i":I
    :cond_2
    nop

    .local v1, "i":I
    :goto_1
    iget v2, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->valueCount:I

    if-ge v1, v2, :cond_5

    .line 522
    invoke-virtual {v0, v1}, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v2

    .line 523
    .local v2, "dirty":Ljava/io/File;
    if-eqz p2, :cond_3

    .line 524
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 525
    invoke-virtual {v0, v1}, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    .line 526
    .local v3, "clean":Ljava/io/File;
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 527
    invoke-static {v0}, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;->access$1000(Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v4

    aget-wide v4, v4, v1

    .line 528
    .local v4, "oldLength":J
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 529
    .local v6, "newLength":J
    invoke-static {v0}, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;->access$1000(Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v8

    aput-wide v6, v8, v1

    .line 530
    iget-wide v8, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->size:J

    sub-long/2addr v8, v4

    add-long/2addr v8, v6

    iput-wide v8, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->size:J

    .line 531
    .end local v3    # "clean":Ljava/io/File;
    .end local v4    # "oldLength":J
    .end local v6    # "newLength":J
    goto :goto_2

    .line 533
    :cond_3
    invoke-static {v2}, Landroid/support/rastermill/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 521
    .end local v2    # "dirty":Ljava/io/File;
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 537
    .end local v1    # "i":I
    :cond_5
    iget v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->redundantOpCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 538
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;->access$702(Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;)Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;

    .line 539
    invoke-static {v0}, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;->access$600(Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;)Z

    move-result v1

    or-int/2addr v1, p2

    const/16 v3, 0xa

    const/16 v4, 0x20

    if-eqz v1, :cond_6

    .line 540
    invoke-static {v0, v2}, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;->access$602(Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;Z)Z

    .line 541
    iget-object v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const-string v2, "CLEAN"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 542
    iget-object v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1, v4}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 543
    iget-object v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-static {v0}, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;->access$1100(Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 544
    iget-object v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 545
    iget-object v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 547
    if-eqz p2, :cond_7

    .line 548
    iget-wide v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->nextSequenceNumber:J

    invoke-static {v0, v1, v2}, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;->access$1202(Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;J)J

    goto :goto_3

    .line 551
    :cond_6
    iget-object v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;->access$1100(Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    iget-object v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const-string v2, "REMOVE"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 553
    iget-object v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1, v4}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 554
    iget-object v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-static {v0}, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;->access$1100(Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 555
    iget-object v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 557
    :cond_7
    :goto_3
    iget-object v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 559
    iget-wide v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->size:J

    iget-wide v3, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->maxSize:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_8

    invoke-direct {p0}, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 560
    :cond_8
    iget-object v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 562
    :cond_9
    monitor-exit p0

    return-void

    .line 504
    :cond_a
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 501
    .end local v0    # "entry":Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;
    .end local p1    # "editor":Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;
    .end local p2    # "success":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/support/rastermill/disklrucache/DiskLruCache;
    throw p1
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 387
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 390
    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized edit(Ljava/lang/String;J)Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "expectedSequenceNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 445
    :try_start_0
    invoke-direct {p0}, Landroid/support/rastermill/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 446
    iget-object v0, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;

    .line 447
    .local v0, "entry":Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;
    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 448
    invoke-static {v0}, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;->access$1200(Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v1, v3, p2

    if-eqz v1, :cond_1

    .line 449
    :cond_0
    monitor-exit p0

    return-object v2

    .line 451
    :cond_1
    if-nez v0, :cond_2

    .line 452
    :try_start_1
    new-instance v1, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;

    invoke-direct {v1, p0, p1, v2}, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;-><init>(Landroid/support/rastermill/disklrucache/DiskLruCache;Ljava/lang/String;Landroid/support/rastermill/disklrucache/DiskLruCache$1;)V

    move-object v0, v1

    .line 453
    iget-object v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 454
    :cond_2
    invoke-static {v0}, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;->access$700(Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;)Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 455
    monitor-exit p0

    return-object v2

    .line 458
    :cond_3
    :goto_0
    :try_start_2
    new-instance v1, Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;

    invoke-direct {v1, p0, v0, v2}, Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;-><init>(Landroid/support/rastermill/disklrucache/DiskLruCache;Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;Landroid/support/rastermill/disklrucache/DiskLruCache$1;)V

    .line 459
    .local v1, "editor":Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;
    invoke-static {v0, v1}, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;->access$702(Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;)Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;

    .line 462
    iget-object v2, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const-string v3, "DIRTY"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 463
    iget-object v2, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 464
    iget-object v2, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 465
    iget-object v2, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 466
    iget-object v2, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 467
    monitor-exit p0

    return-object v1

    .line 444
    .end local v0    # "entry":Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;
    .end local v1    # "editor":Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "expectedSequenceNumber":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/support/rastermill/disklrucache/DiskLruCache;
    throw p1
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 662
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Landroid/support/rastermill/disklrucache/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Landroid/support/rastermill/disklrucache/Util;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private journalRebuildRequired()Z
    .locals 3

    .line 569
    const/16 v0, 0x7d0

    .line 570
    .local v0, "redundantOpCompactThreshold":I
    iget v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->redundantOpCount:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_0

    iget v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->redundantOpCount:I

    iget-object v2, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 571
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 570
    :goto_0
    return v1
.end method

.method public static open(Ljava/io/File;IIJ)Landroid/support/rastermill/disklrucache/DiskLruCache;
    .locals 11
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "appVersion"    # I
    .param p2, "valueCount"    # I
    .param p3, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_4

    .line 200
    if-lez p2, :cond_3

    .line 205
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 206
    .local v0, "backupFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 209
    .local v1, "journalFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 212
    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/support/rastermill/disklrucache/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 217
    .end local v1    # "journalFile":Ljava/io/File;
    :cond_1
    :goto_0
    new-instance v1, Landroid/support/rastermill/disklrucache/DiskLruCache;

    move-object v3, v1

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Landroid/support/rastermill/disklrucache/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 218
    .local v1, "cache":Landroid/support/rastermill/disklrucache/DiskLruCache;
    iget-object v2, v1, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 220
    :try_start_0
    invoke-direct {v1}, Landroid/support/rastermill/disklrucache/DiskLruCache;->readJournal()V

    .line 221
    invoke-direct {v1}, Landroid/support/rastermill/disklrucache/DiskLruCache;->processJournal()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    return-object v1

    .line 223
    :catch_0
    move-exception v2

    .line 224
    .local v2, "journalIsCorrupt":Ljava/io/IOException;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DiskLruCache "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is corrupt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", removing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 225
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v1}, Landroid/support/rastermill/disklrucache/DiskLruCache;->delete()V

    .line 235
    .end local v2    # "journalIsCorrupt":Ljava/io/IOException;
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 236
    new-instance v2, Landroid/support/rastermill/disklrucache/DiskLruCache;

    move-object v5, v2

    move-object v6, p0

    move v7, p1

    move v8, p2

    move-wide v9, p3

    invoke-direct/range {v5 .. v10}, Landroid/support/rastermill/disklrucache/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    move-object v1, v2

    .line 237
    invoke-direct {v1}, Landroid/support/rastermill/disklrucache/DiskLruCache;->rebuildJournal()V

    .line 238
    return-object v1

    .line 201
    .end local v0    # "backupFile":Ljava/io/File;
    .end local v1    # "cache":Landroid/support/rastermill/disklrucache/DiskLruCache;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processJournal()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    iget-object v0, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v0}, Landroid/support/rastermill/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 326
    iget-object v0, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 327
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;

    .line 328
    .local v1, "entry":Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;
    invoke-static {v1}, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;->access$700(Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;)Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 329
    nop

    .local v3, "t":I
    :goto_1
    move v2, v3

    .end local v3    # "t":I
    .local v2, "t":I
    iget v3, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_2

    .line 330
    iget-wide v3, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->size:J

    invoke-static {v1}, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;->access$1000(Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v5

    aget-wide v5, v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->size:J

    .line 329
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "t":I
    .restart local v3    # "t":I
    goto :goto_1

    .line 333
    .end local v3    # "t":I
    :cond_0
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;->access$702(Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;)Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;

    .line 334
    nop

    .restart local v3    # "t":I
    :goto_2
    move v2, v3

    .end local v3    # "t":I
    .restart local v2    # "t":I
    iget v3, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_1

    .line 335
    invoke-virtual {v1, v2}, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Landroid/support/rastermill/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 336
    invoke-virtual {v1, v2}, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Landroid/support/rastermill/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 334
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "t":I
    .restart local v3    # "t":I
    goto :goto_2

    .line 338
    .end local v3    # "t":I
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 340
    .end local v1    # "entry":Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;
    :cond_2
    goto :goto_0

    .line 341
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;>;"
    :cond_3
    return-void
.end method

.method private readJournal()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    new-instance v0, Landroid/support/rastermill/disklrucache/StrictLineReader;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Landroid/support/rastermill/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Landroid/support/rastermill/disklrucache/StrictLineReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 244
    .local v0, "reader":Landroid/support/rastermill/disklrucache/StrictLineReader;
    :try_start_0
    invoke-virtual {v0}, Landroid/support/rastermill/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "magic":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/support/rastermill/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, "version":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/support/rastermill/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 247
    .local v3, "appVersionString":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/support/rastermill/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 248
    .local v4, "valueCountString":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/support/rastermill/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 249
    .local v5, "blank":Ljava/lang/String;
    const-string v6, "libcore.io.DiskLruCache"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "1"

    .line 250
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->appVersion:I

    .line 251
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->valueCount:I

    .line 252
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, ""

    .line 253
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    .line 258
    const/4 v6, 0x0

    .line 261
    .local v6, "lineCount":I
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/support/rastermill/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/support/rastermill/disklrucache/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    add-int/lit8 v6, v6, 0x1

    .line 265
    goto :goto_0

    .line 263
    :catch_0
    move-exception v7

    .line 264
    .local v7, "endOfJournal":Ljava/io/EOFException;
    nop

    .line 267
    .end local v7    # "endOfJournal":Ljava/io/EOFException;
    :try_start_2
    iget-object v7, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->size()I

    move-result v7

    sub-int v7, v6, v7

    iput v7, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 270
    invoke-virtual {v0}, Landroid/support/rastermill/disklrucache/StrictLineReader;->hasUnterminatedLine()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 271
    invoke-direct {p0}, Landroid/support/rastermill/disklrucache/DiskLruCache;->rebuildJournal()V

    goto :goto_1

    .line 273
    :cond_0
    new-instance v7, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/OutputStreamWriter;

    new-instance v9, Ljava/io/FileOutputStream;

    iget-object v10, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v11, 0x1

    invoke-direct {v9, v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v10, Landroid/support/rastermill/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v8, v9, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v7, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    .end local v1    # "magic":Ljava/lang/String;
    .end local v2    # "version":Ljava/lang/String;
    .end local v3    # "appVersionString":Ljava/lang/String;
    .end local v4    # "valueCountString":Ljava/lang/String;
    .end local v5    # "blank":Ljava/lang/String;
    .end local v6    # "lineCount":I
    :goto_1
    invoke-static {v0}, Landroid/support/rastermill/disklrucache/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 278
    nop

    .line 279
    return-void

    .line 254
    .restart local v1    # "magic":Ljava/lang/String;
    .restart local v2    # "version":Ljava/lang/String;
    .restart local v3    # "appVersionString":Ljava/lang/String;
    .restart local v4    # "valueCountString":Ljava/lang/String;
    .restart local v5    # "blank":Ljava/lang/String;
    :cond_1
    :try_start_3
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unexpected journal header: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 277
    .end local v1    # "magic":Ljava/lang/String;
    .end local v2    # "version":Ljava/lang/String;
    .end local v3    # "appVersionString":Ljava/lang/String;
    .end local v4    # "valueCountString":Ljava/lang/String;
    .end local v5    # "blank":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/support/rastermill/disklrucache/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 278
    throw v1
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 8
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 283
    .local v1, "firstSpace":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    .line 287
    add-int/lit8 v3, v1, 0x1

    .line 288
    .local v3, "keyBegin":I
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 290
    .local v0, "secondSpace":I
    if-ne v0, v2, :cond_0

    .line 291
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 292
    .local v4, "key":Ljava/lang/String;
    const-string v5, "REMOVE"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v1, v5, :cond_1

    const-string v5, "REMOVE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 293
    iget-object v2, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    return-void

    .line 297
    .end local v4    # "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 300
    .restart local v4    # "key":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;

    .line 301
    .local v5, "entry":Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;
    const/4 v6, 0x0

    if-nez v5, :cond_2

    .line 302
    new-instance v7, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;

    invoke-direct {v7, p0, v4, v6}, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;-><init>(Landroid/support/rastermill/disklrucache/DiskLruCache;Ljava/lang/String;Landroid/support/rastermill/disklrucache/DiskLruCache$1;)V

    move-object v5, v7

    .line 303
    iget-object v7, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    :cond_2
    if-eq v0, v2, :cond_3

    const-string v7, "CLEAN"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v1, v7, :cond_3

    const-string v7, "CLEAN"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 307
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, "parts":[Ljava/lang/String;
    const/4 v7, 0x1

    invoke-static {v5, v7}, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;->access$602(Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;Z)Z

    .line 309
    invoke-static {v5, v6}, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;->access$702(Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;)Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;

    .line 310
    invoke-static {v5, v2}, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;->access$800(Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;[Ljava/lang/String;)V

    .line 311
    .end local v2    # "parts":[Ljava/lang/String;
    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_4

    const-string v7, "DIRTY"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v1, v7, :cond_4

    const-string v7, "DIRTY"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 312
    new-instance v2, Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;

    invoke-direct {v2, p0, v5, v6}, Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;-><init>(Landroid/support/rastermill/disklrucache/DiskLruCache;Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;Landroid/support/rastermill/disklrucache/DiskLruCache$1;)V

    invoke-static {v5, v2}, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;->access$702(Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;)Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;

    goto :goto_0

    .line 313
    :cond_4
    if-ne v0, v2, :cond_5

    const-string v2, "READ"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_5

    const-string v2, "READ"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 318
    :goto_0
    return-void

    .line 316
    :cond_5
    new-instance v2, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected journal line: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 284
    .end local v0    # "secondSpace":I
    .end local v3    # "keyBegin":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "entry":Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected journal line: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized rebuildJournal()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 348
    :try_start_0
    iget-object v0, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 352
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Landroid/support/rastermill/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 355
    .local v0, "writer":Ljava/io/Writer;
    :try_start_1
    const-string v1, "libcore.io.DiskLruCache"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 356
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 357
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 358
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 359
    iget v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->appVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 360
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 361
    iget v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->valueCount:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 362
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 363
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 365
    iget-object v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

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

    check-cast v2, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;

    .line 366
    .local v2, "entry":Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;
    invoke-static {v2}, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;->access$700(Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;)Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;

    move-result-object v3

    const/16 v4, 0xa

    if-eqz v3, :cond_1

    .line 367
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DIRTY "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;->access$1100(Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 369
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CLEAN "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;->access$1100(Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 371
    .end local v2    # "entry":Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;
    :goto_1
    goto :goto_0

    .line 373
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 374
    nop

    .line 376
    iget-object v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 377
    iget-object v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    iget-object v3, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-static {v1, v3, v2}, Landroid/support/rastermill/disklrucache/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 379
    :cond_3
    iget-object v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v3, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/support/rastermill/disklrucache/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 380
    iget-object v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 382
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v4, v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v2, Landroid/support/rastermill/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 384
    monitor-exit p0

    return-void

    .line 373
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 374
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 347
    .end local v0    # "writer":Ljava/io/Writer;
    :catchall_1
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/support/rastermill/disklrucache/DiskLruCache;
    throw v0
.end method

.method private static renameTo(Ljava/io/File;Ljava/io/File;Z)V
    .locals 1
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;
    .param p2, "deleteDestination"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    if-eqz p2, :cond_0

    .line 394
    invoke-static {p1}, Landroid/support/rastermill/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 396
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    return-void

    .line 397
    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method private trimToSize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 645
    :goto_0
    iget-wide v0, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->size:J

    iget-wide v2, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->maxSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 646
    iget-object v0, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 647
    .local v0, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/rastermill/disklrucache/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 648
    .end local v0    # "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;>;"
    goto :goto_0

    .line 649
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 631
    :try_start_0
    iget-object v0, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 632
    monitor-exit p0

    return-void

    .line 634
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

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

    check-cast v1, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;

    .line 635
    .local v1, "entry":Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;
    invoke-static {v1}, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;->access$700(Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;)Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 636
    invoke-static {v1}, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;->access$700(Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;)Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;->abort()V

    .line 638
    .end local v1    # "entry":Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;
    :cond_1
    goto :goto_0

    .line 639
    :cond_2
    invoke-direct {p0}, Landroid/support/rastermill/disklrucache/DiskLruCache;->trimToSize()V

    .line 640
    iget-object v0, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 641
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 642
    monitor-exit p0

    return-void

    .line 630
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/support/rastermill/disklrucache/DiskLruCache;
    throw v0
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 657
    invoke-virtual {p0}, Landroid/support/rastermill/disklrucache/DiskLruCache;->close()V

    .line 658
    iget-object v0, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Landroid/support/rastermill/disklrucache/Util;->deleteContents(Ljava/io/File;)V

    .line 659
    return-void
.end method

.method public edit(Ljava/lang/String;)Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 441
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/support/rastermill/disklrucache/DiskLruCache;->edit(Ljava/lang/String;J)Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 624
    :try_start_0
    invoke-direct {p0}, Landroid/support/rastermill/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 625
    invoke-direct {p0}, Landroid/support/rastermill/disklrucache/DiskLruCache;->trimToSize()V

    .line 626
    iget-object v0, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    monitor-exit p0

    return-void

    .line 623
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/support/rastermill/disklrucache/DiskLruCache;
    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Landroid/support/rastermill/disklrucache/DiskLruCache$Value;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 407
    :try_start_0
    invoke-direct {p0}, Landroid/support/rastermill/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 408
    iget-object v0, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    .local v0, "entry":Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 410
    monitor-exit p0

    return-object v1

    .line 413
    :cond_0
    :try_start_1
    invoke-static {v0}, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;->access$600(Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    .line 414
    monitor-exit p0

    return-object v1

    .line 417
    :cond_1
    :try_start_2
    iget-object v2, v0, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 419
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v6, :cond_2

    .line 420
    monitor-exit p0

    return-object v1

    .line 417
    .end local v5    # "file":Ljava/io/File;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 424
    :cond_3
    :try_start_3
    iget v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 425
    iget-object v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const-string v2, "READ"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 426
    iget-object v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 427
    iget-object v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 428
    iget-object v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 429
    invoke-direct {p0}, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 430
    iget-object v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 433
    :cond_4
    new-instance v9, Landroid/support/rastermill/disklrucache/DiskLruCache$Value;

    invoke-static {v0}, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;->access$1200(Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;)J

    move-result-wide v4

    iget-object v6, v0, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    invoke-static {v0}, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;->access$1000(Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v7

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Landroid/support/rastermill/disklrucache/DiskLruCache$Value;-><init>(Landroid/support/rastermill/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[JLandroid/support/rastermill/disklrucache/DiskLruCache$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v9

    .line 406
    .end local v0    # "entry":Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/support/rastermill/disklrucache/DiskLruCache;
    throw p1
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .line 472
    iget-object v0, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized getMaxSize()J
    .locals 2

    monitor-enter p0

    .line 480
    :try_start_0
    iget-wide v0, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->maxSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/support/rastermill/disklrucache/DiskLruCache;
    throw v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    monitor-enter p0

    .line 613
    :try_start_0
    iget-object v0, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
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

    .end local p0    # "this":Landroid/support/rastermill/disklrucache/DiskLruCache;
    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 581
    :try_start_0
    invoke-direct {p0}, Landroid/support/rastermill/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 582
    iget-object v0, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;

    .line 583
    .local v0, "entry":Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-static {v0}, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;->access$700(Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;)Landroid/support/rastermill/disklrucache/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 587
    :cond_0
    nop

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->valueCount:I

    if-ge v1, v2, :cond_3

    .line 588
    invoke-virtual {v0, v1}, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    .line 589
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 590
    :cond_1
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 592
    :cond_2
    :goto_1
    iget-wide v3, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->size:J

    invoke-static {v0}, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;->access$1000(Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v5

    aget-wide v5, v5, v1

    sub-long/2addr v3, v5

    iput-wide v3, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->size:J

    .line 593
    invoke-static {v0}, Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;->access$1000(Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v3

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v1

    .line 587
    .end local v2    # "file":Ljava/io/File;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 596
    .end local v1    # "i":I
    :cond_3
    iget v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->redundantOpCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 597
    iget-object v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const-string v3, "REMOVE"

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 598
    iget-object v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 599
    iget-object v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 600
    iget-object v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 602
    iget-object v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    invoke-direct {p0}, Landroid/support/rastermill/disklrucache/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 605
    iget-object v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v3, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    :cond_4
    monitor-exit p0

    return v2

    .line 584
    :cond_5
    :goto_2
    monitor-exit p0

    return v1

    .line 580
    .end local v0    # "entry":Landroid/support/rastermill/disklrucache/DiskLruCache$Entry;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/support/rastermill/disklrucache/DiskLruCache;
    throw p1
.end method

.method public declared-synchronized setMaxSize(J)V
    .locals 2
    .param p1, "maxSize"    # J

    monitor-enter p0

    .line 488
    :try_start_0
    iput-wide p1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->maxSize:J

    .line 489
    iget-object v0, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    monitor-exit p0

    return-void

    .line 487
    .end local p1    # "maxSize":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/support/rastermill/disklrucache/DiskLruCache;
    throw p1
.end method

.method public declared-synchronized size()J
    .locals 2

    monitor-enter p0

    .line 498
    :try_start_0
    iget-wide v0, p0, Landroid/support/rastermill/disklrucache/DiskLruCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/support/rastermill/disklrucache/DiskLruCache;
    throw v0
.end method
