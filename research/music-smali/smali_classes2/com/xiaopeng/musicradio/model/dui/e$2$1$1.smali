.class Lcom/xiaopeng/musicradio/model/dui/e$2$1$1;
.super Ljava/lang/Object;
.source "DuiMusicMediaModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/dui/e$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

.field final synthetic b:Lcom/xiaopeng/musicradio/model/dui/e$2$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/dui/e$2$1;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    .line 634
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/e$2$1$1;->b:Lcom/xiaopeng/musicradio/model/dui/e$2$1;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/model/dui/e$2$1$1;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 637
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/e$2$1$1;->b:Lcom/xiaopeng/musicradio/model/dui/e$2$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/dui/e$2$1;->b:Lcom/xiaopeng/musicradio/model/dui/e$2;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/dui/e$2;->c:Lcom/xiaopeng/musicradio/model/dui/e;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/dui/e$2$1$1;->b:Lcom/xiaopeng/musicradio/model/dui/e$2$1;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/model/dui/e$2$1;->a:Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getQuery()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/dui/e$2$1$1;->b:Lcom/xiaopeng/musicradio/model/dui/e$2$1;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/model/dui/e$2$1;->a:Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->getSemantic()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/model/dui/e$2$1$1;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/model/dui/e;->a(Lcom/xiaopeng/musicradio/model/dui/e;Ljava/lang/String;Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 638
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/dui/e$2$1$1;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/dui/e$2$1$1;->b:Lcom/xiaopeng/musicradio/model/dui/e$2$1;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/model/dui/e$2$1;->b:Lcom/xiaopeng/musicradio/model/dui/e$2;

    iget v2, v2, Lcom/xiaopeng/musicradio/model/dui/e$2;->b:I

    iget-object v3, p0, Lcom/xiaopeng/musicradio/model/dui/e$2$1$1;->b:Lcom/xiaopeng/musicradio/model/dui/e$2$1;

    iget-object v3, v3, Lcom/xiaopeng/musicradio/model/dui/e$2$1;->a:Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/search/DuiSearchResultBean;->isNoPlay()Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/xiaopeng/musicradio/model/music/i;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;ZIZ)V

    return-void
.end method
