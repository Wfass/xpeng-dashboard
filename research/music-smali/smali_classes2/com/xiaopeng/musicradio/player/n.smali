.class public Lcom/xiaopeng/musicradio/player/n;
.super Ljava/lang/Object;
.source "PlayerProxy.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/player/b;
.implements Lcom/xiaopeng/musicradio/player/d;
.implements Lcom/xiaopeng/musicradio/player/l;


# instance fields
.field private a:I

.field private b:Lcom/xiaopeng/musicradio/player/m;

.field private c:Lcom/xiaopeng/musicradio/player/l;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:F

.field private g:F

.field private h:I

.field private i:I

.field private j:F

.field private k:F


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    iput v0, p0, Lcom/xiaopeng/musicradio/player/n;->f:F

    .line 18
    iput v0, p0, Lcom/xiaopeng/musicradio/player/n;->g:F

    .line 22
    iput v0, p0, Lcom/xiaopeng/musicradio/player/n;->k:F

    .line 25
    iput p1, p0, Lcom/xiaopeng/musicradio/player/n;->a:I

    .line 26
    invoke-static {}, Lcom/xiaopeng/musicradio/player/m;->a()Lcom/xiaopeng/musicradio/player/m;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/n;->b:Lcom/xiaopeng/musicradio/player/m;

    .line 27
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/n;->b:Lcom/xiaopeng/musicradio/player/m;

    iget v0, p0, Lcom/xiaopeng/musicradio/player/n;->a:I

    invoke-virtual {p1, v0, p0}, Lcom/xiaopeng/musicradio/player/m;->a(ILcom/xiaopeng/musicradio/player/n;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/player/l;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/n;->c:Lcom/xiaopeng/musicradio/player/l;

    return-void
.end method

.method public a()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/player/n;->d:Z

    return v0
.end method

.method public b()I
    .locals 1

    .line 251
    iget v0, p0, Lcom/xiaopeng/musicradio/player/n;->h:I

    return v0
.end method

.method public c()F
    .locals 1

    .line 255
    iget v0, p0, Lcom/xiaopeng/musicradio/player/n;->j:F

    return v0
.end method

.method public d()F
    .locals 1

    .line 259
    iget v0, p0, Lcom/xiaopeng/musicradio/player/n;->f:F

    return v0
.end method

.method public e()F
    .locals 1

    .line 263
    iget v0, p0, Lcom/xiaopeng/musicradio/player/n;->g:F

    return v0
.end method

.method public f()I
    .locals 1

    .line 267
    iget v0, p0, Lcom/xiaopeng/musicradio/player/n;->i:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/n;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/n;->b:Lcom/xiaopeng/musicradio/player/m;

    iget v1, p0, Lcom/xiaopeng/musicradio/player/n;->a:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/player/m;->h(I)I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/n;->b:Lcom/xiaopeng/musicradio/player/m;

    iget v1, p0, Lcom/xiaopeng/musicradio/player/n;->a:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/player/m;->k(I)I

    move-result v0

    return v0
.end method

.method public getPlaybackState()I
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/n;->b:Lcom/xiaopeng/musicradio/player/m;

    iget v1, p0, Lcom/xiaopeng/musicradio/player/n;->a:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/player/m;->l(I)I

    move-result v0

    return v0
.end method

.method public getSecondPosition()I
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/n;->b:Lcom/xiaopeng/musicradio/player/m;

    iget v1, p0, Lcom/xiaopeng/musicradio/player/n;->a:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/player/m;->i(I)I

    move-result v0

    return v0
.end method

.method public getSessionId()I
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/n;->b:Lcom/xiaopeng/musicradio/player/m;

    iget v1, p0, Lcom/xiaopeng/musicradio/player/n;->a:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/player/m;->m(I)I

    move-result v0

    return v0
.end method

.method public getVolume()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()F
    .locals 1

    .line 275
    iget v0, p0, Lcom/xiaopeng/musicradio/player/n;->k:F

    return v0
.end method

.method public isCacheComplete(Ljava/lang/String;)Z
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/n;->b:Lcom/xiaopeng/musicradio/player/m;

    iget v1, p0, Lcom/xiaopeng/musicradio/player/n;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/musicradio/player/m;->b(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isIdle()Z
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/n;->b:Lcom/xiaopeng/musicradio/player/m;

    iget v1, p0, Lcom/xiaopeng/musicradio/player/n;->a:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/player/m;->g(I)Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/n;->b:Lcom/xiaopeng/musicradio/player/m;

    iget v1, p0, Lcom/xiaopeng/musicradio/player/n;->a:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/player/m;->j(I)Z

    move-result v0

    return v0
.end method

.method public loadingChange(Ljava/lang/String;Z)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/n;->c:Lcom/xiaopeng/musicradio/player/l;

    if-eqz v0, :cond_0

    .line 207
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/musicradio/player/l;->loadingChange(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onAudioInputFormatChanged(Ljava/lang/String;I)V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/n;->c:Lcom/xiaopeng/musicradio/player/l;

    if-eqz v0, :cond_0

    .line 242
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/musicradio/player/l;->onAudioInputFormatChanged(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onAudioSessionId(Ljava/lang/String;I)V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/n;->c:Lcom/xiaopeng/musicradio/player/l;

    if-eqz v0, :cond_0

    .line 235
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/musicradio/player/l;->onAudioSessionId(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onDownloaded(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/n;->c:Lcom/xiaopeng/musicradio/player/l;

    if-eqz v0, :cond_0

    .line 221
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/player/l;->onDownloaded(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public onPlayError(Ljava/lang/String;I)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/n;->c:Lcom/xiaopeng/musicradio/player/l;

    if-eqz v0, :cond_0

    .line 192
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/musicradio/player/l;->onPlayError(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onPlayPosition(Ljava/lang/String;IIZ)V
    .locals 1

    .line 198
    iput p2, p0, Lcom/xiaopeng/musicradio/player/n;->h:I

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/n;->c:Lcom/xiaopeng/musicradio/player/l;

    if-eqz v0, :cond_0

    .line 200
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/player/l;->onPlayPosition(Ljava/lang/String;IIZ)V

    :cond_0
    return-void
.end method

.method public onSetData(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/n;->c:Lcom/xiaopeng/musicradio/player/l;

    if-eqz v0, :cond_0

    .line 228
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/musicradio/player/l;->onSetData(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onTimeLineChange(Ljava/lang/String;)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/n;->c:Lcom/xiaopeng/musicradio/player/l;

    if-eqz v0, :cond_0

    .line 214
    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/player/l;->onTimeLineChange(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/n;->b:Lcom/xiaopeng/musicradio/player/m;

    iget v1, p0, Lcom/xiaopeng/musicradio/player/n;->a:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/player/m;->b(I)V

    return-void
.end method

.method public playState(Ljava/lang/String;I)V
    .locals 1

    .line 183
    iput p2, p0, Lcom/xiaopeng/musicradio/player/n;->i:I

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/n;->c:Lcom/xiaopeng/musicradio/player/l;

    if-eqz v0, :cond_0

    .line 185
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/musicradio/player/l;->playState(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public prepareData(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/player/n;->d:Z

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/n;->e:Ljava/lang/String;

    const/4 v0, 0x2

    .line 55
    iput v0, p0, Lcom/xiaopeng/musicradio/player/n;->i:I

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/n;->b:Lcom/xiaopeng/musicradio/player/m;

    iget v1, p0, Lcom/xiaopeng/musicradio/player/n;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/musicradio/player/m;->a(ILjava/lang/String;)V

    return-void
.end method

.method public prepareData(Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/player/n;->d:Z

    .line 62
    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/n;->e:Ljava/lang/String;

    const/4 v0, 0x2

    .line 63
    iput v0, p0, Lcom/xiaopeng/musicradio/player/n;->i:I

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/n;->b:Lcom/xiaopeng/musicradio/player/m;

    iget v1, p0, Lcom/xiaopeng/musicradio/player/n;->a:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/xiaopeng/musicradio/player/m;->a(ILjava/lang/String;Z)V

    return-void
.end method

.method public prepareData(Ljava/lang/String;ZZ)V
    .locals 2

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/player/n;->d:Z

    .line 70
    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/n;->e:Ljava/lang/String;

    const/4 v0, 0x2

    .line 71
    iput v0, p0, Lcom/xiaopeng/musicradio/player/n;->i:I

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/n;->b:Lcom/xiaopeng/musicradio/player/m;

    iget v1, p0, Lcom/xiaopeng/musicradio/player/n;->a:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/xiaopeng/musicradio/player/m;->a(ILjava/lang/String;ZZ)V

    return-void
.end method

.method public prepareData(Ljava/lang/String;ZZZ)V
    .locals 7

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/player/n;->d:Z

    .line 78
    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/n;->e:Ljava/lang/String;

    if-eqz p4, :cond_0

    const/4 v0, 0x2

    .line 81
    iput v0, p0, Lcom/xiaopeng/musicradio/player/n;->i:I

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/player/n;->b:Lcom/xiaopeng/musicradio/player/m;

    iget v2, p0, Lcom/xiaopeng/musicradio/player/n;->a:I

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/musicradio/player/m;->a(ILjava/lang/String;ZZZ)V

    return-void
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/player/n;->d:Z

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/n;->b:Lcom/xiaopeng/musicradio/player/m;

    iget v1, p0, Lcom/xiaopeng/musicradio/player/n;->a:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/player/m;->f(I)V

    return-void
.end method

.method public removeCache(Ljava/lang/String;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/n;->b:Lcom/xiaopeng/musicradio/player/m;

    iget v1, p0, Lcom/xiaopeng/musicradio/player/n;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/musicradio/player/m;->c(ILjava/lang/String;)V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/n;->b:Lcom/xiaopeng/musicradio/player/m;

    iget v1, p0, Lcom/xiaopeng/musicradio/player/n;->a:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/player/m;->e(I)V

    return-void
.end method

.method public seekTo(I)V
    .locals 2

    .line 88
    iput p1, p0, Lcom/xiaopeng/musicradio/player/n;->h:I

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/n;->b:Lcom/xiaopeng/musicradio/player/m;

    iget v1, p0, Lcom/xiaopeng/musicradio/player/n;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/musicradio/player/m;->a(II)V

    return-void
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/n;->b:Lcom/xiaopeng/musicradio/player/m;

    iget v1, p0, Lcom/xiaopeng/musicradio/player/n;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/musicradio/player/m;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method public setPlaySpeed(F)V
    .locals 2

    .line 132
    iput p1, p0, Lcom/xiaopeng/musicradio/player/n;->j:F

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/n;->b:Lcom/xiaopeng/musicradio/player/m;

    iget v1, p0, Lcom/xiaopeng/musicradio/player/n;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/musicradio/player/m;->b(IF)V

    return-void
.end method

.method public setSonicVolume(F)V
    .locals 2

    .line 101
    iput p1, p0, Lcom/xiaopeng/musicradio/player/n;->k:F

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/n;->b:Lcom/xiaopeng/musicradio/player/m;

    iget v1, p0, Lcom/xiaopeng/musicradio/player/n;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/musicradio/player/m;->a(IF)V

    return-void
.end method

.method public setVolume(FF)V
    .locals 2

    .line 94
    iput p1, p0, Lcom/xiaopeng/musicradio/player/n;->f:F

    .line 95
    iput p2, p0, Lcom/xiaopeng/musicradio/player/n;->g:F

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/n;->b:Lcom/xiaopeng/musicradio/player/m;

    iget v1, p0, Lcom/xiaopeng/musicradio/player/n;->a:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/xiaopeng/musicradio/player/m;->a(IFF)V

    return-void
.end method

.method public start()V
    .locals 2

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/player/n;->d:Z

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/n;->b:Lcom/xiaopeng/musicradio/player/m;

    iget v1, p0, Lcom/xiaopeng/musicradio/player/n;->a:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/player/m;->a(I)V

    return-void
.end method

.method public startSeek()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/n;->b:Lcom/xiaopeng/musicradio/player/m;

    iget v1, p0, Lcom/xiaopeng/musicradio/player/n;->a:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/player/m;->c(I)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/n;->b:Lcom/xiaopeng/musicradio/player/m;

    iget v1, p0, Lcom/xiaopeng/musicradio/player/n;->a:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/player/m;->d(I)V

    return-void
.end method
