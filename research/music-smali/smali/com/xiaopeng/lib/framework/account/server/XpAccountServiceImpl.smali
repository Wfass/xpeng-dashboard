.class public Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl;
.super Landroid/app/Service;
.source "XpAccountServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl$XpAccountServiceBinder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XpAccountServiceImpl"

.field private static volatile mCarAccountService:Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl$XpAccountServiceBinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl$XpAccountServiceBinder;
    .locals 1

    .line 27
    sget-object v0, Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl;->mCarAccountService:Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl$XpAccountServiceBinder;

    return-object v0
.end method

.method static synthetic access$102(Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl$XpAccountServiceBinder;)Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl$XpAccountServiceBinder;
    .locals 0

    .line 27
    sput-object p0, Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl;->mCarAccountService:Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl$XpAccountServiceBinder;

    return-object p0
.end method

.method public static initProvider(Lcom/xiaopeng/lib/framework/account/server/IAccountProvider;)V
    .locals 1

    .line 151
    invoke-static {}, Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl$XpAccountServiceBinder;->access$000()Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl$XpAccountServiceBinder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl$XpAccountServiceBinder;->initProvider(Lcom/xiaopeng/lib/framework/account/server/IAccountProvider;)V

    return-void
.end method

.method public static sendMessage(Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;)V
    .locals 1

    .line 155
    invoke-static {}, Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl$XpAccountServiceBinder;->access$000()Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl$XpAccountServiceBinder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl$XpAccountServiceBinder;->postMessage(Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, "XpAccountServiceImpl"

    const-string v0, "onBind"

    .line 43
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {}, Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl$XpAccountServiceBinder;->access$000()Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl$XpAccountServiceBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "XpAccountServiceImpl"

    const-string v1, "onCreate"

    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 160
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 161
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "XpAccountServiceImpl"

    const-string v1, "onRebind"

    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const-string p1, "XpAccountServiceImpl"

    const-string p2, "onStartCommand"

    .line 61
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "XpAccountServiceImpl"

    const-string v1, "onUnbind"

    .line 55
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
