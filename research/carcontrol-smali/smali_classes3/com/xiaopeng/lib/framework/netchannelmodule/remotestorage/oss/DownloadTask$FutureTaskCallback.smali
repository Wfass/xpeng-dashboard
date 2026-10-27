.class Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask$FutureTaskCallback;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$IRetrievingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FutureTaskCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask$FutureTaskCallback;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask$1;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask$FutureTaskCallback;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;)V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask$FutureTaskCallback;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;->doFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V

    .line 156
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;

    move-result-object p1

    const/16 v0, 0x301

    .line 157
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 156
    invoke-virtual {p1, v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->increaseFailureWithCode(Ljava/lang/String;J)V

    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;)V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask$FutureTaskCallback;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;

    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;->accessKeyId()Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;->acessKeySecret()Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;->securityToken()Ljava/lang/String;

    move-result-object p1

    .line 162
    invoke-virtual {v0, v1, v2, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;->createOssClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/OSS;

    move-result-object p1

    .line 165
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask$FutureTaskCallback$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask$FutureTaskCallback$1;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask$FutureTaskCallback;Lcom/alibaba/sdk/android/oss/OSS;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    return-void
.end method
