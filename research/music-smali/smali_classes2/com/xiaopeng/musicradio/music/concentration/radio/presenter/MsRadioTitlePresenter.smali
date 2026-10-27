.class public Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;
.super Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;
.source "MsRadioTitlePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter<",
        "Lcom/xiaopeng/musicradio/music/concentration/radio/view/a;",
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

.field private e:I

.field private f:Lcom/xiaopeng/musicradio/widget/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->b:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->c:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->f:Lcom/xiaopeng/musicradio/widget/k;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;)Ljava/util/ArrayList;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;)Ljava/util/ArrayList;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method private i()V
    .locals 4

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->m()I

    move-result v1

    const-string v2, "MsRadioTitlePresenter"

    if-lt v0, v1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->m()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 117
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 118
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 119
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 121
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/a;

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/a;->getRadioData(Ljava/util/ArrayList;)V

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleData: 1musicRadioItems.size() : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/a;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->b:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/a;->getRadioData(Ljava/util/ArrayList;)V

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleData: 2mMusicRadioItems.size() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private m()I
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->f:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->f:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    return v0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->f:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    return v0

    :cond_1
    const/16 v0, 0x12

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 146
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->e:I

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "new_music_radio"

    .line 76
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

    .line 81
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/a;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->d:Z

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/a;->updateRadioPlayState(Z)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 4

    .line 47
    invoke-static {}, Lbfr;->a()Lbfr;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->e:I

    invoke-virtual {v0, v1}, Lbfr;->c(I)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 50
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 51
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->h()V

    return-void

    .line 56
    :cond_0
    invoke-static {}, Lbim;->a()Lbim;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->e:I

    new-instance v2, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter$1;-><init>(Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lbim;->a(ILbim$b;I)V

    return-void
.end method

.method public f()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->e()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 136
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->g()V

    .line 137
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->e()V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeData: mMusicRadioItems.size() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "mDatatems.size() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->c:Ljava/util/ArrayList;

    .line 102
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MsRadioTitlePresenter"

    .line 101
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->m()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->i()V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 109
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->i()V

    :goto_0
    return-void
.end method

.method public o_()V
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/radio/view/a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/concentration/radio/view/a;->notifySpeechChange()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 38
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    const-string p1, "MsRadioTitlePresenter"

    const-string v0, "onCreateView"

    .line 39
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/radio/presenter/MsRadioTitlePresenter;->j()V

    :cond_0
    return-void
.end method
