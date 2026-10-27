.class public Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;
.source "VipSaleLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VipSaleLayout"


# instance fields
.field private mBuyImg:Lcom/xiaopeng/xui/widget/XImageView;

.field private mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, ""

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, ""

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;->mUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;)Lcom/xiaopeng/musicradio/widget/LoadingTipsView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;->showLoadingTip(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;)Lcom/xiaopeng/xui/widget/XImageView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;->mBuyImg:Lcom/xiaopeng/xui/widget/XImageView;

    return-object p0
.end method

.method private showLoadingTip(I)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    goto :goto_1

    .line 89
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;->createPresenter()Lcom/xiaopeng/musicradio/webview/presenter/VipBuyPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/webview/presenter/VipBuyPresenter;
    .locals 1

    .line 52
    new-instance v0, Lcom/xiaopeng/musicradio/webview/presenter/VipBuyPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/webview/presenter/VipBuyPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 2

    .line 63
    sget v0, Lcom/xiaopeng/musicradio/webview/a$c;->buy_img:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;->mBuyImg:Lcom/xiaopeng/xui/widget/XImageView;

    .line 64
    sget v0, Lcom/xiaopeng/musicradio/webview/a$c;->loading_item:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setAutoClickLoadingEnable(Z)V

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 57
    sget v0, Lcom/xiaopeng/musicradio/webview/a$d;->vip_sale_layout:I

    return v0
.end method

.method public loadImage(Ljava/lang/String;)V
    .locals 4

    .line 101
    iput-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;->mUrl:Ljava/lang/String;

    const/4 v0, 0x1

    .line 103
    :try_start_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;->showLoadingTip(I)V

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;->mBuyImg:Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;->mBuyImg:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;->mBuyImg:Lcom/xiaopeng/xui/widget/XImageView;

    new-instance v3, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout$2;

    invoke-direct {v3, p0}, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout$2;-><init>(Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;)V

    invoke-static {v0, p1, v1, v2, v3}, Lcom/xiaopeng/musicradio/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 122
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 97
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    new-instance v1, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout$1;-><init>(Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setView()V
    .locals 0

    return-void
.end method
