.class public Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioSmallPlayerSubViewCreator;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;
.source "NetRadioSmallPlayerSubViewCreator.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/netradio/player/view/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/netradio/player/view/c;",
        "Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioSmallPlayerSubViewPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/netradio/player/view/c;"
    }
.end annotation


# instance fields
.field private mLoveImg:Lcom/xiaopeng/xui/widget/XImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioSmallPlayerSubViewCreator;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioSmallPlayerSubViewCreator;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioSmallPlayerSubViewCreator;->createPresenter()Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioSmallPlayerSubViewPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioSmallPlayerSubViewPresenter;
    .locals 1

    .line 37
    new-instance v0, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioSmallPlayerSubViewPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioSmallPlayerSubViewPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 42
    sget v0, Lbuc$d;->image_love:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioSmallPlayerSubViewCreator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioSmallPlayerSubViewCreator;->mLoveImg:Lcom/xiaopeng/xui/widget/XImageView;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 64
    sget v0, Lbuc$f;->layout_small_netradio_player:I

    return v0
.end method

.method protected setListener()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioSmallPlayerSubViewCreator;->mLoveImg:Lcom/xiaopeng/xui/widget/XImageView;

    new-instance v1, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioSmallPlayerSubViewCreator$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioSmallPlayerSubViewCreator$1;-><init>(Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioSmallPlayerSubViewCreator;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setView()V
    .locals 0

    return-void
.end method

.method public showDefault()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioSmallPlayerSubViewCreator;->mLoveImg:Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/at;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public updateLove(Z)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioSmallPlayerSubViewCreator;->mLoveImg:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setSelected(Z)V

    .line 70
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioSmallPlayerSubViewCreator;->mLoveImg:Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/at;->a(Landroid/view/View;Z)V

    return-void
.end method
