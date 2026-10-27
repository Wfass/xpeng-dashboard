.class Lbci$2;
.super Lbkv;
.source "LocalLoveManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbci;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/ListDetailBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/LinkedList;

.field final synthetic c:Lbci;


# direct methods
.method constructor <init>(Lbci;Ljava/lang/String;Ljava/util/LinkedList;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lbci$2;->c:Lbci;

    iput-object p2, p0, Lbci$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lbci$2;->b:Ljava/util/LinkedList;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 165
    iget-object p1, p0, Lbci$2;->c:Lbci;

    invoke-static {p1}, Lbci;->a(Lbci;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object p2, p0, Lbci$2;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object p1, p0, Lbci$2;->b:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lbci$2;->c:Lbci;

    invoke-static {v0}, Lbci;->b(Lbci;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/ListDetailBean;)V
    .locals 4

    .line 146
    iget-object v0, p0, Lbci$2;->c:Lbci;

    invoke-static {v0}, Lbci;->a(Lbci;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lbci$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ListDetailBean;->getData()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 151
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 152
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    .line 153
    sget-object v2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->TAG_MUSIC:Landroid/util/SparseArray;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;ILjava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 156
    :cond_1
    invoke-static {v0}, Lbci;->a(Ljava/util/List;)V

    .line 160
    iget-object p1, p0, Lbci$2;->c:Lbci;

    invoke-virtual {p1}, Lbci;->d()Lazv;

    move-result-object p1

    invoke-virtual {p1, v0}, Lazv;->a(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 143
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/ListDetailBean;

    invoke-virtual {p0, p1}, Lbci$2;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/ListDetailBean;)V

    return-void
.end method
