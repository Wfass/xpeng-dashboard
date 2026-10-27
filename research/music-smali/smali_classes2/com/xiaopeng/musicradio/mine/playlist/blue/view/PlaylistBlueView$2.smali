.class Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView$2;
.super Ljava/lang/Object;
.source "PlaylistBlueView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView$2;->a:Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 84
    invoke-static {}, Latv;->c()V

    .line 85
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView$2;->a:Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;->access$000(Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueView;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/playlist/blue/presenter/PlaylistBluePresenter;->y()V

    return-void
.end method
