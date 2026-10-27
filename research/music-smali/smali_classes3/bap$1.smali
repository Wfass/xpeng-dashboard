.class Lbap$1;
.super Lbkv;
.source "KugouHistoryMigration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbap;->a(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lbap;


# direct methods
.method constructor <init>(Lbap;ILjava/util/List;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lbap$1;->c:Lbap;

    iput p2, p0, Lbap$1;->a:I

    iput-object p3, p0, Lbap$1;->b:Ljava/util/List;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " s = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " tryCount = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lbap$1;->a:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KugouHistoryMigration"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object p1, p0, Lbap$1;->c:Lbap;

    iget-object p2, p0, Lbap$1;->b:Ljava/util/List;

    iget v0, p0, Lbap$1;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, p2, v0}, Lbap;->a(Lbap;Ljava/util/List;I)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult;)V
    .locals 5

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "revertAlbumListToV2 response1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KugouHistoryMigration"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 107
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult$DataBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 112
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    .line 113
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getOriginId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "revertAlbumListToV2 response2: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {}, Lbav;->a()Lbav;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lbav;->a(Ljava/util/List;Ljava/util/List;Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 102
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult;

    invoke-virtual {p0, p1}, Lbap$1;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/HistoryCollectRevertResult;)V

    return-void
.end method
