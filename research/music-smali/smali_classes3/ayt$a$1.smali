.class Layt$a$1;
.super Lbkv;
.source "MusicFetchModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layt$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Layt$a;


# direct methods
.method constructor <init>(Layt$a;)V
    .locals 0

    .line 381
    iput-object p1, p0, Layt$a$1;->a:Layt$a;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    .line 425
    iget-object v0, p0, Layt$a$1;->a:Layt$a;

    iget-object v0, v0, Layt$a;->e:Layt;

    iget-object v1, p0, Layt$a$1;->a:Layt$a;

    iget-wide v1, v1, Layt$a;->c:J

    invoke-static {v0, p1, p2, v1, v2}, Layt;->a(Layt;ILjava/lang/String;J)V

    .line 426
    iget-object p1, p0, Layt$a$1;->a:Layt$a;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Layt$a;->a(Z)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;)V
    .locals 8

    .line 384
    iget-object v0, p0, Layt$a$1;->a:Layt$a;

    iget-object v0, v0, Layt$a;->e:Layt;

    const/4 v1, 0x0

    iput v1, v0, Layt;->b:I

    .line 386
    iget-object v0, p0, Layt$a$1;->a:Layt$a;

    invoke-virtual {v0}, Layt$a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 390
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_2

    .line 391
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean$PageBean;

    move-result-object v0

    :cond_2
    const-string v2, "MusicFetchModel"

    if-eqz p1, :cond_5

    if-nez v0, :cond_3

    goto :goto_1

    .line 397
    :cond_3
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_4

    const-string p1, "post:skip:list=null"

    .line 399
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object p1, p0, Layt$a$1;->a:Layt$a;

    invoke-virtual {p1, v1}, Layt$a;->a(Z)V

    return-void

    .line 404
    :cond_4
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean$PageBean;->getTotal()I

    move-result v1

    .line 405
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean$PageBean;->getTotalPage()I

    move-result v0

    .line 406
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "post:response:total = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Layt$a$1;->a:Layt$a;

    iget-wide v6, v6, Layt$a;->c:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    new-instance v2, Layt$a$1$1;

    invoke-direct {v2, p0, p1, v1, v0}, Layt$a$1$1;-><init>(Layt$a$1;Ljava/util/List;II)V

    invoke-static {v2}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void

    :cond_5
    :goto_1
    const-string p1, "post:skip:pageBean=null"

    .line 393
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object p1, p0, Layt$a$1;->a:Layt$a;

    invoke-virtual {p1, v1}, Layt$a;->a(Z)V

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 381
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;

    invoke-virtual {p0, p1}, Layt$a$1;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;)V

    return-void
.end method
