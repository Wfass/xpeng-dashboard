.class Lbmt$13;
.super Ljava/lang/Object;
.source "ProgramModel.java"

# interfaces
.implements Lask$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmt;->G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbmt;


# direct methods
.method constructor <init>(Lbmt;)V
    .locals 0

    .line 2260
    iput-object p1, p0, Lbmt$13;->a:Lbmt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeState()V
    .locals 2

    .line 2268
    iget-object v0, p0, Lbmt$13;->a:Lbmt;

    invoke-static {v0}, Lbmt;->t(Lbmt;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2269
    iget-object v0, p0, Lbmt$13;->a:Lbmt;

    invoke-static {v0}, Lbmt;->k(Lbmt;)Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2270
    iget-object v0, p0, Lbmt$13;->a:Lbmt;

    invoke-virtual {v0}, Lbmt;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2271
    iget-object v0, p0, Lbmt$13;->a:Lbmt;

    invoke-virtual {v0}, Lbmt;->q()V

    return-void

    .line 2275
    :cond_0
    iget-object v0, p0, Lbmt$13;->a:Lbmt;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbmt;->a(Lbmt;Z)V

    goto :goto_0

    .line 2277
    :cond_1
    iget-object v0, p0, Lbmt$13;->a:Lbmt;

    invoke-static {v0}, Lbmt;->q(Lbmt;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2278
    iget-object v0, p0, Lbmt$13;->a:Lbmt;

    invoke-virtual {v0}, Lbmt;->q()V

    goto :goto_0

    .line 2281
    :cond_2
    iget-object v0, p0, Lbmt$13;->a:Lbmt;

    invoke-static {v0}, Lbmt;->u(Lbmt;)V

    :goto_0
    return-void
.end method

.method public updateSoundVolume(F)V
    .locals 1

    .line 2263
    iget-object v0, p0, Lbmt$13;->a:Lbmt;

    invoke-virtual {v0, p1}, Lbmt;->setVolume(F)Z

    return-void
.end method
