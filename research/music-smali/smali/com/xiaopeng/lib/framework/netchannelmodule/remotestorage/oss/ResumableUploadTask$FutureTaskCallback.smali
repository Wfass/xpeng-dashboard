.class Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask$FutureTaskCallback;
.super Ljava/lang/Object;
.source "ResumableUploadTask.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$IRetrievingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FutureTaskCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask$FutureTaskCallback;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask$1;)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask$FutureTaskCallback;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;)V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask$FutureTaskCallback;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;->doFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V

    .line 172
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;

    move-result-object p1

    const/16 v0, 0x301

    .line 173
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 172
    invoke-virtual {p1, v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->increaseFailureWithCode(Ljava/lang/String;J)V

    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;)V
    .locals 3

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask$FutureTaskCallback;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;->access$300(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;)V
    :try_end_0
    .catch Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask$FutureTaskCallback;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;->doFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V

    .line 182
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;->getReasonCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->increaseFailureWithCode(Ljava/lang/String;J)V

    :goto_0
    return-void
.end method
