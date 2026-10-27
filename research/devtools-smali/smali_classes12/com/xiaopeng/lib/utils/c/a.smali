.class public Lcom/xiaopeng/lib/utils/c/a;
.super Ljava/lang/Object;
.source "AppInfoUtils.java"


# static fields
.field private static Xe:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/lib/utils/c/a;->Xe:Ljava/lang/String;

    return-void
.end method

.method public static getProcessName()Ljava/lang/String;
    .locals 4

    .line 71
    sget-object v0, Lcom/xiaopeng/lib/utils/c/a;->Xe:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lcom/xiaopeng/lib/utils/c/a;->Xe:Ljava/lang/String;

    return-object v0

    .line 75
    :cond_0
    const/4 v0, 0x0

    .line 77
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/cmdline"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 79
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 80
    sput-object v0, Lcom/xiaopeng/lib/utils/c/a;->Xe:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    invoke-static {v2}, Lcom/xiaopeng/lib/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_2

    .line 81
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    .line 85
    :catchall_1
    move-exception v1

    goto :goto_2

    .line 81
    :catch_1
    move-exception v1

    .line 82
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    const-string v1, ""

    sput-object v1, Lcom/xiaopeng/lib/utils/c/a;->Xe:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 85
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 86
    :goto_1
    nop

    .line 87
    sget-object v0, Lcom/xiaopeng/lib/utils/c/a;->Xe:Ljava/lang/String;

    return-object v0

    .line 85
    :goto_2
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 86
    throw v1
.end method
