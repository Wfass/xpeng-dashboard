.class public Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;
.super Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;
.source "MsPersonalLowLayout.java"

# interfaces
.implements Lbxt;
.implements Lcom/xiaopeng/musicradio/music/concentration/daily/view/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/music/concentration/daily/view/b;",
        "Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;",
        ">;",
        "Lbxt;",
        "Lcom/xiaopeng/musicradio/music/concentration/daily/view/b;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MsPersonalLayout"


# instance fields
.field private mAccountType:I

.field private mImgOne:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field private mImgThree:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field private mImgTow:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field private mIsInit:Z

.field private mItemBg:Lcom/xiaopeng/xui/widget/XImageView;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastVuiPlay:Z

.field private mPersonalContent:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private mPersonalLogoUrl0:Ljava/lang/String;

.field private mPersonalPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

.field private mPersonalPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mPersonalSong:Lcom/xiaopeng/xui/widget/XTextView;

.field private mPersonalTitle:Lcom/xiaopeng/xui/widget/XTextView;

.field private mPlayIconLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mRootItemLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private mScreenState:Lcom/xiaopeng/musicradio/widget/k;

.field private mThemeViewModel:Lapr;

.field private mXImageViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xui/widget/XImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 74
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mPersonalLogoUrl0:Ljava/lang/String;

    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mIsInit:Z

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mXImageViews:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mItems:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 229
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mLastVuiPlay:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, ""

    .line 48
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mPersonalLogoUrl0:Ljava/lang/String;

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mIsInit:Z

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mXImageViews:Ljava/util/ArrayList;

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mItems:Ljava/util/ArrayList;

    .line 69
    new-instance v1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 229
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mLastVuiPlay:Z

    .line 79
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, ""

    .line 48
    iput-object p3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mPersonalLogoUrl0:Ljava/lang/String;

    const/4 p3, 0x0

    .line 63
    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mIsInit:Z

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mXImageViews:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mItems:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 229
    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mLastVuiPlay:Z

    .line 84
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method private getCount()I
    .locals 2

    .line 275
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_2

    .line 276
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method private setDrawable()V
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mPersonalPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mPlayIconLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mPersonalPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    iget-boolean v3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mLastVuiPlay:Z

    invoke-static {v0, v1, v2, v3}, Lbxo;->a(Lcom/xiaopeng/xui/widget/XImageView;Lcom/xiaopeng/xui/widget/XFrameLayout;Lcom/xiaopeng/xui/widget/XFrameLayout;Z)V

    return-void
.end method

.method private setImages(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 189
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mXImageViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mXImageViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xui/widget/XImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->getCount()I

    move-result v1

    .line 193
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v1, :cond_1

    .line 194
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_1
    if-lez v1, :cond_5

    .line 197
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->showLoadingTip(I)V

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_6

    .line 199
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mXImageViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xui/widget/XImageView;

    .line 200
    invoke-virtual {v3, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    if-nez v2, :cond_3

    .line 202
    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mPersonalSong:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v4

    .line 204
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 205
    iget-object v5, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mPersonalLogoUrl0:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mPersonalLogoUrl0:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 206
    :cond_2
    iget-object v5, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mPersonalSong:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v5}, Lcom/xiaopeng/xui/widget/XTextView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mItemBg:Lcom/xiaopeng/xui/widget/XImageView;

    sget v7, Lbez$c;->pic_covers_music_220:I

    invoke-static {v5, v3, v6, v4, v7}, Lbxo;->b(Landroid/content/Context;Lcom/xiaopeng/xui/widget/XImageView;Lcom/xiaopeng/xui/widget/XImageView;Ljava/lang/String;I)V

    .line 207
    iput-object v4, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mPersonalLogoUrl0:Ljava/lang/String;

    goto :goto_2

    .line 212
    :cond_3
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lbxo;->a(Lcom/xiaopeng/xui/widget/XImageView;Ljava/lang/String;)V

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const-string p1, ""

    .line 216
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->showNoDataView(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private setTitleSize()V
    .locals 4

    .line 287
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mPersonalTitle:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbez$b;->x_font_title_03_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setTextSize(IF)V

    goto :goto_0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mPersonalTitle:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbez$b;->top_banner_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setTextSize(IF)V

    .line 292
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lbez$e;->music_banner_sub_line:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mPersonalSong:Lcom/xiaopeng/xui/widget/XTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_1

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mPersonalSong:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private showLoadingTip(I)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->createPresenter()Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;
    .locals 1

    .line 90
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 4

    .line 95
    sget v0, Lbez$d;->play_icon_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mPlayIconLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 96
    sget v0, Lbez$d;->item_bg:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mItemBg:Lcom/xiaopeng/xui/widget/XImageView;

    .line 97
    sget v0, Lbez$d;->personal_img_one:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mImgOne:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 98
    sget v0, Lbez$d;->personal_img_tow:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mImgTow:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 99
    sget v0, Lbez$d;->personal_img_three:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mImgThree:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mXImageViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mImgOne:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mXImageViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mImgTow:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mXImageViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mImgThree:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    sget v0, Lbez$d;->personal_play_item_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mPersonalPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 104
    sget v0, Lbez$d;->personal_play_icon:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mPersonalPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    .line 106
    sget v0, Lbez$d;->personal_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mPersonalTitle:Lcom/xiaopeng/xui/widget/XTextView;

    .line 107
    sget v0, Lbez$d;->song_name:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mPersonalSong:Lcom/xiaopeng/xui/widget/XTextView;

    .line 109
    sget v0, Lbez$d;->root_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mRootItemLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 110
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mPersonalPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ms_personal_play_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mPersonalPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mPersonalPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    sget v1, Lbez$g;->vui_personal_txt:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiLabel(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mPersonalPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 154
    sget v0, Lbez$f;->ms_layout_personal:I

    return v0
.end method

.method public getData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 184
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->setImages(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 265
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onAttachedToWindow()V

    .line 266
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0}, Lapr;->a(Landroid/view/View;)V

    return-void
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lbxr;)Lbye;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 254
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0, p1}, Lapr;->a(Landroid/view/View;Landroid/content/res/Configuration;)V

    .line 256
    invoke-static {p1}, Lapo;->b(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 257
    iget p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mAccountType:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->setMusicAccountResource(I)V

    .line 259
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 260
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->setTitleSize()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 270
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onDetachedFromWindow()V

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0}, Lapr;->b(Landroid/view/View;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 222
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lbyf;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public reload()V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->c()V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mRootItemLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout$1;-><init>(Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setMusicAccountResource(I)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 122
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->setTitleSize()V

    .line 123
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->setDrawable()V

    .line 124
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mAccountType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 126
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mPersonalTitle:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lbez$g;->personal_qq_txt:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    goto :goto_0

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mPersonalTitle:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lbez$g;->personal_netease_txt:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 130
    :goto_0
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mIsInit:Z

    if-eqz p1, :cond_1

    return-void

    .line 133
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    iget v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mAccountType:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->a(I)V

    .line 134
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->onResume(Landroidx/lifecycle/n;)V

    return-void
.end method

.method protected setView()V
    .locals 0

    return-void
.end method

.method public showErrorView(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showLoadingView()V
    .locals 0

    return-void
.end method

.method public showNoDataView(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateRadioPlayState(Z)V
    .locals 3

    .line 234
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->q()I

    move-result v0

    .line 235
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mPersonalPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-static {p1, v0, v1}, Lbxo;->a(ZILcom/xiaopeng/xui/widget/XImageView;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 241
    :goto_0
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mLastVuiPlay:Z

    if-eq v0, p1, :cond_1

    .line 242
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mPersonalPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 243
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->Y(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mPersonalPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 244
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsPersonalLowLayout;->mLastVuiPlay:Z

    :cond_1
    return-void
.end method
