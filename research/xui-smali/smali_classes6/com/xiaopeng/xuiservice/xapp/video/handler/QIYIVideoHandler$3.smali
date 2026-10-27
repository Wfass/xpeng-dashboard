.class Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$3;
.super Ljava/lang/Object;
.source "QIYIVideoHandler.java"

# interfaces
.implements Lcom/qiyi/video/client/IQYSService$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->play(ILjava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;

.field final synthetic val$callback:Lcom/xiaopeng/xuiservice/xapp/video/Callback;

.field final synthetic val$command:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;

    .line 97
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$3;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$3;->val$command:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$3;->val$callback:Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/qiyi/video/qys/IQYSResponse;)V
    .locals 3
    .param p1, "iqysResponse"    # Lcom/qiyi/video/qys/IQYSResponse;

    .line 100
    const-string v0, "QIYIVideoHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play to execute responseCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/qiyi/video/qys/IQYSResponse;->mCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &command:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$3;->val$command:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$3;->val$callback:Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$3;->val$callback:Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$3;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;

    invoke-static {v1, p1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->access$300(Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;Lcom/qiyi/video/qys/IQYSResponse;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/video/Callback;->onResult(I)V

    .line 104
    :cond_0
    return-void
.end method
