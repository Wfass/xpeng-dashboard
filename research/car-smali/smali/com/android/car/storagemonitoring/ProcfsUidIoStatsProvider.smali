.class public Lcom/android/car/storagemonitoring/ProcfsUidIoStatsProvider;
.super Ljava/lang/Object;
.source "ProcfsUidIoStatsProvider.java"

# interfaces
.implements Lcom/android/car/storagemonitoring/UidIoStatsProvider;


# static fields
.field private static DEFAULT_STATS_FILE:Ljava/nio/file/Path;


# instance fields
.field private final mStatsFile:Ljava/nio/file/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/uid_io/stats"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    sput-object v0, Lcom/android/car/storagemonitoring/ProcfsUidIoStatsProvider;->DEFAULT_STATS_FILE:Ljava/nio/file/Path;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    sget-object v0, Lcom/android/car/storagemonitoring/ProcfsUidIoStatsProvider;->DEFAULT_STATS_FILE:Ljava/nio/file/Path;

    invoke-direct {p0, v0}, Lcom/android/car/storagemonitoring/ProcfsUidIoStatsProvider;-><init>(Ljava/nio/file/Path;)V

    .line 44
    return-void
.end method

.method constructor <init>(Ljava/nio/file/Path;)V
    .locals 1
    .param p1, "statsFile"    # Ljava/nio/file/Path;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    iput-object v0, p0, Lcom/android/car/storagemonitoring/ProcfsUidIoStatsProvider;->mStatsFile:Ljava/nio/file/Path;

    .line 49
    return-void
.end method


# virtual methods
.method public load()Landroid/util/SparseArray;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/car/storagemonitoring/UidIoRecord;",
            ">;"
        }
    .end annotation

    .line 55
    move-object/from16 v1, p0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v2, v0

    .line 57
    .local v2, "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/car/storagemonitoring/UidIoRecord;>;"
    const/4 v3, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/android/car/storagemonitoring/ProcfsUidIoStatsProvider;->mStatsFile:Ljava/nio/file/Path;

    invoke-static {v0}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v4, v0

    .line 61
    .local v4, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 60
    nop

    .line 63
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 64
    .local v5, "line":Ljava/lang/String;
    new-instance v6, Ljava/util/StringTokenizer;

    invoke-direct {v6, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 65
    .local v6, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v7

    const/16 v8, 0xb

    if-eq v7, v8, :cond_0

    .line 66
    const-string v0, "CAR.STORAGE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "malformed I/O stats entry: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-object v3

    .line 71
    :cond_0
    :try_start_1
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 72
    .local v7, "uid":I
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 73
    .local v10, "foreground_rchar":J
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 74
    .local v12, "foreground_wchar":J
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 75
    .local v14, "foreground_read_bytes":J
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 76
    .local v16, "foreground_write_bytes":J
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 77
    .local v20, "background_rchar":J
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 78
    .local v22, "background_wchar":J
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 79
    .local v24, "background_read_bytes":J
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    .line 80
    .local v26, "background_write_bytes":J
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 81
    .local v18, "foreground_fsync":J
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    .line 83
    .local v28, "background_fsync":J
    new-instance v9, Landroid/car/storagemonitoring/UidIoRecord;

    move-object v8, v9

    move-object v3, v9

    move v9, v7

    invoke-direct/range {v8 .. v29}, Landroid/car/storagemonitoring/UidIoRecord;-><init>(IJJJJJJJJJJ)V

    invoke-virtual {v2, v7, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    .end local v7    # "uid":I
    .end local v10    # "foreground_rchar":J
    .end local v12    # "foreground_wchar":J
    .end local v14    # "foreground_read_bytes":J
    .end local v16    # "foreground_write_bytes":J
    .end local v18    # "foreground_fsync":J
    .end local v20    # "background_rchar":J
    .end local v22    # "background_wchar":J
    .end local v24    # "background_read_bytes":J
    .end local v26    # "background_write_bytes":J
    .end local v28    # "background_fsync":J
    nop

    .line 99
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "tokenizer":Ljava/util/StringTokenizer;
    nop

    .line 63
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 95
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "tokenizer":Ljava/util/StringTokenizer;
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "CAR.STORAGE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "malformed I/O stats entry: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    const/4 v3, 0x0

    return-object v3

    .line 101
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_1
    return-object v2

    .line 58
    .end local v4    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v0

    .line 59
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "CAR.STORAGE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can\'t read I/O stats from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/car/storagemonitoring/ProcfsUidIoStatsProvider;->mStatsFile:Ljava/nio/file/Path;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    const/4 v3, 0x0

    return-object v3
.end method
