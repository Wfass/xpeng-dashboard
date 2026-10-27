.class Lcom/xiaopeng/musicradio/model/music/i$8;
.super Ljava/lang/Object;
.source "MusicControlModel.java"

# interfaces
.implements Lask$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/music/i;->K()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/music/i;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/music/i;)V
    .locals 0

    .line 1851
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i$8;->a:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeState()V
    .locals 3

    .line 1859
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i$8;->a:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/music/i;->a(Lcom/xiaopeng/musicradio/model/music/i;)Lcom/xiaopeng/musicradio/model/music/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/a;->g()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1860
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i$8;->a:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/model/music/i;->b(Lcom/xiaopeng/musicradio/model/music/i;Z)V

    goto :goto_0

    .line 1862
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i$8;->a:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/music/i;->a(Lcom/xiaopeng/musicradio/model/music/i;)Lcom/xiaopeng/musicradio/model/music/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/a;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1863
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i$8;->a:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->v()V

    goto :goto_0

    .line 1865
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i$8;->a:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/music/i;->a(Lcom/xiaopeng/musicradio/model/music/i;)Lcom/xiaopeng/musicradio/model/music/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/model/music/a;->a(Z)V

    :goto_0
    return-void
.end method

.method public updateSoundVolume(F)V
    .locals 1

    .line 1854
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i$8;->a:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/model/music/i;->setVolume(F)Z

    return-void
.end method
