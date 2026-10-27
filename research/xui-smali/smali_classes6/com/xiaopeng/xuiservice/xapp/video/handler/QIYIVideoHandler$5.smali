.class Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$5;
.super Ljava/lang/Object;
.source "QIYIVideoHandler.java"

# interfaces
.implements Lcom/qiyi/video/client/IQYSManager$RegisterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->registerQIYIService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;

    .line 334
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$5;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegisterFailure(ILjava/lang/String;)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;

    .line 343
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$5;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->access$202(Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;Lcom/qiyi/video/client/IQYSService;)Lcom/qiyi/video/client/IQYSService;

    .line 344
    const-string v0, "QIYIVideoHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegisterFailure code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method public onRegisterSuccess(Lcom/qiyi/video/client/IQYSService;)V
    .locals 2
    .param p1, "iqysService"    # Lcom/qiyi/video/client/IQYSService;

    .line 337
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$5;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->access$202(Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;Lcom/qiyi/video/client/IQYSService;)Lcom/qiyi/video/client/IQYSService;

    .line 338
    const-string v0, "QIYIVideoHandler"

    const-string v1, "onRegisterSuccess"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    return-void
.end method
