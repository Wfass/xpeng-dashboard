.class public Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;
.super Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;
.source "KugouPersonalLayout.java"

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

.field private mIsInit:Z

.field private mItemBg:Lcom/xiaopeng/xui/widget/XImageView;

.field private mLastVuiPlay:Z

.field private mPersonalContent:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private mPersonalImg:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field private mPersonalLogoUrl0:Ljava/lang/String;

.field private mPersonalPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

.field private mPersonalPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mPersonalSong:Lcom/xiaopeng/xui/widget/XTextView;

.field protected mPersonalTitle:Lcom/xiaopeng/xui/widget/XTextView;

.field private mPlayIconLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mRootItemLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private mScreenState:Lcom/xiaopeng/musicradio/widget/k;

.field private mThemeViewModel:Lapr;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 65
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mPersonalLogoUrl0:Ljava/lang/String;

    const/4 p1, 0x0

    .line 59
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mIsInit:Z

    .line 60
    new-instance v0, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 189
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mLastVuiPlay:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, ""

    .line 46
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mPersonalLogoUrl0:Ljava/lang/String;

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mIsInit:Z

    .line 60
    new-instance v1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 189
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mLastVuiPlay:Z

    .line 70
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, ""

    .line 46
    iput-object p3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mPersonalLogoUrl0:Ljava/lang/String;

    const/4 p3, 0x0

    .line 59
    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mIsInit:Z

    .line 60
    new-instance v0, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 189
    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mLastVuiPlay:Z

    .line 75
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method private setDrawable()V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mPersonalPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mPlayIconLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mPersonalPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    iget-boolean v3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mLastVuiPlay:Z

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

    .line 42
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->createPresenter()Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;
    .locals 1

    .line 81
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 4

    .line 86
    sget v0, Lbez$d;->play_icon_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mPlayIconLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 87
    sget v0, Lbez$d;->item_bg:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mItemBg:Lcom/xiaopeng/xui/widget/XImageView;

    .line 88
    sget v0, Lbez$d;->personal_img:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mPersonalImg:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 89
    sget v0, Lbez$d;->personal_play_item_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mPersonalPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 90
    sget v0, Lbez$d;->personal_play_icon:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mPersonalPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    .line 92
    sget v0, Lbez$d;->personal_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mPersonalTitle:Lcom/xiaopeng/xui/widget/XTextView;

    .line 93
    sget v0, Lbez$d;->song_name:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mPersonalSong:Lcom/xiaopeng/xui/widget/XTextView;

    .line 95
    sget v0, Lbez$d;->root_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mRootItemLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 96
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mPersonalPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ms_personal_play_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mPersonalPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mPersonalPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    sget v1, Lbez$g;->vui_personal_txt:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVuiLabel(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mPersonalPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    return-void
.end method

.method public getAccountType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getContentViewId()I
    .locals 1

    .line 136
    sget v0, Lbez$f;->kugou_layout_personal:I

    return v0
.end method

.method public getData(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 164
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 165
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->showLoadingTip(I)V

    .line 166
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v1

    .line 167
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mPersonalSong:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 169
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mPersonalLogoUrl0:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mPersonalLogoUrl0:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 170
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mPersonalImg:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mPersonalImg:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mItemBg:Lcom/xiaopeng/xui/widget/XImageView;

    sget v3, Lbez$c;->pic_covers_music_220:I

    invoke-static {p1, v0, v2, v1, v3}, Lbxo;->b(Landroid/content/Context;Lcom/xiaopeng/xui/widget/XImageView;Lcom/xiaopeng/xui/widget/XImageView;Ljava/lang/String;I)V

    .line 171
    iput-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mPersonalLogoUrl0:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 175
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->showNoDataView(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 214
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onAttachedToWindow()V

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mThemeViewModel:Lapr;

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

    .line 229
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 230
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 231
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 232
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->reviewOnScreenChange()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 219
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onDetachedFromWindow()V

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0}, Lapr;->b(Landroid/view/View;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 182
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

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->c()V

    return-void
.end method

.method public reviewOnScreenChange()V
    .locals 4

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mPersonalImg:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mPersonalTitle:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbez$b;->x_font_title_03_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setTextSize(IF)V

    goto :goto_0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mPersonalImg:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mPersonalTitle:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbez$b;->top_banner_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setTextSize(IF)V

    :goto_0
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mRootItemLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout$1;-><init>(Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setMusicAccountResource()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 107
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->reviewOnScreenChange()V

    .line 108
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->setDrawable()V

    .line 109
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mIsInit:Z

    if-eqz v0, :cond_0

    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->getAccountType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->a(I)V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;->onResume(Landroidx/lifecycle/n;)V

    return-void
.end method

.method protected setView()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 119
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->reviewOnScreenChange()V

    .line 120
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->setDrawable()V

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

    .line 194
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->q()I

    move-result v0

    .line 195
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mPersonalPlayIcon:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-static {p1, v0, v1}, Lbxo;->a(ZILcom/xiaopeng/xui/widget/XImageView;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 201
    :goto_0
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mLastVuiPlay:Z

    if-eq v0, p1, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mPersonalPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 203
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->Y(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mPersonalPlayItemLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 204
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->mLastVuiPlay:Z

    :cond_1
    return-void
.end method
