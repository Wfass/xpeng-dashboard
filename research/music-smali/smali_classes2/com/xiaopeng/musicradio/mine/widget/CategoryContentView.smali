.class public Lcom/xiaopeng/musicradio/mine/widget/CategoryContentView;
.super Lcom/xiaopeng/xui/widget/XRelativeLayout;
.source "CategoryContentView.java"


# instance fields
.field private a:Lcom/xiaopeng/musicradio/mine/widget/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 31
    invoke-static {p1}, Lcom/xiaopeng/xui/theme/XThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/CategoryContentView;->a:Lcom/xiaopeng/musicradio/mine/widget/a;

    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/widget/a;->b()V

    :cond_0
    return-void
.end method

.method public setCategoryViewHolder(Lcom/xiaopeng/musicradio/mine/widget/a;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/CategoryContentView;->a:Lcom/xiaopeng/musicradio/mine/widget/a;

    return-void
.end method
