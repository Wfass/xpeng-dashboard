.class Laze$a$1;
.super Lbkv;
.source "ProgramFetchModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laze$a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadingListAlbumsBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Laze$a;


# direct methods
.method constructor <init>(Laze$a;)V
    .locals 0

    .line 162
    iput-object p1, p0, Laze$a$1;->a:Laze$a;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    .line 203
    invoke-static {}, Laze;->a()Laze;

    move-result-object v0

    iget-object v1, p0, Laze$a$1;->a:Laze$a;

    invoke-static {v1}, Laze$a;->a(Laze$a;)J

    move-result-wide v1

    invoke-static {v0, p1, p2, v1, v2}, Laze;->a(Laze;ILjava/lang/String;J)V

    .line 204
    iget-object p1, p0, Laze$a$1;->a:Laze$a;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Laze$a;->a(Laze$a;Z)V

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 162
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadingListAlbumsBean;

    invoke-virtual {p0, p1}, Laze$a$1;->a(Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadingListAlbumsBean;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadingListAlbumsBean;)V
    .locals 7

    .line 165
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadingListAlbumsBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadingListAlbumsBean$DataBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadingListAlbumsBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadingListAlbumsBean$DataBean$PageBean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    const-string v2, "ProgramFetchModel"

    if-nez v0, :cond_1

    const-string p1, "post:skip:pageBean=null"

    .line 168
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-static {}, Laze;->a()Laze;

    move-result-object p1

    const/4 v0, -0x1

    iget-object v2, p0, Laze$a$1;->a:Laze$a;

    invoke-static {v2}, Laze$a;->a(Laze$a;)J

    move-result-wide v2

    const-string v4, "pageBean=null"

    invoke-static {p1, v0, v4, v2, v3}, Laze;->a(Laze;ILjava/lang/String;J)V

    .line 170
    iget-object p1, p0, Laze$a$1;->a:Laze$a;

    invoke-static {p1, v1}, Laze$a;->a(Laze$a;Z)V

    return-void

    .line 173
    :cond_1
    invoke-static {}, Laze;->a()Laze;

    move-result-object v3

    iget-object v4, p0, Laze$a$1;->a:Laze$a;

    invoke-static {v4}, Laze$a;->b(Laze$a;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Laze;->a(Laze;Ljava/lang/String;)Z

    move-result v3

    const-string v4, ",time="

    if-eqz v3, :cond_2

    .line 174
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "post:skip:mOpenId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Laze$a$1;->a:Laze$a;

    invoke-static {v0}, Laze$a;->b(Laze$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Laze$a$1;->a:Laze$a;

    invoke-static {v0}, Laze$a;->a(Laze$a;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object p1, p0, Laze$a$1;->a:Laze$a;

    invoke-static {p1, v1}, Laze$a;->a(Laze$a;Z)V

    return-void

    .line 178
    :cond_2
    iget-object v3, p0, Laze$a$1;->a:Laze$a;

    invoke-static {v3}, Laze$a;->c(Laze$a;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 179
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "post:skip:disposed:time="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Laze$a$1;->a:Laze$a;

    invoke-static {v0}, Laze$a;->a(Laze$a;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object p1, p0, Laze$a$1;->a:Laze$a;

    invoke-static {p1, v1}, Laze$a;->a(Laze$a;Z)V

    return-void

    .line 183
    :cond_3
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadingListAlbumsBean$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    .line 184
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadingListAlbumsBean$DataBean$PageBean;->getTotal()I

    move-result v0

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "post:response:total = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Laze$a$1;->a:Laze$a;

    invoke-static {v5}, Laze$a;->a(Laze$a;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x32

    if-gt v0, v1, :cond_4

    .line 187
    new-instance v0, Laze$a$1$1;

    invoke-direct {v0, p0, p1}, Laze$a$1$1;-><init>(Laze$a$1;Ljava/util/List;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    goto :goto_1

    :cond_4
    const/16 v1, 0x1f4

    .line 195
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 197
    iget-object v1, p0, Laze$a$1;->a:Laze$a;

    invoke-static {v1, v0, p1}, Laze$a;->a(Laze$a;ILjava/util/List;)V

    :goto_1
    return-void
.end method
