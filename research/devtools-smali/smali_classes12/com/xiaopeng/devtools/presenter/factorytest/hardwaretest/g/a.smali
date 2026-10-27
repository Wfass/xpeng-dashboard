.class public Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/g/a;
.super Ljava/lang/Object;
.source "PsuTestPresenter.java"


# instance fields
.field private sz:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public wZ:Lcom/xiaopeng/devtools/model/c/a/e/a;

.field private xa:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/g/a;->xa:Z

    .line 33
    new-instance v0, Lcom/xiaopeng/devtools/model/c/a/e/a;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/model/c/a/e/a;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/g/a;->wZ:Lcom/xiaopeng/devtools/model/c/a/e/a;

    .line 34
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/g/a;->sz:Ljava/lang/ref/WeakReference;

    .line 35
    return-void
.end method

.method private sendMessage(II)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/g/a;->sz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/g/a;->sz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 62
    iput p1, v0, Landroid/os/Message;->what:I

    .line 63
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 64
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/g/a;->sz:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 74
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method public init()V
    .locals 1

    .line 38
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method public jh()V
    .locals 2

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/g/a;->xa:Z

    .line 70
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/c;->fw()Lcom/xiaopeng/devtools/model/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/devtools/model/a/c;->setPsuTestReq(I)V

    .line 71
    return-void
.end method

.method public ji()Z
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/g/a;->wZ:Lcom/xiaopeng/devtools/model/c/a/e/a;

    const/16 v1, 0x483

    const/16 v2, 0x5740

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/devtools/model/c/a/e/a;->p(II)Z

    move-result v0

    return v0
.end method

.method public onEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 43
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401437

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    const-string v0, "PsuTestPresenter"

    const-string v1, "ID_MCU_PSU_TEST"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 47
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/g/a;->xa:Z

    if-eqz v0, :cond_1

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/g/a;->xa:Z

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/g/a;->sz:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 50
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/g/a;->sendMessage(II)V

    .line 57
    :cond_1
    :goto_0
    return-void
.end method
