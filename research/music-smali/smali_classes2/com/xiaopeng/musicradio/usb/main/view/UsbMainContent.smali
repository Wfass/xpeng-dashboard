.class public Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;
.super Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;
.source "UsbMainContent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout<",
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/musicradio/usb/main/presenter/UsbMainContentPresenter;",
        ">;"
    }
.end annotation


# instance fields
.field private mDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/common/LeftSelect;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:I

.field protected mItemSpace:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mLeftContentLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field protected mLeftView:Landroid/view/View;

.field private mPagerAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/b;

.field protected mRightContentLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private mScreenState:Lcom/xiaopeng/musicradio/widget/k;

.field private mTabLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

.field private mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 45
    iput p1, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mIndex:I

    .line 51
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 54
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mDatas:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 45
    iput p1, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mIndex:I

    .line 51
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 54
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mDatas:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 45
    iput p1, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mIndex:I

    .line 51
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 54
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mDatas:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;)Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mIndex:I

    return p0
.end method

.method static synthetic access$102(Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mIndex:I

    return p1
.end method

.method private reviewOnScreenChange()V
    .locals 9

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mRightContentLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 193
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mLeftContentLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 195
    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v2

    const/4 v3, -0x1

    const/16 v4, 0x9

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_0

    .line 196
    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mItemSpace:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 197
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 198
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 199
    sget v2, Lcom/xiaopeng/musicradio/usb/a$b;->left_view:I

    invoke-virtual {v0, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 200
    invoke-virtual {v1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 202
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mItemSpace:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v2, v6}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 203
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 204
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 205
    sget v2, Lcom/xiaopeng/musicradio/usb/a$b;->item_space:I

    invoke-virtual {v0, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 206
    invoke-virtual {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 208
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mTabLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    invoke-virtual {v2, v6}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->setVisibility(I)V

    .line 209
    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mRightContentLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mLeftContentLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->createPresenter()Lcom/xiaopeng/musicradio/usb/main/presenter/UsbMainContentPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/usb/main/presenter/UsbMainContentPresenter;
    .locals 1

    .line 72
    new-instance v0, Lcom/xiaopeng/musicradio/usb/main/presenter/UsbMainContentPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/usb/main/presenter/UsbMainContentPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 77
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->tab_usb_main:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mTabLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    .line 78
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->usb_viewpager:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    return-void
.end method

.method public getBuildViewList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mTabLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getContentViewId()I
    .locals 1

    .line 97
    sget v0, Lcom/xiaopeng/musicradio/usb/a$c;->layout_usb_main_content:I

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Usb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/musicradio/vui/c;->S:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMainScene()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBuildScene()V
    .locals 0

    .line 179
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;->onBuildScene()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 184
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 185
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 186
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 187
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->reviewOnScreenChange()V

    :cond_0
    return-void
.end method

.method public selectTab(I)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mTabLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->setIndex(I)V

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;->setCurrentItem(I)V

    .line 103
    iput p1, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mIndex:I

    return-void
.end method

.method public setContentView(Landroidx/fragment/app/FragmentManager;)V
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "mOffscreenPageLimit"

    invoke-static {v0, v3, v2}, Lcom/xiaopeng/musicradio/utils/bf;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/adapter/b;

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/commonui/adapter/b;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mPagerAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/b;

    .line 110
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 111
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    sget v2, Lcom/xiaopeng/musicradio/usb/a$d;->usb_main_song_title:I

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/usb/main/song"

    invoke-direct {v0, v3, v2}, Lcom/xiaopeng/musicradio/commonui/adapter/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    sget v2, Lcom/xiaopeng/musicradio/usb/a$d;->usb_main_singer_title:I

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/usb/main/singer"

    invoke-direct {v0, v3, v2}, Lcom/xiaopeng/musicradio/commonui/adapter/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    sget v2, Lcom/xiaopeng/musicradio/usb/a$d;->usb_main_album_title:I

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/usb/main/album"

    invoke-direct {v0, v3, v2}, Lcom/xiaopeng/musicradio/commonui/adapter/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    sget v2, Lcom/xiaopeng/musicradio/usb/a$d;->usb_main_dir_title:I

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/usb/main/dir"

    invoke-direct {v0, v3, v2}, Lcom/xiaopeng/musicradio/commonui/adapter/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mPagerAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/b;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/commonui/adapter/b;->a(Ljava/util/List;)V

    .line 116
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mPagerAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/b;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;->setAdapter(Lcom/xiaopeng/musicradio/commonui/widget/c;)V

    .line 118
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 119
    new-instance v0, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    sget v2, Lcom/xiaopeng/musicradio/usb/a$a;->ic_music_musicalnste:I

    sget v3, Lcom/xiaopeng/musicradio/usb/a$d;->usb_main_song_title:I

    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v0, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    sget v2, Lcom/xiaopeng/musicradio/usb/a$a;->ic_music_singer:I

    sget v3, Lcom/xiaopeng/musicradio/usb/a$d;->usb_main_singer_title:I

    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v0, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    sget v2, Lcom/xiaopeng/musicradio/usb/a$a;->ic_music_album:I

    sget v3, Lcom/xiaopeng/musicradio/usb/a$d;->usb_main_album_title:I

    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v0, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;

    sget v2, Lcom/xiaopeng/musicradio/usb/a$a;->ic_music_folder:I

    sget v3, Lcom/xiaopeng/musicradio/usb/a$d;->usb_main_dir_title:I

    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/xiaopeng/musicradio/bean/common/LeftSelect;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mTabLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mTabLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->setData(Ljava/util/ArrayList;)V

    .line 125
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mTabLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->initVuiAttr(Ljava/lang/String;)V

    .line 126
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mTabLayout:Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;

    new-instance v0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent$1;-><init>(Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LeftSelectLayout;->setClickChange(Lcom/xiaopeng/musicradio/widget/LeftSelectLayout$a;)V

    .line 135
    new-instance p1, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent$2;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent$2;-><init>(Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;)V

    const-wide/16 v2, 0x5

    invoke-static {p1, v2, v3}, Lbql;->b(Ljava/lang/Runnable;J)V

    .line 141
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    new-instance v0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent$3;-><init>(Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;->a(Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$f;)V

    .line 157
    invoke-static {v1}, Lbrn;->a(I)V

    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method protected setView()V
    .locals 1

    .line 83
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->left_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mLeftView:Landroid/view/View;

    .line 84
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->item_space:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mItemSpace:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 85
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->left_content_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mLeftContentLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 86
    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->right_content_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mRightContentLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 88
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/main/view/UsbMainContent;->reviewOnScreenChange()V

    return-void
.end method
