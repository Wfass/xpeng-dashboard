.class public Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbyPersonalLayout;
.super Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;
.source "DolbyPersonalLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DolbyPersonalLayout"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbyPersonalLayout;->createPresenter()Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;
    .locals 1

    .line 34
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/concentration/daily/presenter/MsPersonalPresenter;-><init>()V

    return-object v0
.end method

.method public getAccountType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected setView()V
    .locals 2

    .line 44
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/concentration/daily/view/KugouPersonalLayout;->setView()V

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/daily/view/DolbyPersonalLayout;->mPersonalTitle:Lcom/xiaopeng/xui/widget/XTextView;

    sget v1, Lbez$g;->personal_netease_txt:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    return-void
.end method
