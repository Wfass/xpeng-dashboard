.class public Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbySongLayout;
.super Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;
.source "DolbySongLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouNewSongLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbySongLayout;->createPresenter()Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/DolbySongPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/DolbySongPresenter;
    .locals 1

    .line 37
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/DolbySongPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/DolbySongPresenter;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/NewSongPresenter;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbySongLayout;->createPresenter()Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/DolbySongPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected setListener()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbySongLayout;->mRootItemLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbySongLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbySongLayout$1;-><init>(Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbySongLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setView()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbySongLayout;->mDailyTitle:Lcom/xiaopeng/xui/widget/XTextView;

    sget v1, Lbez$g;->dolby_zone_title:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    return-void
.end method

.method protected setVuiLable()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbySongLayout;->mRootItemLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    sget v1, Lbez$g;->dolby_zone_title:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiLabel(Ljava/lang/String;)V

    return-void
.end method
