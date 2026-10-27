.class public Lbqd;
.super Lbpy;
.source "ModuleDelayInitTask.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lbpy;-><init>()V

    return-void
.end method

.method private d()V
    .locals 3

    .line 35
    invoke-virtual {p0}, Lbqd;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initModuleDelay() ============ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lbqd;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->getInstance()Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    .line 37
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/ao;->a()Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/IConfiguration;

    move-result-object v0

    invoke-virtual {p0}, Lbqd;->b()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {p0}, Lbqd;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/IConfiguration;->init(Landroid/app/Application;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lbey;->a()Lbey;

    move-result-object v0

    invoke-virtual {v0}, Lbey;->c()V

    .line 39
    invoke-static {}, Lcom/xiaopeng/musicradio/common/l;->a()Lcom/xiaopeng/musicradio/common/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/common/l;->b()V

    return-void
.end method


# virtual methods
.method public getDependsTaskList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/appstart/core/AppStartTask;",
            ">;>;"
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    const-class v1, Lbqe;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    const-class v1, Lbqc;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public isRunOnMainThread()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lbqd;->d()V

    return-void
.end method
