.class final Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventCallbackHandler;
.super Landroid/os/Handler;
.source "LightLanuageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EventCallbackHandler"
.end annotation


# instance fields
.field mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;Landroid/os/Looper;)V
    .locals 0

    .line 679
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 680
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventCallbackHandler;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 686
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventCallbackHandler;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    if-nez v0, :cond_0

    return-void

    .line 690
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event type not handled?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LightLanuageManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 707
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->access$1100(Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;II)V

    goto :goto_0

    .line 704
    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->access$1000(Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;Ljava/lang/String;I)V

    goto :goto_0

    .line 700
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventMessage;

    .line 701
    iget-object v1, p1, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventMessage;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventMessage;->type:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->access$900(Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 696
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventMessage;

    .line 697
    iget-object v1, p1, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventMessage;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventMessage;->type:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->access$800(Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 692
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventMessage;

    .line 693
    iget-object v1, p1, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventMessage;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventMessage;->type:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->access$700(Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
