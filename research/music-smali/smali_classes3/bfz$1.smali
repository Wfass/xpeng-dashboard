.class Lbfz$1;
.super Lbkv;
.source "MsRmCategoryDataHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbfz;->a(Lbfz$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbfz$a;

.field final synthetic b:Lbfz;


# direct methods
.method constructor <init>(Lbfz;Lbfz$a;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lbfz$1;->b:Lbfz;

    iput-object p2, p0, Lbfz$1;->a:Lbfz$a;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    .line 42
    iget-object p1, p0, Lbfz$1;->a:Lbfz$a;

    invoke-interface {p1, p2}, Lbfz$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult;)V
    .locals 4

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult$DataBean;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult$DataBean;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult$DataBean;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ltz v1, :cond_4

    .line 20
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult$DataBean;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 21
    iget-object p1, p0, Lbfz$1;->a:Lbfz$a;

    invoke-interface {p1, v2}, Lbfz$a;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 23
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    .line 24
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 29
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 30
    iget-object p1, p0, Lbfz$1;->a:Lbfz$a;

    invoke-interface {p1, v0}, Lbfz$a;->a(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 32
    :cond_3
    iget-object p1, p0, Lbfz$1;->a:Lbfz$a;

    invoke-interface {p1, v2}, Lbfz$a;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 36
    :cond_4
    iget-object p1, p0, Lbfz$1;->a:Lbfz$a;

    invoke-interface {p1, v2}, Lbfz$a;->a(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 14
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult;

    invoke-virtual {p0, p1}, Lbfz$1;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/ReCollectLabelsResult;)V

    return-void
.end method
