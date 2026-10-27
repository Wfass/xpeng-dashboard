.class public Lcom/xiaopeng/devtools/model/c/a/h/b;
.super Ljava/lang/Object;
.source "SoundModel.java"

# interfaces
.implements Lcom/xiaopeng/devtools/model/c/a/h/a;


# instance fields
.field private mContext:Landroid/content/Context;

.field private tE:Lcom/xpeng/test/AudioTest;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/h/b;->mContext:Landroid/content/Context;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/c/a/h/b;->mContext:Landroid/content/Context;

    .line 31
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f0f0002

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/xpeng/test/AudioTest;

    iget-object v2, p0, Lcom/xiaopeng/devtools/model/c/a/h/b;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/xpeng/test/AudioTest;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/xiaopeng/devtools/model/c/a/h/b;->tE:Lcom/xpeng/test/AudioTest;

    .line 33
    return-void
.end method


# virtual methods
.method public cg(I)V
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/c/a/h/b;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/h/b;->tE:Lcom/xpeng/test/AudioTest;

    invoke-virtual {v0, p1}, Lcom/xpeng/test/AudioTest;->testTrack(Landroid/net/Uri;)V

    .line 90
    return-void
.end method

.method public destroy(I)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/h/b;->tE:Lcom/xpeng/test/AudioTest;

    invoke-virtual {v0, p1}, Lcom/xpeng/test/AudioTest;->destroy(I)V

    .line 100
    return-void
.end method

.method public gN()Ljava/lang/String;
    .locals 4

    .line 67
    const-string v0, "PATH_AUDIO_EXTERNAL_PA"

    invoke-static {v0}, Lcom/xiaopeng/a/a$c;->ee(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "   "

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/utils/g;->G(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    const-string v1, "SoundModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioPaStatus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    return-object v0
.end method

.method public getCurrentMediaVolume()I
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/h/b;->tE:Lcom/xpeng/test/AudioTest;

    invoke-virtual {v0}, Lcom/xpeng/test/AudioTest;->getCurrentMediaVolume()I

    move-result v0

    return v0
.end method

.method public getMediaMaxVolume()I
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/h/b;->tE:Lcom/xpeng/test/AudioTest;

    invoke-virtual {v0}, Lcom/xpeng/test/AudioTest;->getMediaMaxVolume()I

    move-result v0

    return v0
.end method

.method public onVolumeChanged(II)V
    .locals 3

    .line 81
    const-string v0, "SoundModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVolumeChanged progress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " minVol = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/h/b;->tE:Lcom/xpeng/test/AudioTest;

    invoke-virtual {v0, p1, p2}, Lcom/xpeng/test/AudioTest;->onVolumeChanged(II)V

    .line 83
    return-void
.end method
