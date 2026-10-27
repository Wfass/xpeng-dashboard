.class final Lcom/alipay/arome/aromecli/AromeInit$1;
.super Ljava/lang/Object;
.source "AromeInit.java"

# interfaces
.implements Lcom/alipay/arome/aromecli/AromeInit$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/arome/aromecli/AromeInit;->init(Lcom/alipay/arome/aromecli/AromeInitOptions;Lcom/alipay/arome/aromecli/AromeInit$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/arome/aromecli/AromeInit$Callback;


# direct methods
.method constructor <init>(Lcom/alipay/arome/aromecli/AromeInit$Callback;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/alipay/arome/aromecli/AromeInit$1;->a:Lcom/alipay/arome/aromecli/AromeInit$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/ServiceConnection;)V
    .locals 6
    .param p1, "connection"    # Landroid/content/ServiceConnection;

    .line 104
    invoke-static {}, Lcom/alipay/arome/aromecli/AromeInit;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 105
    :try_start_0
    invoke-static {}, Lcom/alipay/arome/aromecli/AromeInit;->access$100()Landroid/content/ServiceConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AromeInit unbind ServiceConnection: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/arome/aromecli/AromeInit;->access$100()Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/arome/aromecli/a;->b(Ljava/lang/String;)I

    .line 107
    invoke-static {}, Lcom/alipay/arome/aromecli/AromeInit;->access$200()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/alipay/arome/aromecli/AromeInit;->access$100()Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 108
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/alipay/arome/aromecli/AromeInit;->access$102(Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 110
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AromeInit bindService "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/arome/aromecli/AromeInit;->access$300()Lcom/alipay/arome/aromecli/AromeInit$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/arome/aromecli/AromeInit$1;->a:Lcom/alipay/arome/aromecli/AromeInit$Callback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/arome/aromecli/a;->b(Ljava/lang/String;)I

    .line 112
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.alipay.arome.app"

    const-string v3, "com.alipay.mobile.aromeservice.AromeService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 113
    .local v0, "intent":Landroid/content/Intent;
    move-object v0, v1

    const-class v2, Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string v1, "com.alipay.arome.app"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/alipay/arome/aromecli/AromeInit$1$1;

    invoke-direct {v2, p0, p1}, Lcom/alipay/arome/aromecli/AromeInit$1$1;-><init>(Lcom/alipay/arome/aromecli/AromeInit$1;Landroid/content/ServiceConnection;)V

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 137
    invoke-static {}, Lcom/alipay/arome/aromecli/AromeInit;->access$200()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    .line 138
    .local v4, "success":Z
    if-nez v1, :cond_2

    .line 139
    const-string v1, "bind service failed"

    invoke-static {v1}, Lcom/alipay/arome/aromecli/a;->c(Ljava/lang/String;)I

    .line 140
    invoke-static {}, Lcom/alipay/arome/aromecli/AromeInit;->reset()V

    .line 141
    invoke-static {}, Lcom/alipay/arome/aromecli/AromeInit;->access$200()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/arome/aromecli/c;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v1, v5, :cond_1

    .line 143
    const-string v1, "start foreground service for debug!"

    invoke-static {v1}, Lcom/alipay/arome/aromecli/a;->c(Ljava/lang/String;)I

    .line 144
    invoke-static {}, Lcom/alipay/arome/aromecli/AromeInit;->access$200()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 148
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alipay/arome/aromecli/AromeInit;->access$500()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 151
    goto :goto_0

    .line 149
    :catch_0
    move-exception v1

    .line 150
    const-string v1, "startTransActivity failed"

    invoke-static {v1}, Lcom/alipay/arome/aromecli/a;->c(Ljava/lang/String;)I

    .line 153
    :goto_0
    invoke-static {}, Lcom/alipay/arome/aromecli/AromeInit;->access$200()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0, p1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 154
    if-nez v1, :cond_2

    .line 155
    const-string v1, "bind service failed again !"

    invoke-static {v1}, Lcom/alipay/arome/aromecli/a;->c(Ljava/lang/String;)I

    .line 156
    invoke-static {}, Lcom/alipay/arome/aromecli/AromeInit;->reset()V

    .line 157
    iget-object v1, p0, Lcom/alipay/arome/aromecli/AromeInit$1;->a:Lcom/alipay/arome/aromecli/AromeInit$Callback;

    if-eqz v1, :cond_2

    .line 158
    iget-object v1, p0, Lcom/alipay/arome/aromecli/AromeInit$1;->a:Lcom/alipay/arome/aromecli/AromeInit$Callback;

    const/4 v2, 0x3

    const-string v5, "bind service failed"

    invoke-interface {v1, v3, v2, v5}, Lcom/alipay/arome/aromecli/AromeInit$Callback;->postInit(ZILjava/lang/String;)V

    .line 162
    :cond_2
    return-void

    .line 110
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v4    # "success":Z
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
