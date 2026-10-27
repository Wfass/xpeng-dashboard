.class Landroid/support/v4/media/MediaSession2ImplBase;
.super Ljava/lang/Object;
.source "MediaSession2ImplBase.java"

# interfaces
.implements Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaSession2ImplBase$MyPlaylistEventCallback;,
        Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback;,
        Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field static final TAG:Ljava/lang/String; = "MS2ImplBase"


# instance fields
.field private final mAudioFocusHandler:Landroid/support/v4/media/AudioFocusHandler;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mCallback:Landroid/support/v4/media/MediaSession2$SessionCallback;

.field private final mCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final mContext:Landroid/content/Context;

.field private mDsmHelper:Landroid/support/v4/media/MediaSession2$OnDataSourceMissingHelper;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mInstance:Landroid/support/v4/media/MediaSession2;

.field final mLock:Ljava/lang/Object;

.field private mPlaybackInfo:Landroid/support/v4/media/MediaController2$PlaybackInfo;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mPlayer:Landroid/support/v4/media/BaseMediaPlayer;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mPlayerEventCallback:Landroid/support/v4/media/BaseMediaPlayer$PlayerEventCallback;

.field private mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mPlaylistEventCallback:Landroid/support/v4/media/MediaPlaylistAgent$PlaylistEventCallback;

.field private final mSession2Stub:Landroid/support/v4/media/MediaSession2Stub;

.field private final mSessionActivity:Landroid/app/PendingIntent;

.field private final mSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

.field private final mSessionLegacyStub:Landroid/support/v4/media/MediaSessionLegacyStub;

.field private mSessionPlaylistAgent:Landroid/support/v4/media/SessionPlaylistAgentImplBase;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mSessionToken:Landroid/support/v4/media/SessionToken2;

.field private mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 67
    const-string v0, "MS2ImplBase"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/support/v4/media/MediaSession2;Landroid/content/Context;Ljava/lang/String;Landroid/support/v4/media/BaseMediaPlayer;Landroid/support/v4/media/MediaPlaylistAgent;Landroid/support/v4/media/VolumeProviderCompat;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroid/support/v4/media/MediaSession2$SessionCallback;)V
    .locals 13

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p7

    .line 103
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    .line 104
    iput-object v1, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mContext:Landroid/content/Context;

    .line 105
    move-object v2, p1

    iput-object v2, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mInstance:Landroid/support/v4/media/MediaSession2;

    .line 106
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "MediaController2_Thread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mHandlerThread:Landroid/os/HandlerThread;

    .line 107
    iget-object v2, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 108
    new-instance v2, Landroid/os/Handler;

    iget-object v3, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mHandler:Landroid/os/Handler;

    .line 110
    new-instance v2, Landroid/support/v4/media/MediaSession2Stub;

    invoke-direct {v2, v0}, Landroid/support/v4/media/MediaSession2Stub;-><init>(Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;)V

    iput-object v2, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mSession2Stub:Landroid/support/v4/media/MediaSession2Stub;

    .line 111
    new-instance v2, Landroid/support/v4/media/MediaSessionLegacyStub;

    invoke-direct {v2, v0}, Landroid/support/v4/media/MediaSessionLegacyStub;-><init>(Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;)V

    iput-object v2, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionLegacyStub:Landroid/support/v4/media/MediaSessionLegacyStub;

    .line 112
    iput-object v10, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionActivity:Landroid/app/PendingIntent;

    .line 114
    move-object/from16 v2, p9

    iput-object v2, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mCallback:Landroid/support/v4/media/MediaSession2$SessionCallback;

    .line 115
    move-object/from16 v2, p8

    iput-object v2, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 116
    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mAudioManager:Landroid/media/AudioManager;

    .line 118
    new-instance v2, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Landroid/support/v4/media/MediaSession2ImplBase$MyPlayerEventCallback;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/MediaSession2ImplBase$1;)V

    iput-object v2, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayerEventCallback:Landroid/support/v4/media/BaseMediaPlayer$PlayerEventCallback;

    .line 119
    new-instance v2, Landroid/support/v4/media/MediaSession2ImplBase$MyPlaylistEventCallback;

    invoke-direct {v2, v0, v3}, Landroid/support/v4/media/MediaSession2ImplBase$MyPlaylistEventCallback;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/MediaSession2ImplBase$1;)V

    iput-object v2, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistEventCallback:Landroid/support/v4/media/MediaPlaylistAgent$PlaylistEventCallback;

    .line 120
    new-instance v2, Landroid/support/v4/media/AudioFocusHandler;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaSession2ImplBase;->getInstance()Landroid/support/v4/media/MediaSession2;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/support/v4/media/AudioFocusHandler;-><init>(Landroid/content/Context;Landroid/support/v4/media/MediaSession2;)V

    iput-object v2, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mAudioFocusHandler:Landroid/support/v4/media/AudioFocusHandler;

    .line 123
    const-string v2, "android.media.MediaLibraryService2"

    invoke-static {v1, v2, v9}, Landroid/support/v4/media/MediaSession2ImplBase;->getServiceName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 124
    const-string v2, "android.media.MediaSessionService2"

    invoke-static {v1, v2, v9}, Landroid/support/v4/media/MediaSession2ImplBase;->getServiceName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 125
    if-eqz v7, :cond_1

    if-nez v6, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ambiguous session type. Multiple session services define the same id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    .line 129
    new-instance v11, Landroid/support/v4/media/SessionToken2;

    new-instance v12, Landroid/support/v4/media/SessionToken2ImplBase;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/4 v4, 0x2

    .line 130
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v8, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mSession2Stub:Landroid/support/v4/media/MediaSession2Stub;

    move-object v2, v12

    move-object v7, v9

    invoke-direct/range {v2 .. v8}, Landroid/support/v4/media/SessionToken2ImplBase;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/media/IMediaSession2;)V

    invoke-direct {v11, v12}, Landroid/support/v4/media/SessionToken2;-><init>(Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;)V

    iput-object v11, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionToken:Landroid/support/v4/media/SessionToken2;

    goto :goto_1

    .line 132
    :cond_2
    if-eqz v7, :cond_3

    .line 133
    new-instance v11, Landroid/support/v4/media/SessionToken2;

    new-instance v12, Landroid/support/v4/media/SessionToken2ImplBase;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/4 v4, 0x1

    .line 134
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v8, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mSession2Stub:Landroid/support/v4/media/MediaSession2Stub;

    move-object v2, v12

    move-object v6, v7

    move-object v7, v9

    invoke-direct/range {v2 .. v8}, Landroid/support/v4/media/SessionToken2ImplBase;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/media/IMediaSession2;)V

    invoke-direct {v11, v12}, Landroid/support/v4/media/SessionToken2;-><init>(Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;)V

    iput-object v11, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionToken:Landroid/support/v4/media/SessionToken2;

    goto :goto_1

    .line 137
    :cond_3
    new-instance v11, Landroid/support/v4/media/SessionToken2;

    new-instance v12, Landroid/support/v4/media/SessionToken2ImplBase;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/4 v4, 0x0

    .line 138
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v8, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mSession2Stub:Landroid/support/v4/media/MediaSession2Stub;

    move-object v2, v12

    move-object v7, v9

    invoke-direct/range {v2 .. v8}, Landroid/support/v4/media/SessionToken2ImplBase;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/media/IMediaSession2;)V

    invoke-direct {v11, v12}, Landroid/support/v4/media/SessionToken2;-><init>(Landroid/support/v4/media/SessionToken2$SupportLibraryImpl;)V

    iput-object v11, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionToken:Landroid/support/v4/media/SessionToken2;

    .line 140
    :goto_1
    new-instance v2, Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v3, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionToken:Landroid/support/v4/media/SessionToken2;

    invoke-direct {v2, v1, v9, v3}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/support/v4/media/SessionToken2;)V

    iput-object v2, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 141
    iget-object v1, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v2, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionLegacyStub:Landroid/support/v4/media/MediaSessionLegacyStub;

    iget-object v3, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Handler;)V

    .line 142
    iget-object v1, v0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1, v10}, Landroid/support/v4/media/session/MediaSessionCompat;->setSessionActivity(Landroid/app/PendingIntent;)V

    .line 143
    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/media/MediaSession2ImplBase;->updatePlayer(Landroid/support/v4/media/BaseMediaPlayer;Landroid/support/v4/media/MediaPlaylistAgent;Landroid/support/v4/media/VolumeProviderCompat;)V

    .line 144
    return-void
.end method

.method static synthetic access$200(Landroid/support/v4/media/MediaSession2ImplBase;)Landroid/support/v4/media/MediaSession2$SessionCallback;
    .locals 0

    .line 65
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mCallback:Landroid/support/v4/media/MediaSession2$SessionCallback;

    return-object p0
.end method

.method static synthetic access$400(Landroid/support/v4/media/MediaSession2ImplBase;)Landroid/support/v4/media/AudioFocusHandler;
    .locals 0

    .line 65
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mAudioFocusHandler:Landroid/support/v4/media/AudioFocusHandler;

    return-object p0
.end method

.method static synthetic access$500(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/MediaPlaylistAgent;Ljava/util/List;Landroid/support/v4/media/MediaMetadata2;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyPlaylistChangedOnExecutor(Landroid/support/v4/media/MediaPlaylistAgent;Ljava/util/List;Landroid/support/v4/media/MediaMetadata2;)V

    return-void
.end method

.method static synthetic access$600(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/MediaPlaylistAgent;Landroid/support/v4/media/MediaMetadata2;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyPlaylistMetadataChangedOnExecutor(Landroid/support/v4/media/MediaPlaylistAgent;Landroid/support/v4/media/MediaMetadata2;)V

    return-void
.end method

.method static synthetic access$700(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/MediaPlaylistAgent;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyRepeatModeChangedOnExecutor(Landroid/support/v4/media/MediaPlaylistAgent;I)V

    return-void
.end method

.method static synthetic access$800(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/MediaPlaylistAgent;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyShuffleModeChangedOnExecutor(Landroid/support/v4/media/MediaPlaylistAgent;I)V

    return-void
.end method

.method private createPlaybackInfo(Landroid/support/v4/media/VolumeProviderCompat;Landroid/support/v4/media/AudioAttributesCompat;)Landroid/support/v4/media/MediaController2$PlaybackInfo;
    .locals 4

    .line 223
    const/4 v0, 0x2

    if-nez p1, :cond_1

    .line 224
    invoke-direct {p0, p2}, Landroid/support/v4/media/MediaSession2ImplBase;->getLegacyStreamType(Landroid/support/v4/media/AudioAttributesCompat;)I

    move-result p1

    .line 225
    nop

    .line 226
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isVolumeFixed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    const/4 v0, 0x0

    .line 229
    :cond_0
    const/4 v1, 0x1

    iget-object v2, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mAudioManager:Landroid/media/AudioManager;

    .line 233
    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    iget-object v3, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mAudioManager:Landroid/media/AudioManager;

    .line 234
    invoke-virtual {v3, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    .line 229
    invoke-static {v1, p2, v0, v2, p1}, Landroid/support/v4/media/MediaController2$PlaybackInfo;->createPlaybackInfo(ILandroid/support/v4/media/AudioAttributesCompat;III)Landroid/support/v4/media/MediaController2$PlaybackInfo;

    move-result-object p1

    .line 235
    goto :goto_0

    .line 236
    :cond_1
    nop

    .line 239
    invoke-virtual {p1}, Landroid/support/v4/media/VolumeProviderCompat;->getVolumeControl()I

    move-result v1

    .line 240
    invoke-virtual {p1}, Landroid/support/v4/media/VolumeProviderCompat;->getMaxVolume()I

    move-result v2

    .line 241
    invoke-virtual {p1}, Landroid/support/v4/media/VolumeProviderCompat;->getCurrentVolume()I

    move-result p1

    .line 236
    invoke-static {v0, p2, v1, v2, p1}, Landroid/support/v4/media/MediaController2$PlaybackInfo;->createPlaybackInfo(ILandroid/support/v4/media/AudioAttributesCompat;III)Landroid/support/v4/media/MediaController2$PlaybackInfo;

    move-result-object p1

    .line 243
    :goto_0
    return-object p1
.end method

.method private getLegacyStreamType(Landroid/support/v4/media/AudioAttributesCompat;)I
    .locals 2
    .param p1    # Landroid/support/v4/media/AudioAttributesCompat;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 248
    const/4 v0, 0x3

    if-nez p1, :cond_0

    .line 249
    goto :goto_0

    .line 251
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/AudioAttributesCompat;->getLegacyStreamType()I

    move-result p1

    .line 252
    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_1

    .line 257
    goto :goto_0

    .line 260
    :cond_1
    move v0, p1

    :goto_0
    return v0
.end method

.method private static getServiceName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 922
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 923
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 924
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 925
    const/16 p0, 0x80

    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 927
    nop

    .line 928
    const/4 p1, 0x0

    if-eqz p0, :cond_3

    .line 929
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 930
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    invoke-static {v1}, Landroid/support/v4/media/SessionToken2;->getSessionId(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v1

    .line 931
    if-eqz v1, :cond_2

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 932
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_0

    .line 933
    goto :goto_1

    .line 935
    :cond_0
    if-nez p1, :cond_1

    .line 939
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    goto :goto_1

    .line 936
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ambiguous session type. Multiple session services define the same id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 929
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 943
    :cond_3
    return-object p1
.end method

.method private notifyAgentUpdatedNotLocked(Landroid/support/v4/media/MediaPlaylistAgent;)V
    .locals 2

    .line 949
    invoke-virtual {p1}, Landroid/support/v4/media/MediaPlaylistAgent;->getPlaylist()Ljava/util/List;

    move-result-object v0

    .line 950
    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2ImplBase;->getPlaylist()Ljava/util/List;

    move-result-object v1

    .line 951
    invoke-static {v0, v1}, Landroid/support/v4/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 952
    new-instance v0, Landroid/support/v4/media/MediaSession2ImplBase$9;

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/MediaSession2ImplBase$9;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToAllControllers(Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    goto :goto_0

    .line 960
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/MediaPlaylistAgent;->getPlaylistMetadata()Landroid/support/v4/media/MediaMetadata2;

    move-result-object v0

    .line 961
    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2ImplBase;->getPlaylistMetadata()Landroid/support/v4/media/MediaMetadata2;

    move-result-object v1

    .line 962
    invoke-static {v0, v1}, Landroid/support/v4/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 963
    new-instance v0, Landroid/support/v4/media/MediaSession2ImplBase$10;

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/MediaSession2ImplBase$10;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/MediaMetadata2;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToAllControllers(Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    .line 971
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/media/MediaPlaylistAgent;->getCurrentMediaItem()Landroid/support/v4/media/MediaItem2;

    move-result-object v0

    .line 972
    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2ImplBase;->getCurrentMediaItem()Landroid/support/v4/media/MediaItem2;

    move-result-object v1

    .line 973
    invoke-static {v0, v1}, Landroid/support/v4/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 974
    new-instance v0, Landroid/support/v4/media/MediaSession2ImplBase$11;

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/MediaSession2ImplBase$11;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/MediaItem2;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToAllControllers(Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    .line 981
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2ImplBase;->getRepeatMode()I

    move-result v0

    .line 982
    invoke-virtual {p1}, Landroid/support/v4/media/MediaPlaylistAgent;->getRepeatMode()I

    move-result v1

    if-eq v1, v0, :cond_3

    .line 983
    new-instance v1, Landroid/support/v4/media/MediaSession2ImplBase$12;

    invoke-direct {v1, p0, v0}, Landroid/support/v4/media/MediaSession2ImplBase$12;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;I)V

    invoke-virtual {p0, v1}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToAllControllers(Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    .line 990
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2ImplBase;->getShuffleMode()I

    move-result v0

    .line 991
    invoke-virtual {p1}, Landroid/support/v4/media/MediaPlaylistAgent;->getShuffleMode()I

    move-result p1

    if-eq p1, v0, :cond_4

    .line 992
    new-instance p1, Landroid/support/v4/media/MediaSession2ImplBase$13;

    invoke-direct {p1, p0, v0}, Landroid/support/v4/media/MediaSession2ImplBase$13;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;I)V

    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToAllControllers(Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    .line 999
    :cond_4
    return-void
.end method

.method private notifyPlayerUpdatedNotLocked(Landroid/support/v4/media/BaseMediaPlayer;)V
    .locals 12

    .line 1004
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1005
    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2ImplBase;->getCurrentPosition()J

    move-result-wide v9

    .line 1006
    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2ImplBase;->getPlayerState()I

    move-result v6

    .line 1007
    new-instance v11, Landroid/support/v4/media/MediaSession2ImplBase$14;

    move-object v0, v11

    move-object v1, p0

    move-wide v2, v7

    move-wide v4, v9

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/media/MediaSession2ImplBase$14;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;JJI)V

    invoke-virtual {p0, v11}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToAllControllers(Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    .line 1013
    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2ImplBase;->getCurrentMediaItem()Landroid/support/v4/media/MediaItem2;

    move-result-object v2

    .line 1014
    if-eqz v2, :cond_0

    .line 1015
    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2ImplBase;->getBufferingState()I

    move-result v3

    .line 1016
    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2ImplBase;->getBufferedPosition()J

    move-result-wide v4

    .line 1017
    new-instance v6, Landroid/support/v4/media/MediaSession2ImplBase$15;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/MediaSession2ImplBase$15;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/MediaItem2;IJ)V

    invoke-virtual {p0, v6}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToAllControllers(Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    .line 1024
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2ImplBase;->getPlaybackSpeed()F

    move-result v6

    .line 1025
    invoke-virtual {p1}, Landroid/support/v4/media/BaseMediaPlayer;->getPlaybackSpeed()F

    move-result p1

    cmpl-float p1, v6, p1

    if-eqz p1, :cond_1

    .line 1026
    new-instance p1, Landroid/support/v4/media/MediaSession2ImplBase$16;

    move-object v0, p1

    move-object v1, p0

    move-wide v2, v7

    move-wide v4, v9

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/media/MediaSession2ImplBase$16;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;JJF)V

    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToAllControllers(Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    .line 1034
    :cond_1
    return-void
.end method

.method private notifyPlaylistChangedOnExecutor(Landroid/support/v4/media/MediaPlaylistAgent;Ljava/util/List;Landroid/support/v4/media/MediaMetadata2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/media/MediaPlaylistAgent;",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaItem2;",
            ">;",
            "Landroid/support/v4/media/MediaMetadata2;",
            ")V"
        }
    .end annotation

    .line 1038
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1039
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    if-eq p1, v1, :cond_0

    .line 1041
    monitor-exit v0

    return-void

    .line 1043
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1044
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mCallback:Landroid/support/v4/media/MediaSession2$SessionCallback;

    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mInstance:Landroid/support/v4/media/MediaSession2;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/support/v4/media/MediaSession2$SessionCallback;->onPlaylistChanged(Landroid/support/v4/media/MediaSession2;Landroid/support/v4/media/MediaPlaylistAgent;Ljava/util/List;Landroid/support/v4/media/MediaMetadata2;)V

    .line 1045
    new-instance p1, Landroid/support/v4/media/MediaSession2ImplBase$17;

    invoke-direct {p1, p0, p2, p3}, Landroid/support/v4/media/MediaSession2ImplBase$17;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;Ljava/util/List;Landroid/support/v4/media/MediaMetadata2;)V

    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToAllControllers(Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    .line 1051
    return-void

    .line 1043
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private notifyPlaylistMetadataChangedOnExecutor(Landroid/support/v4/media/MediaPlaylistAgent;Landroid/support/v4/media/MediaMetadata2;)V
    .locals 2

    .line 1055
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1056
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    if-eq p1, v1, :cond_0

    .line 1058
    monitor-exit v0

    return-void

    .line 1060
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1061
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mCallback:Landroid/support/v4/media/MediaSession2$SessionCallback;

    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mInstance:Landroid/support/v4/media/MediaSession2;

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/media/MediaSession2$SessionCallback;->onPlaylistMetadataChanged(Landroid/support/v4/media/MediaSession2;Landroid/support/v4/media/MediaPlaylistAgent;Landroid/support/v4/media/MediaMetadata2;)V

    .line 1062
    new-instance p1, Landroid/support/v4/media/MediaSession2ImplBase$18;

    invoke-direct {p1, p0, p2}, Landroid/support/v4/media/MediaSession2ImplBase$18;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/MediaMetadata2;)V

    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToAllControllers(Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    .line 1068
    return-void

    .line 1060
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private notifyRepeatModeChangedOnExecutor(Landroid/support/v4/media/MediaPlaylistAgent;I)V
    .locals 2

    .line 1072
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1073
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    if-eq p1, v1, :cond_0

    .line 1075
    monitor-exit v0

    return-void

    .line 1077
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1078
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mCallback:Landroid/support/v4/media/MediaSession2$SessionCallback;

    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mInstance:Landroid/support/v4/media/MediaSession2;

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/media/MediaSession2$SessionCallback;->onRepeatModeChanged(Landroid/support/v4/media/MediaSession2;Landroid/support/v4/media/MediaPlaylistAgent;I)V

    .line 1079
    new-instance p1, Landroid/support/v4/media/MediaSession2ImplBase$19;

    invoke-direct {p1, p0, p2}, Landroid/support/v4/media/MediaSession2ImplBase$19;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;I)V

    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToAllControllers(Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    .line 1085
    return-void

    .line 1077
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private notifyShuffleModeChangedOnExecutor(Landroid/support/v4/media/MediaPlaylistAgent;I)V
    .locals 2

    .line 1089
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1090
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    if-eq p1, v1, :cond_0

    .line 1092
    monitor-exit v0

    return-void

    .line 1094
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1095
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mCallback:Landroid/support/v4/media/MediaSession2$SessionCallback;

    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mInstance:Landroid/support/v4/media/MediaSession2;

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/media/MediaSession2$SessionCallback;->onShuffleModeChanged(Landroid/support/v4/media/MediaSession2;Landroid/support/v4/media/MediaPlaylistAgent;I)V

    .line 1096
    new-instance p1, Landroid/support/v4/media/MediaSession2ImplBase$20;

    invoke-direct {p1, p0, p2}, Landroid/support/v4/media/MediaSession2ImplBase$20;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;I)V

    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToAllControllers(Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    .line 1102
    return-void

    .line 1094
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public addPlaylistItem(ILandroid/support/v4/media/MediaItem2;)V
    .locals 2
    .param p2    # Landroid/support/v4/media/MediaItem2;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 703
    if-ltz p1, :cond_3

    .line 706
    if-eqz p2, :cond_2

    .line 710
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 711
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    .line 712
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 713
    if-eqz v1, :cond_0

    .line 714
    invoke-virtual {v1, p1, p2}, Landroid/support/v4/media/MediaPlaylistAgent;->addPlaylistItem(ILandroid/support/v4/media/MediaItem2;)V

    goto :goto_0

    .line 715
    :cond_0
    sget-boolean p1, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p1, :cond_1

    .line 716
    const-string p1, "MS2ImplBase"

    const-string p2, "API calls after the close()"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 718
    :cond_1
    :goto_0
    return-void

    .line 712
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 707
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "item shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 704
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index shouldn\'t be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clearOnDataSourceMissingHelper()V
    .locals 2

    .line 607
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 608
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mDsmHelper:Landroid/support/v4/media/MediaSession2$OnDataSourceMissingHelper;

    .line 609
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionPlaylistAgent:Landroid/support/v4/media/SessionPlaylistAgentImplBase;

    if-eqz v1, :cond_0

    .line 610
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionPlaylistAgent:Landroid/support/v4/media/SessionPlaylistAgentImplBase;

    invoke-virtual {v1}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->clearOnDataSourceMissingHelper()V

    .line 612
    :cond_0
    monitor-exit v0

    .line 613
    return-void

    .line 612
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 3

    .line 265
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    if-nez v1, :cond_0

    .line 267
    monitor-exit v0

    return-void

    .line 269
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mAudioFocusHandler:Landroid/support/v4/media/AudioFocusHandler;

    invoke-virtual {v1}, Landroid/support/v4/media/AudioFocusHandler;->close()V

    .line 270
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    iget-object v2, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayerEventCallback:Landroid/support/v4/media/BaseMediaPlayer$PlayerEventCallback;

    invoke-virtual {v1, v2}, Landroid/support/v4/media/BaseMediaPlayer;->unregisterPlayerEventCallback(Landroid/support/v4/media/BaseMediaPlayer$PlayerEventCallback;)V

    .line 271
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    .line 272
    iget-object v2, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaSessionCompat;->release()V

    .line 273
    new-instance v2, Landroid/support/v4/media/MediaSession2ImplBase$2;

    invoke-direct {v2, p0}, Landroid/support/v4/media/MediaSession2ImplBase$2;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;)V

    invoke-virtual {p0, v2}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToAllControllers(Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    .line 279
    iget-object v2, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 280
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 281
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_1

    .line 282
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_0

    .line 284
    :cond_1
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 287
    :cond_2
    :goto_0
    monitor-exit v0

    .line 288
    return-void

    .line 287
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAudioFocusHandler()Landroid/support/v4/media/AudioFocusHandler;
    .locals 1

    .line 871
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mAudioFocusHandler:Landroid/support/v4/media/AudioFocusHandler;

    return-object v0
.end method

.method public getBufferedPosition()J
    .locals 3

    .line 539
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 540
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    .line 541
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    if-eqz v1, :cond_0

    .line 543
    invoke-virtual {v1}, Landroid/support/v4/media/BaseMediaPlayer;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0

    .line 544
    :cond_0
    sget-boolean v0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 545
    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 547
    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0

    .line 541
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getBufferingState()I
    .locals 3

    .line 553
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 554
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    .line 555
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    if-eqz v1, :cond_0

    .line 557
    invoke-virtual {v1}, Landroid/support/v4/media/BaseMediaPlayer;->getBufferingState()I

    move-result v0

    return v0

    .line 558
    :cond_0
    sget-boolean v0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 559
    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 561
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 555
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getCallback()Landroid/support/v4/media/MediaSession2$SessionCallback;
    .locals 1

    .line 861
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mCallback:Landroid/support/v4/media/MediaSession2$SessionCallback;

    return-object v0
.end method

.method public getCallbackExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 856
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getConnectedControllers()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaSession2$ControllerInfo;",
            ">;"
        }
    .end annotation

    .line 318
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mSession2Stub:Landroid/support/v4/media/MediaSession2Stub;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaSession2Stub;->getConnectedControllers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 851
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentMediaItem()Landroid/support/v4/media/MediaItem2;
    .locals 3

    .line 758
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 759
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    .line 760
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 761
    if-eqz v1, :cond_0

    .line 762
    invoke-virtual {v1}, Landroid/support/v4/media/MediaPlaylistAgent;->getCurrentMediaItem()Landroid/support/v4/media/MediaItem2;

    move-result-object v0

    return-object v0

    .line 763
    :cond_0
    sget-boolean v0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 764
    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 766
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 760
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getCurrentPosition()J
    .locals 3

    .line 509
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 510
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    .line 511
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    if-eqz v1, :cond_0

    .line 513
    invoke-virtual {v1}, Landroid/support/v4/media/BaseMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0

    .line 514
    :cond_0
    sget-boolean v0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 515
    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 517
    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0

    .line 511
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getDuration()J
    .locals 3

    .line 523
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 524
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    .line 525
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    if-eqz v1, :cond_0

    .line 529
    invoke-virtual {v1}, Landroid/support/v4/media/BaseMediaPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0

    .line 530
    :cond_0
    sget-boolean v0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 531
    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 533
    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0

    .line 525
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getInstance()Landroid/support/v4/media/MediaSession2;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 841
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mInstance:Landroid/support/v4/media/MediaSession2;

    return-object v0
.end method

.method public getPlaybackInfo()Landroid/support/v4/media/MediaController2$PlaybackInfo;
    .locals 2

    .line 911
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 912
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaybackInfo:Landroid/support/v4/media/MediaController2$PlaybackInfo;

    monitor-exit v0

    return-object v1

    .line 913
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPlaybackSpeed()F
    .locals 3

    .line 567
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 568
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    .line 569
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    if-eqz v1, :cond_0

    .line 571
    invoke-virtual {v1}, Landroid/support/v4/media/BaseMediaPlayer;->getPlaybackSpeed()F

    move-result v0

    return v0

    .line 572
    :cond_0
    sget-boolean v0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 573
    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 575
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 569
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getPlaybackStateCompat()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 8

    .line 881
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 882
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2ImplBase;->getPlayerState()I

    move-result v1

    .line 883
    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2ImplBase;->getBufferingState()I

    move-result v2

    .line 882
    invoke-static {v1, v2}, Landroid/support/v4/media/MediaUtils2;->convertToPlaybackStateCompatState(II)I

    move-result v1

    .line 884
    const-wide/32 v2, 0x37ffff

    .line 901
    new-instance v4, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v4}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    .line 902
    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2ImplBase;->getCurrentPosition()J

    move-result-wide v5

    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2ImplBase;->getPlaybackSpeed()F

    move-result v7

    invoke-virtual {v4, v1, v5, v6, v7}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v1

    .line 903
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v1

    .line 904
    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2ImplBase;->getBufferedPosition()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setBufferedPosition(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v1

    .line 905
    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 906
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPlayer()Landroid/support/v4/media/BaseMediaPlayer;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 292
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 293
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    monitor-exit v0

    return-object v1

    .line 294
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPlayerState()I
    .locals 3

    .line 495
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 496
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    .line 497
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    if-eqz v1, :cond_0

    .line 499
    invoke-virtual {v1}, Landroid/support/v4/media/BaseMediaPlayer;->getPlayerState()I

    move-result v0

    return v0

    .line 500
    :cond_0
    sget-boolean v0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 501
    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 503
    :cond_1
    const/4 v0, 0x3

    return v0

    .line 497
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getPlaylist()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaItem2;",
            ">;"
        }
    .end annotation

    .line 618
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 619
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    .line 620
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    if-eqz v1, :cond_0

    .line 622
    invoke-virtual {v1}, Landroid/support/v4/media/MediaPlaylistAgent;->getPlaylist()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 623
    :cond_0
    sget-boolean v0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 624
    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 626
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 620
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getPlaylistAgent()Landroid/support/v4/media/MediaPlaylistAgent;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 299
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 300
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    monitor-exit v0

    return-object v1

    .line 301
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPlaylistMetadata()Landroid/support/v4/media/MediaMetadata2;
    .locals 3

    .line 690
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 691
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    .line 692
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    if-eqz v1, :cond_0

    .line 694
    invoke-virtual {v1}, Landroid/support/v4/media/MediaPlaylistAgent;->getPlaylistMetadata()Landroid/support/v4/media/MediaMetadata2;

    move-result-object v0

    return-object v0

    .line 695
    :cond_0
    sget-boolean v0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 696
    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 698
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 692
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getRepeatMode()I
    .locals 3

    .line 785
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 786
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    .line 787
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 788
    if-eqz v1, :cond_0

    .line 789
    invoke-virtual {v1}, Landroid/support/v4/media/MediaPlaylistAgent;->getRepeatMode()I

    move-result v0

    return v0

    .line 790
    :cond_0
    sget-boolean v0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 791
    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 793
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 787
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getSessionActivity()Landroid/app/PendingIntent;
    .locals 1

    .line 918
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionActivity:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getSessionBinder()Landroid/os/IBinder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 846
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mSession2Stub:Landroid/support/v4/media/MediaSession2Stub;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaSession2Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;
    .locals 1

    .line 866
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    return-object v0
.end method

.method public getShuffleMode()I
    .locals 3

    .line 812
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 813
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    .line 814
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 815
    if-eqz v1, :cond_0

    .line 816
    invoke-virtual {v1}, Landroid/support/v4/media/MediaPlaylistAgent;->getShuffleMode()I

    move-result v0

    return v0

    .line 817
    :cond_0
    sget-boolean v0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 818
    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 820
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 814
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getToken()Landroid/support/v4/media/SessionToken2;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 313
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionToken:Landroid/support/v4/media/SessionToken2;

    return-object v0
.end method

.method public getVolumeProvider()Landroid/support/v4/media/VolumeProviderCompat;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 306
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 307
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    monitor-exit v0

    return-object v1

    .line 308
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isClosed()Z
    .locals 1

    .line 876
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public notifyError(ILandroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 473
    new-instance v0, Landroid/support/v4/media/MediaSession2ImplBase$7;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/media/MediaSession2ImplBase$7;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;ILandroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToAllControllers(Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    .line 479
    return-void
.end method

.method public notifyRoutesInfoChanged(Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/util/List;)V
    .locals 1
    .param p1    # Landroid/support/v4/media/MediaSession2$ControllerInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/media/MediaSession2$ControllerInfo;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 484
    new-instance v0, Landroid/support/v4/media/MediaSession2ImplBase$8;

    invoke-direct {v0, p0, p2}, Landroid/support/v4/media/MediaSession2ImplBase$8;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;Ljava/util/List;)V

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToController(Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    .line 490
    return-void
.end method

.method notifyToAllControllers(Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V
    .locals 3
    .param p1    # Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1133
    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2ImplBase;->getConnectedControllers()Ljava/util/List;

    move-result-object v0

    .line 1134
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1135
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/MediaSession2$ControllerInfo;

    invoke-virtual {p0, v2, p1}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToController(Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    .line 1134
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1137
    :cond_0
    return-void
.end method

.method notifyToController(Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V
    .locals 3
    .param p1    # Landroid/support/v4/media/MediaSession2$ControllerInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1106
    if-nez p1, :cond_0

    .line 1107
    return-void

    .line 1110
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/media/MediaSession2$ControllerInfo;->getControllerCb()Landroid/support/v4/media/MediaSession2$ControllerCb;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;->run(Landroid/support/v4/media/MediaSession2$ControllerCb;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1129
    :goto_0
    goto :goto_1

    .line 1122
    :catch_0
    move-exception p2

    .line 1128
    const-string v0, "MS2ImplBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v4/media/MediaSession2$ControllerInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1111
    :catch_1
    move-exception p2

    .line 1112
    sget-boolean v0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1113
    const-string v0, "MS2ImplBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/support/v4/media/MediaSession2$ControllerInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is gone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1115
    :cond_1
    iget-object p2, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mSession2Stub:Landroid/support/v4/media/MediaSession2Stub;

    invoke-virtual {p2, p1}, Landroid/support/v4/media/MediaSession2Stub;->removeControllerInfo(Landroid/support/v4/media/MediaSession2$ControllerInfo;)V

    .line 1116
    iget-object p2, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/support/v4/media/MediaSession2ImplBase$21;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/MediaSession2ImplBase$21;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/MediaSession2$ControllerInfo;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1130
    :goto_1
    return-void
.end method

.method public pause()V
    .locals 3

    .line 408
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 409
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    .line 410
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    if-eqz v1, :cond_1

    .line 412
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mAudioFocusHandler:Landroid/support/v4/media/AudioFocusHandler;

    invoke-virtual {v0}, Landroid/support/v4/media/AudioFocusHandler;->onPauseRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {v1}, Landroid/support/v4/media/BaseMediaPlayer;->pause()V

    goto :goto_0

    .line 415
    :cond_0
    const-string v0, "MS2ImplBase"

    const-string v1, "pause() wouldn\'t be called of the failure in audio focus"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 417
    :cond_1
    sget-boolean v0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 418
    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 420
    :cond_2
    :goto_0
    return-void

    .line 410
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public play()V
    .locals 3

    .line 391
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 392
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    .line 393
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    if-eqz v1, :cond_1

    .line 395
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mAudioFocusHandler:Landroid/support/v4/media/AudioFocusHandler;

    invoke-virtual {v0}, Landroid/support/v4/media/AudioFocusHandler;->onPlayRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {v1}, Landroid/support/v4/media/BaseMediaPlayer;->play()V

    goto :goto_0

    .line 398
    :cond_0
    const-string v0, "MS2ImplBase"

    const-string v1, "play() wouldn\'t be called because of the failure in audio focus"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 400
    :cond_1
    sget-boolean v0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 401
    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 403
    :cond_2
    :goto_0
    return-void

    .line 393
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public prepare()V
    .locals 3

    .line 438
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 439
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    .line 440
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    if-eqz v1, :cond_0

    .line 442
    invoke-virtual {v1}, Landroid/support/v4/media/BaseMediaPlayer;->prepare()V

    goto :goto_0

    .line 443
    :cond_0
    sget-boolean v0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 444
    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 446
    :cond_1
    :goto_0
    return-void

    .line 440
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removePlaylistItem(Landroid/support/v4/media/MediaItem2;)V
    .locals 2
    .param p1    # Landroid/support/v4/media/MediaItem2;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 722
    if-eqz p1, :cond_2

    .line 726
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 727
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    .line 728
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    if-eqz v1, :cond_0

    .line 730
    invoke-virtual {v1, p1}, Landroid/support/v4/media/MediaPlaylistAgent;->removePlaylistItem(Landroid/support/v4/media/MediaItem2;)V

    goto :goto_0

    .line 731
    :cond_0
    sget-boolean p1, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p1, :cond_1

    .line 732
    const-string p1, "MS2ImplBase"

    const-string v0, "API calls after the close()"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 734
    :cond_1
    :goto_0
    return-void

    .line 728
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 723
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "item shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public replacePlaylistItem(ILandroid/support/v4/media/MediaItem2;)V
    .locals 2
    .param p2    # Landroid/support/v4/media/MediaItem2;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 738
    if-ltz p1, :cond_3

    .line 741
    if-eqz p2, :cond_2

    .line 745
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 746
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    .line 747
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 748
    if-eqz v1, :cond_0

    .line 749
    invoke-virtual {v1, p1, p2}, Landroid/support/v4/media/MediaPlaylistAgent;->replacePlaylistItem(ILandroid/support/v4/media/MediaItem2;)V

    goto :goto_0

    .line 750
    :cond_0
    sget-boolean p1, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p1, :cond_1

    .line 751
    const-string p1, "MS2ImplBase"

    const-string p2, "API calls after the close()"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 753
    :cond_1
    :goto_0
    return-void

    .line 747
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 742
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "item shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 739
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index shouldn\'t be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 3

    .line 425
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 426
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    .line 427
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    if-eqz v1, :cond_0

    .line 429
    invoke-virtual {v1}, Landroid/support/v4/media/BaseMediaPlayer;->reset()V

    goto :goto_0

    .line 430
    :cond_0
    sget-boolean v0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 431
    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 433
    :cond_1
    :goto_0
    return-void

    .line 427
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public seekTo(J)V
    .locals 2

    .line 451
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 452
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    .line 453
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    if-eqz v1, :cond_0

    .line 455
    invoke-virtual {v1, p1, p2}, Landroid/support/v4/media/BaseMediaPlayer;->seekTo(J)V

    goto :goto_0

    .line 456
    :cond_0
    sget-boolean p1, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p1, :cond_1

    .line 457
    const-string p1, "MS2ImplBase"

    const-string p2, "API calls after the close()"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 459
    :cond_1
    :goto_0
    return-void

    .line 453
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public sendCustomCommand(Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/support/v4/media/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 1
    .param p1    # Landroid/support/v4/media/MediaSession2$ControllerInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/media/SessionCommand2;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/os/ResultReceiver;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 374
    if-eqz p1, :cond_1

    .line 377
    if-eqz p2, :cond_0

    .line 380
    new-instance v0, Landroid/support/v4/media/MediaSession2ImplBase$6;

    invoke-direct {v0, p0, p2, p3, p4}, Landroid/support/v4/media/MediaSession2ImplBase$6;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToController(Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    .line 386
    return-void

    .line 378
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "command shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 375
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "controller shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendCustomCommand(Landroid/support/v4/media/SessionCommand2;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/support/v4/media/SessionCommand2;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 359
    if-eqz p1, :cond_0

    .line 362
    new-instance v0, Landroid/support/v4/media/MediaSession2ImplBase$5;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/media/MediaSession2ImplBase$5;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/SessionCommand2;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToAllControllers(Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    .line 368
    return-void

    .line 360
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "command shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAllowedCommands(Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/support/v4/media/SessionCommandGroup2;)V
    .locals 1
    .param p1    # Landroid/support/v4/media/MediaSession2$ControllerInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/media/SessionCommandGroup2;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 341
    if-eqz p1, :cond_1

    .line 344
    if-eqz p2, :cond_0

    .line 347
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mSession2Stub:Landroid/support/v4/media/MediaSession2Stub;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/MediaSession2Stub;->setAllowedCommands(Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/support/v4/media/SessionCommandGroup2;)V

    .line 348
    new-instance v0, Landroid/support/v4/media/MediaSession2ImplBase$4;

    invoke-direct {v0, p0, p2}, Landroid/support/v4/media/MediaSession2ImplBase$4;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/SessionCommandGroup2;)V

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToController(Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    .line 354
    return-void

    .line 345
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "commands shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 342
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "controller shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCustomLayout(Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/util/List;)V
    .locals 1
    .param p1    # Landroid/support/v4/media/MediaSession2$ControllerInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/media/MediaSession2$ControllerInfo;",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaSession2$CommandButton;",
            ">;)V"
        }
    .end annotation

    .line 324
    if-eqz p1, :cond_1

    .line 327
    if-eqz p2, :cond_0

    .line 330
    new-instance v0, Landroid/support/v4/media/MediaSession2ImplBase$3;

    invoke-direct {v0, p0, p2}, Landroid/support/v4/media/MediaSession2ImplBase$3;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;Ljava/util/List;)V

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToController(Landroid/support/v4/media/MediaSession2$ControllerInfo;Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    .line 336
    return-void

    .line 328
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "layout shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 325
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "controller shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnDataSourceMissingHelper(Landroid/support/v4/media/MediaSession2$OnDataSourceMissingHelper;)V
    .locals 2
    .param p1    # Landroid/support/v4/media/MediaSession2$OnDataSourceMissingHelper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 594
    if-eqz p1, :cond_1

    .line 597
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 598
    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mDsmHelper:Landroid/support/v4/media/MediaSession2$OnDataSourceMissingHelper;

    .line 599
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionPlaylistAgent:Landroid/support/v4/media/SessionPlaylistAgentImplBase;

    if-eqz v1, :cond_0

    .line 600
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionPlaylistAgent:Landroid/support/v4/media/SessionPlaylistAgentImplBase;

    invoke-virtual {v1, p1}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->setOnDataSourceMissingHelper(Landroid/support/v4/media/MediaSession2$OnDataSourceMissingHelper;)V

    .line 602
    :cond_0
    monitor-exit v0

    .line 603
    return-void

    .line 602
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 595
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "helper shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPlaybackSpeed(F)V
    .locals 2

    .line 581
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 582
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    .line 583
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    if-eqz v1, :cond_0

    .line 585
    invoke-virtual {v1, p1}, Landroid/support/v4/media/BaseMediaPlayer;->setPlaybackSpeed(F)V

    goto :goto_0

    .line 586
    :cond_0
    sget-boolean p1, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p1, :cond_1

    .line 587
    const-string p1, "MS2ImplBase"

    const-string v0, "API calls after the close()"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 589
    :cond_1
    :goto_0
    return-void

    .line 583
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setPlaylist(Ljava/util/List;Landroid/support/v4/media/MediaMetadata2;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/media/MediaMetadata2;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaItem2;",
            ">;",
            "Landroid/support/v4/media/MediaMetadata2;",
            ")V"
        }
    .end annotation

    .line 631
    if-eqz p1, :cond_2

    .line 635
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 636
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    .line 637
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 638
    if-eqz v1, :cond_0

    .line 639
    invoke-virtual {v1, p1, p2}, Landroid/support/v4/media/MediaPlaylistAgent;->setPlaylist(Ljava/util/List;Landroid/support/v4/media/MediaMetadata2;)V

    goto :goto_0

    .line 640
    :cond_0
    sget-boolean p1, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p1, :cond_1

    .line 641
    const-string p1, "MS2ImplBase"

    const-string p2, "API calls after the close()"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 643
    :cond_1
    :goto_0
    return-void

    .line 637
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 632
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "list shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRepeatMode(I)V
    .locals 2

    .line 799
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 800
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    .line 801
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 802
    if-eqz v1, :cond_0

    .line 803
    invoke-virtual {v1, p1}, Landroid/support/v4/media/MediaPlaylistAgent;->setRepeatMode(I)V

    goto :goto_0

    .line 804
    :cond_0
    sget-boolean p1, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p1, :cond_1

    .line 805
    const-string p1, "MS2ImplBase"

    const-string v0, "API calls after the close()"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 807
    :cond_1
    :goto_0
    return-void

    .line 801
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setShuffleMode(I)V
    .locals 2

    .line 826
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 827
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    .line 828
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 829
    if-eqz v1, :cond_0

    .line 830
    invoke-virtual {v1, p1}, Landroid/support/v4/media/MediaPlaylistAgent;->setShuffleMode(I)V

    goto :goto_0

    .line 831
    :cond_0
    sget-boolean p1, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p1, :cond_1

    .line 832
    const-string p1, "MS2ImplBase"

    const-string v0, "API calls after the close()"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 834
    :cond_1
    :goto_0
    return-void

    .line 828
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public skipBackward()V
    .locals 0

    .line 469
    return-void
.end method

.method public skipForward()V
    .locals 0

    .line 464
    return-void
.end method

.method public skipToNextItem()V
    .locals 3

    .line 677
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 678
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    .line 679
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    if-eqz v1, :cond_0

    .line 681
    invoke-virtual {v1}, Landroid/support/v4/media/MediaPlaylistAgent;->skipToNextItem()V

    goto :goto_0

    .line 682
    :cond_0
    sget-boolean v0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 683
    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 685
    :cond_1
    :goto_0
    return-void

    .line 679
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public skipToPlaylistItem(Landroid/support/v4/media/MediaItem2;)V
    .locals 2
    .param p1    # Landroid/support/v4/media/MediaItem2;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 647
    if-eqz p1, :cond_2

    .line 651
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 652
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    .line 653
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    if-eqz v1, :cond_0

    .line 655
    invoke-virtual {v1, p1}, Landroid/support/v4/media/MediaPlaylistAgent;->skipToPlaylistItem(Landroid/support/v4/media/MediaItem2;)V

    goto :goto_0

    .line 656
    :cond_0
    sget-boolean p1, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p1, :cond_1

    .line 657
    const-string p1, "MS2ImplBase"

    const-string v0, "API calls after the close()"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 659
    :cond_1
    :goto_0
    return-void

    .line 653
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 648
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "item shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public skipToPreviousItem()V
    .locals 3

    .line 664
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 665
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    .line 666
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    if-eqz v1, :cond_0

    .line 668
    invoke-virtual {v1}, Landroid/support/v4/media/MediaPlaylistAgent;->skipToPreviousItem()V

    goto :goto_0

    .line 669
    :cond_0
    sget-boolean v0, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 670
    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 672
    :cond_1
    :goto_0
    return-void

    .line 666
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updatePlayer(Landroid/support/v4/media/BaseMediaPlayer;Landroid/support/v4/media/MediaPlaylistAgent;Landroid/support/v4/media/VolumeProviderCompat;)V
    .locals 8
    .param p1    # Landroid/support/v4/media/BaseMediaPlayer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/media/MediaPlaylistAgent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/support/v4/media/VolumeProviderCompat;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 150
    if-eqz p1, :cond_b

    .line 158
    invoke-virtual {p1}, Landroid/support/v4/media/BaseMediaPlayer;->getAudioAttributes()Landroid/support/v4/media/AudioAttributesCompat;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Landroid/support/v4/media/MediaSession2ImplBase;->createPlaybackInfo(Landroid/support/v4/media/VolumeProviderCompat;Landroid/support/v4/media/AudioAttributesCompat;)Landroid/support/v4/media/MediaController2$PlaybackInfo;

    move-result-object v0

    .line 159
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 160
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, p1, :cond_0

    .line 161
    move v2, v4

    goto :goto_0

    .line 160
    :cond_0
    nop

    .line 161
    move v2, v3

    :goto_0
    iget-object v5, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    if-eq v5, p2, :cond_1

    .line 162
    move v5, v4

    goto :goto_1

    .line 161
    :cond_1
    nop

    .line 162
    move v5, v3

    :goto_1
    iget-object v6, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaybackInfo:Landroid/support/v4/media/MediaController2$PlaybackInfo;

    if-eq v6, v0, :cond_2

    .line 163
    move v3, v4

    goto :goto_2

    .line 162
    :cond_2
    nop

    .line 163
    :goto_2
    iget-object v4, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    .line 164
    iget-object v6, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    .line 165
    iput-object p1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    .line 166
    if-nez p2, :cond_4

    .line 167
    new-instance p2, Landroid/support/v4/media/SessionPlaylistAgentImplBase;

    iget-object v7, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayer:Landroid/support/v4/media/BaseMediaPlayer;

    invoke-direct {p2, p0, v7}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/BaseMediaPlayer;)V

    iput-object p2, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionPlaylistAgent:Landroid/support/v4/media/SessionPlaylistAgentImplBase;

    .line 168
    iget-object p2, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mDsmHelper:Landroid/support/v4/media/MediaSession2$OnDataSourceMissingHelper;

    if-eqz p2, :cond_3

    .line 169
    iget-object p2, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionPlaylistAgent:Landroid/support/v4/media/SessionPlaylistAgentImplBase;

    iget-object v7, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mDsmHelper:Landroid/support/v4/media/MediaSession2$OnDataSourceMissingHelper;

    invoke-virtual {p2, v7}, Landroid/support/v4/media/SessionPlaylistAgentImplBase;->setOnDataSourceMissingHelper(Landroid/support/v4/media/MediaSession2$OnDataSourceMissingHelper;)V

    .line 171
    :cond_3
    iget-object p2, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionPlaylistAgent:Landroid/support/v4/media/SessionPlaylistAgentImplBase;

    .line 173
    :cond_4
    iput-object p2, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    .line 174
    iput-object p3, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mVolumeProvider:Landroid/support/v4/media/VolumeProviderCompat;

    .line 175
    iput-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaybackInfo:Landroid/support/v4/media/MediaController2$PlaybackInfo;

    .line 176
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    if-nez p3, :cond_5

    .line 178
    invoke-virtual {p1}, Landroid/support/v4/media/BaseMediaPlayer;->getAudioAttributes()Landroid/support/v4/media/AudioAttributesCompat;

    move-result-object p3

    invoke-direct {p0, p3}, Landroid/support/v4/media/MediaSession2ImplBase;->getLegacyStreamType(Landroid/support/v4/media/AudioAttributesCompat;)I

    move-result p3

    .line 179
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1, p3}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackToLocal(I)V

    .line 181
    :cond_5
    if-eq p1, v4, :cond_6

    .line 182
    iget-object p3, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayerEventCallback:Landroid/support/v4/media/BaseMediaPlayer$PlayerEventCallback;

    invoke-virtual {p1, p3, v1}, Landroid/support/v4/media/BaseMediaPlayer;->registerPlayerEventCallback(Ljava/util/concurrent/Executor;Landroid/support/v4/media/BaseMediaPlayer$PlayerEventCallback;)V

    .line 183
    if-eqz v4, :cond_6

    .line 185
    iget-object p1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlayerEventCallback:Landroid/support/v4/media/BaseMediaPlayer$PlayerEventCallback;

    invoke-virtual {v4, p1}, Landroid/support/v4/media/BaseMediaPlayer;->unregisterPlayerEventCallback(Landroid/support/v4/media/BaseMediaPlayer$PlayerEventCallback;)V

    .line 188
    :cond_6
    if-eq p2, v6, :cond_7

    .line 189
    iget-object p1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    iget-object p3, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistEventCallback:Landroid/support/v4/media/MediaPlaylistAgent$PlaylistEventCallback;

    invoke-virtual {p2, p1, p3}, Landroid/support/v4/media/MediaPlaylistAgent;->registerPlaylistEventCallback(Ljava/util/concurrent/Executor;Landroid/support/v4/media/MediaPlaylistAgent$PlaylistEventCallback;)V

    .line 190
    if-eqz v6, :cond_7

    .line 192
    iget-object p1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistEventCallback:Landroid/support/v4/media/MediaPlaylistAgent$PlaylistEventCallback;

    invoke-virtual {v6, p1}, Landroid/support/v4/media/MediaPlaylistAgent;->unregisterPlaylistEventCallback(Landroid/support/v4/media/MediaPlaylistAgent$PlaylistEventCallback;)V

    .line 196
    :cond_7
    if-eqz v4, :cond_a

    .line 199
    if-eqz v5, :cond_8

    .line 202
    invoke-direct {p0, v6}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyAgentUpdatedNotLocked(Landroid/support/v4/media/MediaPlaylistAgent;)V

    .line 204
    :cond_8
    if-eqz v2, :cond_9

    .line 205
    invoke-direct {p0, v4}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyPlayerUpdatedNotLocked(Landroid/support/v4/media/BaseMediaPlayer;)V

    .line 207
    :cond_9
    if-eqz v3, :cond_a

    .line 210
    new-instance p1, Landroid/support/v4/media/MediaSession2ImplBase$1;

    invoke-direct {p1, p0, v0}, Landroid/support/v4/media/MediaSession2ImplBase$1;-><init>(Landroid/support/v4/media/MediaSession2ImplBase;Landroid/support/v4/media/MediaController2$PlaybackInfo;)V

    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaSession2ImplBase;->notifyToAllControllers(Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;)V

    .line 218
    :cond_a
    return-void

    .line 176
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 151
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "player shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updatePlaylistMetadata(Landroid/support/v4/media/MediaMetadata2;)V
    .locals 2
    .param p1    # Landroid/support/v4/media/MediaMetadata2;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 772
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 773
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaSession2ImplBase;->mPlaylistAgent:Landroid/support/v4/media/MediaPlaylistAgent;

    .line 774
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 775
    if-eqz v1, :cond_0

    .line 776
    invoke-virtual {v1, p1}, Landroid/support/v4/media/MediaPlaylistAgent;->updatePlaylistMetadata(Landroid/support/v4/media/MediaMetadata2;)V

    goto :goto_0

    .line 777
    :cond_0
    sget-boolean p1, Landroid/support/v4/media/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p1, :cond_1

    .line 778
    const-string p1, "MS2ImplBase"

    const-string v0, "API calls after the close()"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 780
    :cond_1
    :goto_0
    return-void

    .line 774
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
