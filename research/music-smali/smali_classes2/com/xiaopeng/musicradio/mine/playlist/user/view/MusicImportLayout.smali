.class public Lcom/xiaopeng/musicradio/mine/playlist/user/view/MusicImportLayout;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;
.source "MusicImportLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QQImportLayout"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mOtherLayout:Landroid/widget/RelativeLayout;

.field private mScreenState:Lcom/xiaopeng/musicradio/widget/k;

.field protected mThreeOneLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/user/view/MusicImportLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/user/view/MusicImportLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/user/view/MusicImportLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    return-void
.end method


# virtual methods
.method protected createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 49
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->other_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/playlist/user/view/MusicImportLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/user/view/MusicImportLayout;->mOtherLayout:Landroid/widget/RelativeLayout;

    .line 50
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->three_one_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/playlist/user/view/MusicImportLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/user/view/MusicImportLayout;->mThreeOneLayout:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public getContentViewId()I
    .locals 3

    .line 67
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->b()V

    .line 68
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->qq_import_dialog:I

    .line 69
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v1

    invoke-virtual {v1}, Lbdu;->d()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->kugou_import_dialog:I

    goto :goto_0

    .line 72
    :cond_1
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->netease_import_dialog:I

    :goto_0
    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 83
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 84
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->b()V

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onConfigurationChanged: mScreenState.checkScreenChange()) : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/user/view/MusicImportLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->b()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QQImportLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/user/view/MusicImportLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/user/view/MusicImportLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 88
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/user/view/MusicImportLayout;->reviewOnScreenChange()V

    :cond_0
    return-void
.end method

.method public reviewOnScreenChange()V
    .locals 3

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reviewOnScreenChange: mScreenState.is13(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/playlist/user/view/MusicImportLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QQImportLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/user/view/MusicImportLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/user/view/MusicImportLayout;->mOtherLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/user/view/MusicImportLayout;->mThreeOneLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/user/view/MusicImportLayout;->mOtherLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/user/view/MusicImportLayout;->mThreeOneLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method protected setView()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/user/view/MusicImportLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 56
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/user/view/MusicImportLayout;->reviewOnScreenChange()V

    return-void
.end method
