.class Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy$1;
.super Landroid/os/Handler;
.source "CarProjectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy;-><init>(Landroid/car/CarProjectionManager;Landroid/os/Looper;Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy;

.field final synthetic val$callback:Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;


# direct methods
.method constructor <init>(Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy;Landroid/os/Looper;Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;)V
    .locals 0

    .line 748
    iput-object p1, p0, Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy$1;->this$0:Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy;

    iput-object p3, p0, Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy$1;->val$callback:Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 751
    invoke-static {}, Landroid/car/CarProjectionManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy;->access$300()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "handle message what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v0, p0, Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy$1;->this$0:Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy;

    invoke-static {v0}, Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy;->access$400(Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/CarProjectionManager;

    if-nez v0, :cond_0

    .line 755
    invoke-static {}, Landroid/car/CarProjectionManager;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "handle message post GC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 759
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    .line 780
    invoke-static {}, Landroid/car/CarProjectionManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy;->access$300()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "unhandled message.  type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 774
    :cond_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 775
    invoke-static {}, Landroid/car/CarProjectionManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy;->access$300()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "failed to start.  reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v0, p0, Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy$1;->val$callback:Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;

    invoke-virtual {v0, p1}, Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;->onFailed(I)V

    goto :goto_0

    .line 770
    :cond_2
    invoke-static {}, Landroid/car/CarProjectionManager;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "hotspot stopped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-object p1, p0, Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy$1;->val$callback:Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;

    invoke-virtual {p1}, Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;->onStopped()V

    goto :goto_0

    .line 761
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    if-nez p1, :cond_4

    .line 763
    invoke-static {}, Landroid/car/CarProjectionManager;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy;->access$300()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "config cannot be null."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    iget-object p1, p0, Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy$1;->val$callback:Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;

    invoke-virtual {p1, v1}, Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;->onFailed(I)V

    return-void

    .line 767
    :cond_4
    iget-object v0, p0, Landroid/car/CarProjectionManager$ProjectionAccessPointCallbackProxy$1;->val$callback:Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;

    invoke-virtual {v0, p1}, Landroid/car/CarProjectionManager$ProjectionAccessPointCallback;->onStarted(Landroid/net/wifi/WifiConfiguration;)V

    :goto_0
    return-void
.end method
