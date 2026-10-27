.class public Lcom/xiaopeng/musicradio/bean/config/PerformanceConfigBean;
.super Ljava/lang/Object;
.source "PerformanceConfigBean.java"


# instance fields
.field private playerSupportStaticBackground:Z

.field private playerSupportStaticCover:Z

.field private playerSupportStaticTitle:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/config/PerformanceConfigBean;->playerSupportStaticBackground:Z

    .line 7
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/config/PerformanceConfigBean;->playerSupportStaticTitle:Z

    .line 9
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/config/PerformanceConfigBean;->playerSupportStaticCover:Z

    return-void
.end method


# virtual methods
.method public isPlayerSupportStaticBackground()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/config/PerformanceConfigBean;->playerSupportStaticBackground:Z

    return v0
.end method

.method public isPlayerSupportStaticCover()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/config/PerformanceConfigBean;->playerSupportStaticCover:Z

    return v0
.end method

.method public isPlayerSupportStaticTitle()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/config/PerformanceConfigBean;->playerSupportStaticTitle:Z

    return v0
.end method

.method public setPlayerSupportStaticBackground(Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/config/PerformanceConfigBean;->playerSupportStaticBackground:Z

    return-void
.end method

.method public setPlayerSupportStaticCover(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/config/PerformanceConfigBean;->playerSupportStaticCover:Z

    return-void
.end method

.method public setPlayerSupportStaticTitle(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/config/PerformanceConfigBean;->playerSupportStaticTitle:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PerformanceConfigBean{playerSupportStaticBackground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/config/PerformanceConfigBean;->playerSupportStaticBackground:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", playerSupportStaticTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/config/PerformanceConfigBean;->playerSupportStaticTitle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", playerSupportStaticCover="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/config/PerformanceConfigBean;->playerSupportStaticCover:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
