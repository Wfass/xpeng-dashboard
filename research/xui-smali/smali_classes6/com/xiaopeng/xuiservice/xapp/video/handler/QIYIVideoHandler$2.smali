.class Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$2;
.super Ljava/lang/Object;
.source "QIYIVideoHandler.java"

# interfaces
.implements Lcom/qiyi/video/client/IQYSManager$RegisterListener;


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

    .line 69
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$2;->val$command:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$2;->val$callback:Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegisterFailure(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "s"    # Ljava/lang/String;

    .line 87
    const-string v0, "QIYIVideoHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play onRegisterFailure code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$2;->val$callback:Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$2;->val$callback:Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/video/Callback;->onResult(I)V

    .line 91
    :cond_0
    return-void
.end method

.method public onRegisterSuccess(Lcom/qiyi/video/client/IQYSService;)V
    .locals 3
    .param p1, "iqysService"    # Lcom/qiyi/video/client/IQYSService;

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->access$202(Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;Lcom/qiyi/video/client/IQYSService;)Lcom/qiyi/video/client/IQYSService;

    .line 73
    const-string v0, "QIYIVideoHandler"

    const-string v1, "play onRegisterSuccess"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->access$200(Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;)Lcom/qiyi/video/client/IQYSService;

    move-result-object v0

    new-instance v1, Lcom/qiyi/video/qys/IQYSRequest;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$2;->val$command:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/qiyi/video/qys/IQYSRequest;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$2$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$2$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$2;)V

    invoke-interface {v0, v1, v2}, Lcom/qiyi/video/client/IQYSService;->executeAsync(Lcom/qiyi/video/qys/IQYSRequest;Lcom/qiyi/video/client/IQYSService$Callback;)V

    .line 83
    return-void
.end method
