.class public Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationItemLayout;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;
.source "NrLocationItemLayout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout<",
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationItemPresenter;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NrLocationItemLayout"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImageView:Lcom/xiaopeng/xui/widget/XImageView;

.field private mLogo:Ljava/lang/String;

.field private mNightMask:Landroid/view/View;

.field private mThemeViewModel:Lapr;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationItemLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationItemLayout;->mContext:Landroid/content/Context;

    .line 42
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationItemLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationItemLayout;->mContext:Landroid/content/Context;

    .line 48
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationItemLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method private refreshLogo()V
    .locals 7

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationItemLayout;->mLogo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationItemLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationItemLayout;->mLogo:Ljava/lang/String;

    sget v2, Lbuc$c;->pic_netradio_cover_cicle_190:I

    iget-object v3, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationItemLayout;->mImageView:Lcom/xiaopeng/xui/widget/XImageView;

    new-instance v4, Lbkh;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationItemLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0x168

    invoke-direct {v4, v5, v6}, Lbkh;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/xiaopeng/musicradio/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationItemLayout;->createPresenter()Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationItemPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationItemPresenter;
    .locals 1

    .line 54
    new-instance v0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationItemPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationItemPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 65
    sget v0, Lbuc$d;->iv_local_radio:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationItemLayout;->mImageView:Lcom/xiaopeng/xui/widget/XImageView;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 59
    sget v0, Lbuc$f;->nr_layout_location_item:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 102
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onAttachedToWindow()V

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationItemLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0}, Lapr;->a(Landroid/view/View;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 89
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationItemLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0, p1}, Lapr;->a(Landroid/view/View;Landroid/content/res/Configuration;)V

    .line 91
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationItemLayout;->refreshLogo()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 108
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onDetachedFromWindow()V

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationItemLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0}, Lapr;->b(Landroid/view/View;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 84
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 6

    .line 78
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationItemLayout;->mLogo:Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationItemLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationItemLayout;->mLogo:Ljava/lang/String;

    sget v1, Lbuc$c;->pic_netradio_cover_cicle_190:I

    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationItemLayout;->mImageView:Lcom/xiaopeng/xui/widget/XImageView;

    new-instance v3, Lbkh;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationItemLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x168

    invoke-direct {v3, v4, v5}, Lbkh;-><init>(Landroid/content/Context;I)V

    invoke-static {p1, v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)V

    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method protected setView()V
    .locals 0

    return-void
.end method
