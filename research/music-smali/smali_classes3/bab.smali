.class public abstract Lbab;
.super Lbdn;
.source "MusicCustomOperationBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/greenrobot/greendao/AbstractDao;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lbdn;"
    }
.end annotation


# instance fields
.field protected a:Lorg/greenrobot/greendao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/AbstractDao;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lbdn;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbab;->b:Ljava/util/HashMap;

    .line 47
    iput-object p1, p0, Lbab;->a:Lorg/greenrobot/greendao/AbstractDao;

    return-void
.end method

.method static synthetic a(Lbab;Ljava/util/List;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lbab;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;",
            ">;)V"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lbab;->b:Ljava/util/HashMap;

    monitor-enter v0

    .line 168
    :try_start_0
    iget-object v1, p0, Lbab;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 169
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;

    .line 170
    iget-object v2, p0, Lbab;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 172
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;)Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;"
        }
    .end annotation
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mobile_custom_hash_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(IJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;",
            ">;"
        }
    .end annotation
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;",
            ">;Z)V"
        }
    .end annotation

    .line 112
    new-instance v0, Lbab$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lbab$1;-><init>(Lbab;Ljava/lang/String;Ljava/util/List;Z)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;
    .locals 2

    .line 176
    iget-object v0, p0, Lbab;->b:Ljava/util/HashMap;

    monitor-enter v0

    .line 177
    :try_start_0
    iget-object v1, p0, Lbab;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 178
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected abstract b()Lorg/greenrobot/greendao/Property;
.end method

.method protected abstract c(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCustom;",
            ")TK;"
        }
    .end annotation
.end method

.method protected abstract c()Lorg/greenrobot/greendao/Property;
.end method

.method public c(Ljava/lang/String;)Z
    .locals 2

    .line 183
    iget-object v0, p0, Lbab;->b:Ljava/util/HashMap;

    monitor-enter v0

    .line 184
    :try_start_0
    iget-object v1, p0, Lbab;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 185
    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected abstract d()I
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    .line 190
    invoke-virtual {p0}, Lbab;->e()Lbef;

    move-result-object v0

    invoke-virtual {v0}, Lbef;->g()Z

    move-result v0

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCached:isMusicBinded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",from="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MusicCustomOperation"

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 195
    :cond_0
    invoke-virtual {p0}, Lbab;->d()I

    move-result p1

    invoke-virtual {p0, p1}, Lbab;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 196
    new-instance v0, Lbab$2;

    invoke-direct {v0, p0, p1}, Lbab$2;-><init>(Lbab;Ljava/lang/String;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method protected e()Lbef;
    .locals 1

    .line 60
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->b()Lbeg;

    move-result-object v0

    check-cast v0, Lbef;

    return-object v0
.end method
