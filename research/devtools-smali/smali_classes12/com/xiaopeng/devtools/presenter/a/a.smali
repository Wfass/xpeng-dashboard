.class public Lcom/xiaopeng/devtools/presenter/a/a;
.super Ljava/lang/Object;
.source "AlsStudyPresenter.java"


# instance fields
.field private wo:Lcom/xiaopeng/devtools/model/a/a;

.field private wp:Lcom/xiaopeng/devtools/view/ecucheck/als/a;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/view/ecucheck/als/a;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/a;->ft()Lcom/xiaopeng/devtools/model/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/a/a;->wo:Lcom/xiaopeng/devtools/model/a/a;

    .line 28
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/a/a;->wp:Lcom/xiaopeng/devtools/view/ecucheck/als/a;

    .line 29
    return-void
.end method

.method private b([Ljava/lang/Integer;)V
    .locals 5

    .line 57
    const-string v0, "AlsStudyPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 59
    const-string v0, "AlsStudyPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ID_ALS_INIT_STUDY_AND_ERROR_ST result[0]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-object v4, p1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", result[1]:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 75
    :pswitch_0
    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/presenter/a/a;->cj(I)V

    .line 76
    goto :goto_0

    .line 72
    :pswitch_1
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/presenter/a/a;->cj(I)V

    .line 73
    goto :goto_0

    .line 62
    :pswitch_2
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_0

    .line 67
    invoke-direct {p0, v3}, Lcom/xiaopeng/devtools/presenter/a/a;->cj(I)V

    .line 68
    goto :goto_0

    .line 64
    :cond_0
    invoke-direct {p0, v1}, Lcom/xiaopeng/devtools/presenter/a/a;->cj(I)V

    .line 65
    nop

    .line 81
    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private cj(I)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/a/a;->wp:Lcom/xiaopeng/devtools/view/ecucheck/als/a;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/a/a;->wp:Lcom/xiaopeng/devtools/view/ecucheck/als/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/view/ecucheck/als/a;->cj(I)V

    .line 87
    :cond_0
    return-void
.end method

.method private static synthetic ck(I)[Ljava/lang/Integer;
    .locals 0

    .line 40
    new-array p0, p0, [Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic lambda$Wk8v2v72jtNmr--D8ocl7UkQsU0(I)[Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/xiaopeng/devtools/presenter/a/a;->ck(I)[Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public init()V
    .locals 2

    .line 38
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/a;->ft()Lcom/xiaopeng/devtools/model/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/a/a;->getAlsInitializationStudyAndErrorState()[I

    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/devtools/presenter/a/-$$Lambda$a$Wk8v2v72jtNmr--D8ocl7UkQsU0;->INSTANCE:Lcom/xiaopeng/devtools/presenter/a/-$$Lambda$a$Wk8v2v72jtNmr--D8ocl7UkQsU0;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/presenter/a/a;->b([Ljava/lang/Integer;)V

    .line 42
    :cond_0
    return-void
.end method

.method public it()V
    .locals 1

    .line 32
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 35
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 90
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 93
    :cond_0
    return-void
.end method

.method public onEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 46
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x2141180d

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Integer;

    .line 49
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/presenter/a/a;->b([Ljava/lang/Integer;)V

    .line 50
    nop

    .line 54
    :goto_0
    return-void
.end method
