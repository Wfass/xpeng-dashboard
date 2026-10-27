.class public Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;
.super Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;
.source "KugouNewSongLayout.java"

# interfaces
.implements Lbxt;
.implements Lcom/xiaopeng/musicradio/music/concentration/daily/view/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/music/concentration/daily/view/c;",
        "Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;",
        ">;",
        "Lbxt;",
        "Lcom/xiaopeng/musicradio/music/concentration/daily/view/c;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KugouNewSongLayout"


# instance fields
.field private mAccountType:I

.field protected mContext:Landroid/content/Context;

.field protected mDailyTitle:Lcom/xiaopeng/xui/widget/XTextView;

.field private mImgOne:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field private mItemBg:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field private mLogoUrl0:Ljava/lang/String;

.field private mOpenDetail:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field protected mRootItemLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private mScreenState:Lcom/xiaopeng/musicradio/widget/k;

.field private mThemeViewModel:Lapr;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mLogoUrl0:Ljava/lang/String;

    .line 57
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, ""

    .line 42
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mLogoUrl0:Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 65
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, ""

    .line 42
    iput-object p3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mLogoUrl0:Ljava/lang/String;

    .line 57
    new-instance p3, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p3}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 70
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method private initVui()V
    .locals 3

    .line 114
    sget v0, Lbez$d;->kugou_root_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mRootItemLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/vui/c;->a(Lcom/xiaopeng/xui/vui/VuiView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->createPresenter()Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;
    .locals 1

    .line 76
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 81
    sget v0, Lbez$d;->item_bg:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mItemBg:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 82
    sget v0, Lbez$d;->newsong_img:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mImgOne:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 83
    sget v0, Lbez$d;->dailyl_play_item_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 84
    sget v0, Lbez$d;->kugou_root_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mRootItemLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 85
    sget v0, Lbez$d;->newsong_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mDailyTitle:Lcom/xiaopeng/xui/widget/XTextView;

    .line 86
    sget v0, Lbez$d;->open_detail:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mOpenDetail:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 87
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->setVuiLable()V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 89
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->reviewOnScreenChange()V

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 137
    sget v0, Lbez$f;->kugou_layout_newsong:I

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

    .line 165
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object p1

    .line 167
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mLogoUrl0:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 168
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mLogoUrl0:Ljava/lang/String;

    .line 169
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mImgOne:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->setImageResource(I)V

    .line 170
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mImgOne:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mLogoUrl0:Ljava/lang/String;

    sget v1, Lbez$c;->pic_covers_music_220:I

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mImgOne:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {p1, v0, v1, v2}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 173
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->showNoDataView(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 188
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;->onAttachedToWindow()V

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mThemeViewModel:Lapr;

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

    .line 203
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 204
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 205
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 206
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->reviewOnScreenChange()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 193
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;->onDetachedFromWindow()V

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0}, Lapr;->b(Landroid/view/View;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 179
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lbyf;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public reload()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;->e()V

    return-void
.end method

.method public reviewOnScreenChange()V
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mDailyTitle:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbez$b;->x_font_title_03_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setTextSize(IF)V

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mDailyTitle:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbez$b;->top_banner_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setTextSize(IF)V

    .line 216
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mImgOne:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

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

    .line 198
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mRootItemLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout$1;-><init>(Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setMusicAccountResouce(I)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 98
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->reviewOnScreenChange()V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 101
    sget p1, Lbez$c;->img_bg_kugou_new_s:I

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mItemBg:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/af;->a(ILandroid/widget/ImageView;)V

    .line 102
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mOpenDetail:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    goto :goto_2

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->d()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 107
    :cond_1
    sget p1, Lbez$c;->img_bg_netease_dolby_m:I

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mItemBg:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/af;->a(ILandroid/widget/ImageView;)V

    goto :goto_1

    .line 105
    :cond_2
    :goto_0
    sget p1, Lbez$c;->img_bg_netease_dolby_s:I

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mItemBg:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/af;->a(ILandroid/widget/ImageView;)V

    .line 109
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mOpenDetail:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method protected setView()V
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mImgOne:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lbez$c;->pic_covers_music_220:I

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mImgOne:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    const-string v3, ""

    invoke-static {v0, v3, v1, v2}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 121
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->initVui()V

    return-void
.end method

.method protected setVuiLable()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;->mRootItemLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    sget v1, Lbez$g;->new_song_txt:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiLabel(Ljava/lang/String;)V

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
