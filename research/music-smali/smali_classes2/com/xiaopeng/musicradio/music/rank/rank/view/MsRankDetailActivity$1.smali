.class Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity$1;
.super Ljava/lang/Object;
.source "MsRankDetailActivity.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->setAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity$1;->a:Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCompleted()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity$1;->a:Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->mAdapter:Lbii;

    invoke-virtual {v0}, Lbii;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity$1;->a:Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankDetailActivity;->mAdapter:Lbii;

    invoke-virtual {v0}, Lbii;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
