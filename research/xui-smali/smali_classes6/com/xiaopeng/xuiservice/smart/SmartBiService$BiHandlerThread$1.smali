.class Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiHandlerThread$1;
.super Landroid/os/Handler;
.source "SmartBiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiHandlerThread;->onLooperPrepared()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiHandlerThread;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiHandlerThread;)V
    .locals 0
    .param p1, "this$1"    # Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiHandlerThread;

    .line 132
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiHandlerThread$1;->this$1:Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiHandlerThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 135
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    .line 143
    const-string v0, "BiHandlerThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event type not handled?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiLogData;

    .line 138
    .local v0, "data":Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiLogData;
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiLogData;->moduleId:Ljava/lang/String;

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiLogData;->pageId:Ljava/lang/String;

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiLogData;->buttonId:Ljava/lang/String;

    iget-object v4, v0, Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiLogData;->params:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/innerutils/DataLogUtils;->sendSystemEventDataLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    nop

    .line 146
    .end local v0    # "data":Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiLogData;
    :goto_0
    return-void
.end method
