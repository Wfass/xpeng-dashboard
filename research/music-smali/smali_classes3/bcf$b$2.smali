.class Lbcf$b$2;
.super Ljava/lang/Object;
.source "KugouFetchModel.java"

# interfaces
.implements Layw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbcf$b;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Layw$a<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbcf$b;


# direct methods
.method constructor <init>(Lbcf$b;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lbcf$b$2;->a:Lbcf$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;)I
    .locals 2

    if-eqz p1, :cond_1

    .line 146
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean$PageBean;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean$PageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean$PageBean;->getTotalPage()I

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 147
    :goto_1
    iget-object v0, p0, Lbcf$b$2;->a:Lbcf$b;

    iget-object v0, v0, Lbcf$b;->f:Lbcf;

    invoke-virtual {v0}, Lbcf;->j()Layq;

    move-result-object v0

    iget-object v1, p0, Lbcf$b$2;->a:Lbcf$b;

    invoke-static {v1}, Lbcf$b;->c(Lbcf$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Layq;->b(Ljava/lang/String;I)V

    return p1
.end method

.method public a(II)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/reactivex/Observable<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lbcf$b$2;->a:Lbcf$b;

    iget-object v0, v0, Lbcf$b;->f:Lbcf;

    invoke-virtual {v0}, Lbcf;->h()I

    move-result v0

    invoke-static {p1, p2, v0}, Lbet;->a(III)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 2

    .line 160
    iget-object v0, p0, Lbcf$b$2;->a:Lbcf$b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbcf$b;->c(Lbcf$b;Z)V

    .line 161
    invoke-static {}, Lbce;->a()Lbce;

    move-result-object v0

    invoke-virtual {v0}, Lbce;->c()V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 138
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;

    invoke-virtual {p0, p1}, Lbcf$b$2;->c(Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "KugouFetchModel"

    const-string v1, "responseAllPage: ========"

    .line 202
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v1, p0, Lbcf$b$2;->a:Lbcf$b;

    invoke-static {v1}, Lbcf$b;->h(Lbcf$b;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 207
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 214
    :cond_1
    iget-object v0, p0, Lbcf$b$2;->a:Lbcf$b;

    invoke-static {v0, p1}, Lbcf$b;->a(Lbcf$b;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 215
    iget-object v0, p0, Lbcf$b$2;->a:Lbcf$b;

    iget-object v0, v0, Lbcf$b;->f:Lbcf;

    invoke-virtual {v0}, Lbcf;->i()Lbae;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbae;->b(Ljava/util/List;)V

    .line 216
    iget-object v0, p0, Lbcf$b$2;->a:Lbcf$b;

    iget-object v0, v0, Lbcf$b;->f:Lbcf;

    invoke-virtual {v0}, Lbcf;->d()Lbci;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lbci;->a(Ljava/util/List;Z)V

    .line 217
    iget-object p1, p0, Lbcf$b$2;->a:Lbcf$b;

    invoke-static {p1, v1}, Lbcf$b;->h(Lbcf$b;Z)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "responseAllPage: is emtpy==="

    .line 208
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object p1, p0, Lbcf$b$2;->a:Lbcf$b;

    invoke-static {p1, v1}, Lbcf$b;->g(Lbcf$b;Z)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)I
    .locals 0

    .line 138
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;

    invoke-virtual {p0, p1}, Lbcf$b$2;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;)I

    move-result p1

    return p1
.end method

.method public b(Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 153
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean$PageBean;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean$PageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean$PageBean;->getTotal()I

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 154
    :goto_1
    invoke-static {}, Lbce;->a()Lbce;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbce;->a(I)V

    .line 155
    iget-object v0, p0, Lbcf$b$2;->a:Lbcf$b;

    iget-object v0, v0, Lbcf$b;->f:Lbcf;

    invoke-virtual {v0}, Lbcf;->j()Layq;

    move-result-object v0

    iget-object v1, p0, Lbcf$b$2;->a:Lbcf$b;

    invoke-static {v1}, Lbcf$b;->d(Lbcf$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Layq;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public c(Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;)V
    .locals 8

    .line 166
    iget-object v0, p0, Lbcf$b$2;->a:Lbcf$b;

    invoke-static {v0}, Lbcf$b;->e(Lbcf$b;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 170
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_2

    .line 171
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean$PageBean;

    move-result-object v0

    :cond_2
    const/4 v1, 0x0

    const-string v2, "KugouFetchModel"

    if-eqz p1, :cond_5

    if-nez v0, :cond_3

    goto :goto_1

    .line 177
    :cond_3
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_4

    const-string p1, "responseFirstPage post:skip:list=null"

    .line 179
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object p1, p0, Lbcf$b$2;->a:Lbcf$b;

    invoke-static {p1, v1}, Lbcf$b;->e(Lbcf$b;Z)V

    return-void

    .line 184
    :cond_4
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean$PageBean;->getTotal()I

    move-result v1

    .line 185
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean$DataBean$PageBean;->getTotalPage()I

    move-result v0

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "responseFirstPage post:response:total = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lbcf$b$2;->a:Lbcf$b;

    invoke-static {v6}, Lbcf$b;->f(Lbcf$b;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v2, Lbcf$b$2$1;

    invoke-direct {v2, p0, p1, v1, v0}, Lbcf$b$2$1;-><init>(Lbcf$b$2;Ljava/util/List;II)V

    invoke-static {v2}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void

    :cond_5
    :goto_1
    const-string p1, "responseFirstPage post:skip:pageBean=null"

    .line 173
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object p1, p0, Lbcf$b$2;->a:Lbcf$b;

    invoke-static {p1, v1}, Lbcf$b;->d(Lbcf$b;Z)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 138
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;

    invoke-virtual {p0, p1}, Lbcf$b$2;->b(Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;)V

    return-void
.end method
