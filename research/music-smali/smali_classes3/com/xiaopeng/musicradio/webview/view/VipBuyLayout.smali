.class public Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;
.source "VipBuyLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/webview/view/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/webview/view/a;",
        "Lcom/xiaopeng/musicradio/webview/presenter/VipBuyPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/webview/view/a;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VipBuyLayout"


# instance fields
.field private mAccountType:I

.field private mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

.field private mNightUrl:Ljava/lang/String;

.field private mPlayTips:Lcom/xiaopeng/xui/widget/XTextView;

.field private mQrImg:Lcom/xiaopeng/xui/widget/XImageView;

.field private mServiceTips:Lcom/xiaopeng/xui/widget/XTextView;

.field private mTitle:Lcom/xiaopeng/xui/widget/XTextView;

.field private mUrl:Ljava/lang/String;

.field private mVipBuyContent:Lcom/xiaopeng/xui/widget/XLinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->mUrl:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->mNightUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, ""

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->mUrl:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->mNightUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, ""

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->mUrl:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->mNightUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->showLoadingTip(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;)Lcom/xiaopeng/xui/widget/XTextView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->mTitle:Lcom/xiaopeng/xui/widget/XTextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;)Lcom/xiaopeng/xui/widget/XTextView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->mPlayTips:Lcom/xiaopeng/xui/widget/XTextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;)Lcom/xiaopeng/xui/widget/XTextView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->mServiceTips:Lcom/xiaopeng/xui/widget/XTextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;)Lcom/xiaopeng/xui/widget/XImageView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->mQrImg:Lcom/xiaopeng/xui/widget/XImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;)Lcom/xiaopeng/xui/widget/XLinearLayout;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->mVipBuyContent:Lcom/xiaopeng/xui/widget/XLinearLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;)Lcom/xiaopeng/musicradio/widget/LoadingTipsView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->mAccountType:I

    return p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method private showData(Lcom/xiaopeng/musicradio/bean/UserBuyUrl;)V
    .locals 1

    .line 67
    new-instance v0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1;-><init>(Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;Lcom/xiaopeng/musicradio/bean/UserBuyUrl;)V

    invoke-static {v0}, Lbql;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showLoadingTip(I)V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    goto :goto_1

    .line 139
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->createPresenter()Lcom/xiaopeng/musicradio/webview/presenter/VipBuyPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/webview/presenter/VipBuyPresenter;
    .locals 1

    .line 96
    new-instance v0, Lcom/xiaopeng/musicradio/webview/presenter/VipBuyPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/webview/presenter/VipBuyPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 2

    .line 107
    sget v0, Lcom/xiaopeng/musicradio/webview/a$c;->title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->mTitle:Lcom/xiaopeng/xui/widget/XTextView;

    .line 108
    sget v0, Lcom/xiaopeng/musicradio/webview/a$c;->pay_tips:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->mPlayTips:Lcom/xiaopeng/xui/widget/XTextView;

    .line 109
    sget v0, Lcom/xiaopeng/musicradio/webview/a$c;->service_tips:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->mServiceTips:Lcom/xiaopeng/xui/widget/XTextView;

    .line 110
    sget v0, Lcom/xiaopeng/musicradio/webview/a$c;->qr_img:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->mQrImg:Lcom/xiaopeng/xui/widget/XImageView;

    .line 111
    sget v0, Lcom/xiaopeng/musicradio/webview/a$c;->loading_item:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    .line 112
    sget v0, Lcom/xiaopeng/musicradio/webview/a$c;->vip_buy_content:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->mVipBuyContent:Lcom/xiaopeng/xui/widget/XLinearLayout;

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setAutoClickLoadingEnable(Z)V

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 101
    sget v0, Lcom/xiaopeng/musicradio/webview/a$d;->vip_buy_layout:I

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/webview/presenter/VipBuyPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/webview/presenter/VipBuyPresenter;->onDestroy(Landroidx/lifecycle/n;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 147
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onDetachedFromWindow()V

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/webview/presenter/VipBuyPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/webview/presenter/VipBuyPresenter;->onDestroy(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public onUserBuyUrl(Lcom/xiaopeng/musicradio/bean/UserBuyUrl;)V
    .locals 0

    .line 164
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->showData(Lcom/xiaopeng/musicradio/bean/UserBuyUrl;)V

    return-void
.end method

.method public setData(ILjava/lang/String;I)V
    .locals 0

    .line 61
    iget-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/webview/presenter/VipBuyPresenter;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/webview/presenter/VipBuyPresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 62
    iput p3, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->mAccountType:I

    .line 63
    iget-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/webview/presenter/VipBuyPresenter;

    iget p2, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->mAccountType:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/webview/presenter/VipBuyPresenter;->a(I)V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    new-instance v1, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$2;-><init>(Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setView()V
    .locals 0

    return-void
.end method

.method public showErrorView(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x2

    .line 159
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->showLoadingTip(I)V

    return-void
.end method

.method public showLoadingView()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->mVipBuyContent:Lcom/xiaopeng/xui/widget/XLinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    const/4 v0, 0x1

    .line 154
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->showLoadingTip(I)V

    return-void
.end method
