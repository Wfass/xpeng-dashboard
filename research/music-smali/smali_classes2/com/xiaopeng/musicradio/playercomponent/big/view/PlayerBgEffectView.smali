.class public Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;
.super Landroid/view/View;
.source "PlayerBgEffectView.java"


# instance fields
.field protected a:F

.field protected b:Z

.field protected c:Landroid/graphics/drawable/Drawable;

.field protected d:Landroid/graphics/drawable/TransitionDrawable;

.field private e:I

.field private f:Landroid/graphics/Bitmap;

.field private g:Lio/reactivex/disposables/Disposable;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 36
    sget p1, Lble$a;->big_player_day_mask_color:I

    iput p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->e:I

    const p1, 0x3e3851ec    # 0.18f

    .line 38
    iput p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->a:F

    const/4 p1, 0x1

    .line 171
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->h:Z

    .line 42
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->e()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    sget p1, Lble$a;->big_player_day_mask_color:I

    iput p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->e:I

    const p1, 0x3e3851ec    # 0.18f

    .line 38
    iput p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->a:F

    const/4 p1, 0x1

    .line 171
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->h:Z

    .line 47
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->e()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    sget p1, Lble$a;->big_player_day_mask_color:I

    iput p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->e:I

    const p1, 0x3e3851ec    # 0.18f

    .line 38
    iput p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->a:F

    const/4 p1, 0x1

    .line 171
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->h:Z

    .line 52
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->e()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->f:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->f:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private e()V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->setWillNotDraw(Z)V

    return-void
.end method

.method private f()V
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->a()V

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->d:Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 118
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->d:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/TransitionDrawable;->getNumberOfLayers()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 119
    iget-object v2, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->d:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/TransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 120
    instance-of v3, v2, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;

    if-eqz v3, :cond_0

    .line 121
    check-cast v2, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->a()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->d:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 126
    :cond_2
    iput-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->d:Landroid/graphics/drawable/TransitionDrawable;

    return-void
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 8

    .line 130
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->getMeasuredHeight()I

    move-result v0

    .line 131
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->getMeasuredWidth()I

    move-result v1

    if-gtz v1, :cond_0

    const/16 v1, 0x77c

    :cond_0
    move v5, v1

    if-gtz v0, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lapf;->a(Landroid/content/Context;)I

    move-result v0

    :cond_1
    move v4, v0

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playEff: height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerBgEffectView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    div-int/lit8 v0, v5, 0x2

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    int-to-double v6, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v6, v0

    .line 141
    new-instance v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;-><init>()V

    .line 142
    iget-boolean v7, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->h:Z

    move-object v2, v0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->a(Landroid/graphics/Bitmap;IIIZ)V

    .line 144
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->c:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 145
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->c:Landroid/graphics/drawable/Drawable;

    .line 147
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->a()V

    .line 149
    new-instance p1, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->c:Landroid/graphics/drawable/Drawable;

    aput-object v3, v2, v1

    const/4 v1, 0x1

    aput-object v0, v2, v1

    invoke-direct {p1, v2}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->d:Landroid/graphics/drawable/TransitionDrawable;

    .line 150
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->d:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 151
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->d:Landroid/graphics/drawable/TransitionDrawable;

    const/16 v1, 0x15e

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 152
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->d:Landroid/graphics/drawable/TransitionDrawable;

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView$3;-><init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/TransitionDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 166
    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->c:Landroid/graphics/drawable/Drawable;

    .line 167
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->invalidate()V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;ZZZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 68
    iget-object p3, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->d()V

    .line 74
    iget-object p3, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->g:Lio/reactivex/disposables/Disposable;

    if-eqz p3, :cond_1

    .line 75
    invoke-interface {p3}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_1
    if-nez p1, :cond_2

    .line 79
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->f()V

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->invalidate()V

    return-void

    .line 84
    :cond_2
    new-instance p3, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView$2;

    invoke-direct {p3, p0, p2, p1, p4}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView$2;-><init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;ZLandroid/graphics/Bitmap;Z)V

    invoke-static {p3}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 101
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 102
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView$1;

    invoke-direct {p2, p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView$1;-><init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;)V

    .line 103
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->g:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 173
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->h:Z

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;

    if-eqz v1, :cond_0

    .line 175
    check-cast v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->b()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x1

    .line 180
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->h:Z

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;

    if-eqz v1, :cond_0

    .line 182
    check-cast v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->c()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 4

    .line 195
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lapo;->d(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "PlayerBgEffectView"

    if-eqz v0, :cond_0

    const-string v0, "rf:night"

    .line 196
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x3f4ccccd    # 0.8f

    .line 197
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->setAlpha(F)V

    const/4 v0, 0x1

    .line 198
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->b:Z

    .line 199
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->OVERLAY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 201
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rf:day"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->a:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->a:F

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->setAlpha(F)V

    .line 203
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->b:Z

    .line 204
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 206
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->d:Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v2, :cond_2

    .line 207
    :goto_1
    iget-object v2, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->d:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/TransitionDrawable;->getNumberOfLayers()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 208
    iget-object v2, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->d:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/TransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 209
    instance-of v3, v2, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;

    if-eqz v3, :cond_1

    .line 210
    check-cast v2, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->a(Landroid/graphics/PorterDuffXfermode;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 214
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->invalidate()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 188
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "PlayerBgEffectView"

    const-string v0, "occ="

    .line 189
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->d()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 243
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 244
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->f()V

    .line 245
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->g:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->g:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->d:Landroid/graphics/drawable/TransitionDrawable;

    if-nez v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lble$a;->player_bg_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void

    .line 231
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/TransitionDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 233
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "#4d000000"

    .line 234
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 236
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->e:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_0
    return-void
.end method

.method public setMaskColor(I)V
    .locals 0

    .line 222
    iput p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->e:I

    return-void
.end method

.method public setViewAlpha(F)V
    .locals 0

    .line 218
    iput p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->a:F

    return-void
.end method
