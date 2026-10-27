.class public abstract Lcom/xiaopeng/musicradio/mine/common/view/DataListFrameLayout;
.super Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;
.source "DataListFrameLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/datalist/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UIInterface:",
        "Ljava/lang/Object;",
        "Presenter:",
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "TUIInterface;>;>",
        "Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout<",
        "TUIInterface;TPresenter;>;",
        "Lcom/xiaopeng/musicradio/datalist/i;"
    }
.end annotation


# instance fields
.field private mDataHolder:Lcom/xiaopeng/musicradio/datalist/c;

.field protected mMeunIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected findView()V
    .locals 2

    .line 52
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->m()I

    move-result v0

    const-string v1, "SELECT_MENU_INDEX"

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrameLayout;->mMeunIndex:I

    return-void
.end method

.method public getDataHolder()Lcom/xiaopeng/musicradio/datalist/c;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrameLayout;->mDataHolder:Lcom/xiaopeng/musicradio/datalist/c;

    return-object v0
.end method

.method protected getPageSize()I
    .locals 2

    .line 70
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v0

    const/16 v1, 0xc

    if-eqz v0, :cond_0

    .line 71
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    return v0

    :cond_0
    return v1
.end method

.method protected getViewItemWidth()I
    .locals 2

    .line 81
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v0

    const/16 v1, 0x3c9

    if-eqz v0, :cond_0

    .line 82
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x276

    return v0

    :cond_0
    return v1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 58
    invoke-static {p1}, Lapo;->b(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 59
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrameLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    instance-of p1, p1, Lcom/xiaopeng/musicradio/mine/common/presenter/DataBasePresenter;

    if-eqz p1, :cond_1

    .line 60
    instance-of p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/a;

    if-eqz p1, :cond_0

    .line 61
    move-object p1, p0

    check-cast p1, Lcom/xiaopeng/musicradio/mine/common/view/a;

    .line 62
    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/common/view/a;->notifyDataSetChanged()V

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrameLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/mine/common/presenter/DataBasePresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/common/presenter/DataBasePresenter;->w()V

    :cond_1
    return-void
.end method

.method public setDataHolder(Lcom/xiaopeng/musicradio/datalist/c;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/DataListFrameLayout;->mDataHolder:Lcom/xiaopeng/musicradio/datalist/c;

    return-void
.end method
