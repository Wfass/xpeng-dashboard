.class public Lcom/xiaopeng/xuiservice/capabilities/bootmedia/view/CarCheckRootView;
.super Lcom/xiaopeng/xui/widget/XFrameLayout;
.source "CarCheckRootView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/capabilities/bootmedia/view/CarCheckRootView$CarCheckRootViewListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/view/CarCheckRootView$CarCheckRootViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 15
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 28
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onAttachedToWindow()V

    .line 29
    const-string v0, "CarCheckRootView"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/view/CarCheckRootView;->mListener:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/view/CarCheckRootView$CarCheckRootViewListener;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/view/CarCheckRootView;->mListener:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/view/CarCheckRootView$CarCheckRootViewListener;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/view/CarCheckRootView$CarCheckRootViewListener;->onAttachedToWindow()V

    .line 33
    :cond_0
    return-void
.end method

.method public setListener(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/view/CarCheckRootView$CarCheckRootViewListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/capabilities/bootmedia/view/CarCheckRootView$CarCheckRootViewListener;

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/view/CarCheckRootView;->mListener:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/view/CarCheckRootView$CarCheckRootViewListener;

    .line 37
    return-void
.end method
