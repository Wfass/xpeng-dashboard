.class Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper$1;
.super Landroid/database/ContentObserver;
.source "DownloadListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->registerContentReceiver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler;

    .line 112
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 16
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 115
    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->getTaskIdFromUri(Landroid/net/Uri;)J

    move-result-wide v8

    .line 116
    .local v8, "taskId":J
    invoke-static {v8, v9}, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->getDownloadedBytes(J)J

    move-result-wide v10

    .line 117
    .local v10, "downloadedBytes":J
    invoke-static {v8, v9}, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->access$000(J)J

    move-result-wide v12

    .line 118
    .local v12, "totalBytes":J
    long-to-float v0, v10

    long-to-float v1, v12

    div-float v14, v0, v1

    .line 119
    .local v14, "percentage":F
    const-string v0, "uri"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v9, v0}, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->getDownloadStateStringByFields(J[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v15, v0, v1

    .line 120
    .local v15, "url":Ljava/lang/String;
    const-string v0, "DownloadListenerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentObserver onChange task id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   downloaded Bytes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "    totalBytes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "   percentage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    move-wide v0, v8

    move-object v2, v15

    move-wide v3, v12

    move v5, v14

    move-wide v6, v10

    invoke-static/range {v0 .. v7}, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->dispatchDownloadInProgressCallback(JLjava/lang/String;JFJ)Z

    .line 122
    return-void
.end method
