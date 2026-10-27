.class Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$1;
.super Ljava/lang/Object;
.source "MsMusicDetailActivity.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->setAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$1;->a:Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCompleted()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$1;->a:Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mAdapter:Lbii;

    invoke-virtual {v0}, Lbii;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$1;->a:Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mAdapter:Lbii;

    invoke-virtual {v0}, Lbii;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
