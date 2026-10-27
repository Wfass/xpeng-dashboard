.class public Lcom/alipay/arome/aromecli/AromeServiceInvoker;
.super Ljava/lang/Object;
.source "AromeServiceInvoker.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/arome/aromecli/AromeServiceInvoker$OnCustomClickListener;,
        Lcom/alipay/arome/aromecli/AromeServiceInvoker$BridgeCallback;,
        Lcom/alipay/arome/aromecli/AromeServiceInvoker$BridgeExtension;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getPackageToken()Ljava/lang/String;
    .locals 8

    .line 130
    invoke-static {}, Lcom/alipay/arome/aromecli/AromeInit;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 131
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "content://com.alipay.mobile.arome.provider/invokeToken"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 132
    .local v7, "uri":Landroid/net/Uri;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    .line 133
    .local v2, "cursor":Landroid/database/Cursor;
    move-object v2, v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "token":Ljava/lang/String;
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 136
    return-object v1

    .line 138
    .end local v1    # "token":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    return-object v1
.end method

.method public static invoke(Lcom/alipay/arome/aromecli/requst/AromeRequest;Lcom/alipay/arome/aromecli/AromeServiceTask$Callback;)V
    .locals 2
    .param p0, "request"    # Lcom/alipay/arome/aromecli/requst/AromeRequest;
    .param p1, "callback"    # Lcom/alipay/arome/aromecli/AromeServiceTask$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Request:",
            "Lcom/alipay/arome/aromecli/requst/AromeRequest;",
            "Response:",
            "Lcom/alipay/arome/aromecli/response/AromeResponse;",
            ">(TRequest;",
            "Lcom/alipay/arome/aromecli/AromeServiceTask$Callback<",
            "TResponse;>;)V"
        }
    .end annotation

    .line 21
    invoke-static {}, Lcom/alipay/arome/aromecli/AromeInit;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/arome/aromecli/requst/AromeRequest;->packageName:Ljava/lang/String;

    .line 22
    invoke-static {}, Lcom/alipay/arome/aromecli/AromeServiceInvoker;->getPackageToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/arome/aromecli/requst/AromeRequest;->invokeToken:Ljava/lang/String;

    .line 23
    instance-of v0, p0, Lcom/alipay/arome/aromecli/requst/AromeActivateRequest;

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Lcom/alipay/mobile/aromeservice/ipc/App$Builder;

    invoke-direct {v0}, Lcom/alipay/mobile/aromeservice/ipc/App$Builder;-><init>()V

    move-object v1, p0

    check-cast v1, Lcom/alipay/arome/aromecli/requst/AromeActivateRequest;

    iget-object v1, v1, Lcom/alipay/arome/aromecli/requst/AromeActivateRequest;->hostAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/aromeservice/ipc/App$Builder;->hostAppId(Ljava/lang/String;)Lcom/alipay/mobile/aromeservice/ipc/App$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/aromeservice/ipc/App$Builder;->build()Lcom/alipay/mobile/aromeservice/ipc/App;

    move-result-object v0

    sput-object v0, Lcom/alipay/arome/aromecli/b;->a:Lcom/alipay/mobile/aromeservice/ipc/App;

    .line 26
    :cond_0
    sget-object v0, Lcom/alipay/arome/aromecli/b;->a:Lcom/alipay/mobile/aromeservice/ipc/App;

    if-eqz v0, :cond_1

    .line 27
    sget-object v0, Lcom/alipay/arome/aromecli/b;->a:Lcom/alipay/mobile/aromeservice/ipc/App;

    iget-object v0, v0, Lcom/alipay/mobile/aromeservice/ipc/App;->hostAppId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/arome/aromecli/requst/AromeRequest;->hostAppId:Ljava/lang/String;

    .line 29
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/arome/aromecli/requst/AromeRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/arome/aromecli/requst/AromeRequest;->hostAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " request invokeToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/arome/aromecli/requst/AromeRequest;->invokeToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " invoke "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p0}, Lcom/alipay/arome/aromecli/requst/AromeRequest;->requestType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/alipay/arome/aromecli/a;->a(Ljava/lang/String;)I

    .line 32
    new-instance v0, Lcom/alipay/arome/aromecli/AromeServiceTask;

    invoke-direct {v0}, Lcom/alipay/arome/aromecli/AromeServiceTask;-><init>()V

    .line 33
    invoke-virtual {v0, p0, p1}, Lcom/alipay/arome/aromecli/AromeServiceTask;->invoke(Lcom/alipay/arome/aromecli/requst/AromeRequest;Lcom/alipay/arome/aromecli/AromeServiceTask$Callback;)V

    .line 34
    return-void
.end method

.method public static registerBridgeExtension(Lcom/alipay/arome/aromecli/AromeServiceInvoker$BridgeExtension;)V
    .locals 5
    .param p0, "bridgeExtension"    # Lcom/alipay/arome/aromecli/AromeServiceInvoker$BridgeExtension;

    .line 37
    invoke-static {}, Lcom/alipay/arome/aromecli/AromeInit;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.alipay.mobile.arome.provider/bridge"

    .line 38
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/alipay/arome/aromecli/AromeServiceInvoker$1;

    new-instance v3, Landroid/os/Handler;

    .line 39
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, v3, p0}, Lcom/alipay/arome/aromecli/AromeServiceInvoker$1;-><init>(Landroid/os/Handler;Lcom/alipay/arome/aromecli/AromeServiceInvoker$BridgeExtension;)V

    .line 37
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 82
    return-void
.end method

.method public static registerCustomClickListener([Ljava/lang/String;Lcom/alipay/arome/aromecli/AromeServiceInvoker$OnCustomClickListener;)V
    .locals 5
    .param p0, "eventList"    # [Ljava/lang/String;
    .param p1, "listener"    # Lcom/alipay/arome/aromecli/AromeServiceInvoker$OnCustomClickListener;

    .line 85
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/arome/aromecli/AromeServiceInvoker$2;

    invoke-direct {v1, p0}, Lcom/alipay/arome/aromecli/AromeServiceInvoker$2;-><init>([Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 94
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 95
    invoke-static {}, Lcom/alipay/arome/aromecli/AromeInit;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.alipay.mobile.arome.provider/customClick"

    .line 96
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/alipay/arome/aromecli/AromeServiceInvoker$3;

    new-instance v3, Landroid/os/Handler;

    .line 97
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, v3, p1}, Lcom/alipay/arome/aromecli/AromeServiceInvoker$3;-><init>(Landroid/os/Handler;Lcom/alipay/arome/aromecli/AromeServiceInvoker$OnCustomClickListener;)V

    .line 95
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 127
    return-void
.end method
