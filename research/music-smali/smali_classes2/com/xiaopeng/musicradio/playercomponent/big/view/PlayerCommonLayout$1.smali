.class Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout$1;
.super Ljava/lang/Object;
.source "PlayerCommonLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout$1;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout$1;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->access$000(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout$1;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->access$000(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
