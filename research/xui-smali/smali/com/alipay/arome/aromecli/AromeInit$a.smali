.class final Lcom/alipay/arome/aromecli/AromeInit$a;
.super Ljava/lang/Object;
.source "AromeInit.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/arome/aromecli/AromeInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/alipay/arome/aromecli/AromeInitOptions;

.field private final b:Lcom/alipay/arome/aromecli/AromeInit$Callback;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/alipay/arome/aromecli/AromeInitOptions;Lcom/alipay/arome/aromecli/AromeInit$Callback;)V
    .locals 1
    .param p1, "options"    # Lcom/alipay/arome/aromecli/AromeInitOptions;
    .param p2, "callback"    # Lcom/alipay/arome/aromecli/AromeInit$Callback;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/arome/aromecli/AromeInit$a;->c:Z

    .line 220
    iput-object p1, p0, Lcom/alipay/arome/aromecli/AromeInit$a;->a:Lcom/alipay/arome/aromecli/AromeInitOptions;

    .line 221
    iput-object p2, p0, Lcom/alipay/arome/aromecli/AromeInit$a;->b:Lcom/alipay/arome/aromecli/AromeInit$Callback;

    .line 222
    return-void
.end method

.method static synthetic a(Lcom/alipay/arome/aromecli/AromeInit$a;)Lcom/alipay/arome/aromecli/AromeInit$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/arome/aromecli/AromeInit$a;

    .line 214
    iget-object v0, p0, Lcom/alipay/arome/aromecli/AromeInit$a;->b:Lcom/alipay/arome/aromecli/AromeInit$Callback;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AromeInit setDisabled with conn: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/arome/aromecli/a;->b(Ljava/lang/String;)I

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/arome/aromecli/AromeInit$a;->c:Z

    .line 227
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 230
    iget-boolean v0, p0, Lcom/alipay/arome/aromecli/AromeInit$a;->c:Z

    if-eqz v0, :cond_0

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AromeInit onServiceConnected but disabled! "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/arome/aromecli/AromeInit;->access$300()Lcom/alipay/arome/aromecli/AromeInit$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with conn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/arome/aromecli/a;->c(Ljava/lang/String;)I

    .line 232
    return-void

    .line 234
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AromeInit onServiceConnected "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/arome/aromecli/AromeInit;->access$300()Lcom/alipay/arome/aromecli/AromeInit$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with conn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/arome/aromecli/a;->b(Ljava/lang/String;)I

    .line 235
    invoke-static {p2}, Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/arome/aromecli/AromeInit;->access$602(Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface;)Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface;

    .line 236
    invoke-static {p0}, Lcom/alipay/arome/aromecli/AromeInit;->access$102(Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 238
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/alipay/arome/aromecli/AromeInit$a$1;

    invoke-direct {v2, p0, p2}, Lcom/alipay/arome/aromecli/AromeInit$a$1;-><init>(Lcom/alipay/arome/aromecli/AromeInit$a;Landroid/os/IBinder;)V

    invoke-interface {p2, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    nop

    .line 252
    move-object v2, v0

    goto :goto_0

    .line 249
    :catch_0
    move-exception v2

    .line 250
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "linkToDeath"

    invoke-static {v3, v2}, Lcom/alipay/arome/aromecli/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    .local v2, "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {}, Lcom/alipay/arome/aromecli/AromeInit;->access$400()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 253
    invoke-static {}, Lcom/alipay/arome/aromecli/AromeInit;->access$800()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 254
    invoke-static {}, Lcom/alipay/arome/aromecli/AromeInit;->access$900()Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 256
    iget-object v3, p0, Lcom/alipay/arome/aromecli/AromeInit$a;->a:Lcom/alipay/arome/aromecli/AromeInitOptions;

    if-eqz v3, :cond_1

    .line 258
    :try_start_1
    invoke-static {}, Lcom/alipay/arome/aromecli/AromeInit;->access$600()Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface;

    move-result-object v3

    new-instance v5, Lcom/alipay/mobile/aromeservice/ipc/InitOptions$Builder;

    invoke-direct {v5}, Lcom/alipay/mobile/aromeservice/ipc/InitOptions$Builder;-><init>()V

    iget-object v6, p0, Lcom/alipay/arome/aromecli/AromeInit$a;->a:Lcom/alipay/arome/aromecli/AromeInitOptions;

    iget v6, v6, Lcom/alipay/arome/aromecli/AromeInitOptions;->loginMode:I

    .line 260
    invoke-virtual {v5, v6}, Lcom/alipay/mobile/aromeservice/ipc/InitOptions$Builder;->loginMode(I)Lcom/alipay/mobile/aromeservice/ipc/InitOptions$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/arome/aromecli/AromeInit$a;->a:Lcom/alipay/arome/aromecli/AromeInitOptions;

    iget v6, v6, Lcom/alipay/arome/aromecli/AromeInitOptions;->hardwareType:I

    .line 261
    invoke-virtual {v5, v6}, Lcom/alipay/mobile/aromeservice/ipc/InitOptions$Builder;->hardwareType(I)Lcom/alipay/mobile/aromeservice/ipc/InitOptions$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/arome/aromecli/AromeInit$a;->a:Lcom/alipay/arome/aromecli/AromeInitOptions;

    iget-object v6, v6, Lcom/alipay/arome/aromecli/AromeInitOptions;->hardwareName:Ljava/lang/String;

    .line 262
    invoke-virtual {v5, v6}, Lcom/alipay/mobile/aromeservice/ipc/InitOptions$Builder;->hardwareName(Ljava/lang/String;)Lcom/alipay/mobile/aromeservice/ipc/InitOptions$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/arome/aromecli/AromeInit$a;->a:Lcom/alipay/arome/aromecli/AromeInitOptions;

    iget-object v6, v6, Lcom/alipay/arome/aromecli/AromeInitOptions;->themeConfig:Landroid/os/Bundle;

    .line 263
    invoke-virtual {v5, v6}, Lcom/alipay/mobile/aromeservice/ipc/InitOptions$Builder;->themeConfig(Landroid/os/Bundle;)Lcom/alipay/mobile/aromeservice/ipc/InitOptions$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/arome/aromecli/AromeInit$a;->a:Lcom/alipay/arome/aromecli/AromeInitOptions;

    iget-object v6, v6, Lcom/alipay/arome/aromecli/AromeInitOptions;->deviceConfig:Landroid/os/Bundle;

    .line 264
    invoke-virtual {v5, v6}, Lcom/alipay/mobile/aromeservice/ipc/InitOptions$Builder;->deviceConfig(Landroid/os/Bundle;)Lcom/alipay/mobile/aromeservice/ipc/InitOptions$Builder;

    move-result-object v5

    .line 265
    invoke-virtual {v5}, Lcom/alipay/mobile/aromeservice/ipc/InitOptions$Builder;->build()Lcom/alipay/mobile/aromeservice/ipc/InitOptions;

    move-result-object v5

    .line 258
    invoke-interface {v3, v5}, Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface;->setInitOptions(Lcom/alipay/mobile/aromeservice/ipc/InitOptions;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 269
    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 268
    .restart local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 269
    nop

    .line 268
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 272
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/alipay/arome/aromecli/AromeInit$a;->b:Lcom/alipay/arome/aromecli/AromeInit$Callback;

    if-eqz v2, :cond_2

    .line 273
    iget-object v2, p0, Lcom/alipay/arome/aromecli/AromeInit$a;->b:Lcom/alipay/arome/aromecli/AromeInit$Callback;

    invoke-interface {v2, v4, v1, v0}, Lcom/alipay/arome/aromecli/AromeInit$Callback;->postInit(ZILjava/lang/String;)V

    .line 276
    :cond_2
    const-string v0, "onServiceConnected"

    invoke-static {v0}, Lcom/alipay/arome/aromecli/a;->a(Ljava/lang/String;)I

    .line 277
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 280
    iget-boolean v0, p0, Lcom/alipay/arome/aromecli/AromeInit$a;->c:Z

    if-eqz v0, :cond_0

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onServiceDisconnected "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/arome/aromecli/AromeInit;->access$300()Lcom/alipay/arome/aromecli/AromeInit$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with coon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/arome/aromecli/a;->c(Ljava/lang/String;)I

    .line 282
    return-void

    .line 284
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onServiceDisconnected "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/arome/aromecli/AromeInit;->access$300()Lcom/alipay/arome/aromecli/AromeInit$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with coon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/arome/aromecli/a;->c(Ljava/lang/String;)I

    .line 285
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/arome/aromecli/AromeInit;->access$102(Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 286
    invoke-static {}, Lcom/alipay/arome/aromecli/AromeInit;->reset()V

    .line 287
    return-void
.end method
