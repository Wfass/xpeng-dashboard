.class public Lcom/xiaopeng/musicradio/playercomponent/big/presenter/XOSPlayerCommonPresenter;
.super Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;
.source "XOSPlayerCommonPresenter.java"


# instance fields
.field private b:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;-><init>()V

    return-void
.end method

.method private c()V
    .locals 2

    .line 73
    invoke-static {}, Layh;->a()Layh;

    move-result-object v0

    invoke-virtual {v0}, Layh;->f()I

    move-result v0

    .line 74
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/XOSPlayerCommonPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/XOSPlayerCommonPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/playercomponent/big/view/c;

    invoke-interface {v1, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/c;->refreshColor(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Layh$b;)V
    .locals 4

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshDrawable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XOSPlayerCommonPresente"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Layh$b;->c()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 38
    invoke-virtual {p1}, Layh$b;->f()Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_1

    .line 39
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/XOSPlayerCommonPresenter;->b:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 40
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/XOSPlayerCommonPresenter;->b:Landroid/graphics/drawable/Drawable;

    .line 43
    :cond_0
    new-instance p1, Landroid/graphics/drawable/TransitionDrawable;

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/XOSPlayerCommonPresenter;->b:Landroid/graphics/drawable/Drawable;

    aput-object v3, v2, v1

    const/4 v1, 0x1

    aput-object v0, v2, v1

    invoke-direct {p1, v2}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 44
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    const/16 v1, 0x190

    .line 45
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 46
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/XOSPlayerCommonPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 47
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/XOSPlayerCommonPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/playercomponent/big/view/c;

    invoke-interface {v1, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/c;->refreshCover(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/XOSPlayerCommonPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 51
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/XOSPlayerCommonPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/playercomponent/big/view/c;

    invoke-virtual {p1}, Layh$b;->g()I

    move-result p1

    if-ne p1, v2, :cond_2

    sget p1, Lble$c;->img_cd_netease_empty:I

    goto :goto_0

    :cond_2
    sget p1, Lble$c;->img_cd_empty:I

    :goto_0
    invoke-interface {v1, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/c;->refreshCover(I)V

    .line 55
    :cond_3
    :goto_1
    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/XOSPlayerCommonPresenter;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method protected b(I)V
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/XOSPlayerCommonPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/XOSPlayerCommonPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/playercomponent/big/view/c;

    sget v0, Lble$c;->img_cd_empty:I

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/c;->refreshCover(I)V

    :cond_0
    return-void
.end method

.method protected h()V
    .locals 0

    .line 29
    invoke-super {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;->h()V

    .line 30
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/XOSPlayerCommonPresenter;->c()V

    return-void
.end method

.method protected i()V
    .locals 0

    return-void
.end method

.method public onRefreshLogoColor(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aq;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 67
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$aq;->a()I

    move-result p1

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/XOSPlayerCommonPresenter;->c()V

    :cond_0
    return-void
.end method
