.class Layj$10;
.super Ljava/lang/Object;
.source "PlaybackViewModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layj;->b(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Layj;


# direct methods
.method constructor <init>(Layj;II)V
    .locals 0

    .line 984
    iput-object p1, p0, Layj$10;->c:Layj;

    iput p2, p0, Layj$10;->a:I

    iput p3, p0, Layj$10;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 987
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const-string v1, "PlaybackViewModel"

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const-string v0, "don\'t update playstate as not bluetooth music type"

    .line 988
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 991
    :cond_0
    iget-object v0, p0, Layj$10;->c:Layj;

    iget v3, p0, Layj$10;->a:I

    invoke-static {v0, v3}, Layj;->a(Layj;I)I

    move-result v0

    .line 992
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPlayState action =======>>>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Layj$10;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Layj$10;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",realState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mPlayState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Layj$10;->c:Layj;

    invoke-static {v4}, Layj;->q(Layj;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",isNoneStop:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Layj$10;->c:Layj;

    invoke-static {v4}, Layj;->r(Layj;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 993
    iget v1, p0, Layj$10;->b:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_4

    if-eqz v1, :cond_4

    const/4 v5, 0x7

    if-ne v1, v5, :cond_1

    goto :goto_0

    :cond_1
    if-ne v1, v2, :cond_2

    .line 998
    iget-object v1, p0, Layj$10;->c:Layj;

    invoke-static {v1}, Layj;->t(Layj;)J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Layj$10;->c:Layj;

    invoke-static {v1}, Layj;->p(Layj;)J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-gtz v1, :cond_2

    .line 999
    iget-object v1, p0, Layj$10;->c:Layj;

    invoke-static {v1}, Layj;->s(Layj;)V

    .line 1000
    iget-object v1, p0, Layj$10;->c:Layj;

    invoke-static {v1, v3}, Layj;->a(Layj;Z)Z

    goto :goto_1

    .line 1001
    :cond_2
    iget-object v1, p0, Layj$10;->c:Layj;

    invoke-static {v1}, Layj;->q(Layj;)I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 1002
    iget-object v0, p0, Layj$10;->c:Layj;

    invoke-static {v0, v4}, Layj;->a(Layj;Z)Z

    return-void

    .line 1005
    :cond_3
    iget-object v1, p0, Layj$10;->c:Layj;

    invoke-static {v1, v4}, Layj;->a(Layj;Z)Z

    goto :goto_1

    .line 994
    :cond_4
    :goto_0
    iget-object v1, p0, Layj$10;->c:Layj;

    invoke-static {v1}, Layj;->r(Layj;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 995
    iget-object v1, p0, Layj$10;->c:Layj;

    invoke-static {v1}, Layj;->s(Layj;)V

    .line 996
    iget-object v1, p0, Layj$10;->c:Layj;

    invoke-static {v1, v3}, Layj;->a(Layj;Z)Z

    .line 1007
    :cond_5
    :goto_1
    iget-object v1, p0, Layj$10;->c:Layj;

    invoke-static {v1, v3}, Layj;->b(Layj;Z)Z

    .line 1008
    iget-object v1, p0, Layj$10;->c:Layj;

    invoke-static {v1, v0}, Layj;->b(Layj;I)I

    .line 1009
    iget-object v1, p0, Layj$10;->c:Layj;

    invoke-static {v1}, Layj;->u(Layj;)V

    .line 1010
    iget-object v1, p0, Layj$10;->c:Layj;

    invoke-static {v1}, Layj;->f(Layj;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/model/bluetooth/i;

    .line 1011
    invoke-interface {v2, v0}, Lcom/xiaopeng/musicradio/model/bluetooth/i;->b(I)V

    goto :goto_2

    :cond_6
    return-void
.end method
