.class public Lcom/xiaopeng/commonfunc/model/test/LoopbackTest;
.super Ljava/lang/Object;
.source "LoopbackTest.java"


# instance fields
.field private final PARAMETER:Ljava/lang/String;

.field private audioManager:Landroid/media/AudioManager;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "mic2spklb"

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/LoopbackTest;->PARAMETER:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/LoopbackTest;->context:Landroid/content/Context;

    .line 18
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/LoopbackTest;->audioManager:Landroid/media/AudioManager;

    .line 19
    return-void
.end method


# virtual methods
.method public startLoopAudio()V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/LoopbackTest;->audioManager:Landroid/media/AudioManager;

    const-string v1, "mic2spklb=on"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public stopLoopAudio()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/LoopbackTest;->audioManager:Landroid/media/AudioManager;

    const-string v1, "mic2spklb=off"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 35
    return-void
.end method
