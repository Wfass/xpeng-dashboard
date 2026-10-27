.class Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper$2;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 128
    if-eqz p2, :cond_2

    .line 129
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "intentAction":Ljava/lang/String;
    const-string v1, "DownloadListenerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Karl log onReceive intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    const-string v1, "extra_download_id"

    const-wide/16 v2, -0x1

    invoke-virtual {p2, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 133
    .local v4, "taskId":J
    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    .line 134
    const-string v1, "uri"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5, v1}, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->getDownloadStateStringByFields(J[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 135
    .local v1, "url":Ljava/lang/String;
    const/16 v3, 0x8

    invoke-static {v4, v5}, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->getDownloadState(J)I

    move-result v6

    if-ne v3, v6, :cond_1

    .line 136
    const-string v2, "DownloadListenerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BroadcastReceiver onReceive task id = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "  intentAction = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->access$100()Landroid/app/DownloadManager;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/app/DownloadManager;->getUriForDownloadedFile(J)Landroid/net/Uri;

    move-result-object v2

    .line 138
    .local v2, "uriForDownloadedFile":Landroid/net/Uri;
    const-string v3, ""

    .line 139
    .local v3, "fileUriString":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 140
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 142
    :cond_0
    const-string v6, "DownloadListenerHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Karl log BroadcastReceiver onReceive task id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "   downloaded file uri = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {v4, v5, v1, v3}, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->dispatchDownloadCompleteCallback(JLjava/lang/String;Ljava/lang/String;)Z

    .line 144
    .end local v2    # "uriForDownloadedFile":Landroid/net/Uri;
    .end local v3    # "fileUriString":Ljava/lang/String;
    goto :goto_0

    .line 145
    :cond_1
    const-string v3, "reason"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->getDownloadStateIntByFields(J[Ljava/lang/String;)[I

    move-result-object v3

    aget v2, v3, v2

    .line 146
    .local v2, "failReason":I
    const-string v3, "DownloadListenerHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Karl log BroadcastReceiver onReceive task id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "   failReason = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v1, v3}, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->dispatchDownloadErrorCallback(JLjava/lang/String;Ljava/lang/String;)Z

    .line 154
    .end local v0    # "intentAction":Ljava/lang/String;
    .end local v1    # "url":Ljava/lang/String;
    .end local v2    # "failReason":I
    .end local v4    # "taskId":J
    :cond_2
    :goto_0
    return-void
.end method
