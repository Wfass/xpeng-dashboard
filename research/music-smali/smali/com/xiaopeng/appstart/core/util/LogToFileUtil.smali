.class public Lcom/xiaopeng/appstart/core/util/LogToFileUtil;
.super Ljava/lang/Object;
.source "LogToFileUtil.java"

# interfaces
.implements Lcom/xiaopeng/appstart/core/util/StutterLogStrategy;


# static fields
.field private static final LOG_FILE_NAME:Ljava/lang/String; = "metric_kit_log.txt"

.field private static final TAG:Ljava/lang/String; = "LogToFileUtil"

.field private static bufferedWriter:Ljava/io/BufferedWriter; = null

.field private static fileWriter:Ljava/io/FileWriter; = null

.field private static isLogInfoStart:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close()V
    .locals 1

    .line 119
    sget-object v0, Lcom/xiaopeng/appstart/core/util/LogToFileUtil;->bufferedWriter:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 122
    :cond_0
    sget-object v0, Lcom/xiaopeng/appstart/core/util/LogToFileUtil;->fileWriter:Ljava/io/FileWriter;

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    :cond_1
    return-void
.end method

.method public static init()V
    .locals 3

    .line 27
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "data/Log/map/"

    const-string v2, "metric_kit_log.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 29
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 31
    :cond_0
    new-instance v1, Ljava/io/FileWriter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    sput-object v1, Lcom/xiaopeng/appstart/core/util/LogToFileUtil;->fileWriter:Ljava/io/FileWriter;

    .line 32
    new-instance v0, Ljava/io/BufferedWriter;

    sget-object v1, Lcom/xiaopeng/appstart/core/util/LogToFileUtil;->fileWriter:Ljava/io/FileWriter;

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    sput-object v0, Lcom/xiaopeng/appstart/core/util/LogToFileUtil;->bufferedWriter:Ljava/io/BufferedWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"Error initializing log file writer\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogToFileUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static newFile()V
    .locals 3

    .line 41
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "data/Log/map/"

    const-string v2, "metric_kit_log.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 46
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 48
    :goto_0
    new-instance v1, Ljava/io/FileWriter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    sput-object v1, Lcom/xiaopeng/appstart/core/util/LogToFileUtil;->fileWriter:Ljava/io/FileWriter;

    .line 49
    new-instance v0, Ljava/io/BufferedWriter;

    sget-object v1, Lcom/xiaopeng/appstart/core/util/LogToFileUtil;->fileWriter:Ljava/io/FileWriter;

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    sput-object v0, Lcom/xiaopeng/appstart/core/util/LogToFileUtil;->bufferedWriter:Ljava/io/BufferedWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"Error initializing log file writer\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogToFileUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static writeToCustomFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 97
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 99
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 101
    :cond_0
    new-instance p0, Ljava/io/FileWriter;

    const/4 p1, 0x1

    invoke-direct {p0, v1, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 102
    :try_start_1
    new-instance p1, Ljava/io/BufferedWriter;

    invoke-direct {p1, p0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    :try_start_2
    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 105
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V

    goto :goto_1

    :catchall_0
    move-exception p2

    move-object v0, p0

    move-object p0, p2

    goto :goto_2

    :catch_0
    move-exception p2

    move-object v0, p0

    move-object p0, p2

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v3, v0

    move-object v0, p0

    move-object p0, p1

    move-object p1, v3

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v3, v0

    move-object v0, p0

    move-object p0, p1

    move-object p1, v3

    goto :goto_0

    :catchall_2
    move-exception p0

    move-object p1, v0

    goto :goto_2

    :catch_2
    move-exception p0

    move-object p1, v0

    :goto_0
    :try_start_3
    const-string p2, "LogToFileUtil"

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"Error initializing log file writer\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    :cond_1
    if-eqz p1, :cond_2

    .line 113
    :goto_1
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V

    :cond_2
    return-void

    :catchall_3
    move-exception p0

    :goto_2
    if-eqz v0, :cond_3

    .line 110
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    :cond_3
    if-eqz p1, :cond_4

    .line 113
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V

    .line 115
    :cond_4
    throw p0
.end method

.method public static writeToCustomFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 72
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "data/Log/map/"

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 74
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 76
    :cond_0
    new-instance p0, Ljava/io/FileWriter;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 77
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, p0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    :try_start_2
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 80
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v1, v0

    :goto_0
    move-object v0, p0

    move-object p0, p1

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v1, v0

    :goto_1
    move-object v0, p0

    move-object p0, p1

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object v1, v0

    goto :goto_4

    :catch_2
    move-exception p0

    move-object v1, v0

    :goto_2
    :try_start_3
    const-string p1, "LogToFileUtil"

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\"Error initializing log file writer\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    :cond_1
    if-eqz v1, :cond_2

    .line 88
    :goto_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    :cond_2
    return-void

    :catchall_3
    move-exception p0

    :goto_4
    if-eqz v0, :cond_3

    .line 85
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    :cond_3
    if-eqz v1, :cond_4

    .line 88
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 90
    :cond_4
    throw p0
.end method

.method public static writeToFile(Ljava/lang/String;)V
    .locals 1

    .line 58
    :try_start_0
    sget-object v0, Lcom/xiaopeng/appstart/core/util/LogToFileUtil;->bufferedWriter:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/xiaopeng/appstart/core/util/LogToFileUtil;->bufferedWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 60
    sget-object p0, Lcom/xiaopeng/appstart/core/util/LogToFileUtil;->bufferedWriter:Ljava/io/BufferedWriter;

    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 61
    sget-object p0, Lcom/xiaopeng/appstart/core/util/LogToFileUtil;->bufferedWriter:Ljava/io/BufferedWriter;

    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 64
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public handleStutterLogs(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 146
    invoke-virtual {p0, p1}, Lcom/xiaopeng/appstart/core/util/LogToFileUtil;->logDataClean(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 147
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 148
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaopeng/appstart/core/util/LogToFileUtil;->writeToFile(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public logDataClean(Ljava/util/List;)Ljava/util/List;
    .locals 4
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

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "\n\u672c\u6b21\u5361\u987f\u603b\u8017\u65f6"

    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 132
    sput-boolean v2, Lcom/xiaopeng/appstart/core/util/LogToFileUtil;->isLogInfoStart:Z

    .line 133
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    :cond_1
    sget-boolean v2, Lcom/xiaopeng/appstart/core/util/LogToFileUtil;->isLogInfoStart:Z

    const-string v3, "\u5361\u987f\u65f6\u95f4"

    if-eqz v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 135
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    :cond_2
    sget-boolean v2, Lcom/xiaopeng/appstart/core/util/LogToFileUtil;->isLogInfoStart:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 137
    sput-boolean v2, Lcom/xiaopeng/appstart/core/util/LogToFileUtil;->isLogInfoStart:Z

    .line 138
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method
