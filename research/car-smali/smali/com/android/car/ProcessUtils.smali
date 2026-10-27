.class public Lcom/android/car/ProcessUtils;
.super Ljava/lang/Object;
.source "ProcessUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ProcessUtils"

.field private static final UNKNOWN_PROCESS_NAME:Ljava/lang/String; = "unknown"

.field private static final sPidNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/android/car/ProcessUtils;->sPidNames:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNameFromProc(I)Ljava/lang/String;
    .locals 4
    .param p0, "pid"    # I

    .line 32
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .local v0, "procDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "cmdline"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    .local v1, "cmdlineFile":Ljava/io/File;
    invoke-static {v1}, Lcom/android/car/ProcessUtils;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, "cmdName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 36
    const-string v2, "unknown"

    .line 38
    :cond_0
    return-object v2
.end method

.method public static getProcessName(Landroid/content/Context;II)Ljava/lang/String;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 60
    sget-object v0, Lcom/android/car/ProcessUtils;->sPidNames:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lcom/android/car/-$$Lambda$ProcessUtils$bH4EMGAG430O3JSl_4_g8Ew56Hk;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/car/-$$Lambda$ProcessUtils$bH4EMGAG430O3JSl_4_g8Ew56Hk;-><init>(Landroid/content/Context;II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static getProcessName(Landroid/content/Context;IIZ)Ljava/lang/String;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "checkProc"    # Z

    .line 43
    const-string v0, "unknown"

    .line 44
    .local v0, "processName":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 45
    invoke-static {p1}, Lcom/android/car/ProcessUtils;->getNameFromProc(I)Ljava/lang/String;

    move-result-object v0

    .line 46
    const-string v1, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    invoke-static {p0, p1, p2}, Lcom/android/car/ProcessUtils;->getProcessNameFromAm(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 51
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/car/ProcessUtils;->getProcessNameFromAm(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 55
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getProcessNameFromAm(Landroid/content/Context;II)Ljava/lang/String;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 75
    const-string v0, "unknown"

    .line 76
    .local v0, "processName":Ljava/lang/String;
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 77
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 78
    .local v2, "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 79
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 80
    .local v4, "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_0

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v5, p2, :cond_0

    .line 81
    iget-object v0, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 82
    goto :goto_1

    .line 84
    .end local v4    # "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    goto :goto_0

    .line 86
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static getProcessNameWithoutCache(Landroid/content/Context;II)Ljava/lang/String;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 69
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/car/ProcessUtils;->getProcessName(Landroid/content/Context;IIZ)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "processName":Ljava/lang/String;
    invoke-static {p1, p2, v0}, Lcom/android/car/ProcessUtils;->updateProcessName(IILjava/lang/String;)V

    .line 71
    return-object v0
.end method

.method static synthetic lambda$getProcessName$0(Landroid/content/Context;IILandroid/util/Pair;)Ljava/lang/String;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "p"    # Landroid/util/Pair;

    .line 61
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/car/ProcessUtils;->getProcessName(Landroid/content/Context;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static readFile(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .line 23
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .local v0, "is":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 24
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 24
    return-object v2

    .line 25
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 23
    :catch_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 25
    :goto_0
    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v3

    :try_start_5
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :goto_1
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .end local v0    # "is":Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    .line 26
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ProcessUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method private static updateProcessName(IILjava/lang/String;)V
    .locals 4
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "processName"    # Ljava/lang/String;

    .line 65
    sget-object v0, Lcom/android/car/ProcessUtils;->sPidNames:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method
