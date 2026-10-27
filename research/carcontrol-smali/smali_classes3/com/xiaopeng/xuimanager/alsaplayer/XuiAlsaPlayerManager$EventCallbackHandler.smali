.class final Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager$EventCallbackHandler;
.super Landroid/os/Handler;
.source "XuiAlsaPlayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;
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
            "Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;Landroid/os/Looper;)V
    .locals 0

    .line 137
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 138
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager$EventCallbackHandler;->mMgr:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 148
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event type not handled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XuiAlsaPlayerManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager$EventCallbackHandler;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;

    if-eqz v0, :cond_2

    .line 158
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->access$500(Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;ILjava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager$EventCallbackHandler;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;

    if-eqz v0, :cond_2

    .line 152
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->access$400(Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;II)V

    :cond_2
    :goto_0
    return-void
.end method
