.class public Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainPresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "MusicMainPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "Lcom/xiaopeng/musicradio/music/main/view/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainPresenter;->b:Ljava/util/Map;

    .line 38
    sget-object v0, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainPresenter;->b:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "concentration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainPresenter;->b:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rank"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainPresenter;->b:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "singer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainPresenter;->b:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mine"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainPresenter;->b:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "search"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public changeAccountType(Lasj$b;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 143
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/main/view/d;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/music/main/view/d;->onMusicAuthCheck()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    const-string p1, "MusicMainPresenter"

    const-string v0, "onCreateView"

    .line 50
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/main/view/d;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/music/main/view/d;->onMusicAuthCheck()V

    :cond_0
    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 1

    .line 150
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    const-string p1, "MusicMainPresenter"

    const-string v0, "onDestroy: ==========="

    .line 151
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onMusicBinded(Lasj$h;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "MusicMainPresenter"

    const-string v0, "KugouBinded: "

    .line 81
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/main/view/d;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/music/main/view/d;->onMusicAuthCheck(I)V

    :cond_0
    return-void
.end method

.method public onMusicBinded(Lasj$m;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "MusicMainPresenter"

    const-string v0, "onMusicBinded: "

    .line 65
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/main/view/d;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/music/main/view/d;->onMusicAuthCheck(I)V

    :cond_0
    return-void
.end method

.method public onMusicBinded(Lasj$t;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "MusicMainPresenter"

    const-string v0, "NeteaseBinded: "

    .line 73
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/main/view/d;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/music/main/view/d;->onMusicAuthCheck(I)V

    :cond_0
    return-void
.end method

.method public onMusicUnBinded(Lasj$i;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "MusicMainPresenter"

    const-string v0, "KugouUnBinded"

    .line 105
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/main/view/d;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/music/main/view/d;->onMusicAuthCheck(I)V

    :cond_0
    return-void
.end method

.method public onMusicUnBinded(Lasj$s;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "MusicMainPresenter"

    const-string v0, "onMusicUnBinded"

    .line 89
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/main/view/d;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/music/main/view/d;->onMusicAuthCheck(I)V

    :cond_0
    return-void
.end method

.method public onMusicUnBinded(Lasj$u;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "MusicMainPresenter"

    const-string v0, "NeteaseUnBinded"

    .line 97
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/main/view/d;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/music/main/view/d;->onMusicAuthCheck(I)V

    :cond_0
    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onResume(Landroidx/lifecycle/n;)V

    const-string p1, "MusicMainPresenter"

    const-string v0, "onResume: ====="

    .line 60
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSwitchTab(Lcom/xiaopeng/musicradio/event/common/b$b;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSwitchTab: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/b$b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicMainPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/b$b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 117
    :cond_0
    sget-object v0, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainPresenter;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/b$b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    return-void

    .line 121
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainPresenter;->a()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/b$b;->a()I

    move-result v2

    if-nez v2, :cond_4

    .line 122
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->d(Ljava/lang/Object;)V

    .line 123
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/b$b;->a()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 124
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/main/view/d;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/music/main/view/d;->openSearch()V

    return-void

    .line 127
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainPresenter;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/music/main/view/d;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/xiaopeng/musicradio/music/main/view/d;->selectTab(I)V

    .line 128
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/b$b;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "recommend"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    .line 131
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSwitchTab: ======= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v0, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainPresenter$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainPresenter$1;-><init>(Lcom/xiaopeng/musicradio/music/main/presenter/MusicMainPresenter;Lcom/xiaopeng/musicradio/event/common/b$b;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method
