.class public Lcom/xiaopeng/musicradio/bean/music/DownState;
.super Ljava/lang/Object;
.source "DownState.java"


# static fields
.field public static final COMPLETE:I = 0x3

.field public static final LOADING:I = 0x0

.field public static final NONE:I = 0x4

.field public static final PAUSE:I = 0x1

.field public static final PLAY:I = 0x2


# instance fields
.field private downState:I

.field private isInstall:Z

.field private packageName:Ljava/lang/String;

.field private progress:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownState()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/DownState;->downState:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/DownState;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .line 42
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/DownState;->progress:F

    return v0
.end method

.method public isInstall()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/music/DownState;->isInstall:Z

    return v0
.end method

.method public setDownState(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/DownState;->downState:I

    return-void
.end method

.method public setInstall(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/music/DownState;->isInstall:Z

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/DownState;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setProgress(F)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/DownState;->progress:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownState{packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/music/DownState;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isInstall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/music/DownState;->isInstall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", downState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/music/DownState;->downState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/music/DownState;->progress:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
