.class Layq$5;
.super Ljava/lang/Object;
.source "MusicCollectManager.java"

# interfaces
.implements Lbdm$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layq;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Layq;


# direct methods
.method constructor <init>(Layq;Ljava/util/List;)V
    .locals 0

    .line 462
    iput-object p1, p0, Layq$5;->b:Layq;

    iput-object p2, p0, Layq$5;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Z)Z
    .locals 4

    .line 465
    iget-object p1, p0, Layq$5;->b:Layq;

    invoke-virtual {p1}, Layq;->s()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onMusicAuth: ============= "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object p1, p0, Layq$5;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 467
    iget-object p1, p0, Layq$5;->b:Layq;

    iget-object v2, p0, Layq$5;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p1, v0, v1}, Layq;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)V

    goto :goto_1

    .line 469
    :cond_0
    iget-object p1, p0, Layq$5;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 470
    iget-object v3, p0, Layq$5;->b:Layq;

    invoke-virtual {v3, v2, v0}, Layq;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)V

    goto :goto_0

    .line 472
    :cond_1
    invoke-static {}, Lare;->d()Lare;

    move-result-object p1

    iget-object v0, p0, Layq$5;->a:Ljava/util/List;

    iget-object v2, p0, Layq$5;->b:Layq;

    invoke-virtual {v2}, Layq;->i()I

    move-result v2

    invoke-static {v0, v2}, Layz;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lare;->a(Ljava/util/List;)V

    :goto_1
    return v1
.end method
