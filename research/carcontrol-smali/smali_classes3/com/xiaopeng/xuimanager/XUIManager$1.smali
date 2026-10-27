.class Lcom/xiaopeng/xuimanager/XUIManager$1;
.super Ljava/lang/Object;
.source "XUIManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/XUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuimanager/XUIManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuimanager/XUIManager;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/XUIManager$1;->this$0:Lcom/xiaopeng/xuimanager/XUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "##xuimanager"

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##onServiceConnected,client listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/XUIManager$1;->this$0:Lcom/xiaopeng/xuimanager/XUIManager;

    .line 345
    invoke-static {v2}, Lcom/xiaopeng/xuimanager/XUIManager;->access$000(Lcom/xiaopeng/xuimanager/XUIManager;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-static {}, Lcom/xiaopeng/xuimanager/XUIManager;->access$100()V

    .line 347
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager$1;->this$0:Lcom/xiaopeng/xuimanager/XUIManager;

    monitor-enter v0

    .line 348
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager$1;->this$0:Lcom/xiaopeng/xuimanager/XUIManager;

    invoke-static {p2}, Lcom/xiaopeng/xuimanager/IXUIService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/IXUIService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/XUIManager;->access$202(Lcom/xiaopeng/xuimanager/XUIManager;Lcom/xiaopeng/xuimanager/IXUIService;)Lcom/xiaopeng/xuimanager/IXUIService;

    .line 349
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager$1;->this$0:Lcom/xiaopeng/xuimanager/XUIManager;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/XUIManager;->access$302(Lcom/xiaopeng/xuimanager/XUIManager;I)I

    .line 350
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager$1;->this$0:Lcom/xiaopeng/xuimanager/XUIManager;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/XUIManager;->access$400(Lcom/xiaopeng/xuimanager/XUIManager;)V

    .line 352
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager$1;->this$0:Lcom/xiaopeng/xuimanager/XUIManager;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/XUIManager;->access$000(Lcom/xiaopeng/xuimanager/XUIManager;)Landroid/content/ServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager$1;->this$0:Lcom/xiaopeng/xuimanager/XUIManager;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/XUIManager;->access$000(Lcom/xiaopeng/xuimanager/XUIManager;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 355
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuimanager/XUIManager;->access$500()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 357
    :try_start_1
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/XUIManager$1;->this$0:Lcom/xiaopeng/xuimanager/XUIManager;

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/XUIManager;->access$200(Lcom/xiaopeng/xuimanager/XUIManager;)Lcom/xiaopeng/xuimanager/IXUIService;

    move-result-object p1

    invoke-static {}, Lcom/xiaopeng/xuimanager/XUIManager;->access$500()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/xuimanager/IXUIService;->registerObserver(Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "XUIManager"

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerObserver e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 350
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string v0, "##xuimanager"

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##onServiceDisconnected,client listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/XUIManager$1;->this$0:Lcom/xiaopeng/xuimanager/XUIManager;

    .line 366
    invoke-static {v2}, Lcom/xiaopeng/xuimanager/XUIManager;->access$000(Lcom/xiaopeng/xuimanager/XUIManager;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 365
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager$1;->this$0:Lcom/xiaopeng/xuimanager/XUIManager;

    monitor-enter v0

    .line 368
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager$1;->this$0:Lcom/xiaopeng/xuimanager/XUIManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/XUIManager;->access$202(Lcom/xiaopeng/xuimanager/XUIManager;Lcom/xiaopeng/xuimanager/IXUIService;)Lcom/xiaopeng/xuimanager/IXUIService;

    .line 369
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager$1;->this$0:Lcom/xiaopeng/xuimanager/XUIManager;

    invoke-static {v1}, Lcom/xiaopeng/xuimanager/XUIManager;->access$300(Lcom/xiaopeng/xuimanager/XUIManager;)I

    move-result v1

    if-nez v1, :cond_0

    .line 370
    monitor-exit v0

    return-void

    .line 372
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager$1;->this$0:Lcom/xiaopeng/xuimanager/XUIManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/XUIManager;->access$302(Lcom/xiaopeng/xuimanager/XUIManager;I)I

    .line 373
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager$1;->this$0:Lcom/xiaopeng/xuimanager/XUIManager;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/XUIManager;->access$600(Lcom/xiaopeng/xuimanager/XUIManager;)V

    .line 378
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager$1;->this$0:Lcom/xiaopeng/xuimanager/XUIManager;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/XUIManager;->access$000(Lcom/xiaopeng/xuimanager/XUIManager;)Landroid/content/ServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager$1;->this$0:Lcom/xiaopeng/xuimanager/XUIManager;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/XUIManager;->access$000(Lcom/xiaopeng/xuimanager/XUIManager;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 373
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
