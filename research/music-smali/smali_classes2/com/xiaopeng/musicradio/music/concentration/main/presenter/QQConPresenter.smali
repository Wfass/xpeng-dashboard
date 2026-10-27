.class public Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;
.super Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;
.source "QQConPresenter.java"

# interfaces
.implements Laxy$a;
.implements Laxy$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter<",
        "Lcom/xiaopeng/musicradio/music/concentration/main/view/a;",
        ">;",
        "Laxy$a;",
        "Laxy$b;"
    }
.end annotation


# static fields
.field public static b:Ljava/lang/String; = "100823"


# instance fields
.field protected c:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->c:I

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;Lcom/xiaopeng/musicradio/bean/music/ConResult;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->b(Lcom/xiaopeng/musicradio/bean/music/ConResult;)V

    return-void
.end method

.method private a(Lcom/xiaopeng/musicradio/bean/music/ConResult;)Z
    .locals 2

    .line 122
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/c;->a()Lcom/xiaopeng/musicradio/utils/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/c;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 123
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/-$$Lambda$QQConPresenter$AYguJfbkHC6pnuuRy-MDuO2gcCc;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/-$$Lambda$QQConPresenter$AYguJfbkHC6pnuuRy-MDuO2gcCc;-><init>(Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;Lcom/xiaopeng/musicradio/bean/music/ConResult;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/a;

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/musicradio/music/concentration/main/view/a;->showData(Lcom/xiaopeng/musicradio/bean/music/ConResult;Z)V

    :goto_0
    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static synthetic b(Lbjq$b;Ljava/lang/String;IIII)V
    .locals 7

    .line 151
    invoke-static {}, Lbjq;->a()Lbjq;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lbjq;->a(Lbjq$b;Ljava/lang/String;IIII)V

    return-void
.end method

.method private b(Lcom/xiaopeng/musicradio/bean/music/ConResult;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 139
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter$3;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter$3;-><init>(Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;Lcom/xiaopeng/musicradio/bean/music/ConResult;)V

    const-wide/16 v1, 0x5

    invoke-static {v0, v1, v2}, Lbql;->b(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private synthetic c(Lcom/xiaopeng/musicradio/bean/music/ConResult;)V
    .locals 1

    .line 125
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/music/concentration/main/view/a;->showData(Lcom/xiaopeng/musicradio/bean/music/ConResult;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$AYguJfbkHC6pnuuRy-MDuO2gcCc(Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;Lcom/xiaopeng/musicradio/bean/music/ConResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->c(Lcom/xiaopeng/musicradio/bean/music/ConResult;)V

    return-void
.end method

.method public static synthetic lambda$ivaAbcRcd6ZGNMf-PhSFPl_fNfk(Lbjq$b;Ljava/lang/String;IIII)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->b(Lbjq$b;Ljava/lang/String;IIII)V

    return-void
.end method


# virtual methods
.method protected a(Lbjq$b;Ljava/lang/String;IIII)V
    .locals 8

    .line 151
    new-instance v7, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/-$$Lambda$QQConPresenter$ivaAbcRcd6ZGNMf-PhSFPl_fNfk;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/-$$Lambda$QQConPresenter$ivaAbcRcd6ZGNMf-PhSFPl_fNfk;-><init>(Lbjq$b;Ljava/lang/String;IIII)V

    invoke-static {v7}, Lbql;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const-string p1, "QQConPresenter"

    const-string v0, "msconcentration--onDataFetch"

    .line 41
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->e()V

    return-void
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const-string v0, "100823"

    return-object v0
.end method

.method public e()V
    .locals 8

    .line 67
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Laxy;->a(Laxy$a;Z)V

    .line 69
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/a;->showLoadingView()V

    .line 73
    :cond_0
    invoke-static {}, Lbfr;->a()Lbfr;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lbfr;->a(I)Lcom/xiaopeng/musicradio/bean/music/ConResult;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "QQConPresenter"

    const-string v2, "loadData: from cache"

    .line 75
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->a(Lcom/xiaopeng/musicradio/bean/music/ConResult;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 78
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->b(Lcom/xiaopeng/musicradio/bean/music/ConResult;)V

    goto :goto_0

    .line 81
    :cond_1
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter$1;-><init>(Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;)V

    invoke-static {v0}, Lbql;->a(Ljava/lang/Runnable;)V

    .line 94
    :cond_2
    :goto_0
    new-instance v2, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter$2;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter$2;-><init>(Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;)V

    .line 118
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    iget v6, p0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->c:I

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->c()I

    move-result v7

    move-object v1, p0

    .line 94
    invoke-virtual/range {v1 .. v7}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->a(Lbjq$b;Ljava/lang/String;IIII)V

    return-void
.end method

.method public n_()V
    .locals 2

    const-string v0, "QQConPresenter"

    const-string v1, "msconcentration--onErrorRetry"

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->e()V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 55
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 56
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object p1

    invoke-virtual {p1, p0}, Laxy;->a(Laxy$a;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;->onDestroy(Landroidx/lifecycle/n;)V

    const-string p1, "QQConPresenter"

    const-string v0, "onDestroy"

    .line 62
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object p1

    invoke-virtual {p1, p0}, Laxy;->b(Laxy$a;)V

    return-void
.end method

.method public onMusicBinded(Lasj$h;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "QQConPresenter"

    const-string v0, "KugouBinded: "

    .line 185
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->c()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->e()V

    :cond_0
    return-void
.end method

.method public onMusicBinded(Lasj$m;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "QQConPresenter"

    const-string v0, "onMusicBinded: "

    .line 169
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->c()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->e()V

    :cond_0
    return-void
.end method

.method public onMusicBinded(Lasj$t;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "QQConPresenter"

    const-string v0, "NeteaseBinded: "

    .line 177
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->c()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->e()V

    :cond_0
    return-void
.end method

.method public onMusicUnBinded(Lasj$i;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "QQConPresenter"

    const-string v0, "KugouUnBinded"

    .line 213
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    invoke-static {}, Lbfr;->a()Lbfr;

    move-result-object p1

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lbfr;->a(ILcom/xiaopeng/musicradio/bean/music/ConResult;)V

    .line 215
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/main/view/a;

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/a;->onMusicAuthCheck(I)V

    .line 217
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/main/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/music/concentration/main/view/a;->reSetData()V

    :cond_0
    return-void
.end method

.method public onMusicUnBinded(Lasj$s;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "QQConPresenter"

    const-string v0, "onMusicUnBinded"

    .line 193
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lbfr;->a()Lbfr;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lbfr;->a(ILcom/xiaopeng/musicradio/bean/music/ConResult;)V

    .line 195
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/main/view/a;

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/a;->onMusicAuthCheck(I)V

    .line 197
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/main/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/music/concentration/main/view/a;->reSetData()V

    :cond_0
    return-void
.end method

.method public onMusicUnBinded(Lasj$u;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "QQConPresenter"

    const-string v0, "NeteaseUnBinded"

    .line 203
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lbfr;->a()Lbfr;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lbfr;->a(ILcom/xiaopeng/musicradio/bean/music/ConResult;)V

    .line 205
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/main/view/a;

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/a;->onMusicAuthCheck(I)V

    .line 207
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/main/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/music/concentration/main/view/a;->reSetData()V

    :cond_0
    return-void
.end method
