.class Lcom/xiaopeng/xui/app/XMaskLayer$BackgroundLayout;
.super Landroid/widget/RelativeLayout;
.source "XMaskLayer.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/app/XMaskLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundLayout"
.end annotation


# instance fields
.field private final mBg:I

.field private final mContext:Landroid/content/Context;

.field private mTN:Lcom/xiaopeng/xui/app/XMaskLayer$TN;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bg"    # I

    .line 305
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 306
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XMaskLayer$BackgroundLayout;->mContext:Landroid/content/Context;

    .line 307
    iput p2, p0, Lcom/xiaopeng/xui/app/XMaskLayer$BackgroundLayout;->mBg:I

    .line 308
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 316
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 317
    invoke-static {p1}, Lcom/xiaopeng/xui/theme/XThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    iget v0, p0, Lcom/xiaopeng/xui/app/XMaskLayer$BackgroundLayout;->mBg:I

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XMaskLayer$BackgroundLayout;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/xiaopeng/xui/app/XMaskLayer$BackgroundLayout;->mBg:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/app/XMaskLayer$BackgroundLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 321
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XMaskLayer$BackgroundLayout;->invalidate()V

    .line 323
    :cond_1
    return-void
.end method

.method public setTN(Lcom/xiaopeng/xui/app/XMaskLayer$TN;)V
    .locals 0
    .param p1, "mTN"    # Lcom/xiaopeng/xui/app/XMaskLayer$TN;

    .line 311
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XMaskLayer$BackgroundLayout;->mTN:Lcom/xiaopeng/xui/app/XMaskLayer$TN;

    .line 312
    return-void
.end method
