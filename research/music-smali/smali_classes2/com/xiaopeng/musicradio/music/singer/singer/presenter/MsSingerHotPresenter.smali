.class public Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;
.super Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;
.source "MsSingerHotPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter<",
        "Lcom/xiaopeng/musicradio/music/singer/singer/view/b;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean$ListBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->b:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->c:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->e:I

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;)Ljava/util/ArrayList;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->e:I

    return p0
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;)Ljava/util/HashMap;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->c:Ljava/util/HashMap;

    return-object p0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 111
    iput p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->e:I

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "singer_music"

    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "listsign_artist_radio"

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

    .line 90
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/singer/view/b;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->d:Z

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/b;->updatePlayState(Z)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 3

    .line 43
    iget v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->e:I

    .line 45
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->c:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->c:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 47
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->a()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/singer/view/b;

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/b;->getHotData(Ljava/util/ArrayList;)V

    return-void

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/singer/singer/view/b;

    invoke-interface {v1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/b;->showLoadingView()V

    .line 56
    :cond_1
    invoke-static {}, Lasp;->a()Lasp;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter$1;

    invoke-direct {v2, p0, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter$1;-><init>(Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;I)V

    invoke-virtual {v1, v0, v2}, Lasp;->c(ILbkv;)V

    return-void
.end method

.method public g()V
    .locals 1

    .line 102
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->g()V

    .line 103
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->e()V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->c:Ljava/util/HashMap;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->b:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public i()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public o_()V
    .locals 1

    .line 116
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/singer/view/b;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/b;->notifySpeechChange()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 34
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    const-string p1, "MsSingerHotPresenter"

    const-string v0, "onCreate"

    .line 35
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->j()V

    :cond_0
    return-void
.end method
