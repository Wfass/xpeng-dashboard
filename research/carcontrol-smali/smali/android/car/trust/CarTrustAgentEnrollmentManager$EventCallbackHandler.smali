.class final Landroid/car/trust/CarTrustAgentEnrollmentManager$EventCallbackHandler;
.super Landroid/os/Handler;
.source "CarTrustAgentEnrollmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/trust/CarTrustAgentEnrollmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EventCallbackHandler"
.end annotation


# instance fields
.field private final mEnrollmentManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/car/trust/CarTrustAgentEnrollmentManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/car/trust/CarTrustAgentEnrollmentManager;Landroid/os/Looper;)V
    .locals 0

    .line 603
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 604
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager$EventCallbackHandler;->mEnrollmentManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 609
    iget-object v0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager$EventCallbackHandler;->mEnrollmentManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/trust/CarTrustAgentEnrollmentManager;

    if-nez v0, :cond_0

    return-void

    .line 613
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarTrustEnrollMgr"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 625
    :pswitch_0
    invoke-static {v0, p1}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->access$200(Landroid/car/trust/CarTrustAgentEnrollmentManager;Landroid/os/Message;)V

    goto :goto_0

    .line 618
    :pswitch_1
    invoke-static {v0, p1}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->access$100(Landroid/car/trust/CarTrustAgentEnrollmentManager;Landroid/os/Message;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
