.class Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout$1;
.super Ljava/lang/Object;
.source "BtNoConnectLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout$1;->a:Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 81
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout$1;->a:Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;->access$000(Lcom/xiaopeng/musicradio/music/player/view/BtNoConnectLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/player/presenter/BtNoConnectPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/player/presenter/BtNoConnectPresenter;->c()V

    return-void
.end method
