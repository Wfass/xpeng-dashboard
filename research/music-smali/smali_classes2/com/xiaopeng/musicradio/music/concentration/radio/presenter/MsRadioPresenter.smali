.class public Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;
.super Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;
.source "MsRadioPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter<",
        "Lcom/xiaopeng/musicradio/music/concentration/radio/view/b;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;->b:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;->c:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;)Ljava/util/ArrayList;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;)Ljava/util/ArrayList;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method private i()V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 107
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 108
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 110
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/b;

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/b;->getRadioData(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/b;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;->b:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/b;->getRadioData(Ljava/util/ArrayList;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "new_music_radio"

    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "listsign_tags"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d()V
    .locals 2

    .line 72
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/b;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;->d:Z

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/b;->updateRadioPlayState(Z)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 4

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/b;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/b;->showLoadingView()V

    .line 46
    :cond_0
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    .line 47
    invoke-static {}, Lbim;->a()Lbim;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter$1;-><init>(Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;)V

    const/4 v3, -0x1

    invoke-virtual {v1, v0, v2, v3}, Lbim;->a(ILbim$b;I)V

    return-void
.end method

.method public f()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;->e()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 123
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->g()V

    .line 124
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;->e()V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;->i()V

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 98
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;->i()V

    :goto_0
    return-void
.end method

.method public o_()V
    .locals 1

    .line 86
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/b;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/b;->notifySpeechChange()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 33
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    const-string p1, "MsRadioPresenter"

    const-string v0, "onCreateView"

    .line 34
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;->j()V

    return-void

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioPresenter;->e()V

    return-void
.end method
