.class Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl$EventCallbackHandler;
.super Landroid/os/Handler;
.source "XuiSrManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventCallbackHandler"
.end annotation


# instance fields
.field private final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;Landroid/os/Looper;)V
    .locals 0

    .line 187
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 188
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl$EventCallbackHandler;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl$EventCallbackHandler;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;

    if-nez v0, :cond_0

    return-void

    .line 197
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 202
    :cond_1
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;->access$400(Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;)Lcom/xiaopeng/xuimanager/sr/XuiSrIconListenerRegisterAndNotify;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/xuimanager/sr/SrIcon;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/sr/XuiSrIconListenerRegisterAndNotify;->onHideSrIcon(Lcom/xiaopeng/xuimanager/sr/SrIcon;)V

    goto :goto_0

    .line 199
    :cond_2
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;->access$400(Lcom/xiaopeng/xuimanager/sr/XuiSrManagerImpl;)Lcom/xiaopeng/xuimanager/sr/XuiSrIconListenerRegisterAndNotify;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/xuimanager/sr/SrIcon;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/sr/XuiSrIconListenerRegisterAndNotify;->onShowSrIcon(Lcom/xiaopeng/xuimanager/sr/SrIcon;)V

    :goto_0
    return-void
.end method
