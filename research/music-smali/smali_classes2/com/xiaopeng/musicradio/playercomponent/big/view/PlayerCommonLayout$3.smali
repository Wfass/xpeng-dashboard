.class Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout$3;
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

    .line 125
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout$3;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 128
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout$3;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->access$200(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/XOSPlayerCommonPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/XOSPlayerCommonPresenter;->l()V

    return-void
.end method
