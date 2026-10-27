.class Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider$1;
.super Ljava/lang/Object;
.source "StoreResourceProvider.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;


# direct methods
.method constructor <init>(Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider$1;->this$0:Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "service"
        }
    .end annotation

    .line 37
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "service connected, Service.  1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "service connected, Service.  2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider$1;->this$0:Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;

    invoke-static {p2}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->access$102(Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;)Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider$1;->this$0:Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;

    invoke-static {v0}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->access$200(Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 41
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "service connected, Service.  3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider$1;->this$0:Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->access$302(Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;I)I

    .line 43
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider$1;->this$0:Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;

    invoke-static {v1}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->access$200(Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider$1;->this$0:Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;

    invoke-static {v1}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->access$100(Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;)Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider$1;->this$0:Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;

    invoke-static {v2}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->access$400(Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;)Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;->registerDownloadListener(Lcom/xiaopeng/appstore/storeprovider/store/IRMDownloadCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 49
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "service connected, Service = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider$1;->this$0:Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;

    invoke-static {v3}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->access$100(Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;)Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider$1;->this$0:Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;

    invoke-static {v3}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->access$300(Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider$1;->this$0:Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;

    invoke-static {v1}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->access$500(Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;)Landroid/content/ServiceConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider$1;->this$0:Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;

    invoke-static {v1}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->access$500(Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 53
    :cond_0
    monitor-exit v0

    .line 54
    return-void

    .line 53
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 56
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider$1;->this$0:Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;

    monitor-enter v0

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider$1;->this$0:Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->access$102(Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;)Lcom/xiaopeng/appstore/storeprovider/store/IResourceService;

    .line 59
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider$1;->this$0:Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;

    invoke-static {v1}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->access$300(Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;)I

    move-result v1

    if-nez v1, :cond_0

    .line 60
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onServiceDisconnected, already disconnected."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    monitor-exit v0

    return-void

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider$1;->this$0:Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->access$302(Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;I)I

    .line 64
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider$1;->this$0:Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;

    invoke-static {v0}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->access$500(Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;)Landroid/content/ServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider$1;->this$0:Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;

    invoke-static {v0}, Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;->access$500(Lcom/xiaopeng/appstore/storeprovider/store/StoreResourceProvider;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 68
    :cond_1
    return-void

    .line 64
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
