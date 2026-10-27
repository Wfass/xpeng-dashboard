.class public Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;
.super Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;
.source "KugouDailyLayout.java"

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

.field private mDailyImgOne:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field private mDailyTime:Lcom/xiaopeng/xui/widget/XTextView;

.field private mDailyTitle:Lcom/xiaopeng/xui/widget/XTextView;

.field private mItemBg:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field private mLastVuiPlay:Z

.field private mLogoUrl0:Ljava/lang/String;

.field private mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

.field private mPlayIconLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mRootItemLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private mScreenState:Lcom/xiaopeng/musicradio/widget/k;

.field private mThemeViewModel:Lapr;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mLogoUrl0:Ljava/lang/String;

    .line 62
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    const/4 p1, 0x0

    .line 208
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mLastVuiPlay:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, ""

    .line 52
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mLogoUrl0:Ljava/lang/String;

    .line 62
    new-instance v0, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    const/4 v0, 0x0

    .line 208
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mLastVuiPlay:Z

    .line 72
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, ""

    .line 52
    iput-object p3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mLogoUrl0:Ljava/lang/String;

    .line 62
    new-instance p3, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p3}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    const/4 p3, 0x0

    .line 208
    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mLastVuiPlay:Z

    .line 77
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;)Landroid/content/Context;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private isThreeTwo()Z
    .locals 2

    .line 255
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 256
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private refreshLogo()V
    .locals 4

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mLogoUrl0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mDailyImgOne:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mLogoUrl0:Ljava/lang/String;

    sget v2, Lbez$c;->pic_covers_music_220:I

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mDailyImgOne:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method private setDrawable()V
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mPlayIconLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    iget-boolean v3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mLastVuiPlay:Z

    invoke-static {v0, v1, v2, v3}, Lbxo;->a(Lcom/xiaopeng/xui/widget/XImageView;Lcom/xiaopeng/xui/widget/XFrameLayout;Lcom/xiaopeng/xui/widget/XFrameLayout;Z)V

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
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->createPresenter()Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;
    .locals 1

    .line 83
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 4

    .line 88
    sget v0, Lbez$d;->play_icon_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mPlayIconLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 89
    sget v0, Lbez$d;->item_bg:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mItemBg:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 90
    sget v0, Lbez$d;->daily_img:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mDailyImgOne:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 91
    sget v0, Lbez$d;->daily_time:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mDailyTime:Lcom/xiaopeng/xui/widget/XTextView;

    .line 92
    sget v0, Lbez$d;->daily_play_icon:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    .line 93
    sget v0, Lbez$d;->dailyl_play_item_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 94
    sget v0, Lbez$d;->root_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mRootItemLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 95
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ms_daily_play_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 97
    sget v0, Lbez$d;->root_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mRootItemLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/vui/c;->a(Lcom/xiaopeng/xui/vui/VuiView;Ljava/lang/String;)V

    .line 98
    sget v0, Lbez$d;->daily_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mDailyTitle:Lcom/xiaopeng/xui/widget/XTextView;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 150
    sget v0, Lbez$f;->kugou_layout_daily:I

    return v0
.end method

.method public getData(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 178
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 179
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object p1

    .line 180
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mLogoUrl0:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 181
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mLogoUrl0:Ljava/lang/String;

    .line 182
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mDailyImgOne:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->setImageResource(I)V

    .line 183
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mDailyImgOne:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mLogoUrl0:Ljava/lang/String;

    sget v1, Lbez$c;->pic_covers_music_220:I

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mDailyImgOne:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {p1, v0, v1, v2}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 186
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->showNoDataView(Ljava/lang/String;)V

    :cond_1
    :goto_0
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

    .line 245
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onAttachedToWindow()V

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0}, Lapr;->a(Landroid/view/View;)V

    return-void
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lbxr;)Lbye;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 278
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 279
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 280
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 281
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->reviewOnScreenChange()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 250
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onDetachedFromWindow()V

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0}, Lapr;->b(Landroid/view/View;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 193
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    .line 194
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->updateTime()V

    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lbyf;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public openDaily()V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lbjp;->a(Landroid/content/Context;)V

    return-void
.end method

.method public reload()V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->c()V

    return-void
.end method

.method public reviewOnScreenChange()V
    .locals 4

    .line 286
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mDailyTitle:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbez$b;->x_font_title_03_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setTextSize(IF)V

    goto :goto_0

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mDailyTitle:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbez$b;->top_banner_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setTextSize(IF)V

    .line 291
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mDailyImgOne:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/k;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/16 v1, 0x8

    :cond_2
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->setVisibility(I)V

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout$1;-><init>(Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mRootItemLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout$2;-><init>(Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setMusicAccountResouce(I)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 109
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->reviewOnScreenChange()V

    .line 110
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->setDrawable()V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 112
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mDailyTitle:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lbez$g;->daily_title_kugou:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 113
    sget p1, Lbez$c;->img_bg_kugou_daily_s:I

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mItemBg:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/af;->a(ILandroid/widget/ImageView;)V

    goto :goto_0

    .line 115
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mDailyTitle:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lbez$g;->daily_title_netease:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 116
    sget p1, Lbez$c;->img_bg_netease_daily_m:I

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mItemBg:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/af;->a(ILandroid/widget/ImageView;)V

    :goto_0
    return-void
.end method

.method protected setView()V
    .locals 4

    .line 122
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->updateTime()V

    .line 123
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lbez$c;->pic_covers_music_220:I

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mDailyImgOne:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    const-string v3, ""

    invoke-static {v0, v3, v1, v2}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 125
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->reviewOnScreenChange()V

    .line 126
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->setDrawable()V

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

    .line 213
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->q()I

    move-result v0

    .line 214
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-static {p1, v0, v1}, Lbxo;->a(ZILcom/xiaopeng/xui/widget/XImageView;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 220
    :goto_0
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mLastVuiPlay:Z

    if-eq v0, p1, :cond_1

    .line 221
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 222
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->Y(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 223
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mLastVuiPlay:Z

    :cond_1
    return-void
.end method

.method public updateTime()V
    .locals 2

    .line 234
    invoke-static {}, Lbxn;->a()Ljava/lang/String;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mDailyTime:Lcom/xiaopeng/xui/widget/XTextView;

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouDailyLayout;->mDailyTime:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
