.class final Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$EventCallbackHandler;
.super Landroid/os/Handler;
.source "SeatMassagerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;
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
            "Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;Landroid/os/Looper;)V
    .locals 0

    .line 742
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 743
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$EventCallbackHandler;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 748
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$EventCallbackHandler;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    if-nez v0, :cond_0

    return-void

    .line 752
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event type not handled?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SeatMassagerManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 757
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$VibrateMessage;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->access$500(Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$VibrateMessage;)V

    goto :goto_0

    .line 754
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$MassagerMessage;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->access$400(Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$MassagerMessage;)V

    :goto_0
    return-void
.end method
