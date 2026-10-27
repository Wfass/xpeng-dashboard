.class public Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;
.super Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;
.source "MsDailyLayout.java"

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

.field private mDailyImgOne:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field private mDailyTime:Lcom/xiaopeng/xui/widget/XTextView;

.field private mDailyTitle:Lcom/xiaopeng/xui/widget/XTextView;

.field private mLastVuiPlay:Z

.field private mLogoUrl0:Ljava/lang/String;

.field private mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

.field private mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mRootItemLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private mThemeViewModel:Lapr;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mLogoUrl0:Ljava/lang/String;

    const/4 p1, 0x0

    .line 181
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mLastVuiPlay:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, ""

    .line 47
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mLogoUrl0:Ljava/lang/String;

    const/4 v0, 0x0

    .line 181
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mLastVuiPlay:Z

    .line 61
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, ""

    .line 47
    iput-object p3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mLogoUrl0:Ljava/lang/String;

    const/4 p3, 0x0

    .line 181
    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mLastVuiPlay:Z

    .line 66
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method private refreshLogo()V
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mLogoUrl0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mDailyImgOne:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mLogoUrl0:Ljava/lang/String;

    sget v2, Lbez$c;->pic_covers_music_220:I

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mDailyImgOne:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lbez$c;->pic_covers_music_220:I

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mDailyImgOne:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    const-string v3, ""

    invoke-static {v0, v3, v1, v2}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    :goto_0
    return-void
.end method

.method private showLoadingTip(I)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->createPresenter()Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;
    .locals 1

    .line 72
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 4

    .line 77
    sget v0, Lbez$d;->daily_img:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mDailyImgOne:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 78
    sget v0, Lbez$d;->daily_time:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mDailyTime:Lcom/xiaopeng/xui/widget/XTextView;

    .line 79
    sget v0, Lbez$d;->daily_play_icon:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    .line 80
    sget v0, Lbez$d;->dailyl_play_item_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 81
    sget v0, Lbez$d;->root_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mRootItemLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 82
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ms_daily_play_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 84
    sget v0, Lbez$d;->daily_content:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XConstraintLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mRootItemLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/vui/c;->a(Lcom/xiaopeng/xui/vui/VuiView;Ljava/lang/String;)V

    .line 85
    sget v0, Lbez$d;->daily_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mDailyTitle:Lcom/xiaopeng/xui/widget/XTextView;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 121
    sget v0, Lbez$f;->ms_layout_daily:I

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

    .line 149
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 150
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object p1

    .line 151
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mLogoUrl0:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 152
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mLogoUrl0:Ljava/lang/String;

    .line 153
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mDailyImgOne:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->setImageResource(I)V

    .line 154
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mDailyImgOne:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mLogoUrl0:Ljava/lang/String;

    sget v1, Lbez$c;->pic_covers_music_220:I

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mDailyImgOne:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {p1, v0, v1, v2}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 157
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->showNoDataView(Ljava/lang/String;)V

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

    .line 237
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onAttachedToWindow()V

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mThemeViewModel:Lapr;

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

    .line 231
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0, p1}, Lapr;->a(Landroid/view/View;Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 242
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onDetachedFromWindow()V

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0}, Lapr;->b(Landroid/view/View;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 164
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    .line 165
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->updateTime()V

    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lbyf;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public openDaily()V
    .locals 1

    .line 248
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbjp;->a(Landroid/content/Context;)V

    return-void
.end method

.method public reload()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsDailyPresenter;->c()V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout$1;-><init>(Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mRootItemLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout$2;-><init>(Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setMusicAccountResouce(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 90
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mDailyTitle:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lbez$g;->daily_title:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mDailyTitle:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lbez$g;->daily_title_netease:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    :goto_0
    return-void
.end method

.method protected setView()V
    .locals 0

    .line 98
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->updateTime()V

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

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 187
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->q()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 200
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lbez$c;->ic_btn_playall:I

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_0

    .line 197
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lbez$c;->ic_btn_playall:I

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_0

    .line 193
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    sget v0, Lbez$c;->ic_btn_stop:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    move v0, v1

    goto :goto_0

    .line 190
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lbez$c;->ic_btn_stop:I

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_0

    .line 204
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lbez$c;->ic_btn_playall:I

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 206
    :goto_0
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mLastVuiPlay:Z

    if-eq p1, v0, :cond_4

    .line 207
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-static {p1, v1, v0}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 208
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    iget v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->Y(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p1, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 209
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mLastVuiPlay:Z

    :cond_4
    return-void
.end method

.method public updateTime()V
    .locals 2

    .line 220
    invoke-static {}, Lbxn;->a()Ljava/lang/String;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mDailyTime:Lcom/xiaopeng/xui/widget/XTextView;

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/MsDailyLayout;->mDailyTime:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
