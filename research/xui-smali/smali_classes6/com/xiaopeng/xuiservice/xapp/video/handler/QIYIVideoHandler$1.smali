.class Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$1;
.super Ljava/lang/Object;
.source "QIYIVideoHandler.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$WindowStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->init()V
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

    .line 50
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTopAppChanged(Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;

    .line 53
    const-string v0, "QIYIVideoHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTopAppChanged info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->isContainerPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->getDisplayId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->access$002(Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;I)I

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->access$100(Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;)V

    .line 58
    :cond_0
    return-void
.end method
