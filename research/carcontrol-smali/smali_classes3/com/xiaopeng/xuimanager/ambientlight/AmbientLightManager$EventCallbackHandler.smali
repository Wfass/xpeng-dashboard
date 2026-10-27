.class final Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$EventCallbackHandler;
.super Landroid/os/Handler;
.source "AmbientLightManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;
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
            "Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;Landroid/os/Looper;)V
    .locals 0

    .line 856
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 857
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$EventCallbackHandler;->mMgr:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 862
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager$EventCallbackHandler;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    .line 863
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    const-string p1, "AmbientLightManager"

    const-string v0, "Event type not handled"

    .line 905
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_0
    if-eqz v0, :cond_1

    .line 900
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 901
    :goto_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1, v2}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->access$800(Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;Ljava/lang/String;Z)V

    goto :goto_1

    :pswitch_1
    if-eqz v0, :cond_1

    .line 895
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->access$700(Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;Ljava/lang/String;I)V

    goto :goto_1

    :pswitch_2
    if-eqz v0, :cond_1

    .line 890
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2, p1}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->access$600(Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;Ljava/lang/String;II)V

    goto :goto_1

    :pswitch_3
    if-eqz v0, :cond_1

    .line 885
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->access$500(Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;Ljava/lang/String;I)V

    goto :goto_1

    :pswitch_4
    if-eqz v0, :cond_1

    .line 878
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "enable"

    .line 879
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 880
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->access$400(Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;Ljava/lang/String;Z)V

    goto :goto_1

    :pswitch_5
    if-eqz v0, :cond_1

    .line 872
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->access$300(Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_6
    if-eqz v0, :cond_1

    .line 866
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;->access$200(Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;II)V

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
