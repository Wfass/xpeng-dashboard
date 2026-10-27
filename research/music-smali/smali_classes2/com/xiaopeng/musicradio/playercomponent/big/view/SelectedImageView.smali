.class public Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;
.super Lcom/xiaopeng/xui/widget/XImageView;
.source "SelectedImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public setOnSelectedChangeListener(Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView$a;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView$a;

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .line 26
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setSelected(Z)V

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView$a;

    if-eqz v0, :cond_0

    .line 28
    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView$a;->a(Z)V

    :cond_0
    return-void
.end method
