.class Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$9;
.super Ljava/lang/Object;
.source "MusicDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->refreshLoadMoreState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;I)V
    .locals 0

    .line 660
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$9;->b:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    iput p2, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$9;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 663
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$9;->b:Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/detail/MusicDetailFragment$9;->a:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/a;->b(I)V

    return-void
.end method
