.class public Lazh;
.super Ljava/lang/Object;
.source "AddSongsCallback.java"

# interfaces
.implements Lbdl$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 50
    invoke-static {p0}, Lazh;->b(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->getMergeList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 56
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    .line 57
    invoke-static {v1}, Lazh;->b(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 59
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static b(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)Ljava/lang/String;
    .locals 2

    .line 68
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->getObjectId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "music_love"

    const-string v1, ""

    .line 70
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method protected a()Lbae;
    .locals 1

    .line 40
    invoke-static {}, Lbad;->a()Lbad;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 3

    .line 20
    invoke-static {p1}, Lazh;->a(Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)Ljava/util/List;

    move-result-object v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReissueOk:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " hashList = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AddSongsCallback"

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 23
    new-instance p1, Lazh$1;

    invoke-direct {p1, p0, v0, p2}, Lazh$1;-><init>(Lazh;Ljava/util/List;Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V

    invoke-static {p1}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method protected a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    return-void
.end method
