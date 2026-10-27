.class public Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout;
.source "LocalRadioBannerItemLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout<",
        "Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/a;",
        "Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/LocalRadioBannerItemPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/a;"
    }
.end annotation


# instance fields
.field protected b:Landroid/widget/FrameLayout;

.field protected c:Lcom/xiaopeng/musicradio/widget/PlayControlView;

.field protected d:Lcom/xiaopeng/xui/widget/XTextView;

.field private e:Lcom/xiaopeng/xui/widget/XImageView;

.field private f:Lcom/xiaopeng/xui/widget/XTextView;

.field private g:Lcom/xiaopeng/xui/widget/XTextView;

.field private h:Lcom/xiaopeng/xui/widget/XImageView;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Lcom/xiaopeng/xui/widget/XConstraintLayout;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout;-><init>(Landroid/content/Context;)V

    const-string p1, "#0da5c8d9"

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->i:Ljava/lang/String;

    const-string p1, "#f8caca"

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->j:Ljava/lang/String;

    const-string p1, "#511B1B"

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->k:Ljava/lang/String;

    const-string p1, "#43231F"

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->l:Ljava/lang/String;

    .line 56
    sget p1, Lbuc$g;->netradio_live:I

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->o:Ljava/lang/String;

    .line 57
    sget p1, Lbuc$g;->netradio_live_no_program:I

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->p:Ljava/lang/String;

    const/4 p1, 0x0

    .line 194
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->q:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "#0da5c8d9"

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->i:Ljava/lang/String;

    const-string p1, "#f8caca"

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->j:Ljava/lang/String;

    const-string p1, "#511B1B"

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->k:Ljava/lang/String;

    const-string p1, "#43231F"

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->l:Ljava/lang/String;

    .line 56
    sget p1, Lbuc$g;->netradio_live:I

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->o:Ljava/lang/String;

    .line 57
    sget p1, Lbuc$g;->netradio_live_no_program:I

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->p:Ljava/lang/String;

    const/4 p1, 0x0

    .line 194
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->q:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "#0da5c8d9"

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->i:Ljava/lang/String;

    const-string p1, "#f8caca"

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->j:Ljava/lang/String;

    const-string p1, "#511B1B"

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->k:Ljava/lang/String;

    const-string p1, "#43231F"

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->l:Ljava/lang/String;

    .line 56
    sget p1, Lbuc$g;->netradio_live:I

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->o:Ljava/lang/String;

    .line 57
    sget p1, Lbuc$g;->netradio_live_no_program:I

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->p:Ljava/lang/String;

    const/4 p1, 0x0

    .line 194
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->q:Z

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 0

    .line 126
    sget p1, Lbuc$d;->album_layout:I

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecute(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->a:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/LocalRadioBannerItemPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/LocalRadioBannerItemPresenter;->c()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;Landroid/view/View;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected synthetic a()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->e()Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/LocalRadioBannerItemPresenter;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->c:Lcom/xiaopeng/musicradio/widget/PlayControlView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/PlayControlView;->setPlayState(I)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 203
    :goto_0
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->q:Z

    if-eq v0, p1, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->c:Lcom/xiaopeng/musicradio/widget/PlayControlView;

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 205
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->q:Z

    :cond_1
    return-void
.end method

.method protected b()V
    .locals 1

    .line 80
    sget v0, Lbuc$d;->album_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->b:Landroid/widget/FrameLayout;

    .line 81
    sget v0, Lbuc$d;->album_logo:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->e:Lcom/xiaopeng/xui/widget/XImageView;

    .line 82
    sget v0, Lbuc$d;->play_state:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/PlayControlView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->c:Lcom/xiaopeng/musicradio/widget/PlayControlView;

    .line 83
    sget v0, Lbuc$d;->title_scroller:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->f:Lcom/xiaopeng/xui/widget/XTextView;

    .line 84
    sget v0, Lbuc$d;->date:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->g:Lcom/xiaopeng/xui/widget/XTextView;

    .line 85
    sget v0, Lbuc$d;->bg_iv:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->h:Lcom/xiaopeng/xui/widget/XImageView;

    .line 86
    sget v0, Lbuc$d;->title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->d:Lcom/xiaopeng/xui/widget/XTextView;

    .line 87
    sget v0, Lbuc$d;->banner_root:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XConstraintLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->n:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    return-void
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method protected d()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->c:Lcom/xiaopeng/musicradio/widget/PlayControlView;

    new-instance v1, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout$1;-><init>(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/PlayControlView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->n:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout$2;-><init>(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected e()Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/LocalRadioBannerItemPresenter;
    .locals 1

    .line 75
    new-instance v0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/LocalRadioBannerItemPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/LocalRadioBannerItemPresenter;-><init>()V

    return-object v0
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 133
    sget v0, Lbuc$f;->item_banner_local_radio:I

    return v0
.end method

.method public getPagerIndex()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->m:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 157
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 158
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->f()V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 97
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout;->onResume(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public setPagerIndex(I)V
    .locals 1

    .line 101
    iput p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->m:I

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/LocalRadioBannerItemLayout;->a:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/LocalRadioBannerItemPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/LocalRadioBannerItemPresenter;->a(I)V

    return-void
.end method
