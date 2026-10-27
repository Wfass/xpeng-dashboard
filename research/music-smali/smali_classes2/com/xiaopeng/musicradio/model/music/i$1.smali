.class Lcom/xiaopeng/musicradio/model/music/i$1;
.super Ljava/lang/Object;
.source "MusicControlModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/music/i;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/model/music/i;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/music/i;I)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i$1;->b:Lcom/xiaopeng/musicradio/model/music/i;

    iput p2, p0, Lcom/xiaopeng/musicradio/model/music/i$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i$1;->b:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/aj;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/xiaopeng/musicradio/model/music/i$1;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i$1;->b:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/aj;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 202
    :cond_0
    iget v0, p0, Lcom/xiaopeng/musicradio/model/music/i$1;->a:I

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/i$1;->b:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/model/music/i;->a(Lcom/xiaopeng/musicradio/model/music/i;)Lcom/xiaopeng/musicradio/model/music/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/music/b;->c()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i$1;->b:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/music/i;->b(Lcom/xiaopeng/musicradio/model/music/i;)Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->reset()V

    .line 205
    :cond_1
    iget v0, p0, Lcom/xiaopeng/musicradio/model/music/i$1;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i$1;->b:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/music/i;->c(Lcom/xiaopeng/musicradio/model/music/i;)Lbcq;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i$1;->b:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/music/i;->c(Lcom/xiaopeng/musicradio/model/music/i;)Lbcq;

    move-result-object v0

    invoke-virtual {v0}, Lbcq;->h()Lcom/xiaopeng/musicradio/model/music/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/n;->u()V

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i$1;->b:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/music/i;->c(Lcom/xiaopeng/musicradio/model/music/i;)Lbcq;

    move-result-object v0

    invoke-virtual {v0}, Lbcq;->g()Lcom/xiaopeng/musicradio/model/music/k;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/model/music/k;->b(Z)V

    goto :goto_0

    :cond_2
    if-ne v0, v3, :cond_3

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i$1;->b:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/music/i;->d(Lcom/xiaopeng/musicradio/model/music/i;)Lcom/xiaopeng/musicradio/model/music/e;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i$1;->b:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/music/i;->d(Lcom/xiaopeng/musicradio/model/music/i;)Lcom/xiaopeng/musicradio/model/music/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/e;->h()Lcom/xiaopeng/musicradio/model/music/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/n;->u()V

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i$1;->b:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/music/i;->d(Lcom/xiaopeng/musicradio/model/music/i;)Lcom/xiaopeng/musicradio/model/music/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/e;->g()Lcom/xiaopeng/musicradio/model/music/k;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/model/music/k;->b(Z)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i$1;->b:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/music/i;->e(Lcom/xiaopeng/musicradio/model/music/i;)Lbcn;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i$1;->b:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/music/i;->e(Lcom/xiaopeng/musicradio/model/music/i;)Lbcn;

    move-result-object v0

    invoke-virtual {v0}, Lbcn;->h()Lcom/xiaopeng/musicradio/model/music/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/n;->u()V

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i$1;->b:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/music/i;->e(Lcom/xiaopeng/musicradio/model/music/i;)Lbcn;

    move-result-object v0

    invoke-virtual {v0}, Lbcn;->g()Lcom/xiaopeng/musicradio/model/music/k;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/model/music/k;->b(Z)V

    goto :goto_0

    :cond_4
    if-ne v0, v1, :cond_5

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i$1;->b:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/music/i;->f(Lcom/xiaopeng/musicradio/model/music/i;)Lcom/xiaopeng/musicradio/model/music/m;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i$1;->b:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/music/i;->f(Lcom/xiaopeng/musicradio/model/music/i;)Lcom/xiaopeng/musicradio/model/music/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/m;->h()Lcom/xiaopeng/musicradio/model/music/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/n;->u()V

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i$1;->b:Lcom/xiaopeng/musicradio/model/music/i;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/music/i;->f(Lcom/xiaopeng/musicradio/model/music/i;)Lcom/xiaopeng/musicradio/model/music/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/m;->g()Lcom/xiaopeng/musicradio/model/music/k;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/model/music/k;->b(Z)V

    :cond_5
    :goto_0
    return-void
.end method
