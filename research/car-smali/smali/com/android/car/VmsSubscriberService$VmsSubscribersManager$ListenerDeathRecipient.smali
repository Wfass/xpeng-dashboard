.class Lcom/android/car/VmsSubscriberService$VmsSubscribersManager$ListenerDeathRecipient;
.super Ljava/lang/Object;
.source "VmsSubscriberService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListenerDeathRecipient"
.end annotation


# instance fields
.field private mSubscriberBinder:Landroid/os/IBinder;

.field final synthetic this$1:Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;


# direct methods
.method constructor <init>(Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;
    .param p2, "subscriberBinder"    # Landroid/os/IBinder;

    .line 74
    iput-object p1, p0, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager$ListenerDeathRecipient;->this$1:Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p2, p0, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager$ListenerDeathRecipient;->mSubscriberBinder:Landroid/os/IBinder;

    .line 76
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 84
    const-string v0, "VmsSubscriberService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager$ListenerDeathRecipient;->mSubscriberBinder:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager$ListenerDeathRecipient;->this$1:Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;

    invoke-static {v0}, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;->access$000(Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager$ListenerDeathRecipient;->mSubscriberBinder:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/vms/IVmsSubscriberClient;

    .line 91
    .local v0, "subscriber":Landroid/car/vms/IVmsSubscriberClient;
    if-eqz v0, :cond_0

    .line 92
    const-string v1, "VmsSubscriberService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing subscriptions for dead subscriber: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v1, p0, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager$ListenerDeathRecipient;->this$1:Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;

    iget-object v1, v1, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;->this$0:Lcom/android/car/VmsSubscriberService;

    invoke-static {v1}, Lcom/android/car/VmsSubscriberService;->access$100(Lcom/android/car/VmsSubscriberService;)Lcom/android/car/hal/VmsHalService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/car/hal/VmsHalService;->removeDeadSubscriber(Landroid/car/vms/IVmsSubscriberClient;)V

    goto :goto_0

    .line 95
    :cond_0
    const-string v1, "VmsSubscriberService"

    const-string v2, "Handling dead binder with no matching subscriber"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_0
    iget-object v1, p0, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager$ListenerDeathRecipient;->this$1:Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;

    iget-object v2, p0, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager$ListenerDeathRecipient;->mSubscriberBinder:Landroid/os/IBinder;

    invoke-static {v1, v2}, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;->access$200(Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;Landroid/os/IBinder;)V

    .line 101
    return-void
.end method

.method release()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager$ListenerDeathRecipient;->mSubscriberBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 105
    return-void
.end method
