.class Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;
.super Ljava/lang/Object;
.source "VmsSubscriberService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/VmsSubscriberService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VmsSubscribersManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/VmsSubscriberService$VmsSubscribersManager$ListenerDeathRecipient;
    }
.end annotation


# instance fields
.field private final mListenerDeathRecipientMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mListenerManagerLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/car/VmsSubscriberService$VmsSubscribersManager$ListenerDeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenerManagerLock:Ljava/lang/Object;

.field private final mSubscriberMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mListenerManagerLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/car/vms/IVmsSubscriberClient;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/car/VmsSubscriberService;


# direct methods
.method constructor <init>(Lcom/android/car/VmsSubscriberService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/car/VmsSubscriberService;

    .line 60
    iput-object p1, p0, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;->this$0:Lcom/android/car/VmsSubscriberService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;->mListenerManagerLock:Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;->mListenerDeathRecipientMap:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;->mSubscriberMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;

    .line 60
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;->mSubscriberMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 60
    invoke-direct {p0, p1}, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;->removeListener(Landroid/os/IBinder;)V

    return-void
.end method

.method private removeListener(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "subscriberBinder"    # Landroid/os/IBinder;

    .line 174
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;->mListenerManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;->mSubscriberMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 176
    .local v1, "found":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 177
    iget-object v2, p0, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;->mListenerDeathRecipientMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager$ListenerDeathRecipient;

    invoke-virtual {v2}, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager$ListenerDeathRecipient;->release()V

    .line 178
    iget-object v2, p0, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;->mListenerDeathRecipientMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 180
    :cond_1
    const-string v2, "VmsSubscriberService"

    const-string v3, "removeListener: subscriber was not previously registered."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .end local v1    # "found":Z
    :goto_1
    monitor-exit v0

    .line 183
    return-void

    .line 182
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public add(Landroid/car/vms/IVmsSubscriberClient;)V
    .locals 6
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;

    .line 125
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;->this$0:Lcom/android/car/VmsSubscriberService;

    invoke-static {v0}, Lcom/android/car/VmsSubscriberService;->access$300(Lcom/android/car/VmsSubscriberService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertVmsSubscriberPermission(Landroid/content/Context;)V

    .line 126
    if-eqz p1, :cond_1

    .line 131
    const-string v0, "VmsSubscriberService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-interface {p1}, Landroid/car/vms/IVmsSubscriberClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 134
    .local v0, "subscriberBinder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;->mListenerManagerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :try_start_0
    iget-object v2, p0, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;->mSubscriberMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    monitor-exit v1

    return-void

    .line 139
    :cond_0
    new-instance v2, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager$ListenerDeathRecipient;

    invoke-direct {v2, p0, v0}, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager$ListenerDeathRecipient;-><init>(Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    .local v2, "deathRecipient":Lcom/android/car/VmsSubscriberService$VmsSubscribersManager$ListenerDeathRecipient;
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    nop

    .line 147
    :try_start_2
    iget-object v3, p0, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;->mListenerDeathRecipientMap:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v3, p0, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;->mSubscriberMap:Ljava/util/Map;

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .end local v2    # "deathRecipient":Lcom/android/car/VmsSubscriberService$VmsSubscribersManager$ListenerDeathRecipient;
    monitor-exit v1

    .line 150
    return-void

    .line 143
    .restart local v2    # "deathRecipient":Lcom/android/car/VmsSubscriberService$VmsSubscribersManager$ListenerDeathRecipient;
    :catch_0
    move-exception v3

    .line 144
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "VmsSubscriberService"

    const-string v5, "Failed to link death for recipient. "

    invoke-static {v4, v5, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "CarNotConnected"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 149
    .end local v2    # "deathRecipient":Lcom/android/car/VmsSubscriberService$VmsSubscribersManager$ListenerDeathRecipient;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 127
    .end local v0    # "subscriberBinder":Landroid/os/IBinder;
    :cond_1
    const-string v0, "VmsSubscriberService"

    const-string v1, "register: subscriber is null."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "subscriber cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getListeners()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/vms/IVmsSubscriberClient;",
            ">;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;->mListenerManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 192
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;->mSubscriberMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 193
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;->mListenerDeathRecipientMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager$ListenerDeathRecipient;

    .line 110
    .local v1, "recipient":Lcom/android/car/VmsSubscriberService$VmsSubscribersManager$ListenerDeathRecipient;
    invoke-virtual {v1}, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager$ListenerDeathRecipient;->release()V

    .line 111
    .end local v1    # "recipient":Lcom/android/car/VmsSubscriberService$VmsSubscribersManager$ListenerDeathRecipient;
    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;->mListenerDeathRecipientMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 113
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;->mSubscriberMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 114
    return-void
.end method

.method public remove(Landroid/car/vms/IVmsSubscriberClient;)V
    .locals 2
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;

    .line 160
    const-string v0, "VmsSubscriberService"

    const-string v1, "unregisterListener"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;->this$0:Lcom/android/car/VmsSubscriberService;

    invoke-static {v0}, Lcom/android/car/VmsSubscriberService;->access$300(Lcom/android/car/VmsSubscriberService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.car.permission.VMS_SUBSCRIBER"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 163
    if-eqz p1, :cond_0

    .line 167
    invoke-interface {p1}, Landroid/car/vms/IVmsSubscriberClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 168
    .local v0, "subscriberBinder":Landroid/os/IBinder;
    invoke-direct {p0, v0}, Lcom/android/car/VmsSubscriberService$VmsSubscribersManager;->removeListener(Landroid/os/IBinder;)V

    .line 169
    return-void

    .line 164
    .end local v0    # "subscriberBinder":Landroid/os/IBinder;
    :cond_0
    const-string v0, "VmsSubscriberService"

    const-string v1, "unregister: subscriber is null."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
