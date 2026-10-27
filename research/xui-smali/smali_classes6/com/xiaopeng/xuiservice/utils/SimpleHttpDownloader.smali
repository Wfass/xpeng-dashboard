.class public Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader;
.super Ljava/lang/Object;
.source "SimpleHttpDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$MultiDownloadCallback;,
        Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$DownloadCallback;,
        Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$Item;
    }
.end annotation


# static fields
.field private static final CONNECT_TIMEOUT:I = 0xbb8

.field private static final READ_TIMEOUT:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "SimpleHttpDownloader"

.field private static final worker:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 153
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    .line 36
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x3

    const-wide/16 v3, 0x5

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v7, Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader;->worker:Ljava/util/concurrent/ExecutorService;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _download(Ljava/lang/String;Ljava/io/File;)Z
    .locals 11
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;

    .line 140
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 141
    .local v1, "URL":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 142
    .local v2, "httpURLConnection":Ljava/net/HttpURLConnection;
    const/16 v3, 0xbb8

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 143
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 145
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 146
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    :try_start_2
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 145
    .local v5, "is":Ljava/io/InputStream;
    nop

    .line 147
    const/16 v6, 0x2000

    :try_start_3
    new-array v6, v6, [B

    .line 149
    .local v6, "buffer":[B
    :goto_0
    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    move v8, v7

    .local v8, "read":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_0

    .line 150
    invoke-virtual {v3, v6, v0, v8}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 153
    .end local v6    # "buffer":[B
    .end local v8    # "read":I
    :try_start_4
    invoke-static {v4, v5}, Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v5    # "is":Ljava/io/InputStream;
    :try_start_5
    invoke-static {v4, v3}, Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 154
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :try_start_6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 155
    nop

    .line 156
    const/4 v0, 0x1

    return v0

    .line 153
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v6

    move-object v7, v4

    goto :goto_1

    .line 145
    :catch_0
    move-exception v6

    :try_start_7
    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 153
    :catchall_1
    move-exception v7

    move-object v10, v7

    move-object v7, v6

    move-object v6, v10

    :goto_1
    :try_start_8
    invoke-static {v7, v5}, Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v6
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .end local v5    # "is":Ljava/io/InputStream;
    :catchall_2
    move-exception v5

    goto :goto_2

    .line 145
    :catch_1
    move-exception v4

    :try_start_9
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 153
    :goto_2
    :try_start_a
    invoke-static {v4, v3}, Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 154
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v3

    :try_start_b
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v3
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    .line 157
    .end local v1    # "URL":Ljava/net/URL;
    .end local v2    # "httpURLConnection":Ljava/net/HttpURLConnection;
    :catch_2
    move-exception v1

    .line 159
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 162
    :cond_1
    const-string v2, "SimpleHttpDownloader"

    const-string v3, "download fail"

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    return v0
.end method

.method public static downloadSync(Ljava/lang/String;Ljava/io/File;)Z
    .locals 11
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "targetFile"    # Ljava/io/File;

    .line 112
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const-string v0, "SimpleHttpDownloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignore download url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", file already exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const/4 v0, 0x0

    return v0

    .line 117
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 118
    .local v0, "downloadDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 119
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 121
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 124
    .local v2, "downloadFile":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".download"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 126
    .local v3, "tempFile":Ljava/io/File;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 128
    .local v4, "downloadStartTime":J
    invoke-static {p0, v3}, Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader;->_download(Ljava/lang/String;Ljava/io/File;)Z

    move-result v6

    .line 130
    .local v6, "success":Z
    if-eqz v6, :cond_2

    .line 131
    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    .line 134
    :cond_2
    const-string v7, "SimpleHttpDownloader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "download "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_3

    const-string v9, "success"

    goto :goto_0

    :cond_3
    const-string v9, "fail"

    :goto_0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ==> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", use "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return v6
.end method

.method public static enqueue(Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$Item;Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$DownloadCallback;)V
    .locals 2
    .param p0, "item"    # Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$Item;
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$DownloadCallback;

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$Item;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$Item;->targetFile:Ljava/io/File;

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader;->enqueue(Ljava/lang/String;Ljava/io/File;Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$DownloadCallback;)V

    .line 66
    return-void
.end method

.method public static enqueue(Ljava/lang/String;Ljava/io/File;Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$DownloadCallback;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "targetFile"    # Ljava/io/File;
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$DownloadCallback;

    .line 76
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$SimpleHttpDownloader$DCuLXlWWKuCqeKQ-h1q73HJiSlQ;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$SimpleHttpDownloader$DCuLXlWWKuCqeKQ-h1q73HJiSlQ;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$DownloadCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 82
    return-void
.end method

.method public static enqueueAll(Ljava/util/ArrayList;Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$MultiDownloadCallback;)V
    .locals 12
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$MultiDownloadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$Item;",
            ">;",
            "Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$MultiDownloadCallback;",
            ")V"
        }
    .end annotation

    .line 89
    .local p0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$Item;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 90
    .local v7, "total":I
    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 91
    .local v5, "completed":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v2, "successItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$Item;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v3, "failItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$Item;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$Item;

    .line 94
    .local v9, "item":Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$Item;
    sget-object v10, Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v11, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$SimpleHttpDownloader$3d02YBbMxsM-BmcswaWaWN3JzLE;

    move-object v0, v11

    move-object v1, v9

    move v4, v7

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$SimpleHttpDownloader$3d02YBbMxsM-BmcswaWaWN3JzLE;-><init>(Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$Item;Ljava/util/ArrayList;Ljava/util/ArrayList;ILjava/util/concurrent/atomic/AtomicInteger;Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$MultiDownloadCallback;)V

    invoke-interface {v10, v11}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 108
    .end local v9    # "item":Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$Item;
    goto :goto_0

    .line 109
    :cond_0
    return-void
.end method

.method static synthetic lambda$enqueue$0(Ljava/lang/String;Ljava/io/File;Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$DownloadCallback;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "targetFile"    # Ljava/io/File;
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$DownloadCallback;

    .line 77
    invoke-static {p0, p1}, Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader;->downloadSync(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    .line 78
    .local v0, "success":Z
    if-eqz p2, :cond_0

    .line 79
    invoke-interface {p2, v0, p0, p1}, Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$DownloadCallback;->onDownloadFinish(ZLjava/lang/String;Ljava/io/File;)V

    .line 81
    :cond_0
    return-void
.end method

.method static synthetic lambda$enqueueAll$1(Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$Item;Ljava/util/ArrayList;Ljava/util/ArrayList;ILjava/util/concurrent/atomic/AtomicInteger;Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$MultiDownloadCallback;)V
    .locals 2
    .param p0, "item"    # Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$Item;
    .param p1, "successItems"    # Ljava/util/ArrayList;
    .param p2, "failItems"    # Ljava/util/ArrayList;
    .param p3, "total"    # I
    .param p4, "completed"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p5, "callback"    # Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$MultiDownloadCallback;

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$Item;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$Item;->targetFile:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader;->downloadSync(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :goto_0
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-ne p3, v0, :cond_1

    .line 103
    if-eqz p5, :cond_1

    .line 104
    invoke-interface {p5, p1, p2}, Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$MultiDownloadCallback;->onDownloadFinish(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 107
    :cond_1
    return-void
.end method
