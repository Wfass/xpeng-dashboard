.class Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity$3;
.super Ljava/lang/Object;
.source "HistoryMusicActivity.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity$3;->a:Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 106
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity$3;->a:Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->setMode(I)V

    .line 107
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity$3;->a:Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->access$500(Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity$3;->a:Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->setMode(I)V

    .line 110
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity$3;->a:Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->access$600(Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;)V

    .line 112
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity$3;->a:Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->getSceneId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity$3;->a:Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->access$700(Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lauc;

    iget-object v0, v0, Lauc;->f:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-static {p1, v0}, Laxt;->a(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
