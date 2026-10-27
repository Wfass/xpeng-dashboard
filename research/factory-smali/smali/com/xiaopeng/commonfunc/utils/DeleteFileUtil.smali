.class public Lcom/xiaopeng/commonfunc/utils/DeleteFileUtil;
.super Ljava/lang/Object;
.source "DeleteFileUtil.java"


# static fields
.field private static final DATALOG:Ljava/lang/String;

.field private static final Log0:Ljava/lang/String; = "log0"

.field private static final TAG:Ljava/lang/String; = "DeleteFileUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/utils/DeleteFileUtil;->DATALOG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deleteDirWihtFile(Ljava/io/File;)V
    .locals 6
    .param p0, "dir"    # Ljava/io/File;

    .line 39
    if-eqz p0, :cond_5

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 41
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "names":[Ljava/lang/String;
    if-nez v0, :cond_1

    return-void

    .line 43
    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 44
    .local v3, "s":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 46
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 47
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 48
    invoke-static {v4}, Lcom/xiaopeng/commonfunc/utils/DeleteFileUtil;->deleteDirWihtFile(Ljava/io/File;)V

    .line 43
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v0    # "names":[Ljava/lang/String;
    goto :goto_2

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 54
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 40
    :cond_5
    :goto_3
    return-void
.end method

.method public static deleteFileInterrupt(Ljava/io/File;Ljava/lang/String;)J
    .locals 9
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "suffix"    # Ljava/lang/String;

    .line 97
    const-wide/16 v0, 0x0

    move-wide v2, v0

    .line 99
    .local v2, "totalSize":J
    if-eqz p0, :cond_5

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_3

    .line 101
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, "names":[Ljava/lang/String;
    if-nez v4, :cond_1

    return-wide v0

    .line 103
    :cond_1
    array-length v0, v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v5, v4, v1

    .line 104
    .local v5, "s":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 106
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v6, p1}, Lcom/xiaopeng/commonfunc/utils/DeleteFileUtil;->isSuffixmatch(Ljava/io/File;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 107
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 108
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    add-long/2addr v2, v7

    goto :goto_1

    .line 110
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 111
    invoke-static {v6, p1}, Lcom/xiaopeng/commonfunc/utils/DeleteFileUtil;->deleteFileInterrupt(Ljava/io/File;Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v2, v7

    .line 103
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "file":Ljava/io/File;
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v4    # "names":[Ljava/lang/String;
    goto :goto_2

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-wide v2

    .line 100
    :cond_5
    :goto_3
    return-wide v0
.end method

.method public static deleteStorage(Ljava/lang/String;Ljava/lang/String;)J
    .locals 10
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;

    .line 70
    const-wide/16 v0, 0x0

    .line 71
    .local v0, "totalSize":J
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "names":[Ljava/lang/String;
    if-nez v3, :cond_0

    const-wide/16 v4, 0x0

    return-wide v4

    .line 74
    :cond_0
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 75
    .local v6, "s":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 76
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 77
    invoke-static {v7, p1}, Lcom/xiaopeng/commonfunc/utils/DeleteFileUtil;->deleteFileInterrupt(Ljava/io/File;Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v0, v8

    goto :goto_1

    .line 79
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v7, p1}, Lcom/xiaopeng/commonfunc/utils/DeleteFileUtil;->isSuffixmatch(Ljava/io/File;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 81
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v0, v8

    .line 82
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 74
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "file":Ljava/io/File;
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 86
    :cond_3
    return-wide v0
.end method

.method public static deleteSystemLog()V
    .locals 7

    .line 17
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/xiaopeng/commonfunc/utils/DeleteFileUtil;->DATALOG:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, "names":[Ljava/lang/String;
    if-nez v1, :cond_0

    return-void

    .line 20
    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 21
    .local v4, "s":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 23
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaopeng/commonfunc/utils/DeleteFileUtil;->isLog0Path(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 24
    invoke-static {v5}, Lcom/xiaopeng/commonfunc/utils/DeleteFileUtil;->deleteDirWihtFile(Ljava/io/File;)V

    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 20
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 30
    :cond_3
    return-void
.end method

.method private static isLog0Path(Ljava/lang/String;)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "log0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isSuffixmatch(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "suffix"    # Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x1

    return v0

    .line 131
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
