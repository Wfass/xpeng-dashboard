.class Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment$3$1;
.super Ljava/lang/Object;
.source "SearchResultSongFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment$3;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment$3;Ljava/util/List;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment$3$1;->b:Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment$3;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment$3$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment$3$1;->b:Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment$3;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment$3;->a:Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;->access$000(Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment;)Lbnv;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/song/view/SearchResultSongFragment$3$1;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lbnv;->a(Ljava/util/List;)V

    return-void
.end method
