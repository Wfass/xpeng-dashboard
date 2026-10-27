.class public Lcom/xiaopeng/commonfunc/utils/MemoryUtil;
.super Ljava/lang/Object;
.source "MemoryUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/commonfunc/utils/MemoryUtil$SingleInstance;
    }
.end annotation


# static fields
.field private static final APP_WHITE_LIST:[Ljava/lang/String;

.field private static final KEY_COMPACT_MEMORY:I = 0x3ea

.field private static final KEY_DROP_CACHE:I = 0x3e9

.field private static final MAX_MEM_LIMIT:I = 0x7d000

.field private static final MAX_TIME_LIMIT:J = 0x927c0L

.field private static final MEM_LEAK_DETECT_FILE:Ljava/lang/String; = "/proc/xmonitor/memleak"

.field private static final TAG:Ljava/lang/String; = "MemoryUtil"


# instance fields
.field private final mLongArray:Landroid/util/SparseLongArray;

.field private final mObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    const-string v0, "com.xiaopeng.montecarlo"

    const-string v1, "com.xiaopeng.ota"

    const-string v2, "com.telenav.app.arp"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/utils/MemoryUtil;->APP_WHITE_LIST:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/utils/MemoryUtil;->mObject:Ljava/lang/Object;

    .line 39
    new-instance v0, Landroid/util/SparseLongArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/utils/MemoryUtil;->mLongArray:Landroid/util/SparseLongArray;

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/commonfunc/utils/MemoryUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/commonfunc/utils/MemoryUtil$1;

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/commonfunc/utils/MemoryUtil;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/commonfunc/utils/MemoryUtil;
    .locals 1

    .line 43
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/MemoryUtil$SingleInstance;->access$000()Lcom/xiaopeng/commonfunc/utils/MemoryUtil;

    move-result-object v0

    return-object v0
.end method

.method private runCommand(Ljava/lang/String;)V
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;

    .line 140
    const/4 v0, 0x0

    .line 142
    .local v0, "process":Ljava/lang/Process;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    move-object v0, v1

    .line 143
    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v1

    .line 145
    .local v1, "exit":I
    const-string v2, "MemoryUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exit:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .end local v1    # "exit":I
    :cond_0
    if-eqz v0, :cond_1

    .line 151
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    goto :goto_1

    .line 150
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "MemoryUtil"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_1

    goto :goto_0

    .line 154
    :cond_1
    :goto_1
    return-void

    .line 150
    :goto_2
    if-eqz v0, :cond_2

    .line 151
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    :cond_2
    throw v1
.end method


# virtual methods
.method public compactMemory()V
    .locals 9

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/MemoryUtil;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/utils/MemoryUtil;->mLongArray:Landroid/util/SparseLongArray;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v3

    .line 160
    .local v3, "time":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 161
    .local v5, "currentTime":J
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/utils/MemoryUtil;->mLongArray:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v2, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 167
    const-wide/16 v1, 0x0

    cmp-long v1, v3, v1

    if-eqz v1, :cond_0

    sub-long v1, v5, v3

    const-wide/32 v7, 0x927c0

    cmp-long v1, v1, v7

    if-gez v1, :cond_0

    .line 168
    monitor-exit v0

    return-void

    .line 170
    .end local v3    # "time":J
    .end local v5    # "currentTime":J
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    const-string v0, "MemoryUtil"

    const-string v1, "compactMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void

    .line 170
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public dropCache()V
    .locals 9

    .line 108
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/MemoryUtil;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/utils/MemoryUtil;->mLongArray:Landroid/util/SparseLongArray;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v3

    .line 114
    .local v3, "time":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 115
    .local v5, "currentTime":J
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/utils/MemoryUtil;->mLongArray:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v2, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 121
    const-wide/16 v1, 0x0

    cmp-long v1, v3, v1

    if-eqz v1, :cond_0

    sub-long v1, v5, v3

    const-wide/32 v7, 0x927c0

    cmp-long v1, v1, v7

    if-gez v1, :cond_0

    .line 122
    monitor-exit v0

    return-void

    .line 124
    .end local v3    # "time":J
    .end local v5    # "currentTime":J
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    const-string v0, "MemoryUtil"

    const-string v1, "dropCache"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void

    .line 124
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 109
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "dropCache should work in a worker thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMemLeakInfo()Landroid/util/SparseArray;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 81
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 85
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/xmonitor/memleak"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 87
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 88
    .local v2, "fileReader":Ljava/io/FileReader;
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 90
    .local v3, "memoryInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v2, v4

    .line 91
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v4

    .line 92
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, "string":Ljava/lang/String;
    const-string v5, "MemoryUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "meminfo--> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, "info":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    .line 96
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "string":Ljava/lang/String;
    .end local v5    # "info":[Ljava/lang/String;
    goto :goto_0

    .line 101
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 98
    :catch_0
    move-exception v4

    .line 99
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "MemoryUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMemLeakInfo-->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 102
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 103
    nop

    .line 104
    return-object v3

    .line 101
    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 102
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4

    .line 82
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "fileReader":Ljava/io/FileReader;
    .end local v3    # "memoryInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "should work in a worker thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isMemLarge(Landroid/content/Context;II)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pid"    # I
    .param p3, "memory"    # I

    .line 69
    invoke-static {p1, p2}, Lcom/xiaopeng/commonfunc/utils/ProcessUtil;->getAppName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "processName":Ljava/lang/String;
    sget-object v1, Lcom/xiaopeng/commonfunc/utils/MemoryUtil;->APP_WHITE_LIST:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 71
    .local v5, "process":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 72
    const-string v1, "MemoryUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processName: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", white list app: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return v3

    .line 70
    .end local v5    # "process":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 76
    :cond_1
    mul-int/lit8 v1, p3, 0x4

    .line 77
    .local v1, "temp":I
    const v2, 0x7d000

    if-le v1, v2, :cond_2

    const/4 v3, 0x1

    nop

    :cond_2
    return v3
.end method

.method public killMemLeakPid(I)V
    .locals 7
    .param p1, "pid"    # I

    .line 47
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 51
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/xmonitor/memleak"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 53
    .local v1, "bufferedWriter":Ljava/io/BufferedWriter;
    const/4 v2, 0x0

    .line 55
    .local v2, "fileWriter":Ljava/io/FileWriter;
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object v2, v3

    .line 56
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v1, v3

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 59
    const-string v3, "MemoryUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "kill pid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 60
    :catch_0
    move-exception v3

    .line 61
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "MemoryUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "killMemLeakPid-->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 64
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 65
    nop

    .line 66
    return-void

    .line 63
    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 64
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    .line 48
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .end local v2    # "fileWriter":Ljava/io/FileWriter;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "should work in a worker thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
