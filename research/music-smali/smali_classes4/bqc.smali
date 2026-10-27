.class public Lbqc;
.super Lbpy;
.source "ImportantAsyncInitTask.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lbpy;-><init>()V

    return-void
.end method

.method private d()V
    .locals 2

    .line 35
    invoke-static {}, Lbus;->b()Lbus;

    move-result-object v0

    invoke-virtual {p0}, Lbqc;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbus;->a(Landroid/content/Context;)V

    .line 36
    invoke-static {}, Lbus;->b()Lbus;

    move-result-object v0

    const-string v1, "\u97f3\u4e50"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbus;->a([Ljava/lang/String;)V

    return-void
.end method

.method private e()V
    .locals 0

    .line 40
    invoke-static {}, Larb;->c()V

    return-void
.end method

.method private f()V
    .locals 2

    .line 44
    invoke-virtual {p0}, Lbqc;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initLocation: ========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-static {}, Lbcl;->a()Lbcl;

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

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    const-class v1, Lbqf;

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

    .line 17
    invoke-direct {p0}, Lbqc;->d()V

    .line 18
    invoke-direct {p0}, Lbqc;->e()V

    .line 19
    invoke-direct {p0}, Lbqc;->f()V

    return-void
.end method
