.class public Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;
.super Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;
.source "ChoiceBannerLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/program/choice/view/banner/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout<",
        "Lcom/xiaopeng/musicradio/program/choice/view/banner/b;",
        "Lcom/xiaopeng/musicradio/program/choice/presenter/QQChoiceBannerPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/program/choice/view/banner/b;"
    }
.end annotation


# static fields
.field private static c:Ljava/lang/String; = "ChoiceBannerLayout"


# instance fields
.field private d:Lcom/to/aboomy/pager2banner/Banner;

.field private e:Lcom/xiaopeng/xui/widget/XConstraintLayout;

.field private f:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private g:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field private i:Lcom/xiaopeng/xui/widget/XImageView;

.field private j:Lcom/xiaopeng/xui/widget/XTextView;

.field private k:Lcom/xiaopeng/xui/widget/XTextView;

.field private l:Lcom/xiaopeng/musicradio/widget/PlayControlView;

.field private m:Lcom/xiaopeng/musicradio/widget/SmallLoadingTipsView;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/widget/FrameLayout;

.field private p:Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;

.field private q:I

.field private r:Lbmb;

.field private s:Lcom/xiaopeng/musicradio/widget/k;

.field private t:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field private u:Z

.field private v:I

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 73
    iput p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->q:I

    .line 77
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->s:Lcom/xiaopeng/musicradio/widget/k;

    const/4 p1, 0x0

    .line 245
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->u:Z

    .line 303
    sget p1, Lcom/xiaopeng/musicradio/program/c;->a:I

    iput p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->v:I

    .line 304
    sget p1, Lcom/xiaopeng/musicradio/program/c;->b:I

    iput p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->w:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 73
    iput p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->q:I

    .line 77
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->s:Lcom/xiaopeng/musicradio/widget/k;

    const/4 p1, 0x0

    .line 245
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->u:Z

    .line 303
    sget p1, Lcom/xiaopeng/musicradio/program/c;->a:I

    iput p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->v:I

    .line 304
    sget p1, Lcom/xiaopeng/musicradio/program/c;->b:I

    iput p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->w:I

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->q:I

    return p1
.end method

.method private a(II)Lcom/to/aboomy/pager2banner/b;
    .locals 2

    .line 182
    new-instance v0, Lcom/to/aboomy/pager2banner/b;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/to/aboomy/pager2banner/b;-><init>(Landroid/content/Context;)V

    .line 183
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/to/aboomy/pager2banner/b;->d(I)Lcom/to/aboomy/pager2banner/b;

    move-result-object p1

    const/4 v0, 0x1

    .line 184
    invoke-virtual {p1, v0}, Lcom/to/aboomy/pager2banner/b;->c(I)Lcom/to/aboomy/pager2banner/b;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 185
    invoke-virtual {p1, v0}, Lcom/to/aboomy/pager2banner/b;->b(F)Lcom/to/aboomy/pager2banner/b;

    move-result-object p1

    const/high16 v0, 0x40a00000    # 5.0f

    .line 186
    invoke-virtual {p1, v0}, Lcom/to/aboomy/pager2banner/b;->a(F)Lcom/to/aboomy/pager2banner/b;

    move-result-object p1

    .line 187
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/to/aboomy/pager2banner/b;->e(I)Lcom/to/aboomy/pager2banner/b;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic e(Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic f(Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic g(Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;)Lcom/to/aboomy/pager2banner/Banner;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->d:Lcom/to/aboomy/pager2banner/Banner;

    return-object p0
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->c:Ljava/lang/String;

    return-object v0
.end method

.method private j()V
    .locals 4

    .line 307
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->s:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 308
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->n:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 310
    sget v0, Lcom/xiaopeng/musicradio/program/b$a;->banner_indicator_932D:I

    .line 311
    sget v1, Lcom/xiaopeng/musicradio/program/b$a;->bg_white_color:I

    .line 313
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->s:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/k;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    sget v2, Lcom/xiaopeng/musicradio/program/c;->a:I

    iput v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->v:I

    goto :goto_0

    .line 316
    :cond_0
    sget v2, Lcom/xiaopeng/musicradio/program/c;->c:I

    iput v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->v:I

    .line 318
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->a(II)Lcom/to/aboomy/pager2banner/b;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/to/aboomy/pager2banner/b;->a(II)V

    .line 320
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->d:Lcom/to/aboomy/pager2banner/Banner;

    invoke-virtual {v1}, Lcom/to/aboomy/pager2banner/Banner;->getCurrentPager()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/to/aboomy/pager2banner/b;->a(IFI)V

    .line 321
    iget v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->v:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/to/aboomy/pager2banner/b;->setX(F)V

    .line 322
    iget v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->w:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/to/aboomy/pager2banner/b;->setY(F)V

    .line 323
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->d:Lcom/to/aboomy/pager2banner/Banner;

    invoke-virtual {v1, v0}, Lcom/to/aboomy/pager2banner/Banner;->a(Lcom/to/aboomy/pager2banner/a;)Lcom/to/aboomy/pager2banner/Banner;

    :cond_1
    return-void
.end method


# virtual methods
.method protected synthetic a()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->f()Lcom/xiaopeng/musicradio/program/choice/presenter/QQChoiceBannerPresenter;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->l:Lcom/xiaopeng/musicradio/widget/PlayControlView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/PlayControlView;->setPlayState(I)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 255
    :goto_0
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->u:Z

    if-eq v0, p1, :cond_1

    .line 256
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->l:Lcom/xiaopeng/musicradio/widget/PlayControlView;

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 257
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->u:Z

    .line 258
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    iget v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->h:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->ap(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->l:Lcom/xiaopeng/musicradio/widget/PlayControlView;

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->e:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->e:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->setVisibility(I)V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->j:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->k:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->g:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->i:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lcom/xiaopeng/musicradio/program/b$c;->pic_covers_music_220:I

    invoke-static {p1, p2, v0, p3, v1}, Lbxo;->b(Landroid/content/Context;Lcom/xiaopeng/xui/widget/XImageView;Lcom/xiaopeng/xui/widget/XImageView;Ljava/lang/String;I)V

    .line 228
    iput-boolean p4, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->u:Z

    .line 229
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->l:Lcom/xiaopeng/musicradio/widget/PlayControlView;

    invoke-static {p1, p2, p4}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 230
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    iget p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->h:I

    invoke-static {p2}, Lcom/xiaopeng/musicradio/vui/c;->ap(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x3

    new-array p3, p3, [Landroid/view/View;

    iget-object p4, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->e:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    aput-object p4, p3, v2

    const/4 p4, 0x1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    aput-object v0, p3, p4

    const/4 p4, 0x2

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->l:Lcom/xiaopeng/musicradio/widget/PlayControlView;

    aput-object v0, p3, p4

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;",
            ">;Z)V"
        }
    .end annotation

    .line 201
    sget-object v0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBannerData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->n:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 205
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->r:Lbmb;

    invoke-virtual {p2}, Lbmb;->getItemCount()I

    move-result p2

    if-nez p2, :cond_1

    .line 206
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->r:Lbmb;

    invoke-virtual {p2, p1}, Lbmb;->a(Ljava/util/List;)V

    .line 207
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->d:Lcom/to/aboomy/pager2banner/Banner;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->r:Lbmb;

    invoke-virtual {p2, v0}, Lcom/to/aboomy/pager2banner/Banner;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 208
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->d:Lcom/to/aboomy/pager2banner/Banner;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0}, Lcom/to/aboomy/pager2banner/Banner;->a(IZ)V

    .line 210
    :cond_1
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->n:Ljava/util/List;

    return-void
.end method

.method protected b()V
    .locals 2

    .line 106
    sget-object v0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->c:Ljava/lang/String;

    const-string v1, "findView: ========"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->banner:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/to/aboomy/pager2banner/Banner;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->d:Lcom/to/aboomy/pager2banner/Banner;

    .line 108
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->no_reading_history_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XConstraintLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->e:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    .line 109
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->reading_history_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 110
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->bg_reading_history_iv:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->i:Lcom/xiaopeng/xui/widget/XImageView;

    .line 111
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->album_logo:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->g:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 112
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->album_percentage:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->k:Lcom/xiaopeng/xui/widget/XTextView;

    .line 113
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->album_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->j:Lcom/xiaopeng/xui/widget/XTextView;

    .line 114
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->history_play_control:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/PlayControlView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->l:Lcom/xiaopeng/musicradio/widget/PlayControlView;

    .line 115
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->loading_tips:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/SmallLoadingTipsView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->m:Lcom/xiaopeng/musicradio/widget/SmallLoadingTipsView;

    .line 116
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->banner_root:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->o:Landroid/widget/FrameLayout;

    .line 117
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->vipsale_banner:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->p:Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;

    .line 118
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->last_record_iv:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->t:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    return-void
.end method

.method protected c()V
    .locals 3

    .line 123
    invoke-static {}, Lcom/xiaopeng/musicradio/common/l;->a()Lcom/xiaopeng/musicradio/common/l;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/program/b$c;->pic_covers_music_220:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/common/l;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->t:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    sget v0, Lcom/xiaopeng/musicradio/program/b$c;->bg_banner_history_layout:I

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->i:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/af;->a(ILandroid/widget/ImageView;)V

    .line 126
    new-instance v0, Lbmb;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lbmb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->r:Lbmb;

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->r:Lbmb;

    new-instance v1, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout$1;-><init>(Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;)V

    invoke-virtual {v0, v1}, Lbmb;->a(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;)V

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->s:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 137
    sget v0, Lcom/xiaopeng/musicradio/program/b$a;->banner_indicator_932D:I

    .line 138
    sget v1, Lcom/xiaopeng/musicradio/program/b$a;->bg_white_color:I

    .line 139
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->s:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/k;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    sget v2, Lcom/xiaopeng/musicradio/program/c;->a:I

    iput v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->v:I

    goto :goto_0

    .line 142
    :cond_0
    sget v2, Lcom/xiaopeng/musicradio/program/c;->c:I

    iput v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->v:I

    .line 144
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->a(II)Lcom/to/aboomy/pager2banner/b;

    move-result-object v0

    .line 145
    iget v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->v:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/to/aboomy/pager2banner/b;->setX(F)V

    .line 146
    iget v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->w:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/to/aboomy/pager2banner/b;->setY(F)V

    .line 147
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->d:Lcom/to/aboomy/pager2banner/Banner;

    invoke-virtual {v1, v0}, Lcom/to/aboomy/pager2banner/Banner;->a(Lcom/to/aboomy/pager2banner/a;)Lcom/to/aboomy/pager2banner/Banner;

    move-result-object v0

    const/4 v1, 0x0

    .line 148
    invoke-virtual {v0, v1}, Lcom/to/aboomy/pager2banner/Banner;->a(Z)Lcom/to/aboomy/pager2banner/Banner;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout$2;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout$2;-><init>(Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;)V

    .line 149
    invoke-virtual {v0, v2}, Lcom/to/aboomy/pager2banner/Banner;->a(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)Lcom/to/aboomy/pager2banner/Banner;

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->l:Lcom/xiaopeng/musicradio/widget/PlayControlView;

    new-instance v2, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout$3;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout$3;-><init>(Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/PlayControlView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v2, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout$4;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout$4;-><init>(Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;)V

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->o:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout$5;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout$5;-><init>(Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->o:Landroid/widget/FrameLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->d:Lcom/to/aboomy/pager2banner/Banner;

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lcom/to/aboomy/pager2banner/Banner;->a(II)Lcom/to/aboomy/pager2banner/Banner;

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->p:Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->setVipSaleType(I)V

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method protected f()Lcom/xiaopeng/musicradio/program/choice/presenter/QQChoiceBannerPresenter;
    .locals 1

    .line 93
    new-instance v0, Lcom/xiaopeng/musicradio/program/choice/presenter/QQChoiceBannerPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/program/choice/presenter/QQChoiceBannerPresenter;-><init>()V

    return-object v0
.end method

.method public g()V
    .locals 5

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->e:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->i:Lcom/xiaopeng/xui/widget/XImageView;

    sget v2, Lcom/xiaopeng/musicradio/program/b$c;->bg_banner_history_layout:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 240
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->h:I

    invoke-static {v2}, Lcom/xiaopeng/musicradio/vui/c;->ap(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->e:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    aput-object v4, v3, v1

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 196
    sget v0, Lcom/xiaopeng/musicradio/program/b$f;->layout_banner_view:I

    return v0
.end method

.method public h()V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->d:Lcom/to/aboomy/pager2banner/Banner;

    if-eqz v0, :cond_0

    .line 299
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->j()V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 264
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 265
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->s:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 266
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->s:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 267
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->j()V

    .line 269
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/presenter/QQChoiceBannerPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/choice/presenter/QQChoiceBannerPresenter;->f()V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 1

    .line 98
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;->onResume(Landroidx/lifecycle/n;)V

    .line 99
    iget p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->q:I

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->n:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 100
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/presenter/QQChoiceBannerPresenter;

    iget v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->q:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/program/choice/presenter/QQChoiceBannerPresenter;->b(I)V

    :cond_0
    return-void
.end method

.method public setBannerIndex(I)V
    .locals 3

    .line 328
    new-instance v0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout$7;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout$7;-><init>(Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;I)V

    const-wide/16 v1, 0x32

    invoke-static {v0, v1, v2}, Lbql;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setLoadingState(I)V
    .locals 4

    .line 274
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->n:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 290
    :cond_0
    sget-object v0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLoadingState :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ignore, as there\'s data in the banner"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->m:Lcom/xiaopeng/musicradio/widget/SmallLoadingTipsView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/SmallLoadingTipsView;->setState(I)V

    .line 292
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->m:Lcom/xiaopeng/musicradio/widget/SmallLoadingTipsView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/widget/SmallLoadingTipsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 275
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->m:Lcom/xiaopeng/musicradio/widget/SmallLoadingTipsView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/SmallLoadingTipsView;->setState(I)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 277
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->m:Lcom/xiaopeng/musicradio/widget/SmallLoadingTipsView;

    new-instance v0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout$6;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout$6;-><init>(Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/SmallLoadingTipsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 286
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->m:Lcom/xiaopeng/musicradio/widget/SmallLoadingTipsView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/widget/SmallLoadingTipsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method
