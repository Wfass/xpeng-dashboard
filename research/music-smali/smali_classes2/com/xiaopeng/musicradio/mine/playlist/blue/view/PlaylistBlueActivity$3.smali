.class Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity$3;
.super Ljava/lang/Object;
.source "PlaylistBlueActivity.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity$3;->a:Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 104
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity$3;->a:Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->setMode(I)V

    .line 105
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity$3;->a:Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->access$500(Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;)V

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity$3;->a:Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->setMode(I)V

    .line 108
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity$3;->a:Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->access$600(Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;)V

    .line 110
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity$3;->a:Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->getSceneId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity$3;->a:Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;->access$700(Lcom/xiaopeng/musicradio/mine/playlist/blue/view/PlaylistBlueActivity;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Laug;

    iget-object v0, v0, Laug;->e:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-static {p1, v0}, Laxt;->a(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
