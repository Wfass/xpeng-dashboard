.class Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout$2;
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

    .line 117
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout$2;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 120
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout$2;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;->access$100(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerCommonLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/XOSPlayerCommonPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/XOSPlayerCommonPresenter;->j()V

    .line 121
    invoke-static {}, Lblk;->d()V

    return-void
.end method
