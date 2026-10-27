.class Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout$1;
.super Ljava/lang/Object;
.source "NetRadioPlayListLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/netradio/player/view/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout$1;->a:Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout$1;->a:Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;->access$000(Lcom/xiaopeng/musicradio/netradio/player/view/NetRadioPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/netradio/player/presenter/NetRadioPlayListPresenter;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V

    return-void
.end method
