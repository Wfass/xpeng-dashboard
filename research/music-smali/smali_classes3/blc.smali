.class public Lblc;
.super Ljava/lang/Object;
.source "InterfaceTransfer.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/player/l;


# instance fields
.field private a:I

.field private b:Lcom/xiaopeng/musicradio/player/c;


# direct methods
.method public constructor <init>(ILcom/xiaopeng/musicradio/player/c;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lblc;->a:I

    .line 21
    iput-object p2, p0, Lblc;->b:Lcom/xiaopeng/musicradio/player/c;

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/player/c;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lblc;->b:Lcom/xiaopeng/musicradio/player/c;

    return-void
.end method

.method public loadingChange(Ljava/lang/String;Z)V
    .locals 2

    .line 60
    :try_start_0
    iget-object v0, p0, Lblc;->b:Lcom/xiaopeng/musicradio/player/c;

    iget v1, p0, Lblc;->a:I

    invoke-interface {v0, v1, p1, p2}, Lcom/xiaopeng/musicradio/player/c;->a(ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "InterfaceTransfer"

    const-string v0, "loadingChange: "

    .line 62
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onAudioInputFormatChanged(Ljava/lang/String;I)V
    .locals 2

    .line 107
    :try_start_0
    iget-object v0, p0, Lblc;->b:Lcom/xiaopeng/musicradio/player/c;

    iget v1, p0, Lblc;->a:I

    invoke-interface {v0, v1, p1, p2}, Lcom/xiaopeng/musicradio/player/c;->d(ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "InterfaceTransfer"

    const-string v0, "onSetData: "

    .line 109
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onAudioSessionId(Ljava/lang/String;I)V
    .locals 2

    .line 98
    :try_start_0
    iget-object v0, p0, Lblc;->b:Lcom/xiaopeng/musicradio/player/c;

    iget v1, p0, Lblc;->a:I

    invoke-interface {v0, v1, p1, p2}, Lcom/xiaopeng/musicradio/player/c;->c(ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "InterfaceTransfer"

    const-string v0, "onSetData: "

    .line 100
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onDownloaded(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDownloaded: key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InterfaceTransfer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :try_start_0
    iget-object v2, p0, Lblc;->b:Lcom/xiaopeng/musicradio/player/c;

    iget v3, p0, Lblc;->a:I

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-interface/range {v2 .. v7}, Lcom/xiaopeng/musicradio/player/c;->a(ILjava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "onDownloaded: "

    .line 81
    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onPlayError(Ljava/lang/String;I)V
    .locals 4

    const-string v0, "onPlayError: "

    const-string v1, "InterfaceTransfer"

    .line 40
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :try_start_0
    iget-object v2, p0, Lblc;->b:Lcom/xiaopeng/musicradio/player/c;

    iget v3, p0, Lblc;->a:I

    invoke-interface {v2, v3, p1, p2}, Lcom/xiaopeng/musicradio/player/c;->b(ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 44
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onPlayPosition(Ljava/lang/String;IIZ)V
    .locals 6

    .line 51
    :try_start_0
    iget-object v0, p0, Lblc;->b:Lcom/xiaopeng/musicradio/player/c;

    iget v1, p0, Lblc;->a:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/xiaopeng/musicradio/player/c;->a(ILjava/lang/String;IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "InterfaceTransfer"

    const-string p3, "onPlayPosition: "

    .line 53
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onSetData(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "InterfaceTransfer"

    const-string v1, "setData: "

    .line 87
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :try_start_0
    iget-object v1, p0, Lblc;->b:Lcom/xiaopeng/musicradio/player/c;

    iget v2, p0, Lblc;->a:I

    invoke-interface {v1, v2, p1, p2}, Lcom/xiaopeng/musicradio/player/c;->a(ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "onSetData: "

    .line 91
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onTimeLineChange(Ljava/lang/String;)V
    .locals 2

    .line 69
    :try_start_0
    iget-object v0, p0, Lblc;->b:Lcom/xiaopeng/musicradio/player/c;

    iget v1, p0, Lblc;->a:I

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/musicradio/player/c;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "InterfaceTransfer"

    const-string v1, "onTimeLineChange: "

    .line 71
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public playState(Ljava/lang/String;I)V
    .locals 4

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " interface = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lblc;->b:Lcom/xiaopeng/musicradio/player/c;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "InterfaceTransfer"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :try_start_0
    iget-object v0, p0, Lblc;->b:Lcom/xiaopeng/musicradio/player/c;

    iget v3, p0, Lblc;->a:I

    invoke-interface {v0, v3, p1, p2}, Lcom/xiaopeng/musicradio/player/c;->a(ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 34
    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
