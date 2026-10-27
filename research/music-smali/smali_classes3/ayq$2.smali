.class Layq$2;
.super Ljava/lang/Object;
.source "MusicCollectManager.java"

# interfaces
.implements Lbdm$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layq;->b(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;Landroidx/lifecycle/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

.field final synthetic b:Landroidx/lifecycle/r;

.field final synthetic c:Layq;


# direct methods
.method constructor <init>(Layq;Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;Landroidx/lifecycle/r;)V
    .locals 0

    .line 226
    iput-object p1, p0, Layq$2;->c:Layq;

    iput-object p2, p0, Layq$2;->a:Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    iput-object p3, p0, Layq$2;->b:Landroidx/lifecycle/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 255
    iget-object v0, p0, Layq$2;->c:Layq;

    invoke-virtual {v0}, Layq;->s()Ljava/lang/String;

    move-result-object v0

    const-string v1, "musicAlbumLove onLoginFail: "

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    new-instance v0, Lasj$l;

    iget-object v1, p0, Layq$2;->a:Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "onLoginFail"

    invoke-direct {v0, v1, v2, v2, v3}, Lasj$l;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 257
    iget-object v0, p0, Layq$2;->b:Landroidx/lifecycle/r;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 258
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Z)Z
    .locals 3

    .line 229
    iget-object p1, p0, Layq$2;->c:Layq;

    invoke-virtual {p1}, Layq;->s()Ljava/lang/String;

    move-result-object p1

    const-string v0, "musicAlbumLove onLogin: "

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    iget-object p1, p0, Layq$2;->c:Layq;

    invoke-virtual {p1}, Layq;->j()Ljava/lang/String;

    move-result-object p1

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 232
    new-instance v2, Layq$2$1;

    invoke-direct {v2, p0, p1, v0, v1}, Layq$2$1;-><init>(Layq$2;Ljava/lang/String;J)V

    invoke-static {v2}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    const/4 p1, 0x1

    return p1
.end method
