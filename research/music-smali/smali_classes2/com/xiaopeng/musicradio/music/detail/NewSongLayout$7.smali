.class Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$7;
.super Ljava/lang/Object;
.source "NewSongLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->refreshLoadMoreState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;I)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$7;->b:Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;

    iput p2, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$7;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$7;->b:Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/a;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$7;->a:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/a;->b(I)V

    return-void
.end method
