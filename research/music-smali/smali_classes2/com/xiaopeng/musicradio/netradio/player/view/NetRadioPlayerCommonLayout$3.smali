.class Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout$3;
.super Ljava/lang/Object;
.source "NetRadioPlayerCommonLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout$3;->a:Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 102
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout$3;->a:Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->access$200(Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->isClickable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout$3;->a:Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->access$400(Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;)Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout$3;->a:Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->access$300(Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;)Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;->isSelected()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;->setSelected(Z)V

    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onClick: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout$3;->a:Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->access$500(Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;)Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;->isSelected()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetRadioPlayerCommonLay"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout$3;->a:Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout$3;->a:Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->access$600(Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout$3;->a:Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->access$700(Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;)Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Ljava/util/List;)V

    .line 106
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout$3;->a:Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->access$800(Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;)Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;->isSelected()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->access$900(Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;Z)V

    :cond_0
    return-void
.end method
