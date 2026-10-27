.class public Lcom/thunder/voiceinterface/VoiceServiceManager;
.super Ljava/lang/Object;
.source "VoiceServiceManager.java"


# static fields
.field private static volatile INSTANCE:Lcom/thunder/voiceinterface/VoiceServiceManager;


# instance fields
.field private listener:Lcom/thunder/voiceinterface/OnVoiceBindListener;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mVoiceServer:Lcom/thunder/voiceinterface/IVoiceInterface;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Lcom/thunder/voiceinterface/VoiceServiceManager$1;

    invoke-direct {v0, p0}, Lcom/thunder/voiceinterface/VoiceServiceManager$1;-><init>(Lcom/thunder/voiceinterface/VoiceServiceManager;)V

    iput-object v0, p0, Lcom/thunder/voiceinterface/VoiceServiceManager;->mConnection:Landroid/content/ServiceConnection;

    .line 232
    return-void
.end method

.method static synthetic access$002(Lcom/thunder/voiceinterface/VoiceServiceManager;Lcom/thunder/voiceinterface/IVoiceInterface;)Lcom/thunder/voiceinterface/IVoiceInterface;
    .locals 0
    .param p0, "x0"    # Lcom/thunder/voiceinterface/VoiceServiceManager;
    .param p1, "x1"    # Lcom/thunder/voiceinterface/IVoiceInterface;

    .line 16
    iput-object p1, p0, Lcom/thunder/voiceinterface/VoiceServiceManager;->mVoiceServer:Lcom/thunder/voiceinterface/IVoiceInterface;

    return-object p1
.end method

.method static synthetic access$100(Lcom/thunder/voiceinterface/VoiceServiceManager;)Lcom/thunder/voiceinterface/OnVoiceBindListener;
    .locals 1
    .param p0, "x0"    # Lcom/thunder/voiceinterface/VoiceServiceManager;

    .line 16
    iget-object v0, p0, Lcom/thunder/voiceinterface/VoiceServiceManager;->listener:Lcom/thunder/voiceinterface/OnVoiceBindListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/thunder/voiceinterface/VoiceServiceManager;Lcom/thunder/voiceinterface/OnVoiceBindListener;)Lcom/thunder/voiceinterface/OnVoiceBindListener;
    .locals 0
    .param p0, "x0"    # Lcom/thunder/voiceinterface/VoiceServiceManager;
    .param p1, "x1"    # Lcom/thunder/voiceinterface/OnVoiceBindListener;

    .line 16
    iput-object p1, p0, Lcom/thunder/voiceinterface/VoiceServiceManager;->listener:Lcom/thunder/voiceinterface/OnVoiceBindListener;

    return-object p1
.end method

.method public static getInstance()Lcom/thunder/voiceinterface/VoiceServiceManager;
    .locals 2

    .line 235
    sget-object v0, Lcom/thunder/voiceinterface/VoiceServiceManager;->INSTANCE:Lcom/thunder/voiceinterface/VoiceServiceManager;

    if-nez v0, :cond_1

    .line 236
    const-class v0, Lcom/thunder/voiceinterface/VoiceServiceManager;

    monitor-enter v0

    .line 237
    :try_start_0
    sget-object v1, Lcom/thunder/voiceinterface/VoiceServiceManager;->INSTANCE:Lcom/thunder/voiceinterface/VoiceServiceManager;

    if-nez v1, :cond_0

    .line 238
    new-instance v1, Lcom/thunder/voiceinterface/VoiceServiceManager;

    invoke-direct {v1}, Lcom/thunder/voiceinterface/VoiceServiceManager;-><init>()V

    sput-object v1, Lcom/thunder/voiceinterface/VoiceServiceManager;->INSTANCE:Lcom/thunder/voiceinterface/VoiceServiceManager;

    .line 240
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 242
    :cond_1
    :goto_0
    sget-object v0, Lcom/thunder/voiceinterface/VoiceServiceManager;->INSTANCE:Lcom/thunder/voiceinterface/VoiceServiceManager;

    return-object v0
.end method


# virtual methods
.method public addSongOrdered(Ljava/lang/String;)V
    .locals 1
    .param p1, "songName"    # Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/thunder/voiceinterface/VoiceServiceManager;->mVoiceServer:Lcom/thunder/voiceinterface/IVoiceInterface;

    if-eqz v0, :cond_0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/thunder/voiceinterface/VoiceServiceManager;->mVoiceServer:Lcom/thunder/voiceinterface/IVoiceInterface;

    invoke-interface {v0, p1}, Lcom/thunder/voiceinterface/IVoiceInterface;->addSongOrdered(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 99
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public bindServer(Landroid/content/Context;Lcom/thunder/voiceinterface/OnVoiceBindListener;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/thunder/voiceinterface/OnVoiceBindListener;

    .line 202
    iput-object p2, p0, Lcom/thunder/voiceinterface/VoiceServiceManager;->listener:Lcom/thunder/voiceinterface/OnVoiceBindListener;

    .line 203
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 204
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.thunder.carplay"

    const-string v2, "com.thunder.voice_service.VoiceService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    iget-object v1, p0, Lcom/thunder/voiceinterface/VoiceServiceManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 206
    .local v1, "isBind":Z
    const-string v2, "BindService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isBind = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void
.end method

.method public exitApplication()V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/thunder/voiceinterface/VoiceServiceManager;->mVoiceServer:Lcom/thunder/voiceinterface/IVoiceInterface;

    if-eqz v0, :cond_0

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/thunder/voiceinterface/VoiceServiceManager;->mVoiceServer:Lcom/thunder/voiceinterface/IVoiceInterface;

    invoke-interface {v0}, Lcom/thunder/voiceinterface/IVoiceInterface;->exitApplication()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 33
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .line 224
    monitor-enter p0

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/thunder/voiceinterface/VoiceServiceManager;->mVoiceServer:Lcom/thunder/voiceinterface/IVoiceInterface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public nextPage()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/thunder/voiceinterface/VoiceServiceManager;->mVoiceServer:Lcom/thunder/voiceinterface/IVoiceInterface;

    if-eqz v0, :cond_0

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/thunder/voiceinterface/VoiceServiceManager;->mVoiceServer:Lcom/thunder/voiceinterface/IVoiceInterface;

    invoke-interface {v0}, Lcom/thunder/voiceinterface/IVoiceInterface;->nextPage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 72
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public nextSong()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/thunder/voiceinterface/VoiceServiceManager;->mVoiceServer:Lcom/thunder/voiceinterface/IVoiceInterface;

    if-eqz v0, :cond_0

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/thunder/voiceinterface/VoiceServiceManager;->mVoiceServer:Lcom/thunder/voiceinterface/IVoiceInterface;

    invoke-interface {v0}, Lcom/thunder/voiceinterface/IVoiceInterface;->nextSong()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 139
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public openAtmosphere(I)V
    .locals 1
    .param p1, "type"    # I

    .line 172
    iget-object v0, p0, Lcom/thunder/voiceinterface/VoiceServiceManager;->mVoiceServer:Lcom/thunder/voiceinterface/IVoiceInterface;

    if-eqz v0, :cond_0

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/thunder/voiceinterface/VoiceServiceManager;->mVoiceServer:Lcom/thunder/voiceinterface/IVoiceInterface;

    invoke-interface {v0, p1}, Lcom/thunder/voiceinterface/IVoiceInterface;->openAtmosphere(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 179
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public originalSinging(Z)V
    .locals 1
    .param p1, "isOpen"    # Z

    .line 119
    iget-object v0, p0, Lcom/thunder/voiceinterface/VoiceServiceManager;->mVoiceServer:Lcom/thunder/voiceinterface/IVoiceInterface;

    if-eqz v0, :cond_0

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/thunder/voiceinterface/VoiceServiceManager;->mVoiceServer:Lcom/thunder/voiceinterface/IVoiceInterface;

    invoke-interface {v0, p1}, Lcom/thunder/voiceinterface/IVoiceInterface;->originalSinging(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 126
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public playOrPause(Z)V
    .locals 1
    .param p1, "isPlay"    # Z

    .line 145
    iget-object v0, p0, Lcom/thunder/voiceinterface/VoiceServiceManager;->mVoiceServer:Lcom/thunder/voiceinterface/IVoiceInterface;

    if-eqz v0, :cond_0

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/thunder/voiceinterface/VoiceServiceManager;->mVoiceServer:Lcom/thunder/voiceinterface/IVoiceInterface;

    invoke-interface {v0, p1}, Lcom/thunder/voiceinterface/IVoiceInterface;->playOrPause(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 152
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public previousPage()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/thunder/voiceinterface/VoiceServiceManager;->mVoiceServer:Lcom/thunder/voiceinterface/IVoiceInterface;

    if-eqz v0, :cond_0

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/thunder/voiceinterface/VoiceServiceManager;->mVoiceServer:Lcom/thunder/voiceinterface/IVoiceInterface;

    invoke-interface {v0}, Lcom/thunder/voiceinterface/IVoiceInterface;->previousPage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 59
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public replay()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/thunder/voiceinterface/VoiceServiceManager;->mVoiceServer:Lcom/thunder/voiceinterface/IVoiceInterface;

    if-eqz v0, :cond_0

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/thunder/voiceinterface/VoiceServiceManager;->mVoiceServer:Lcom/thunder/voiceinterface/IVoiceInterface;

    invoke-interface {v0}, Lcom/thunder/voiceinterface/IVoiceInterface;->replay()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 165
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public scrollTop()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/thunder/voiceinterface/VoiceServiceManager;->mVoiceServer:Lcom/thunder/voiceinterface/IVoiceInterface;

    if-eqz v0, :cond_0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/thunder/voiceinterface/VoiceServiceManager;->mVoiceServer:Lcom/thunder/voiceinterface/IVoiceInterface;

    invoke-interface {v0}, Lcom/thunder/voiceinterface/IVoiceInterface;->scrollTop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 85
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public searchSong(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "songName"    # Ljava/lang/String;
    .param p2, "singerName"    # Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/thunder/voiceinterface/VoiceServiceManager;->mVoiceServer:Lcom/thunder/voiceinterface/IVoiceInterface;

    if-eqz v0, :cond_0

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/thunder/voiceinterface/VoiceServiceManager;->mVoiceServer:Lcom/thunder/voiceinterface/IVoiceInterface;

    invoke-interface {v0, p1, p2}, Lcom/thunder/voiceinterface/IVoiceInterface;->searchSong(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 46
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public singRightNow(Ljava/lang/String;)V
    .locals 1
    .param p1, "songName"    # Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/thunder/voiceinterface/VoiceServiceManager;->mVoiceServer:Lcom/thunder/voiceinterface/IVoiceInterface;

    if-eqz v0, :cond_0

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/thunder/voiceinterface/VoiceServiceManager;->mVoiceServer:Lcom/thunder/voiceinterface/IVoiceInterface;

    invoke-interface {v0, p1}, Lcom/thunder/voiceinterface/IVoiceInterface;->singRightNow(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 113
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public unBindServer(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 213
    iget-object v0, p0, Lcom/thunder/voiceinterface/VoiceServiceManager;->mVoiceServer:Lcom/thunder/voiceinterface/IVoiceInterface;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/thunder/voiceinterface/VoiceServiceManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 216
    :cond_0
    return-void
.end method
