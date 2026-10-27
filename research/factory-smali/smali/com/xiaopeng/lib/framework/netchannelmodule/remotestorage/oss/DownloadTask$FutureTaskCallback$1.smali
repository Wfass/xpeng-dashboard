.class Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask$FutureTaskCallback$1;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask$FutureTaskCallback;->onSuccess(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask$FutureTaskCallback;

.field final synthetic val$oss:Lcom/alibaba/sdk/android/oss/OSS;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask$FutureTaskCallback;Lcom/alibaba/sdk/android/oss/OSS;)V
    .locals 0
    .param p1, "this$1"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask$FutureTaskCallback;

    .line 165
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask$FutureTaskCallback$1;->this$1:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask$FutureTaskCallback;

    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask$FutureTaskCallback$1;->val$oss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask$FutureTaskCallback$1;->this$1:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask$FutureTaskCallback;

    iget-object v0, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask$FutureTaskCallback;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask$FutureTaskCallback$1;->val$oss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;->access$300(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;Lcom/alibaba/sdk/android/oss/OSS;)V

    .line 169
    return-void
.end method
