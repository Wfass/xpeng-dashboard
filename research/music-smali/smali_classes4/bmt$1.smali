.class Lbmt$1;
.super Ljava/lang/Object;
.source "ProgramModel.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/player/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbmt;
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

    .line 125
    iput-object p1, p0, Lbmt$1;->a:Lbmt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayError\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgramModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lbmt$1;->a:Lbmt;

    invoke-static {v0}, Lbmt;->b(Lbmt;)Laqu;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Laqu;->a(ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/16 p2, 0xa

    if-le p1, p2, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 151
    iget-object p1, p0, Lbmt$1;->a:Lbmt;

    invoke-virtual {p1}, Lbmt;->pauseByLogic()V

    .line 152
    iget-object p1, p0, Lbmt$1;->a:Lbmt;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lbmt;->a(Z)V

    .line 154
    iget-object p1, p0, Lbmt$1;->a:Lbmt;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/by;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lbmt;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_2
    iget-object p1, p0, Lbmt$1;->a:Lbmt;

    sget-object p2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v0, Lbue$a;->tip_music_play_error_stop:I

    invoke-virtual {p2, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lbmt;->b(Ljava/lang/String;)V

    .line 157
    iget-object p1, p0, Lbmt$1;->a:Lbmt;

    invoke-virtual {p1}, Lbmt;->pauseByLogic()V

    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public onAudioInputFormatChanged(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onAudioSeesionId(I)V
    .locals 1

    .line 208
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$g;

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$g;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public onDownloaded(Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public onPlayPosition(IIZ)V
    .locals 4

    if-nez p1, :cond_0

    .line 164
    iget-object v0, p0, Lbmt$1;->a:Lbmt;

    invoke-static {v0}, Lbmt;->c(Lbmt;)V

    .line 166
    :cond_0
    iget-object v0, p0, Lbmt$1;->a:Lbmt;

    invoke-static {v0, p1}, Lbmt;->a(Lbmt;I)I

    .line 168
    rem-int/lit8 v0, p1, 0x1e

    if-eqz p1, :cond_1

    if-ltz v0, :cond_1

    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lbmt$1;->a:Lbmt;

    invoke-static {v2}, Lbmt;->d(Lbmt;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 172
    new-instance v0, Lbmt$1$1;

    invoke-direct {v0, p0}, Lbmt$1$1;-><init>(Lbmt$1;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    .line 181
    :cond_1
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;-><init>(IIIZ)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public onSetData(Landroid/os/Bundle;)V
    .locals 1

    .line 200
    new-instance v0, Lbkx;

    invoke-direct {v0}, Lbkx;-><init>()V

    invoke-virtual {v0, p1}, Lbkx;->a(Landroid/os/Bundle;)Lbkx$a;

    move-result-object p1

    .line 201
    instance-of v0, p1, Lbky;

    if-eqz v0, :cond_0

    .line 202
    invoke-interface {p1}, Lbkx$a;->b()V

    :cond_0
    return-void
.end method

.method public onTimeLineChange()V
    .locals 2

    .line 186
    iget-object v0, p0, Lbmt$1;->a:Lbmt;

    invoke-static {v0}, Lbmt;->c(Lbmt;)V

    .line 187
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$ae;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$ae;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public playState(I)V
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgramModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 136
    iget-object v0, p0, Lbmt$1;->a:Lbmt;

    invoke-virtual {v0, p1}, Lbmt;->b(I)V

    goto :goto_0

    .line 132
    :cond_0
    iget-object p1, p0, Lbmt$1;->a:Lbmt;

    invoke-static {p1}, Lbmt;->a(Lbmt;)V

    .line 133
    iget-object p1, p0, Lbmt$1;->a:Lbmt;

    invoke-virtual {p1}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/ba;->a(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)V

    :goto_0
    return-void
.end method
