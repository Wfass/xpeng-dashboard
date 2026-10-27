.class final Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$EventCallbackHandler;
.super Landroid/os/Handler;
.source "MediaCenterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;
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
            "Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;Landroid/os/Looper;)V
    .locals 0

    .line 303
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 304
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$EventCallbackHandler;->mMgr:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 309
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$EventCallbackHandler;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    .line 310
    iget v1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event type not handled?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaCenterManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_4

    .line 328
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$FavoriteEvent;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->access$300(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$FavoriteEvent;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_4

    .line 323
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->access$200(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_4

    .line 318
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->access$100(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;IILjava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 313
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->access$000(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;II)V

    :cond_4
    :goto_0
    return-void
.end method
