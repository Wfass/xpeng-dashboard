.class public Lbsn;
.super Lcom/xiaopeng/musicradio/widget/mvpbase/a;
.source "VipBuyingDlg.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lbsm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsn$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/widget/mvpbase/a<",
        "Lbsm;",
        "Lcom/xiaopeng/musicradio/vip/buying/presenter/a;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lbsm;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

.field private o:Lcom/xiaopeng/xui/widget/XImageView;

.field private p:Landroid/view/View;

.field private q:Lbsn$a;

.field private r:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 65
    sget v0, Lcom/xiaopeng/musicradio/common/k$h;->NewBaseDialog:I

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaopeng/musicradio/widget/mvpbase/a;-><init>(Landroid/content/Context;IZ)V

    .line 60
    new-instance v0, Lbsn$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lbsn$a;-><init>(Lbsn;Lbsn$1;)V

    iput-object v0, p0, Lbsn;->q:Lbsn$a;

    .line 66
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->m()I

    move-result v0

    const-string v2, "SELECT_MENU_SCENE"

    invoke-static {v2, v0}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->O(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbsn;->d:Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lbsn;->a:Landroid/content/Context;

    .line 68
    invoke-virtual {p0}, Lbsn;->c()V

    .line 69
    invoke-virtual {p0}, Lbsn;->d()V

    .line 70
    invoke-virtual {p0}, Lbsn;->e()V

    .line 71
    invoke-virtual {p0}, Lbsn;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p0, v1}, Lbsn;->setCanceledOnTouchOutside(Z)V

    .line 74
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, -0x2

    .line 76
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 77
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v0, 0x11

    .line 78
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :cond_0
    return-void
.end method

.method static synthetic a(Lbsn;)Lcom/xiaopeng/musicradio/widget/LoadingTipsView;
    .locals 0

    .line 40
    iget-object p0, p0, Lbsn;->n:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    return-object p0
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 1

    if-nez p1, :cond_0

    .line 191
    iget-object p1, p0, Lbsn;->q:Lbsn$a;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbsn$a;->a(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 193
    :cond_0
    iget-object v0, p0, Lbsn;->o:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 194
    iget-object p1, p0, Lbsn;->q:Lbsn$a;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbsn$a;->a(Ljava/lang/Boolean;)V

    .line 196
    :goto_0
    invoke-direct {p0}, Lbsn;->i()V

    return-void
.end method

.method static synthetic a(Lbsn;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lbsn;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 147
    iget-object v0, p0, Lbsn;->r:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lbsn;->r:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 150
    :cond_0
    invoke-static {p1}, Lio/reactivex/Flowable;->just(Ljava/lang/Object;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 151
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Lbsn$4;

    invoke-direct {v0, p0}, Lbsn$4;-><init>(Lbsn;)V

    .line 152
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 159
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Lbsn$2;

    invoke-direct {v0, p0}, Lbsn$2;-><init>(Lbsn;)V

    new-instance v1, Lbsn$3;

    invoke-direct {v1, p0}, Lbsn$3;-><init>(Lbsn;)V

    .line 160
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbsn;->r:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method static synthetic b(Lbsn;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lbsn;->j()V

    return-void
.end method

.method static synthetic c(Lbsn;)Lbsn$a;
    .locals 0

    .line 40
    iget-object p0, p0, Lbsn;->q:Lbsn$a;

    return-object p0
.end method

.method static synthetic d(Lbsn;)Lcom/xiaopeng/musicradio/widget/lifecycle/a;
    .locals 0

    .line 40
    iget-object p0, p0, Lbsn;->e:Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    return-object p0
.end method

.method private i()V
    .locals 1

    .line 200
    iget-object v0, p0, Lbsn;->q:Lbsn$a;

    invoke-virtual {v0}, Lbsn$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lbsn;->q:Lbsn$a;

    invoke-virtual {v0}, Lbsn$a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    invoke-direct {p0}, Lbsn;->m()V

    goto :goto_0

    .line 206
    :cond_1
    invoke-direct {p0}, Lbsn;->n()V

    :goto_0
    return-void
.end method

.method private j()V
    .locals 2

    .line 211
    iget-object v0, p0, Lbsn;->c:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lbsn;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lbsn;->n:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    return-void
.end method

.method private m()V
    .locals 2

    .line 217
    iget-object v0, p0, Lbsn;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lbsn;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lbsn;->n:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    return-void
.end method

.method private n()V
    .locals 2

    .line 223
    iget-object v0, p0, Lbsn;->c:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lbsn;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lbsn;->n:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 184
    iget-object v0, p0, Lbsn;->q:Lbsn$a;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbsn$a;->a(Ljava/lang/Boolean;)V

    .line 185
    iget-object v0, p0, Lbsn;->q:Lbsn$a;

    invoke-virtual {v0, v1}, Lbsn$a;->b(Ljava/lang/Boolean;)V

    .line 186
    invoke-direct {p0}, Lbsn;->i()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lbsn;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object p1, p0, Lbsn;->q:Lbsn$a;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbsn$a;->b(Ljava/lang/Boolean;)V

    .line 177
    iget-object p1, p0, Lbsn;->q:Lbsn$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lbsn$a;->a(Ljava/lang/Boolean;)V

    .line 178
    invoke-direct {p0, p2}, Lbsn;->a(Ljava/lang/String;)V

    .line 179
    invoke-direct {p0}, Lbsn;->i()V

    return-void
.end method

.method protected b()I
    .locals 1

    .line 105
    sget v0, Lcom/xiaopeng/musicradio/vip/a$b;->dialog_vip_buying:I

    return v0
.end method

.method protected c()V
    .locals 1

    .line 110
    sget v0, Lcom/xiaopeng/musicradio/vip/a$a;->btn_close:I

    invoke-virtual {p0, v0}, Lbsn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbsn;->b:Landroid/view/View;

    .line 111
    sget v0, Lcom/xiaopeng/musicradio/vip/a$a;->tv_nick_name:I

    invoke-virtual {p0, v0}, Lbsn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbsn;->c:Landroid/widget/TextView;

    .line 112
    sget v0, Lcom/xiaopeng/musicradio/vip/a$a;->loading_tips_view:I

    invoke-virtual {p0, v0}, Lbsn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iput-object v0, p0, Lbsn;->n:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    .line 113
    sget v0, Lcom/xiaopeng/musicradio/vip/a$a;->iv_img:I

    invoke-virtual {p0, v0}, Lbsn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lbsn;->o:Lcom/xiaopeng/xui/widget/XImageView;

    .line 114
    sget v0, Lcom/xiaopeng/musicradio/vip/a$a;->rl_info_layout:I

    invoke-virtual {p0, v0}, Lbsn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbsn;->p:Landroid/view/View;

    .line 115
    sget v0, Lcom/xiaopeng/musicradio/vip/a$a;->tv_qq_vip_contact:I

    invoke-virtual {p0, v0}, Lbsn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbsn;->m:Landroid/widget/TextView;

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method protected e()V
    .locals 2

    .line 124
    iget-object v0, p0, Lbsn;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lbsn;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lbsn;->n:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    new-instance v1, Lbsn$1;

    invoke-direct {v1, p0}, Lbsn$1;-><init>(Lbsn;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected synthetic f()Lcom/xiaopeng/musicradio/widget/lifecycle/a;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lbsn;->h()Lcom/xiaopeng/musicradio/vip/buying/presenter/a;

    move-result-object v0

    return-object v0
.end method

.method protected g()V
    .locals 0

    return-void
.end method

.method protected h()Lcom/xiaopeng/musicradio/vip/buying/presenter/a;
    .locals 1

    .line 100
    new-instance v0, Lcom/xiaopeng/musicradio/vip/buying/presenter/a;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/vip/buying/presenter/a;-><init>()V

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/xiaopeng/musicradio/vip/a$a;->tv_qq_vip_contact:I

    if-ne p1, v0, :cond_0

    .line 90
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object p1

    const-class v0, Lbtg;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbtg;

    const/4 v0, 0x0

    const-string v1, "http://y.qq.com/y/static/protocol/car_vip.html"

    .line 91
    invoke-interface {p1, v1, v0}, Lbtg;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_0
    invoke-virtual {p0}, Lbsn;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 94
    invoke-virtual {p0}, Lbsn;->dismiss()V

    :cond_1
    return-void
.end method

.method public show()V
    .locals 1

    .line 141
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->show()V

    .line 142
    invoke-direct {p0}, Lbsn;->j()V

    .line 143
    iget-object v0, p0, Lbsn;->e:Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    check-cast v0, Lcom/xiaopeng/musicradio/vip/buying/presenter/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/vip/buying/presenter/a;->f()V

    return-void
.end method
