.class final Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController$EventCallbackHandler;
.super Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;
.source "CommonMsgController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EventCallbackHandler"
.end annotation


# instance fields
.field mMgr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;)V
    .locals 1
    .param p1, "mgr"    # Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;

    .line 98
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;-><init>()V

    .line 99
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController$EventCallbackHandler;->mMgr:Ljava/lang/ref/WeakReference;

    .line 100
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController$EventCallbackHandler;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;

    .line 105
    .local v0, "mgr":Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;
    iget v1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_0

    .line 112
    const-string v1, "CommonMsgController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event type not handled?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_0
    if-eqz v0, :cond_1

    .line 108
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;->access$000(Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;II)V

    .line 115
    :cond_1
    :goto_0
    return-void
.end method
