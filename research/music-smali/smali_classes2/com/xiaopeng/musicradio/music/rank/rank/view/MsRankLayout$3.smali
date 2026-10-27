.class Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout$3;
.super Ljava/lang/Object;
.source "MsRankLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->refreshAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout$3;->a:Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout$3;->a:Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->access$100(Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;)Lbiu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout$3;->a:Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->access$100(Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;)Lbiu;

    move-result-object v0

    invoke-virtual {v0}, Lbiu;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout$3;->a:Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->access$100(Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;)Lbiu;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout$3;->a:Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->access$100(Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;)Lbiu;

    move-result-object v1

    invoke-virtual {v1}, Lbiu;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "payload"

    invoke-virtual {v0, v2, v1, v3}, Lbiu;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout$3;->a:Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->access$100(Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;)Lbiu;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout$3;->a:Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->access$100(Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;)Lbiu;

    move-result-object v1

    invoke-virtual {v1}, Lbiu;->getItemCount()I

    move-result v1

    const-string v3, "payload_song_name"

    invoke-virtual {v0, v2, v1, v3}, Lbiu;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :cond_0
    return-void
.end method
