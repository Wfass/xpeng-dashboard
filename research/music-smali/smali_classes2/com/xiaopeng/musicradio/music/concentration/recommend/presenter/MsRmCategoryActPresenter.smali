.class public Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryActPresenter;
.super Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;
.source "MsRmCategoryActPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter<",
        "Lcom/xiaopeng/musicradio/music/concentration/recommend/view/a;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lbfz;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryActPresenter;->b:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryActPresenter;)Ljava/util/ArrayList;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryActPresenter;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method private h()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryActPresenter;->c:Lbfz;

    new-instance v1, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryActPresenter$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryActPresenter$1;-><init>(Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryActPresenter;)V

    invoke-virtual {v0, v1}, Lbfz;->a(Lbfz$a;)V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryActPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryActPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/a;->showLoadingView()V

    .line 38
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryActPresenter;->h()V

    return-void
.end method

.method public g()V
    .locals 1

    .line 70
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->g()V

    .line 71
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryActPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryActPresenter;->e()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 2

    .line 25
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    const-string v0, "MsRmCategoryActPresenter"

    const-string v1, "onCreate"

    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    new-instance v0, Lbfz;

    invoke-direct {v0}, Lbfz;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryActPresenter;->c:Lbfz;

    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryActPresenter;->e()V

    :cond_0
    return-void
.end method
