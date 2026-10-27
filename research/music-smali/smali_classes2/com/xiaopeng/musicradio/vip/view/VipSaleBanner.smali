.class public Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;
.super Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;
.source "VipSaleBanner.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/vip/view/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/vip/view/a;",
        "Lcom/xiaopeng/musicradio/vip/presenter/VipSaleBannerPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/vip/view/a;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VipSaleBanner"


# instance fields
.field private indictor_X:I

.field private indictor_Y:I

.field private mAdapter:Lbse;

.field private mBanner:Lcom/to/aboomy/pager2banner/Banner;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;",
            ">;"
        }
    .end annotation
.end field

.field private mHasChange:Z

.field private mIndex:I

.field private mLayout:Lcom/xiaopeng/musicradio/widget/AutoExtendConstraintLayout;

.field private mStartPosition:I

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 63
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 50
    iput p1, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->indictor_X:I

    const/16 v0, -0xa

    .line 51
    iput v0, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->indictor_Y:I

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->mData:Ljava/util/List;

    .line 53
    iput p1, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->mStartPosition:I

    .line 54
    iput p1, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->mType:I

    .line 60
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->mHasChange:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 50
    iput p1, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->indictor_X:I

    const/16 p2, -0xa

    .line 51
    iput p2, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->indictor_Y:I

    .line 52
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->mData:Ljava/util/List;

    .line 53
    iput p1, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->mStartPosition:I

    .line 54
    iput p1, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->mType:I

    .line 60
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->mHasChange:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 50
    iput p1, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->indictor_X:I

    const/16 p2, -0xa

    .line 51
    iput p2, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->indictor_Y:I

    .line 52
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->mData:Ljava/util/List;

    .line 53
    iput p1, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->mStartPosition:I

    .line 54
    iput p1, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->mType:I

    .line 60
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->mHasChange:Z

    return-void
.end method

.method static synthetic access$002(Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->mStartPosition:I

    return p1
.end method

.method private genIndicatorView(II)Lcom/to/aboomy/pager2banner/b;
    .locals 2

    .line 197
    new-instance v0, Lcom/to/aboomy/pager2banner/b;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/to/aboomy/pager2banner/b;-><init>(Landroid/content/Context;)V

    .line 198
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/to/aboomy/pager2banner/b;->d(I)Lcom/to/aboomy/pager2banner/b;

    move-result-object p1

    const/4 v0, 0x1

    .line 199
    invoke-virtual {p1, v0}, Lcom/to/aboomy/pager2banner/b;->c(I)Lcom/to/aboomy/pager2banner/b;

    move-result-object p1

    const/high16 v0, 0x40000000    # 2.0f

    .line 200
    invoke-virtual {p1, v0}, Lcom/to/aboomy/pager2banner/b;->b(F)Lcom/to/aboomy/pager2banner/b;

    move-result-object p1

    const/high16 v0, 0x40800000    # 4.0f

    .line 201
    invoke-virtual {p1, v0}, Lcom/to/aboomy/pager2banner/b;->a(F)Lcom/to/aboomy/pager2banner/b;

    move-result-object p1

    .line 202
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/to/aboomy/pager2banner/b;->e(I)Lcom/to/aboomy/pager2banner/b;

    move-result-object p1

    return-object p1
.end method

.method private getSaleData()V
    .locals 3

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->mHasChange:Z

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v1

    const-class v2, Lbsi;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbsi;

    if-eqz v1, :cond_0

    .line 134
    iget v2, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->mType:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 168
    :pswitch_1
    invoke-interface {v1}, Lbsi;->getRadioUserMain()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 165
    :pswitch_2
    invoke-interface {v1}, Lbsi;->getRadioMain()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 161
    :pswitch_3
    invoke-interface {v1}, Lbsi;->getReadingUserMain()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 154
    :pswitch_4
    invoke-interface {v1}, Lbsi;->getKugouUserMain()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 150
    :pswitch_5
    invoke-interface {v1}, Lbsi;->getNeteaseUserMain()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 146
    :pswitch_6
    invoke-interface {v1}, Lbsi;->getQqUserMain()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 142
    :pswitch_7
    invoke-interface {v1}, Lbsi;->getKugouMain()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 158
    :pswitch_8
    invoke-interface {v1}, Lbsi;->getReadingMain()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 139
    :pswitch_9
    invoke-interface {v1}, Lbsi;->getNeteaseMain()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 136
    :pswitch_a
    invoke-interface {v1}, Lbsi;->getQqMain()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 172
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 173
    iget-object v1, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 174
    iget-object v1, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->mData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    .line 175
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->mHasChange:Z

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private setBannerView()V
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 182
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->setVisibility(I)V

    .line 183
    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->mHasChange:Z

    if-eqz v1, :cond_1

    .line 184
    iget-object v1, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->mAdapter:Lbse;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->mData:Ljava/util/List;

    invoke-virtual {v1, v2}, Lbse;->a(Ljava/util/List;)V

    .line 185
    iget-object v1, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->mBanner:Lcom/to/aboomy/pager2banner/Banner;

    invoke-virtual {v1, v0, v0}, Lcom/to/aboomy/pager2banner/Banner;->a(IZ)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 188
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->createPresenter()Lcom/xiaopeng/musicradio/vip/presenter/VipSaleBannerPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/vip/presenter/VipSaleBannerPresenter;
    .locals 1

    .line 77
    new-instance v0, Lcom/xiaopeng/musicradio/vip/presenter/VipSaleBannerPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/vip/presenter/VipSaleBannerPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 82
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->banner:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/to/aboomy/pager2banner/Banner;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->mBanner:Lcom/to/aboomy/pager2banner/Banner;

    .line 83
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->banner_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/AutoExtendConstraintLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->mLayout:Lcom/xiaopeng/musicradio/widget/AutoExtendConstraintLayout;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 207
    sget v0, Lcom/xiaopeng/musicradio/common/k$f;->layout_vip_sale_banner:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 219
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 220
    iget-object p1, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->mBanner:Lcom/to/aboomy/pager2banner/Banner;

    iget v0, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->mStartPosition:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/to/aboomy/pager2banner/Banner;->a(IZ)V

    .line 221
    iget-object p1, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->mAdapter:Lbse;

    invoke-virtual {p1}, Lbse;->notifyDataSetChanged()V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 1

    .line 123
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    .line 124
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onResume"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VipSaleBanner"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->getSaleData()V

    .line 126
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->setBannerView()V

    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method protected setView()V
    .locals 5

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->mBanner:Lcom/to/aboomy/pager2banner/Banner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/to/aboomy/pager2banner/Banner;->a(Z)Lcom/to/aboomy/pager2banner/Banner;

    .line 89
    new-instance v0, Lbse;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lbse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->mAdapter:Lbse;

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->mBanner:Lcom/to/aboomy/pager2banner/Banner;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->mAdapter:Lbse;

    invoke-virtual {v0, v2}, Lcom/to/aboomy/pager2banner/Banner;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 92
    sget v0, Lcom/xiaopeng/musicradio/common/k$b;->banner_indicator_932D:I

    .line 93
    sget v2, Lcom/xiaopeng/musicradio/common/k$b;->bg_white_color:I

    .line 94
    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->genIndicatorView(II)Lcom/to/aboomy/pager2banner/b;

    move-result-object v0

    .line 95
    iget v2, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->indictor_X:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/to/aboomy/pager2banner/b;->setX(F)V

    .line 96
    iget v2, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->indictor_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/to/aboomy/pager2banner/b;->setY(F)V

    .line 97
    iget-object v2, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->mBanner:Lcom/to/aboomy/pager2banner/Banner;

    const/16 v3, 0x14

    const/16 v4, -0x14

    invoke-virtual {v2, v4, v3}, Lcom/to/aboomy/pager2banner/Banner;->a(II)Lcom/to/aboomy/pager2banner/Banner;

    .line 99
    iget-object v2, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->mBanner:Lcom/to/aboomy/pager2banner/Banner;

    invoke-virtual {v2, v1}, Lcom/to/aboomy/pager2banner/Banner;->a(Z)Lcom/to/aboomy/pager2banner/Banner;

    move-result-object v2

    .line 100
    invoke-virtual {v2, v0}, Lcom/to/aboomy/pager2banner/Banner;->a(Lcom/to/aboomy/pager2banner/a;)Lcom/to/aboomy/pager2banner/Banner;

    move-result-object v0

    .line 101
    invoke-virtual {v0, v1}, Lcom/to/aboomy/pager2banner/Banner;->b(I)Lcom/to/aboomy/pager2banner/Banner;

    move-result-object v0

    const-wide/16 v1, 0x320

    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/to/aboomy/pager2banner/Banner;->a(J)Lcom/to/aboomy/pager2banner/Banner;

    move-result-object v0

    .line 103
    invoke-virtual {v0, v4, v3}, Lcom/to/aboomy/pager2banner/Banner;->a(II)Lcom/to/aboomy/pager2banner/Banner;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner$1;-><init>(Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;)V

    .line 104
    invoke-virtual {v0, v1}, Lcom/to/aboomy/pager2banner/Banner;->a(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)Lcom/to/aboomy/pager2banner/Banner;

    return-void
.end method

.method public setVipSaleType(I)V
    .locals 1

    .line 211
    iput p1, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->mType:I

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->mAdapter:Lbse;

    invoke-virtual {v0, p1}, Lbse;->b(I)V

    .line 213
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->updateBannerData()V

    return-void
.end method

.method public updateBannerData()V
    .locals 2

    .line 116
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->getSaleData()V

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mData"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sunny123"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/vip/view/VipSaleBanner;->setBannerView()V

    return-void
.end method
