.class Lbdw$3;
.super Ljava/lang/Object;
.source "QqManagerModelBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbdw;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbdw;


# direct methods
.method constructor <init>(Lbdw;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lbdw$3;->a:Lbdw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 114
    invoke-static {}, Lcom/lzy/okgo/db/CacheManager;->getInstance()Lcom/lzy/okgo/db/CacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okgo/db/CacheManager;->clear()Z

    .line 115
    iget-object v0, p0, Lbdw$3;->a:Lbdw;

    invoke-static {v0}, Lbdw;->b(Lbdw;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbdq;

    .line 116
    invoke-interface {v1}, Lbdq;->k()V

    goto :goto_0

    .line 118
    :cond_0
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    if-nez v0, :cond_1

    .line 119
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfe;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfe;

    if-eqz v0, :cond_1

    .line 121
    invoke-interface {v0}, Lbfe;->getListSign()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/aj;->a(Ljava/lang/String;)Z

    move-result v1

    .line 123
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/aj;->b(Ljava/lang/String;)Z

    move-result v0

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run: cur = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lbdw$3;->a:Lbdw;

    invoke-virtual {v3}, Lbdw;->j()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " musicAccount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v3

    invoke-virtual {v3}, Laqr;->d()Laqt;

    move-result-object v3

    invoke-interface {v3}, Laqt;->j()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QqManagerModelBase"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 125
    iget-object v0, p0, Lbdw$3;->a:Lbdw;

    invoke-virtual {v0}, Lbdw;->j()I

    move-result v0

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1}, Laqr;->d()Laqt;

    move-result-object v1

    invoke-interface {v1}, Laqt;->j()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 126
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Laqr;->b(I)V

    :cond_1
    return-void
.end method
