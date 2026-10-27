.class Lcom/xiaopeng/musicradio/model/dui/e$4$1;
.super Ljava/lang/Object;
.source "DuiMusicMediaModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/dui/e$4;->a(Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;

.field final synthetic b:Lcom/xiaopeng/musicradio/model/dui/e$4;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/dui/e$4;Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;)V
    .locals 0

    .line 734
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/e$4$1;->b:Lcom/xiaopeng/musicradio/model/dui/e$4;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/model/dui/e$4$1;->a:Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 737
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/e$4$1;->a:Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSongList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    const/16 v1, 0x28

    const-string v2, "\u641c\u7d22"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;ILjava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    const/4 v1, 0x2

    .line 738
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setPlayBy(I)V

    .line 739
    new-instance v1, Lcom/xiaopeng/musicradio/model/dui/e$4$1$1;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/musicradio/model/dui/e$4$1$1;-><init>(Lcom/xiaopeng/musicradio/model/dui/e$4$1;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    invoke-static {v1}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method
