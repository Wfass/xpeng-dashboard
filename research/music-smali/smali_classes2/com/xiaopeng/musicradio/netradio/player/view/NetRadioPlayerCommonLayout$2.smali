.class Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout$2;
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

    .line 91
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout$2;->a:Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 94
    invoke-static {}, Lblk;->v()V

    .line 95
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout$2;->a:Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;->access$100(Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayerCommonLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayerCommonPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayerCommonPresenter;->c()V

    return-void
.end method
