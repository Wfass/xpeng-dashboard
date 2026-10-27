.class Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask$1;
.super Ljava/lang/Object;
.source "AppendableTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->executeAppendTask(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;

.field final synthetic val$oss:Lcom/alibaba/sdk/android/oss/OSS;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;Lcom/alibaba/sdk/android/oss/OSS;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;

    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask$1;->val$oss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask$1;->val$oss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->access$100(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;Lcom/alibaba/sdk/android/oss/OSS;)V

    .line 70
    return-void
.end method
