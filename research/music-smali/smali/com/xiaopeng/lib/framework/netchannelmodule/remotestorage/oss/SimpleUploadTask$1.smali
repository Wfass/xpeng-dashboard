.class Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask$1;
.super Ljava/lang/Object;
.source "SimpleUploadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->executeUploadTask(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;

.field final synthetic val$oss:Lcom/alibaba/sdk/android/oss/OSS;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;Lcom/alibaba/sdk/android/oss/OSS;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;

    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask$1;->val$oss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;

    iget-wide v0, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->mLocalFileSize:J

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;

    invoke-virtual {v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->bucketMaxObjectSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask$1;->val$oss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->upload2OssByPartition(Lcom/alibaba/sdk/android/oss/OSS;)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask$1;->val$oss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;->upload2OSSByNormal(Lcom/alibaba/sdk/android/oss/OSS;)V

    :goto_0
    return-void
.end method
