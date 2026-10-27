.class public abstract Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;
.super Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;
.source "MusicVuiBaseFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UIInterface:",
        "Ljava/lang/Object;",
        "Presenter:",
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "TUIInterface;>;>",
        "Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout<",
        "TUIInterface;TPresenter;>;"
    }
.end annotation


# instance fields
.field protected mMenuIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object p1

    invoke-virtual {p1}, Lbdt;->m()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->mMenuIndex:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object p1

    invoke-virtual {p1}, Lbdt;->m()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->mMenuIndex:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object p1

    invoke-virtual {p1}, Lbdt;->m()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->mMenuIndex:I

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 34
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->m()I

    move-result v0

    const-string v1, "SELECT_MENU_SCENE"

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->mMenuIndex:I

    .line 35
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiBaseFrameLayout;->onFinishInflate()V

    return-void
.end method
