.class final Lbkn$1;
.super Ljava/lang/Object;
.source "OKHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbkn;->a(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Application;


# direct methods
.method constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lbkn$1;->a:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 57
    iget-object v0, p0, Lbkn$1;->a:Landroid/app/Application;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/http/HttpsUtils;->init(Landroid/app/Application;Z)Z

    .line 58
    const-class v0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-direct {v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;-><init>()V

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/framework/module/Module;->register(Ljava/lang/Class;Lcom/xiaopeng/lib/framework/module/IModuleEntry;)V

    .line 59
    const-class v0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v0, v2}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 60
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->config()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    move-result-object v0

    const/16 v2, 0x1f40

    invoke-interface {v0, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->connectTimeout(I)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    move-result-object v0

    .line 61
    invoke-interface {v0, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->readTimeout(I)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    move-result-object v0

    .line 62
    invoke-interface {v0, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->writeTimeout(I)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    move-result-object v0

    .line 63
    invoke-interface {v0, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->dnsTimeout(I)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    move-result-object v0

    const/4 v2, 0x2

    .line 64
    invoke-interface {v0, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->retryCount(I)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    move-result-object v0

    iget-object v2, p0, Lbkn$1;->a:Landroid/app/Application;

    .line 65
    invoke-interface {v0, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->applicationContext(Landroid/app/Application;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    move-result-object v0

    .line 66
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->enableTrafficStats()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    move-result-object v0

    new-instance v2, Lbkl;

    invoke-direct {v2}, Lbkl;-><init>()V

    .line 67
    invoke-interface {v0, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->addInterceptor(Lokhttp3/Interceptor;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    move-result-object v0

    new-instance v2, Lbki;

    invoke-direct {v2}, Lbki;-><init>()V

    .line 68
    invoke-interface {v0, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->addInterceptor(Lokhttp3/Interceptor;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    move-result-object v0

    .line 69
    invoke-static {}, Lbkn;->c()Lbkn$a;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lbkn;->c()Lbkn$a;

    move-result-object v2

    invoke-interface {v2}, Lbkn$a;->a()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 70
    invoke-static {}, Lbkn;->c()Lbkn$a;

    move-result-object v2

    invoke-interface {v2}, Lbkn$a;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/Interceptor;

    .line 71
    invoke-interface {v0, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->addInterceptor(Lokhttp3/Interceptor;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;

    goto :goto_0

    .line 74
    :cond_0
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;->apply()V

    .line 75
    invoke-static {}, Lbkn;->d()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 76
    :try_start_0
    sput-boolean v1, Lbkn;->a:Z

    .line 79
    invoke-static {}, Lbkn;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 80
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
