.class Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$1;
.super Ljava/lang/Object;
.source "NewSongLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->setAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$1;->a:Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCompleted()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$1;->a:Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/a;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$1;->a:Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
