.class public Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;
.super Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;
.source "MsDailyLowLayout.java"

# interfaces
.implements Lbxt;
.implements Lcom/xiaopeng/musicradio/music/concentration/daily/view/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/music/concentration/daily/view/a;",
        "Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;",
        ">;",
        "Lbxt;",
        "Lcom/xiaopeng/musicradio/music/concentration/daily/view/a;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MsDailyLayout"


# instance fields
.field private mAccountType:I

.field private mContext:Landroid/content/Context;

.field private mDailyTime:Lcom/xiaopeng/xui/widget/XTextView;

.field private mDailyTitle:Lcom/xiaopeng/xui/widget/XTextView;

.field private mImgOne:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field private mImgThree:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field private mImgTow:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field private mItemBg:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field private mLastVuiPlay:Z

.field private mLogoUrl0:Ljava/lang/String;

.field private mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

.field private mPlayIconLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

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
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    .line 55
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mLogoUrl0:Ljava/lang/String;

    .line 67
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mXImageViews:Ljava/util/ArrayList;

    .line 69
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    const/4 p1, 0x0

    .line 226
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mLastVuiPlay:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, ""

    .line 55
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mLogoUrl0:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mXImageViews:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    const/4 v0, 0x0

    .line 226
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mLastVuiPlay:Z

    .line 79
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, ""

    .line 55
    iput-object p3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mLogoUrl0:Ljava/lang/String;

    .line 67
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mXImageViews:Ljava/util/ArrayList;

    .line 69
    new-instance p3, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p3}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    const/4 p3, 0x0

    .line 226
    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mLastVuiPlay:Z

    .line 84
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getCount()I
    .locals 2

    .line 282
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    .line 283
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 285
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    return v1
.end method

.method private setDrawable()V
    .locals 4

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mPlayIconLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    iget-boolean v3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mLastVuiPlay:Z

    invoke-static {v0, v1, v2, v3}, Lbxo;->a(Lcom/xiaopeng/xui/widget/XImageView;Lcom/xiaopeng/xui/widget/XFrameLayout;Lcom/xiaopeng/xui/widget/XFrameLayout;Z)V

    return-void
.end method

.method private setTitleSize()V
    .locals 4

    .line 302
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mDailyTitle:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbez$b;->x_font_title_03_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setTextSize(IF)V

    goto :goto_0

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mDailyTitle:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbez$b;->top_banner_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setTextSize(IF)V

    .line 307
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lbez$e;->music_banner_sub_line:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mDailyTime:Lcom/xiaopeng/xui/widget/XTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_1

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mDailyTime:Lcom/xiaopeng/xui/widget/XTextView;

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

    .line 45
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->createPresenter()Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;
    .locals 1

    .line 90
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 4

    .line 95
    sget v0, Lbez$d;->item_bg:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mItemBg:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 96
    sget v0, Lbez$d;->daily_img_one:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mImgOne:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 97
    sget v0, Lbez$d;->daily_img_tow:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mImgTow:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 98
    sget v0, Lbez$d;->daily_img_three:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mImgThree:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 99
    sget v0, Lbez$d;->play_icon_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mPlayIconLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mXImageViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mImgOne:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mXImageViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mImgTow:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mXImageViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mImgThree:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    sget v0, Lbez$d;->daily_time:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mDailyTime:Lcom/xiaopeng/xui/widget/XTextView;

    .line 105
    sget v0, Lbez$d;->daily_play_icon:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    .line 106
    sget v0, Lbez$d;->dailyl_play_item_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 107
    sget v0, Lbez$d;->root_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mRootItemLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 108
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ms_daily_play_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 110
    sget v0, Lbez$d;->root_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mRootItemLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/vui/c;->a(Lcom/xiaopeng/xui/vui/VuiView;Ljava/lang/String;)V

    .line 111
    sget v0, Lbez$d;->daily_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mDailyTitle:Lcom/xiaopeng/xui/widget/XTextView;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 162
    sget v0, Lbez$f;->ms_layout_daily:I

    return v0
.end method

.method public getData(Ljava/util/ArrayList;)V
    .locals 5
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

    .line 190
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mXImageViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 191
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mXImageViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xui/widget/XImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    const-string p1, ""

    .line 194
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->showNoDataView(Ljava/lang/String;)V

    goto :goto_2

    .line 196
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 198
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->showLoadingTip(I)V

    goto :goto_2

    .line 200
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v1, :cond_3

    .line 201
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_3
    if-lez v1, :cond_4

    .line 204
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->showLoadingTip(I)V

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_4

    .line 206
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mXImageViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xui/widget/XImageView;

    .line 207
    invoke-virtual {v3, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 208
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lbxo;->a(Lcom/xiaopeng/xui/widget/XImageView;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public getPersonalData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 272
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onAttachedToWindow()V

    .line 273
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mThemeViewModel:Lapr;

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

    .line 264
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 265
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0, p1}, Lapr;->a(Landroid/view/View;Landroid/content/res/Configuration;)V

    .line 266
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 267
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->setTitleSize()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 277
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onDetachedFromWindow()V

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0}, Lapr;->b(Landroid/view/View;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 218
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    .line 219
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->updateTime()V

    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lbyf;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public openDaily()V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lbjp;->a(Landroid/content/Context;)V

    return-void
.end method

.method public reload()V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->c()V

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout$1;-><init>(Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mRootItemLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout$2;-><init>(Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setMusicAccountResouce(I)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 121
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->setTitleSize()V

    .line 122
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->setDrawable()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 124
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mDailyTitle:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lbez$g;->daily_title:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 125
    sget p1, Lbez$c;->img_bg_qqmusic_daily_m:I

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mItemBg:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/af;->a(ILandroid/widget/ImageView;)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mDailyTitle:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lbez$g;->daily_title_netease:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 128
    sget p1, Lbez$c;->img_bg_netease_daily_m:I

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mItemBg:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/af;->a(ILandroid/widget/ImageView;)V

    :goto_0
    return-void
.end method

.method protected setView()V
    .locals 0

    .line 138
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->updateTime()V

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

    .line 231
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->q()I

    move-result v0

    .line 232
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-static {p1, v0, v1}, Lbxo;->a(ZILcom/xiaopeng/xui/widget/XImageView;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 238
    :goto_0
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mLastVuiPlay:Z

    if-eq v0, p1, :cond_1

    .line 239
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 240
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->Y(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 241
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mLastVuiPlay:Z

    :cond_1
    return-void
.end method

.method public updateTime()V
    .locals 3

    .line 252
    invoke-static {}, Lbxn;->a()Ljava/lang/String;

    move-result-object v0

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTime: month = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MsDailyLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mDailyTime:Lcom/xiaopeng/xui/widget/XTextView;

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLowLayout;->mDailyTime:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
