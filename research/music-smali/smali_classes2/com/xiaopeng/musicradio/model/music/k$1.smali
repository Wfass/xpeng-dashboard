.class Lcom/xiaopeng/musicradio/model/music/k$1;
.super Ljava/lang/Object;
.source "NormalDataProvider.java"

# interfaces
.implements Last$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/model/music/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Last$a<",
        "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/music/k;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/music/k;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/music/k$1;->a:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    .line 119
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/k$1;->a:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/k;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/model/music/k;->b(Ljava/lang/String;)V

    .line 121
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/k$1;->a:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/k;->e()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 122
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->getPlayState()I

    move-result p1

    if-eq p1, v0, :cond_0

    .line 123
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/model/music/i;->g(I)V

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/k$1;->a:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/model/music/k;->a(Lcom/xiaopeng/musicradio/model/music/k;)V

    .line 126
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$k;

    invoke-direct {p1, v1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$k;-><init>(I)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 127
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ToastEvent;

    invoke-direct {p1, p2}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ToastEvent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    .line 128
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 132
    :cond_1
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;

    iget-object p2, p0, Lcom/xiaopeng/musicradio/model/music/k$1;->a:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/model/music/k;->q()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    invoke-direct {p1, v1, p2, v0, v2}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;-><init>(ILjava/lang/String;IZ)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/k$1;->a:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/k;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onList: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {}, Lbrx;->a()Lbrx;

    move-result-object v0

    invoke-virtual {v0}, Lbrx;->f()V

    .line 78
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/k$1;->a:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/k;->B()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onList: is not music type"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 82
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    .line 84
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    if-eqz v1, :cond_1

    .line 86
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/k$1;->a:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/k;->B()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onList: ======= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/k$1;->a:Lcom/xiaopeng/musicradio/model/music/k;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/model/music/k;->f:Lass;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/k$1;->a:Lcom/xiaopeng/musicradio/model/music/k;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/model/music/k;->f:Lass;

    invoke-virtual {p1}, Lass;->A()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/k$1;->a:Lcom/xiaopeng/musicradio/model/music/k;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/model/music/k;->f:Lass;

    invoke-virtual {p1}, Lass;->B()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 92
    invoke-static {}, Lbrw;->a()V

    .line 94
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/k$1;->a:Lcom/xiaopeng/musicradio/model/music/k;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/model/music/k;->f:Lass;

    invoke-virtual {p1}, Lass;->h()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/k$1;->a:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/k;->e()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 111
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/k$1;->a:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/model/music/k;->a(Lcom/xiaopeng/musicradio/model/music/k;Ljava/util/List;)V

    goto/16 :goto_2

    :cond_5
    :goto_1
    const/4 p1, 0x0

    .line 95
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/an;->a(I)V

    .line 96
    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/k$1;->a:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/music/k;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/xiaopeng/musicradio/model/music/k;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/k$1;->a:Lcom/xiaopeng/musicradio/model/music/k;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/music/k;->f:Lass;

    invoke-virtual {v0}, Lass;->f()V

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/k$1;->a:Lcom/xiaopeng/musicradio/model/music/k;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/music/k;->f:Lass;

    invoke-virtual {v0}, Lass;->g()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/k$1;->a:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/k;->u()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onList: beforeFosus = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/k$1;->a:Lcom/xiaopeng/musicradio/model/music/k;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/model/music/k;->f:Lass;

    invoke-virtual {v2}, Lass;->I()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " curLost = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lask;->a()Lask;

    move-result-object v2

    invoke-virtual {v2}, Lask;->c()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NormalDataProvider"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/k$1;->a:Lcom/xiaopeng/musicradio/model/music/k;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/model/music/k;->f:Lass;

    invoke-virtual {v2}, Lass;->I()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 105
    invoke-static {}, Lask;->a()Lask;

    move-result-object v2

    invoke-virtual {v2}, Lask;->c()Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    move p1, v1

    .line 104
    :cond_7
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/model/music/i;->a(Z)V

    .line 107
    :cond_8
    invoke-static {}, Lask;->a()Lask;

    move-result-object p1

    invoke-virtual {p1}, Lask;->c()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 108
    invoke-static {}, Lask;->a()Lask;

    move-result-object p1

    invoke-virtual {p1, v1}, Lask;->b(Z)V

    :cond_9
    :goto_2
    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
