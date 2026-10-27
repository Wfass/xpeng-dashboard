.class Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment$4;
.super Ljava/lang/Object;
.source "SingerDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->getData(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment$4;->a:Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment$4;->a:Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->access$100(Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;)V

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment$4;->a:Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->access$400(Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;)I

    move-result v0

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment$4;->a:Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/detail/SingerDetailFragment;->setViewPageState(I)V

    :cond_0
    return-void
.end method
