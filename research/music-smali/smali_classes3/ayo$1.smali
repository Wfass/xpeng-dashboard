.class Layo$1;
.super Lbkv;
.source "MusicAlbumModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layo;->a(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Layo;


# direct methods
.method constructor <init>(Layo;Ljava/lang/String;Z)V
    .locals 0

    .line 115
    iput-object p1, p0, Layo$1;->c:Layo;

    iput-object p2, p0, Layo$1;->a:Ljava/lang/String;

    iput-boolean p3, p0, Layo$1;->b:Z

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method

.method private a(Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;",
            ">;)V"
        }
    .end annotation

    .line 156
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 157
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCollectTypeSelf: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MusicAlbumModel"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x0

    .line 165
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 166
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;

    .line 167
    invoke-static {v0}, Layy;->b(Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;)Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;

    move-result-object v0

    .line 168
    iget-object v2, p0, Layo$1;->c:Layo;

    iget-wide v2, v2, Layo;->c:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->setCacheTime(J)V

    .line 169
    iget-object v2, p0, Layo$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->setUid(Ljava/lang/String;)V

    .line 170
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean;Ljava/util/List;Ljava/util/HashSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 141
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCollectTypeCollect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicAlbumModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 144
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 145
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;

    .line 146
    invoke-static {v1}, Layy;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean$ListBean;)Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    move-result-object v1

    .line 147
    iget-object v2, p0, Layo$1;->c:Layo;

    iget-wide v2, v2, Layo;->c:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setCacheTime(J)V

    .line 148
    iget-object v2, p0, Layo$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setUid(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    .line 177
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "MusicAlbumModel"

    const-string p2, "error: %d, %s"

    invoke-static {p1, p2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    iget-object p1, p0, Layo$1;->c:Layo;

    iget-object p1, p1, Layo;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 179
    new-instance p1, Lbfh$a;

    const/4 p2, -0x1

    invoke-direct {p1, p2}, Lbfh$a;-><init>(I)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean;)V
    .locals 6

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean;->isFromCache()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicAlbumModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean;->isFromCache()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 123
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 125
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 126
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean;->getData()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 128
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean;

    .line 129
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean;->getCollectType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 130
    invoke-direct {p0, v3, v0, v1}, Layo$1;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean;Ljava/util/List;Ljava/util/HashSet;)V

    goto :goto_0

    .line 131
    :cond_2
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean;->getCollectType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 132
    invoke-direct {p0, v3, v2}, Layo$1;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean$DataBean;Ljava/util/List;)V

    goto :goto_0

    .line 136
    :cond_3
    iget-object p1, p0, Layo$1;->c:Layo;

    invoke-virtual {p1}, Layo;->e()Lazy;

    move-result-object p1

    iget-object v3, p0, Layo$1;->a:Ljava/lang/String;

    iget-boolean v4, p0, Layo$1;->b:Z

    invoke-virtual {p1, v3, v0, v1, v4}, Lazy;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/HashSet;Z)V

    .line 137
    iget-object p1, p0, Layo$1;->c:Layo;

    invoke-virtual {p1}, Layo;->f()Lbab;

    move-result-object p1

    iget-object v0, p0, Layo$1;->a:Ljava/lang/String;

    iget-boolean v1, p0, Layo$1;->b:Z

    invoke-virtual {p1, v0, v2, v1}, Lbab;->a(Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 115
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean;

    invoke-virtual {p0, p1}, Layo$1;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectListBean;)V

    return-void
.end method
