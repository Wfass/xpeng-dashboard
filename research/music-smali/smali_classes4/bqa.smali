.class public Lbqa;
.super Lbpy;
.source "BusinessSyncInitTask.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lbpy;-><init>()V

    return-void
.end method

.method private d()V
    .locals 3

    .line 60
    invoke-virtual {p0}, Lbqa;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "registerModule: ==========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/j;->a()V

    .line 62
    const-class v0, Lcom/xiaopeng/lib/framework/configuration/ConfigurationModuleEntry;

    new-instance v1, Lcom/xiaopeng/lib/framework/configuration/ConfigurationModuleEntry;

    invoke-direct {v1}, Lcom/xiaopeng/lib/framework/configuration/ConfigurationModuleEntry;-><init>()V

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/module/Module;->register(Ljava/lang/Class;Lcom/xiaopeng/lib/framework/module/IModuleEntry;)V

    .line 63
    const-class v0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcModuleEntry;

    new-instance v1, Lcom/xiaopeng/lib/framework/ipcmodule/IpcModuleEntry;

    invoke-virtual {p0}, Lbqa;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaopeng/lib/framework/ipcmodule/IpcModuleEntry;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/module/Module;->register(Ljava/lang/Class;Lcom/xiaopeng/lib/framework/module/IModuleEntry;)V

    .line 64
    const-class v0, Lcom/xiaopeng/lib/framework/aiassistantmodule/AiAssistantModuleEntry;

    new-instance v1, Lcom/xiaopeng/lib/framework/aiassistantmodule/AiAssistantModuleEntry;

    invoke-virtual {p0}, Lbqa;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaopeng/lib/framework/aiassistantmodule/AiAssistantModuleEntry;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/module/Module;->register(Ljava/lang/Class;Lcom/xiaopeng/lib/framework/module/IModuleEntry;)V

    return-void
.end method

.method private e()V
    .locals 4

    .line 68
    invoke-virtual {p0}, Lbqa;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "setDrawableCacheEnabled"

    invoke-static {v0, v3, v1, v2}, Lcom/xiaopeng/musicradio/utils/bf;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-virtual {p0}, Lbqa;->b()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Laqw;->a(Landroid/app/Application;)V

    return-void
.end method

.method private f()V
    .locals 1

    const/4 v0, 0x1

    .line 73
    invoke-static {v0}, Lanx;->a(Z)V

    const-string v0, "music"

    .line 74
    invoke-static {v0}, Lanx;->a(Ljava/lang/String;)V

    .line 75
    new-instance v0, Lbqa$1;

    invoke-direct {v0, p0}, Lbqa$1;-><init>(Lbqa;)V

    invoke-static {v0}, Lanx;->a(Lanx$a;)V

    return-void
.end method

.method private g()V
    .locals 1

    .line 89
    invoke-static {}, Lbpa;->a()Lbpa;

    move-result-object v0

    invoke-virtual {v0}, Lbpa;->b()V

    return-void
.end method

.method private h()V
    .locals 0

    .line 93
    invoke-static {}, Lcom/xiaopeng/musicradio/model/common/a;->a()Lcom/xiaopeng/musicradio/model/common/a;

    return-void
.end method

.method private i()V
    .locals 0

    .line 98
    invoke-static {}, Lbnk;->a()V

    return-void
.end method

.method private j()V
    .locals 0

    .line 103
    invoke-static {}, Lbcc;->a()Lbcc;

    return-void
.end method

.method private k()V
    .locals 2

    .line 107
    new-instance v0, Lcom/xiaopeng/musicradio/utils/e;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/utils/e;-><init>()V

    invoke-virtual {p0}, Lbqa;->b()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/utils/e;->a(Landroid/app/Application;)V

    return-void
.end method

.method private l()V
    .locals 1

    .line 111
    invoke-virtual {p0}, Lbqa;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ac;->a(Landroid/content/Context;)V

    .line 112
    new-instance v0, Lbqa$2;

    invoke-direct {v0, p0}, Lbqa$2;-><init>(Lbqa;)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ac;->a(Lcom/xiaopeng/musicradio/utils/ac$a;)V

    return-void
.end method

.method private m()V
    .locals 1

    .line 121
    invoke-virtual {p0}, Lbqa;->b()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xui/Xui;->init(Landroid/app/Application;)V

    const/4 v0, 0x1

    .line 122
    invoke-static {v0}, Lcom/xiaopeng/xui/Xui;->setVuiEnable(Z)V

    .line 123
    invoke-static {v0}, Lcom/xiaopeng/xui/Xui;->setFontScaleDynamicChangeEnable(Z)V

    .line 124
    invoke-static {v0}, Lcom/xiaopeng/xui/Xui;->setThemeRefreshByVisibilityChanged(Z)V

    return-void
.end method

.method private n()V
    .locals 1

    .line 128
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;->getInstance()Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;->onStart()V

    return-void
.end method

.method private o()V
    .locals 2

    .line 132
    invoke-static {}, Lme/yokeyword/fragmentation/b;->d()Lme/yokeyword/fragmentation/b$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lme/yokeyword/fragmentation/b$a;->a(I)Lme/yokeyword/fragmentation/b$a;

    move-result-object v0

    .line 133
    invoke-virtual {v0, v1}, Lme/yokeyword/fragmentation/b$a;->a(Z)Lme/yokeyword/fragmentation/b$a;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lme/yokeyword/fragmentation/b$a;->a()Lme/yokeyword/fragmentation/b;

    return-void
.end method

.method private p()V
    .locals 3

    .line 138
    new-instance v0, Lbqa$3;

    invoke-direct {v0, p0}, Lbqa$3;-><init>(Lbqa;)V

    const-wide/16 v1, 0x1388

    invoke-static {v0, v1, v2}, Lbql;->a(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public isRunOnMainThread()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lbqa;->d()V

    .line 40
    invoke-direct {p0}, Lbqa;->e()V

    .line 41
    invoke-direct {p0}, Lbqa;->f()V

    .line 42
    invoke-direct {p0}, Lbqa;->g()V

    .line 43
    invoke-direct {p0}, Lbqa;->h()V

    .line 44
    invoke-direct {p0}, Lbqa;->i()V

    .line 45
    invoke-direct {p0}, Lbqa;->j()V

    .line 46
    invoke-direct {p0}, Lbqa;->k()V

    .line 47
    invoke-direct {p0}, Lbqa;->l()V

    .line 48
    invoke-direct {p0}, Lbqa;->m()V

    .line 49
    invoke-direct {p0}, Lbqa;->o()V

    .line 50
    invoke-direct {p0}, Lbqa;->n()V

    .line 51
    invoke-direct {p0}, Lbqa;->p()V

    return-void
.end method
