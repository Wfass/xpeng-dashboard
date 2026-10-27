.class public Landroid/media/AudioFocus/AudioFocus;
.super Ljava/lang/Object;
.source "AudioFocus.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioFocus"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroid/media/AudioFocus/AudioFocus;->mAudioManager:Landroid/media/AudioManager;

    if-nez p1, :cond_0

    const-string p1, "AudioFocus"

    const-string v0, "contex is null"

    .line 16
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "audio"

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Landroid/media/AudioFocus/AudioFocus;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public abandonAudioFocusForCall()V
    .locals 1

    .line 29
    iget-object v0, p0, Landroid/media/AudioFocus/AudioFocus;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0}, Landroid/media/AudioManager;->abandonAudioFocusForCall()V

    :cond_0
    return-void
.end method

.method public requestAudioFocusForCall(II)V
    .locals 1

    .line 23
    iget-object v0, p0, Landroid/media/AudioFocus/AudioFocus;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0, p1, p2}, Landroid/media/AudioManager;->requestAudioFocusForCall(II)V

    :cond_0
    return-void
.end method
