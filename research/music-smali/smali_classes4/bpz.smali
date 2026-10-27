.class public Lbpz;
.super Lbpy;
.source "BusinessAsyncInitTask.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lbpy;-><init>()V

    return-void
.end method

.method private d()V
    .locals 2

    .line 40
    invoke-virtual {p0}, Lbpz;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    sget v1, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->setLoglevel(I)V

    .line 41
    invoke-virtual {p0}, Lbpz;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    const-string v1, "com.xiaopeng.musicradio.MusicVuiObserver"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->subscribe(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lbpz;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->disableViewVuiMode()V

    return-void
.end method

.method private e()V
    .locals 2

    .line 46
    invoke-static {}, Lbfr;->a()Lbfr;

    move-result-object v0

    invoke-virtual {v0}, Lbfr;->c()V

    .line 47
    invoke-static {}, Lbfr;->a()Lbfr;

    move-result-object v0

    invoke-virtual {v0}, Lbfr;->b()I

    move-result v0

    .line 48
    invoke-static {}, Lbfm;->a()Lbfm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbfm;->f(I)V

    return-void
.end method

.method private f()V
    .locals 1

    .line 52
    invoke-virtual {p0}, Lbpz;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/bughunter/BugHunter;->init(Landroid/content/Context;)V

    return-void
.end method

.method private g()V
    .locals 3

    .line 56
    invoke-virtual {p0}, Lbpz;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: versionName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lbpz;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {p0}, Lbpz;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate carType === : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/car/Car;->getHardwareCarType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
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

    .line 21
    invoke-direct {p0}, Lbpz;->d()V

    .line 22
    invoke-direct {p0}, Lbpz;->e()V

    .line 23
    invoke-direct {p0}, Lbpz;->f()V

    .line 24
    invoke-direct {p0}, Lbpz;->g()V

    return-void
.end method
