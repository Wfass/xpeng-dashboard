.class public Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;
.super Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;
.source "NrAllRadioActPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter<",
        "Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/b;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;->b:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;)Ljava/util/ArrayList;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;->b:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/b;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/b;->showLoadingView()V

    .line 45
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter$1;-><init>(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;)V

    invoke-static {v0}, Lbql;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public g()V
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;->g()V

    .line 118
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;->c()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 2

    .line 32
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;->onCreate(Landroidx/lifecycle/n;)V

    const-string v0, "NrAllRadioActPresenter"

    const-string v1, "onCreate"

    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioActPresenter;->c()V

    :cond_0
    return-void
.end method
