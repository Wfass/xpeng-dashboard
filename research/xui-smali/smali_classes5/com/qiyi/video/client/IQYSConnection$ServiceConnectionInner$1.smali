.class Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner$1;
.super Ljava/lang/Object;
.source "IQYSConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;


# direct methods
.method constructor <init>(Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;)V
    .locals 0
    .param p1, "this$1"    # Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;

    .line 154
    iput-object p1, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner$1;->this$1:Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner$1;->this$1:Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;

    iget-object v0, v0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected retry: isDirty="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner$1;->this$1:Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;

    invoke-static {v2}, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->access$000(Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner$1;->this$1:Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;

    invoke-static {v0}, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->access$000(Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner$1;->this$1:Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;

    iget-object v0, v0, Lcom/qiyi/video/client/IQYSConnection$ServiceConnectionInner;->this$0:Lcom/qiyi/video/client/IQYSConnection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qiyi/video/client/IQYSConnection;->access$100(Lcom/qiyi/video/client/IQYSConnection;Z)V

    .line 162
    :cond_0
    return-void
.end method
