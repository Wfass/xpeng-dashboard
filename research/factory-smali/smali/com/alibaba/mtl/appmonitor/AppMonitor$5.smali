.class final Lcom/alibaba/mtl/appmonitor/AppMonitor$5;
.super Ljava/lang/Object;
.source "AppMonitor.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/appmonitor/AppMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 1209
    sget-object v0, Lcom/alibaba/mtl/appmonitor/AppMonitor$b;->c:Lcom/alibaba/mtl/appmonitor/AppMonitor$b;

    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a()Lcom/alibaba/mtl/appmonitor/AppMonitor$b;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1210
    invoke-static {p2}, Lcom/alibaba/mtl/appmonitor/IMonitor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alibaba/mtl/appmonitor/IMonitor;

    move-result-object v0

    sput-object v0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/IMonitor;

    .line 1211
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1212
    sget-object v0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    if-eqz v0, :cond_0

    .line 1213
    sget-object v0, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a:Lcom/alibaba/mtl/appmonitor/AppMonitor$c;

    new-instance v1, Lcom/alibaba/mtl/appmonitor/AppMonitor$5$1;

    invoke-direct {v1, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$5$1;-><init>(Lcom/alibaba/mtl/appmonitor/AppMonitor$5;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$c;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 1223
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1224
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1225
    monitor-exit v0

    .line 1226
    return-void

    .line 1225
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 1230
    const-string v0, "AppMonitor"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "[onServiceDisconnected]"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1231
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1232
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1233
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1234
    invoke-static {v1}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->a(Z)Z

    .line 1235
    return-void

    .line 1233
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
