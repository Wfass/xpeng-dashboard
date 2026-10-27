.class Lcom/android/car/VmsPublisherService$PublisherConnection;
.super Ljava/lang/Object;
.source "VmsPublisherService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/VmsPublisherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PublisherConnection"
.end annotation


# instance fields
.field private final mBindRunnable:Ljava/lang/Runnable;

.field private final mName:Landroid/content/ComponentName;

.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/car/VmsPublisherService;


# direct methods
.method constructor <init>(Lcom/android/car/VmsPublisherService;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/car/VmsPublisherService;
    .param p2, "name"    # Landroid/content/ComponentName;

    .line 320
    iput-object p1, p0, Lcom/android/car/VmsPublisherService$PublisherConnection;->this$0:Lcom/android/car/VmsPublisherService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/car/VmsPublisherService$PublisherConnection;->mToken:Landroid/os/IBinder;

    .line 324
    new-instance v0, Lcom/android/car/VmsPublisherService$PublisherConnection$1;

    invoke-direct {v0, p0}, Lcom/android/car/VmsPublisherService$PublisherConnection$1;-><init>(Lcom/android/car/VmsPublisherService$PublisherConnection;)V

    iput-object v0, p0, Lcom/android/car/VmsPublisherService$PublisherConnection;->mBindRunnable:Ljava/lang/Runnable;

    .line 321
    iput-object p2, p0, Lcom/android/car/VmsPublisherService$PublisherConnection;->mName:Landroid/content/ComponentName;

    .line 322
    return-void
.end method

.method static synthetic access$200(Lcom/android/car/VmsPublisherService$PublisherConnection;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/VmsPublisherService$PublisherConnection;

    .line 316
    iget-object v0, p0, Lcom/android/car/VmsPublisherService$PublisherConnection;->mName:Landroid/content/ComponentName;

    return-object v0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 340
    const-string v0, "VmsPublisherService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected, name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", binder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-static {p2}, Landroid/car/vms/IVmsPublisherClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/vms/IVmsPublisherClient;

    move-result-object v0

    .line 343
    .local v0, "service":Landroid/car/vms/IVmsPublisherClient;
    iget-object v1, p0, Lcom/android/car/VmsPublisherService$PublisherConnection;->this$0:Lcom/android/car/VmsPublisherService;

    invoke-static {v1}, Lcom/android/car/VmsPublisherService;->access$400(Lcom/android/car/VmsPublisherService;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    :try_start_0
    iget-object v1, p0, Lcom/android/car/VmsPublisherService$PublisherConnection;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/car/VmsPublisherService$PublisherConnection;->this$0:Lcom/android/car/VmsPublisherService;

    invoke-interface {v0, v1, v2}, Landroid/car/vms/IVmsPublisherClient;->setVmsPublisherService(Landroid/os/IBinder;Landroid/car/vms/IVmsPublisherService;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    goto :goto_0

    .line 346
    :catch_0
    move-exception v1

    .line 347
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "VmsPublisherService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to configure publisher: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 356
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "publisherName":Ljava/lang/String;
    const-string v1, "VmsPublisherService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceDisconnected, name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v1, p0, Lcom/android/car/VmsPublisherService$PublisherConnection;->this$0:Lcom/android/car/VmsPublisherService;

    invoke-static {v1}, Lcom/android/car/VmsPublisherService;->access$500(Lcom/android/car/VmsPublisherService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0a0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 361
    .local v1, "millisecondsToWait":I
    iget-object v2, p0, Lcom/android/car/VmsPublisherService$PublisherConnection;->mName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    iget-object v2, p0, Lcom/android/car/VmsPublisherService$PublisherConnection;->this$0:Lcom/android/car/VmsPublisherService;

    invoke-static {v2}, Lcom/android/car/VmsPublisherService;->access$600(Lcom/android/car/VmsPublisherService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/car/VmsPublisherService$PublisherConnection;->mBindRunnable:Ljava/lang/Runnable;

    int-to-long v4, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 367
    iget-object v2, p0, Lcom/android/car/VmsPublisherService$PublisherConnection;->this$0:Lcom/android/car/VmsPublisherService;

    invoke-static {v2, p1}, Lcom/android/car/VmsPublisherService;->access$700(Lcom/android/car/VmsPublisherService;Landroid/content/ComponentName;)V

    .line 368
    return-void

    .line 362
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mismatch on publisherConnection. Expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/car/VmsPublisherService$PublisherConnection;->mName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " Got: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
