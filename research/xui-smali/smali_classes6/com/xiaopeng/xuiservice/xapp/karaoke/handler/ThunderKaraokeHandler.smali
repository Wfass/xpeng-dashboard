.class public Lcom/xiaopeng/xuiservice/xapp/karaoke/handler/ThunderKaraokeHandler;
.super Ljava/lang/Object;
.source "ThunderKaraokeHandler.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/xapp/karaoke/handler/IKaraokeHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "ThunderKaraokeHandler"


# instance fields
.field private mServiceBindSuccess:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/karaoke/handler/ThunderKaraokeHandler;->mServiceBindSuccess:Z

    .line 13
    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 33
    const-string v0, "com.thunder.carplay"

    return-object v0
.end method

.method public searchSong(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "artist"    # Ljava/lang/String;
    .param p3, "song"    # Ljava/lang/String;

    .line 17
    invoke-static {}, Lcom/thunder/voiceinterface/VoiceServiceManager;->getInstance()Lcom/thunder/voiceinterface/VoiceServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thunder/voiceinterface/VoiceServiceManager;->isConnected()Z

    move-result v0

    .line 18
    .local v0, "isConnected":Z
    if-eqz v0, :cond_0

    .line 19
    invoke-static {}, Lcom/thunder/voiceinterface/VoiceServiceManager;->getInstance()Lcom/thunder/voiceinterface/VoiceServiceManager;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/thunder/voiceinterface/VoiceServiceManager;->searchSong(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :cond_0
    invoke-static {}, Lcom/thunder/voiceinterface/VoiceServiceManager;->getInstance()Lcom/thunder/voiceinterface/VoiceServiceManager;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/xuiservice/xapp/karaoke/handler/ThunderKaraokeHandler$1;

    invoke-direct {v3, p0, p2, p3}, Lcom/xiaopeng/xuiservice/xapp/karaoke/handler/ThunderKaraokeHandler$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/karaoke/handler/ThunderKaraokeHandler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/thunder/voiceinterface/VoiceServiceManager;->bindServer(Landroid/content/Context;Lcom/thunder/voiceinterface/OnVoiceBindListener;)V

    .line 29
    :goto_0
    return-void
.end method
