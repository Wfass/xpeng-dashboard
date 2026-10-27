.class public Lcom/xiaopeng/musicradio/music/singer/main/presenter/MsSingerItemPresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "MsSingerItemPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "Lcom/xiaopeng/musicradio/music/singer/main/view/a;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 44
    const-class v0, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 46
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->getExtra()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->getPrefix()Ljava/lang/String;

    move-result-object p1

    const-string v2, "singer_music"

    .line 48
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "listsign_artist_radio"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 49
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/MsSingerItemPresenter;->b:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/MsSingerItemPresenter;->b:Z

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/MsSingerItemPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 54
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/MsSingerItemPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/singer/main/view/a;

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/MsSingerItemPresenter;->b:Z

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/a;->updatePlayState(Z)V

    goto :goto_0

    .line 57
    :cond_1
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/MsSingerItemPresenter;->b:Z

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/MsSingerItemPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 60
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/MsSingerItemPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/singer/main/view/a;

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/MsSingerItemPresenter;->b:Z

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/a;->updatePlayState(Z)V

    goto :goto_0

    .line 64
    :cond_2
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/MsSingerItemPresenter;->b:Z

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/MsSingerItemPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 67
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/MsSingerItemPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/singer/main/view/a;

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/MsSingerItemPresenter;->b:Z

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/a;->updatePlayState(Z)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public dealMusicEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 31
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/MsSingerItemPresenter;->b:Z

    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/MsSingerItemPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/MsSingerItemPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/singer/main/view/a;

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/MsSingerItemPresenter;->b:Z

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/a;->updatePlayState(Z)V

    :cond_0
    return-void
.end method

.method public dealMusicInfo(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 40
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->g()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/MsSingerItemPresenter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 24
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 25
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 26
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->g()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/MsSingerItemPresenter;->a(Ljava/lang/String;)V

    return-void
.end method
