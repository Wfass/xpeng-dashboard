.class public Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;
.super Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramPresenter;
.source "GuessLikePresenter.java"

# interfaces
.implements Laxy$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramPresenter<",
        "Lcom/xiaopeng/musicradio/program/choice/view/guesslike/a;",
        ">;",
        "Laxy$a;"
    }
.end annotation


# static fields
.field private static c:I = 0x0

.field private static f:Z = false


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I

.field private g:Z

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramPresenter;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->b:Ljava/util/List;

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->d:I

    .line 44
    iput v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->e:I

    .line 46
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->g:Z

    const-string v0, ""

    .line 47
    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->h:Ljava/lang/String;

    return-void
.end method

.method private d()Z
    .locals 2

    .line 68
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/a;->h()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    :cond_0
    return v1
.end method

.method private e()Z
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->h:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    .line 100
    :cond_1
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v2

    invoke-virtual {v2}, Lbea;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method private f()V
    .locals 2

    const-string v0, "GuessLikePresenter"

    const-string v1, "initData: ======= "

    .line 107
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 108
    sput v0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->c:I

    .line 109
    invoke-static {}, Lbmm;->b()Lbmm;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbmm;->b(I)V

    .line 110
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .line 183
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->f()V

    return-void
.end method

.method public c()V
    .locals 2

    .line 266
    invoke-static {}, Lbmm;->b()Lbmm;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbmm;->b(I)V

    .line 267
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/a;

    invoke-interface {v0, v1, v1}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/a;->a(ZZ)V

    :cond_0
    return-void
.end method

.method public dealReload(Lash$e;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 159
    invoke-virtual {p1}, Lash$e;->a()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 160
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/a;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/a;->a(ZZ)V

    .line 163
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->f()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 52
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramPresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 53
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 54
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object p1

    invoke-virtual {p1, p0}, Laxy;->a(Laxy$a;)V

    .line 55
    sget-boolean p1, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->f:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 56
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->f()V

    const/4 p1, 0x1

    .line 57
    sput-boolean p1, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->f:Z

    :cond_1
    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramPresenter;->onDestroy(Landroidx/lifecycle/n;)V

    .line 64
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object p1

    invoke-virtual {p1, p0}, Laxy;->b(Laxy$a;)V

    return-void
.end method

.method public onGuessLikeLoadingStateChanged(Lash$d;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 188
    invoke-virtual {p1}, Lash$d;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 189
    invoke-virtual {p1}, Lash$d;->a()I

    move-result p1

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 193
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/a;

    invoke-interface {p1, v2, v2}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/a;->a(ZZ)V

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 203
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/a;

    invoke-interface {p1, v0, v2}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/a;->a(ZZ)V

    goto :goto_0

    .line 197
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 198
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/a;

    invoke-interface {p1, v2, v0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/a;->a(ZZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onPlayStateChanged(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 169
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->c()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 171
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result p1

    invoke-interface {v1, v2, v3, p1}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/a;->a(JI)V

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/a;

    const-wide/16 v2, 0x0

    invoke-interface {p1, v2, v3, v1}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/a;->a(JI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onReadingBinded(Lasj$ab;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 291
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object p1

    invoke-virtual {p1}, Lbea;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->h:Ljava/lang/String;

    return-void
.end method

.method public onReadingUnbinded(Lasj$ac;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 286
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object p1

    invoke-virtual {p1}, Lbea;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->h:Ljava/lang/String;

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 2

    .line 77
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramPresenter;->onResume(Landroidx/lifecycle/n;)V

    if-eqz p1, :cond_2

    .line 79
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->g:Z

    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/a;->g()V

    :cond_0
    const/4 p1, 0x1

    .line 82
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->g:Z

    .line 83
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/a;->a(Ljava/util/List;)V

    .line 86
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/a;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/a;->a(ZZ)V

    .line 88
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->f()V

    :cond_2
    return-void
.end method

.method public onSpeechEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 274
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/a;->g()V

    :cond_0
    return-void
.end method

.method public onUpdateGuessLikeData(Lash$g;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 212
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->d(Ljava/lang/Object;)V

    .line 213
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/a;

    invoke-virtual {p1}, Lash$g;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/a;->a(Ljava/util/List;)V

    .line 215
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/a;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/a;->a(ZZ)V

    :cond_0
    return-void
.end method

.method public receiveUserLogin(Lasj$af;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 281
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/guesslike/GuessLikePresenter;->f()V

    return-void
.end method
