.class Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$6;
.super Ljava/lang/Object;
.source "QIYIVideoHandler.java"

# interfaces
.implements Lcom/qiyi/video/client/IQYSManager$ConnectStatusChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;
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

    .line 350
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$6;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Z)V
    .locals 3
    .param p1, "connected"    # Z

    .line 353
    const-string v0, "QIYIVideoHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectStatusChangedListener onChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    if-nez p1, :cond_0

    .line 355
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$6;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->access$202(Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;Lcom/qiyi/video/client/IQYSService;)Lcom/qiyi/video/client/IQYSService;

    .line 357
    :cond_0
    return-void
.end method
