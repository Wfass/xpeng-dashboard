.class Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$8;
.super Ljava/lang/Object;
.source "NewPlayerCommonLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$8;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 321
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$8;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->access$300(Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/XOSPlayerCommonPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/XOSPlayerCommonPresenter;->l()V

    .line 322
    invoke-static {}, Lblk;->l()V

    return-void
.end method
