.class public Lcom/xiaopeng/musicradio/utils/y;
.super Ljava/lang/Object;
.source "ExitDialogLocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/utils/y$a;,
        Lcom/xiaopeng/musicradio/utils/y$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/BroadcastReceiver;

.field private b:Z

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/xiaopeng/musicradio/utils/y$a;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/xiaopeng/musicradio/utils/y$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/utils/y$1;-><init>(Lcom/xiaopeng/musicradio/utils/y;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/utils/y;->a:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/utils/y;->b:Z

    .line 37
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/utils/y;->c:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/musicradio/utils/y$1;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/utils/y;-><init>()V

    return-void
.end method

.method public static a()Lcom/xiaopeng/musicradio/utils/y;
    .locals 1

    .line 25
    sget-object v0, Lcom/xiaopeng/musicradio/utils/y$b;->a:Lcom/xiaopeng/musicradio/utils/y;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/utils/y;)Ljava/util/Map;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/xiaopeng/musicradio/utils/y;->c:Ljava/util/Map;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 52
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/utils/y;->b:Z

    if-nez v0, :cond_0

    .line 54
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "action_exit_dialog"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lhu;->a(Landroid/content/Context;)Lhu;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/utils/y;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lhu;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/utils/y;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ExitDialogLocalBroadcastManager"

    const-string v2, "registerBroadcastReceiver: "

    .line 58
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private c()V
    .locals 3

    .line 72
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/utils/y;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/utils/y;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lhu;->a(Landroid/content/Context;)Lhu;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/utils/y;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lhu;->a(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/utils/y;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ExitDialogLocalBroadcastManager"

    const-string v2, "unregisterBroadcastReceiver: "

    .line 77
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/utils/y$a;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/utils/y;->b()V

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/musicradio/utils/y;->c:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Lcom/xiaopeng/musicradio/utils/y$a;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/utils/y;->c()V

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/musicradio/utils/y;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
