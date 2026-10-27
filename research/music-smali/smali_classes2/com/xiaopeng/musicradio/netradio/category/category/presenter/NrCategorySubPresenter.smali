.class public Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;
.super Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;
.source "NrCategorySubPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter<",
        "Lcom/xiaopeng/musicradio/netradio/category/category/view/a;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;)Ljava/util/ArrayList;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method private c()V
    .locals 4

    .line 46
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/category/category/view/a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/netradio/category/category/view/a;->showLoadingView()V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xc8

    .line 51
    new-instance v3, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter$1;

    invoke-direct {v3, p0}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter$1;-><init>(Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;)V

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/netradio/logic/b;->b(IIILbkv;)V

    return-void
.end method

.method private d()V
    .locals 3

    .line 84
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_3

    const/4 v0, 0x0

    .line 87
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/netradio/logic/a;->d()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    .line 92
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;->c:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;->c:Z

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 97
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/category/category/view/a;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;->c:Z

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/netradio/category/category/view/a;->a(Z)V

    goto :goto_0

    .line 100
    :cond_2
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;->c:Z

    .line 101
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 103
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/category/category/view/a;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;->c:Z

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/netradio/category/category/view/a;->a(Z)V

    goto :goto_0

    .line 107
    :cond_3
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;->c:Z

    .line 108
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 110
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/category/category/view/a;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;->c:Z

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/netradio/category/category/view/a;->a(Z)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public dealAudioInfo(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 131
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;->d()V

    return-void
.end method

.method public dealMusicEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 117
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;->c:Z

    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/category/category/view/a;

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;->c:Z

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/netradio/category/category/view/a;->a(Z)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 136
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;->g()V

    .line 137
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;->c()V

    :cond_0
    return-void
.end method

.method public onChangeAudioType(Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 126
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;->d()V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 36
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;->onCreate(Landroidx/lifecycle/n;)V

    const-string p1, "NRAllRadioPresenter"

    const-string v0, "onCreateView"

    .line 37
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 39
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;->d()V

    return-void

    .line 42
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategorySubPresenter;->c()V

    return-void
.end method
