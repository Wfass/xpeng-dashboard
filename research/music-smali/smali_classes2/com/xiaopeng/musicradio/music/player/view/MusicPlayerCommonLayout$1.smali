.class Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$1;
.super Ljava/lang/Object;
.source "MusicPlayerCommonLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$1;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 119
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$1;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->access$000(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;)Lcom/xiaopeng/xui/widget/XFrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->isClickable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$1;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->access$200(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;)Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$1;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->access$100(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;)Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;->isSelected()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;->setSelected(Z)V

    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onClick: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$1;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->access$300(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;)Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;->isSelected()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MusicPlayerCommonLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$1;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$1;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->access$400(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$1;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->access$500(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;)Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Ljava/util/List;)V

    .line 123
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$1;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->access$600(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;)V

    .line 124
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$1;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->refreshColor()V

    :cond_0
    return-void
.end method
