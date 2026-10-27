.class public Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;
.super Ljava/lang/Object;
.source "MediaCenterManager.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/XUIManagerBase;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$FavoriteEvent;,
        Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$LyricInfoListenerToService;,
        Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$AvrcpEventListenerToService;,
        Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$BTStatusListener;,
        Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$BTStatusListenerToService;,
        Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$ModeChangedServiceListener;,
        Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$LyricUpdateServiceListener;,
        Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$LyricUpdateListener;,
        Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualizerViewEnableServiceListener;,
        Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$MediaCenterManagerHolder;,
        Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackInfoListener;,
        Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$SDVisualizerListenerToService;,
        Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$AudioCaptureListener;,
        Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackControlListener;,
        Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$MediaCenterEventListenerToService;,
        Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$EventCallbackHandler;,
        Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$ModeChangedListener;,
        Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualizerViewEnableListener;,
        Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackListener;,
        Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;,
        Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VendorControlListener;,
        Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$MediaCenterEventListener;
    }
.end annotation


# static fields
.field public static final ACTION_MEDIA_PLAYBACK_CONTROL:Ljava/lang/String; = "com.xiaopeng.xuiservice.playbackControl"

.field public static final CUSTOM_ACTION_SWITCH_SOURCE:Ljava/lang/String; = "com.xiaopeng.custom_switch_play_source"

.field public static final ENTER_PARAMS_BUTTON:I = 0x2

.field public static final ENTER_PARAMS_CURRENT:I = 0x0

.field public static final ENTER_PARAMS_FORCE_XP:I = 0x1

.field public static final EXTRA_PLAYBACK_CMD:Ljava/lang/String; = "playbackCmd"

.field public static final EXTRA_PLAYBACK_PARAM:Ljava/lang/String; = "playbackParam"

.field public static final ID_SCREEN_RSE:I = 0x3

.field public static final ID_SHARED_PRIMARY:I = 0x0

.field public static final ID_SHARED_SECONDARY:I = 0x1

.field public static final MODE_CAR_SHOW:I = 0x1

.field public static final MODE_NORMAL:I = 0x0

.field private static final MSG_MEDIACENTER_ERROR_EVENT:I = 0x0

.field private static final MSG_PLAYBACK_CONTROL_EVENT:I = 0x1

.field private static final MSG_SET_FAVORITE_EVENT:I = 0x3

.field private static final MSG_SWITCH_SOURCE_EVENT:I = 0x2

.field public static final PACKAGE_BLUETOOTH:Ljava/lang/String; = "com.android.bluetooth"

.field public static final PACKAGE_XP_MUSIC:Ljava/lang/String; = "com.xiaopeng.musicradio"

.field public static final PLAYBACK_CMD_ENTER:I = 0xb

.field public static final PLAYBACK_CMD_EXIT:I = 0xc

.field public static final PLAYBACK_CMD_FAVORITE:I = 0x8

.field public static final PLAYBACK_CMD_FORWARD:I = 0xe

.field public static final PLAYBACK_CMD_NEXT:I = 0x6

.field public static final PLAYBACK_CMD_NO_FAVORITE:I = 0x10

.field public static final PLAYBACK_CMD_PAUSE:I = 0x2

.field public static final PLAYBACK_CMD_PREV:I = 0x7

.field public static final PLAYBACK_CMD_RESUME:I = 0x3

.field public static final PLAYBACK_CMD_REWIND:I = 0xd

.field public static final PLAYBACK_CMD_SEEKTO:I = 0x4

.field public static final PLAYBACK_CMD_SET_LYRIC:I = 0xa

.field public static final PLAYBACK_CMD_SET_MODE:I = 0x9

.field public static final PLAYBACK_CMD_SET_TIME:I = 0xf

.field public static final PLAYBACK_CMD_SPEED:I = 0x5

.field public static final PLAYBACK_CMD_START:I = 0x0

.field public static final PLAYBACK_CMD_STOP:I = 0x1

.field public static final PLAYBACK_CMD_SWITCH_SOURCE:I = 0x14

.field public static final PLAYBACK_CMD_TO_PAUSE:I = 0x12

.field public static final PLAYBACK_CMD_TO_PLAY:I = 0x13

.field public static final PLAYBACK_CMD_UNSET_MODE:I = 0x11

.field public static final PLAYBACK_LYRIC_OFF:I = 0x1

.field public static final PLAYBACK_LYRIC_ON:I = 0x0

.field public static final PLAYBACK_MODE_CYCLE:I = 0x1

.field public static final PLAYBACK_MODE_RANDOM:I = 0x3

.field public static final PLAYBACK_MODE_SEQUENCE:I = 0x0

.field public static final PLAYBACK_MODE_SINGLE_CYCLE:I = 0x2

.field public static final PLAYBACK_PARAMS_AUTO:I = 0x3

.field public static final PLAYBACK_STATE_NEW_MEDIASTREAM:I = 0xa

.field public static final PLAYBACK_STATE_PAUSED:I = 0x2

.field public static final PLAYBACK_STATE_STARTED:I = 0x0

.field public static final PLAYBACK_STATE_STOPED:I = 0x1

.field public static final SOURCE_TYPE_FM:I = 0x1

.field public static final SOURCE_TYPE_MUSIC:I = 0x0

.field public static final STATE_BT_AVAILABLE:I = 0x2

.field public static final STATE_BT_MEDIA_CONNECTED:I = 0x5

.field public static final STATE_BT_MEDIA_CONNECTING:I = 0x4

.field public static final STATE_BT_MEDIA_DISCONNECTING:I = 0x3

.field public static final STATE_BT_SOURCE_SELECTED:I = 0x6

.field public static final STATE_BT_UNAVAILABLE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "MediaCenterManager"

.field public static final VISUALIZER_TYPE_AMBIENT_LIGHT:I = 0x1

.field public static final VISUALIZER_TYPE_NONE:I = 0x0

.field public static final VISUALIZER_TYPE_XP_MUSIC:I = 0x10

.field private static final mEventHandler:Landroid/os/Handler;

.field private static mServiceName:Ljava/lang/String;


# instance fields
.field private mAudioCaptureListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$AudioCaptureListener;

.field private mAvrcpEventListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAvrcpEventListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$AvrcpEventListenerToService;

.field private mBTStatusListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$BTStatusListenerToService;

.field private mBTStatusListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$BTStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCompatibleListener:Lcom/xiaopeng/xuimanager/mediacenter/SDPlaybackListener;

.field private mCompatibleVisualizerListener:Lcom/xiaopeng/xuimanager/mediacenter/visualizer/SDVisualizerListener;

.field private mControlListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackControlListener;

.field private mDisplayVisualizers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/mediacenter/visualizer/SDVisualizerListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$MediaCenterEventListenerToService;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$MediaCenterEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLyricInfoListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLyricInfoListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$LyricInfoListenerToService;

.field private mLyricUpdateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$LyricUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLyricUpdateServiceListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$LyricUpdateServiceListener;

.field private mModeChangedListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$ModeChangedServiceListener;

.field private final mModeChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$ModeChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNapaListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;

.field private mPackageVisualizers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/mediacenter/visualizer/SDVisualizerListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPlaybackInfoListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackInfoListener;

.field private final mPlaybackListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSDNapaListener:Lcom/xiaopeng/xuimanager/mediacenter/visualizer/SDVisualizerListener;

.field private mSDPlaybackListenersMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/mediacenter/SDPlaybackListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSDVisualizerListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$SDVisualizerListenerToService;

.field private mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

.field private mTypeVisualizerCaptureObjectListener:Lcom/xiaopeng/xuimanager/mediacenter/visualizer/TypeVisualizerCaptureObjectListener;

.field private final mVendorControlListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VendorControlListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mVisualCaptureListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;",
            ">;"
        }
    .end annotation
.end field

.field private mVisualCaptureObjectListener:Lcom/xiaopeng/xuimanager/mediacenter/visualizer/VisualCaptureObjectListener;

.field private mVisualizerViewEnableListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualizerViewEnableServiceListener;

.field private final mVisualizerViewEnableListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualizerViewEnableListener;",
            ">;"
        }
    .end annotation
.end field

.field private serverDisconnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MediaCenterManager"

    .line 340
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/utils/WorkHandler;->create(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mEventHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 155
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->serverDisconnected:Z

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mDisplayVisualizers:Ljava/util/HashMap;

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mPackageVisualizers:Ljava/util/HashMap;

    .line 280
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mListeners:Ljava/util/Set;

    const/4 v0, 0x0

    .line 281
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$MediaCenterEventListenerToService;

    .line 282
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVendorControlListeners:Ljava/util/Map;

    .line 283
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mControlListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackControlListener;

    .line 286
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVisualCaptureListeners:Landroid/util/ArraySet;

    .line 287
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mAudioCaptureListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$AudioCaptureListener;

    .line 288
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mPlaybackListeners:Ljava/util/Set;

    .line 289
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mPlaybackInfoListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackInfoListener;

    .line 290
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVisualizerViewEnableListeners:Ljava/util/List;

    .line 292
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVisualizerViewEnableListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualizerViewEnableServiceListener;

    .line 293
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mAvrcpEventListenerList:Ljava/util/List;

    .line 294
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mAvrcpEventListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$AvrcpEventListenerToService;

    .line 295
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mSDPlaybackListenersMap:Landroid/util/SparseArray;

    .line 296
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mLyricInfoListenerList:Ljava/util/List;

    .line 297
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mLyricInfoListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$LyricInfoListenerToService;

    .line 1017
    new-instance v1, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$1;-><init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)V

    iput-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mNapaListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;

    .line 1032
    new-instance v1, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$2;-><init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)V

    iput-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mSDNapaListener:Lcom/xiaopeng/xuimanager/mediacenter/visualizer/SDVisualizerListener;

    .line 1057
    new-instance v1, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$3;-><init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)V

    iput-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mCompatibleVisualizerListener:Lcom/xiaopeng/xuimanager/mediacenter/visualizer/SDVisualizerListener;

    .line 1680
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mLyricUpdateListeners:Ljava/util/List;

    .line 1681
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mLyricUpdateServiceListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$LyricUpdateServiceListener;

    .line 1849
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mModeChangedListeners:Ljava/util/List;

    .line 1850
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mModeChangedListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$ModeChangedServiceListener;

    .line 1943
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mBTStatusListeners:Ljava/util/List;

    .line 1944
    new-instance v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$BTStatusListenerToService;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$BTStatusListenerToService;-><init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mBTStatusListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$BTStatusListenerToService;

    .line 2408
    new-instance v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$4;-><init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mCompatibleListener:Lcom/xiaopeng/xuimanager/mediacenter/SDPlaybackListener;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 155
    iput-boolean p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->serverDisconnected:Z

    .line 161
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mDisplayVisualizers:Ljava/util/HashMap;

    .line 162
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mPackageVisualizers:Ljava/util/HashMap;

    .line 280
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mListeners:Ljava/util/Set;

    const/4 p2, 0x0

    .line 281
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$MediaCenterEventListenerToService;

    .line 282
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVendorControlListeners:Ljava/util/Map;

    .line 283
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mControlListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackControlListener;

    .line 286
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVisualCaptureListeners:Landroid/util/ArraySet;

    .line 287
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mAudioCaptureListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$AudioCaptureListener;

    .line 288
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mPlaybackListeners:Ljava/util/Set;

    .line 289
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mPlaybackInfoListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackInfoListener;

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVisualizerViewEnableListeners:Ljava/util/List;

    .line 292
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVisualizerViewEnableListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualizerViewEnableServiceListener;

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mAvrcpEventListenerList:Ljava/util/List;

    .line 294
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mAvrcpEventListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$AvrcpEventListenerToService;

    .line 295
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mSDPlaybackListenersMap:Landroid/util/SparseArray;

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mLyricInfoListenerList:Ljava/util/List;

    .line 297
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mLyricInfoListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$LyricInfoListenerToService;

    .line 1017
    new-instance v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$1;-><init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mNapaListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;

    .line 1032
    new-instance v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$2;-><init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mSDNapaListener:Lcom/xiaopeng/xuimanager/mediacenter/visualizer/SDVisualizerListener;

    .line 1057
    new-instance v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$3;-><init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mCompatibleVisualizerListener:Lcom/xiaopeng/xuimanager/mediacenter/visualizer/SDVisualizerListener;

    .line 1680
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mLyricUpdateListeners:Ljava/util/List;

    .line 1681
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mLyricUpdateServiceListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$LyricUpdateServiceListener;

    .line 1849
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mModeChangedListeners:Ljava/util/List;

    .line 1850
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mModeChangedListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$ModeChangedServiceListener;

    .line 1943
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mBTStatusListeners:Ljava/util/List;

    .line 1944
    new-instance p2, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$BTStatusListenerToService;

    invoke-direct {p2, p0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$BTStatusListenerToService;-><init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)V

    iput-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mBTStatusListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$BTStatusListenerToService;

    .line 2408
    new-instance p2, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$4;

    invoke-direct {p2, p0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$4;-><init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)V

    iput-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mCompatibleListener:Lcom/xiaopeng/xuimanager/mediacenter/SDPlaybackListener;

    .line 515
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    if-nez p1, :cond_0

    const-string p1, "MediaCenterManager"

    const-string p2, "MediaCenterManager the service is not ready"

    .line 517
    invoke-static {p1, p2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 518
    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->serverDisconnected:Z

    .line 520
    :cond_0
    new-instance p1, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$EventCallbackHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$EventCallbackHandler;-><init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$1;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;-><init>()V

    return-void
.end method

.method private OnFftDataCapture(ILjava/lang/String;[BI)V
    .locals 2

    .line 1425
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mDisplayVisualizers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1426
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1427
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/SDVisualizerListener;

    .line 1428
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/SDVisualizerListener;->onFftDataCapture(ILjava/lang/String;[BI)V

    goto :goto_0

    .line 1432
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mPackageVisualizers:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1433
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1434
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/SDVisualizerListener;

    .line 1435
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/SDVisualizerListener;->onFftDataCapture(ILjava/lang/String;[BI)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private OnFftDataCapture([BI)V
    .locals 3

    .line 1403
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVisualCaptureListeners:Landroid/util/ArraySet;

    monitor-enter v0

    .line 1404
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVisualCaptureListeners:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;

    .line 1405
    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;->OnFftDataCapture([BI)V

    goto :goto_0

    .line 1407
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private OnMediaInfoNotify(ILcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V
    .locals 3

    .line 1479
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mSDPlaybackListenersMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1480
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mSDPlaybackListenersMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1481
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1482
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/mediacenter/SDPlaybackListener;

    .line 1483
    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/SDPlaybackListener;->OnMediaInfoNotify(ILcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V

    goto :goto_0

    .line 1486
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private OnPlaybackChanged(II)V
    .locals 3

    .line 1457
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mSDPlaybackListenersMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1458
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mSDPlaybackListenersMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1459
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1460
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/mediacenter/SDPlaybackListener;

    .line 1461
    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/SDPlaybackListener;->OnPlaybackChanged(II)V

    goto :goto_0

    .line 1464
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private OnRatioData(FF)V
    .locals 2

    .line 1412
    monitor-enter p0

    .line 1413
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVisualCaptureListeners:Landroid/util/ArraySet;

    .line 1414
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1415
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1416
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;

    .line 1417
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;->OnRatioData(FF)V

    goto :goto_0

    :cond_0
    const-string p1, "MediaCenterManager"

    const-string p2, "Listener died, not dispatching fft data."

    .line 1420
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 1414
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private OnRatioData(ILjava/lang/String;FF)V
    .locals 2

    .line 1441
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mDisplayVisualizers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1442
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1443
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/SDVisualizerListener;

    .line 1444
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/SDVisualizerListener;->onRatioData(ILjava/lang/String;FF)V

    goto :goto_0

    .line 1448
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mPackageVisualizers:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1449
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1450
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/SDVisualizerListener;

    .line 1451
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/mediacenter/visualizer/SDVisualizerListener;->onRatioData(ILjava/lang/String;FF)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private OnUpdatePosition(IJJ)V
    .locals 9

    .line 1468
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mSDPlaybackListenersMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1469
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mSDPlaybackListenersMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1470
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1471
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/xiaopeng/xuimanager/mediacenter/SDPlaybackListener;

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    .line 1472
    invoke-interface/range {v3 .. v8}, Lcom/xiaopeng/xuimanager/mediacenter/SDPlaybackListener;->OnUpdatePosition(IJJ)V

    goto :goto_0

    .line 1475
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private OnVisualizerViewEnable(Z)V
    .locals 2

    .line 1588
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVisualizerViewEnableListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1589
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVisualizerViewEnableListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualizerViewEnableListener;

    .line 1590
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualizerViewEnableListener;->OnVisualizerViewEnable(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "MediaCenterManager"

    const-string v0, "mVisualizerViewEnableListeners is empty"

    .line 1593
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;II)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->dispatchErrorEventToClient(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;IILjava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->dispatchControlEventToVendor(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;ILjava/lang/String;[BI)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->OnFftDataCapture(ILjava/lang/String;[BI)V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;ILjava/lang/String;FF)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->OnRatioData(ILjava/lang/String;FF)V

    return-void
.end method

.method static synthetic access$1200()Landroid/os/Handler;
    .locals 1

    .line 61
    sget-object v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;ILcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->OnMediaInfoNotify(ILcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;IJJ)V
    .locals 0

    .line 61
    invoke-direct/range {p0 .. p5}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->OnUpdatePosition(IJJ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;II)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->OnPlaybackChanged(II)V

    return-void
.end method

.method static synthetic access$1800(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)Lcom/xiaopeng/xuimanager/mediacenter/visualizer/VisualCaptureObjectListener;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVisualCaptureObjectListener:Lcom/xiaopeng/xuimanager/mediacenter/visualizer/VisualCaptureObjectListener;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)Lcom/xiaopeng/xuimanager/mediacenter/visualizer/TypeVisualizerCaptureObjectListener;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mTypeVisualizerCaptureObjectListener:Lcom/xiaopeng/xuimanager/mediacenter/visualizer/TypeVisualizerCaptureObjectListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;ILjava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->dispatchSwitchSourceEventToVendor(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;Z)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->OnVisualizerViewEnable(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->onServiceLyricUpdated(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->notifyClientModeChanged(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->notifyBtStatusChanged(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;II)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->onAvrcpConnectedChanged(II)V

    return-void
.end method

.method static synthetic access$2500(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->onAvrcpPlaybackChanged(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;JJ)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->onAvrcpPositionChanged(JJ)V

    return-void
.end method

.method static synthetic access$2700(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->onAvrcpMeteDataChanged(Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;ILcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->onLyricInfoUpdated(ILcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)Ljava/util/Set;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mPlaybackListeners:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$FavoriteEvent;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->dispatchSetFavoriteEventToVendor(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$FavoriteEvent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;II)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->handleErrorEvent(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;IILjava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->handlePlaybackControlEvent(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;ILjava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->handleSwitchSourceEvent(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->handleSetFavoriteEvent(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;[BI)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->OnFftDataCapture([BI)V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;FF)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->OnRatioData(FF)V

    return-void
.end method

.method private dispatchControlEventToVendor(IILjava/lang/String;)V
    .locals 2

    .line 1352
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVendorControlListeners:Ljava/util/Map;

    monitor-enter v0

    .line 1353
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVendorControlListeners:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VendorControlListener;

    if-eqz p3, :cond_0

    .line 1355
    invoke-interface {p3, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VendorControlListener;->OnPlaybackControl(II)I

    .line 1357
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private dispatchErrorEventToClient(II)V
    .locals 3

    .line 1336
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mListeners:Ljava/util/Set;

    monitor-enter v0

    .line 1337
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$MediaCenterEventListener;

    .line 1338
    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$MediaCenterEventListener;->onErrorEvent(II)V

    goto :goto_0

    .line 1340
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private dispatchSetFavoriteEventToVendor(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$FavoriteEvent;)V
    .locals 3

    .line 1379
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVendorControlListeners:Ljava/util/Map;

    monitor-enter v0

    .line 1380
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVendorControlListeners:Ljava/util/Map;

    iget-object v2, p1, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$FavoriteEvent;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VendorControlListener;

    if-eqz v1, :cond_0

    .line 1382
    iget-boolean v2, p1, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$FavoriteEvent;->mFavorite:Z

    iget-object p1, p1, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$FavoriteEvent;->mId:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VendorControlListener;->OnSetFavorite(ZLjava/lang/String;)I

    .line 1384
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private dispatchSwitchSourceEventToVendor(ILjava/lang/String;)V
    .locals 2

    .line 1370
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVendorControlListeners:Ljava/util/Map;

    monitor-enter v0

    .line 1371
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVendorControlListeners:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VendorControlListener;

    if-eqz p2, :cond_0

    .line 1373
    invoke-interface {p2, p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VendorControlListener;->OnSwitchSource(I)I

    .line 1375
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static getInstance()Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;
    .locals 1

    .line 492
    invoke-static {}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$MediaCenterManagerHolder;->access$1700()Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    move-result-object v0

    return-object v0
.end method

.method private handleErrorEvent(II)V
    .locals 2

    .line 1344
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 1345
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1346
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1347
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1348
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handlePlaybackControlEvent(IILjava/lang/String;)V
    .locals 2

    .line 1361
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 1362
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1363
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1364
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 1365
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1366
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleSetFavoriteEvent(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1396
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    .line 1397
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1398
    new-instance v1, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$FavoriteEvent;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$FavoriteEvent;-><init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;ZLjava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1399
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleSwitchSourceEvent(ILjava/lang/String;)V
    .locals 2

    .line 1388
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 1389
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1390
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1391
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1392
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private notifyBtStatusChanged(I)V
    .locals 2

    .line 2107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyBtStatusChanged status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&listener size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mBTStatusListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCenterManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mBTStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2109
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mBTStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$BTStatusListener;

    .line 2110
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$BTStatusListener;->onBtStatusChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyClientModeChanged(I)V
    .locals 2

    .line 1932
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mModeChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1933
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mModeChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$ModeChangedListener;

    .line 1934
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$ModeChangedListener;->OnModeChanged(I)V

    goto :goto_0

    :cond_0
    const-string p1, "MediaCenterManager"

    const-string v0, "mModeChangedListeners is empty"

    .line 1937
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private onAvrcpConnectedChanged(II)V
    .locals 3

    .line 2295
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mAvrcpEventListenerList:Ljava/util/List;

    monitor-enter v0

    .line 2296
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mAvrcpEventListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpEventListener;

    .line 2297
    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpEventListener;->onConnectedChanged(II)V

    goto :goto_0

    .line 2299
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private onAvrcpMeteDataChanged(Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;)V
    .locals 3

    .line 2319
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mAvrcpEventListenerList:Ljava/util/List;

    monitor-enter v0

    .line 2320
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mAvrcpEventListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpEventListener;

    .line 2321
    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpEventListener;->onMeteDataChanged(Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;)V

    goto :goto_0

    .line 2323
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private onAvrcpPlaybackChanged(I)V
    .locals 3

    .line 2303
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mAvrcpEventListenerList:Ljava/util/List;

    monitor-enter v0

    .line 2304
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mAvrcpEventListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpEventListener;

    .line 2305
    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpEventListener;->onPlaybackChanged(I)V

    goto :goto_0

    .line 2307
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private onAvrcpPositionChanged(JJ)V
    .locals 3

    .line 2311
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mAvrcpEventListenerList:Ljava/util/List;

    monitor-enter v0

    .line 2312
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mAvrcpEventListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpEventListener;

    .line 2313
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpEventListener;->onPositionChanged(JJ)V

    goto :goto_0

    .line 2315
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private onLyricInfoUpdated(ILcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V
    .locals 3

    .line 2327
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mLyricInfoListenerList:Ljava/util/List;

    monitor-enter v0

    .line 2328
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mLyricInfoListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfoListener;

    .line 2329
    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfoListener;->onLyricInfoUpdated(ILcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V

    goto :goto_0

    .line 2331
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private onServiceLyricUpdated(Ljava/lang/String;)V
    .locals 2

    .line 1813
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mLyricUpdateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1814
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mLyricUpdateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$LyricUpdateListener;

    .line 1815
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$LyricUpdateListener;->onLyricUpdated(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "MediaCenterManager"

    const-string v0, "mLyricUpdateListeners is empty"

    .line 1818
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private registerSDVisualizerToService(I)V
    .locals 2

    .line 946
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    if-eqz v0, :cond_0

    .line 948
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mSDVisualizerListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$SDVisualizerListenerToService;

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->registerVisualizerListenerWithDisplayId(ILcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerVisualizerListenerWithDisplayId error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaCenterManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private registerSDVisualizerToService(Ljava/lang/String;)V
    .locals 3

    .line 966
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    const-string v1, "MediaCenterManager"

    if-eqz v0, :cond_0

    .line 968
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mSDVisualizerListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$SDVisualizerListenerToService;

    invoke-interface {v0, p1, v2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->registerVisualizerListenerWithPackage(Ljava/lang/String;Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerVisualizerListenerWithPackage error : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "registerSDVisualizerToService service null"

    .line 973
    invoke-static {v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private syncMediaStatus(I)V
    .locals 8

    .line 2336
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    if-eqz v0, :cond_0

    .line 2337
    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->getCurrentMediaInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v0

    .line 2338
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->OnMediaInfoNotify(ILcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V

    .line 2340
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->getCurrentPlayStatus(I)I

    move-result v0

    .line 2341
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->OnPlaybackChanged(II)V

    .line 2343
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->getCurrentPosition(I)[J

    move-result-object v0

    const/4 v1, 0x0

    .line 2344
    aget-wide v4, v0, v1

    const/4 v1, 0x1

    aget-wide v6, v0, v1

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->OnUpdatePosition(IJJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syncMediaStatus error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaCenterManager"

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private unregisterSDVisualizerToService(I)V
    .locals 2

    .line 956
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    if-eqz v0, :cond_0

    .line 958
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mSDVisualizerListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$SDVisualizerListenerToService;

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->unRegisterVisualizerListenerWithDisplayId(ILcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unRegisterVisualizerListenerWithDisplayId error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaCenterManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private unregisterSDVisualizerToService(Ljava/lang/String;)V
    .locals 3

    .line 978
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    const-string v1, "MediaCenterManager"

    if-eqz v0, :cond_0

    .line 980
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mSDVisualizerListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$SDVisualizerListenerToService;

    invoke-interface {v0, p1, v2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->unRegisterVisualizerListenerWithPackage(Ljava/lang/String;Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterSDVisualizerToService error : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "unregisterSDVisualizerToService service null"

    .line 985
    invoke-static {v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public avrcpNext()V
    .locals 3

    .line 2207
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    if-eqz v0, :cond_0

    .line 2209
    :try_start_0
    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->avrcpNext()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "avrcpNext error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCenterManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public avrcpPause()V
    .locals 2

    .line 2194
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    if-eqz v0, :cond_0

    .line 2196
    :try_start_0
    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->avrcpPause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "MediaCenterManager"

    const-string v1, "avrcpPause error"

    .line 2198
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public avrcpPlay()V
    .locals 2

    .line 2181
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    if-eqz v0, :cond_0

    .line 2183
    :try_start_0
    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->avrcpPlay()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "MediaCenterManager"

    const-string v1, "avrcpPlay error"

    .line 2185
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public avrcpPrevious()V
    .locals 3

    .line 2220
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    if-eqz v0, :cond_0

    .line 2222
    :try_start_0
    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->avrcpPrevious()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "avrcpPrevious error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCenterManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getAvrcpMeteData()Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;
    .locals 3

    .line 2230
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    if-eqz v0, :cond_0

    .line 2232
    :try_start_0
    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->getAvrcpMeteData()Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAvrcpMeteData error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCenterManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAvrcpPlayStatus()I
    .locals 3

    .line 2242
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->getAvrcpPlayStatus()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAvrcpPlayStatus error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCenterManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public getAvrcpPosition()[J
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 2250
    fill-array-data v0, :array_0

    .line 2252
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->getAvrcpPosition()[J

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 2254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAvrcpPosition error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaCenterManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    nop

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method public declared-synchronized getBtStatus()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    .line 2080
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2082
    :try_start_1
    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->getBtStatus()I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catch_0
    :try_start_2
    const-string v0, "MediaCenterManager"

    const-string v1, "getBtStatus error"

    .line 2084
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    const/4 v0, 0x1

    .line 2087
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCurrentLyricInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 814
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    if-eqz v0, :cond_0

    .line 816
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->getCurrentLyricInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 821
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/XUIManager;->checkXUIServiceNotConnectedExceptionFromXUIService(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not connect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCenterManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCurrentMediaInfo()Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 829
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->getCurrentMediaInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMediaInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 794
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    if-eqz v0, :cond_0

    .line 796
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->getCurrentMediaInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 801
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/XUIManager;->checkXUIServiceNotConnectedExceptionFromXUIService(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not connect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCenterManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCurrentMode()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 1905
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->getCurrentMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1910
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/XUIManager;->checkXUIServiceNotConnectedExceptionFromXUIService(Ljava/lang/IllegalStateException;)V

    const/4 v0, 0x0

    return v0

    :catch_1
    move-exception v0

    .line 1907
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not connect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaCenterManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getCurrentPlayStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 764
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->getCurrentPlayStatus(I)I

    move-result v0

    return v0
.end method

.method public getCurrentPlayStatus(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 774
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    if-eqz v0, :cond_0

    .line 776
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->getCurrentPlayStatus(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 781
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/XUIManager;->checkXUIServiceNotConnectedExceptionFromXUIService(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not connect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCenterManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_0
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getCurrentPosition()[J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 834
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->getCurrentPosition(I)[J

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPosition(I)[J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 844
    fill-array-data v0, :array_0

    .line 846
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    if-eqz v1, :cond_0

    .line 848
    :try_start_0
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->getCurrentPosition(I)[J

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 853
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/XUIManager;->checkXUIServiceNotConnectedExceptionFromXUIService(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not connect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCenterManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_0
    :goto_0
    return-object v0

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 1580
    sget-object v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mServiceName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1581
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mServiceName:Ljava/lang/String;

    .line 1583
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 497
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    if-nez p1, :cond_0

    const-string p1, "MediaCenterManager"

    const-string p2, "MediaCenterManager the service is not ready"

    .line 499
    invoke-static {p1, p2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 500
    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->serverDisconnected:Z

    .line 502
    :cond_0
    new-instance p1, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$EventCallbackHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$EventCallbackHandler;-><init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public declared-synchronized isBtDeviceAvailable()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    .line 2046
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2048
    :try_start_1
    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->getBtStatus()I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    const/4 v1, 0x1

    .line 2049
    :cond_0
    monitor-exit p0

    return v1

    :catch_0
    :try_start_2
    const-string v0, "MediaCenterManager"

    const-string v2, "isBtDeviceAvailable error"

    .line 2051
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2054
    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isBtSourceSelected()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    .line 2063
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2065
    :try_start_1
    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->getBtStatus()I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    .line 2066
    :cond_0
    monitor-exit p0

    return v1

    :catch_0
    :try_start_2
    const-string v0, "MediaCenterManager"

    const-string v2, "isBtSourceSelected error"

    .line 2068
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2071
    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notifyLyricUpdate(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "MediaCenterManager"

    const-string v2, "notifyLyricUpdate"

    .line 1690
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1691
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    if-eqz v0, :cond_0

    .line 1693
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->notifyLyricUpdate(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1695
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public onServerDisconnected()V
    .locals 2

    const-string v0, "MediaCenterManager"

    const-string v1, "onServerDisconnected!"

    .line 1491
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1492
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->serverDisconnected:Z

    return-void
.end method

.method public onXUIConnected(Landroid/os/IBinder;)V
    .locals 4

    const/4 v0, 0x1

    const-string v1, "MediaCenterManager"

    const-string v2, "onXUIConnected----"

    .line 1514
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "onXUIConnected,service binder is null"

    .line 1516
    invoke-static {v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1519
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 1520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onXUIConnected,service is the same:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    .line 1522
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->serverDisconnected:Z

    .line 1523
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    .line 1525
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mPlaybackInfoListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackInfoListener;

    if-eqz p1, :cond_3

    const-string p1, "onXUIConnected,registerPlaybackInfoListener and syncMediaStatus"

    .line 1526
    invoke-static {v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mPlaybackInfoListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackInfoListener;

    invoke-interface {p1, v2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->registerPlaybackInfoListener(Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;)V

    .line 1528
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mSDPlaybackListenersMap:Landroid/util/SparseArray;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-lez p1, :cond_3

    :goto_0
    const/4 p1, 0x3

    if-gt v0, p1, :cond_3

    .line 1530
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mSDPlaybackListenersMap:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 1531
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1532
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    const-string v2, "add_monitor_displayId"

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/mediacenter/utils/ParamsBuild;->getDisplayIdParams(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->executeCmd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->syncMediaStatus(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1538
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mBTStatusListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$BTStatusListenerToService;

    if-eqz p1, :cond_4

    .line 1539
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->registerBtStatusListener(Lcom/xiaopeng/xuimanager/mediacenter/IBTStatusListener;)V

    .line 1541
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mAudioCaptureListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$AudioCaptureListener;

    if-eqz p1, :cond_5

    .line 1542
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->registerVisualizerListener(Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener;)V

    .line 1544
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVisualizerViewEnableListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualizerViewEnableServiceListener;

    if-eqz p1, :cond_6

    .line 1545
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->registerVisualizerViewEnableListener(Lcom/xiaopeng/xuimanager/mediacenter/IVisualizerViewEnableListener;)V

    .line 1547
    :cond_6
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mAvrcpEventListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$AvrcpEventListenerToService;

    if-eqz p1, :cond_7

    .line 1548
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->registerAvrcpEventListener(Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener;)V

    .line 1550
    :cond_7
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mSDVisualizerListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$SDVisualizerListenerToService;

    if-eqz p1, :cond_9

    .line 1551
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mPackageVisualizers:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    .line 1552
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mPackageVisualizers:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1553
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->registerSDVisualizerToService(Ljava/lang/String;)V

    goto :goto_1

    .line 1556
    :cond_8
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mDisplayVisualizers:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    .line 1557
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mDisplayVisualizers:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1558
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->registerSDVisualizerToService(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onXUIConnected e="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public onXUIDisconnected()V
    .locals 2

    .line 1500
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$MediaCenterEventListener;

    .line 1502
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->unregisterListener(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$MediaCenterEventListener;)V
    :try_end_0
    .catch Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized pauseBtMedia()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    .line 2031
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2033
    :try_start_1
    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->pauseBtMedia()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v0, "MediaCenterManager"

    const-string v1, "pauseBtMedia error"

    .line 2035
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2038
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public pauseRender()V
    .locals 3

    const/4 v0, 0x2

    const-string v1, "MediaCenterManager"

    const-string v2, "pauseRender"

    .line 1325
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1326
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    if-eqz v0, :cond_0

    .line 1328
    :try_start_0
    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->pauseRender()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1330
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public declared-synchronized playBtMedia()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    .line 2016
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2018
    :try_start_1
    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->playBtMedia()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v0, "MediaCenterManager"

    const-string v1, "playBtMedia error"

    .line 2020
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2023
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public playbackControl(II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1211
    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->playbackControl(III)I

    move-result p1

    return p1
.end method

.method public playbackControl(III)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "MediaCenterManager"

    const-string v2, "playbackControl"

    .line 1233
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1234
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    if-eqz v0, :cond_0

    .line 1236
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->playbackControl(III)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1238
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public registerAvrcpEventListener(Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpEventListener;)V
    .locals 5

    .line 2260
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mAvrcpEventListenerList:Ljava/util/List;

    monitor-enter v0

    .line 2261
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mAvrcpEventListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2262
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mAvrcpEventListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$AvrcpEventListenerToService;

    if-nez v1, :cond_0

    .line 2263
    new-instance v1, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$AvrcpEventListenerToService;

    invoke-direct {v1, p0, p0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$AvrcpEventListenerToService;-><init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)V

    iput-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mAvrcpEventListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$AvrcpEventListenerToService;

    .line 2264
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 2266
    :try_start_1
    invoke-interface {v2, v1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->registerAvrcpEventListener(Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "MediaCenterManager"

    .line 2268
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerAvrcpEventListener error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mAvrcpEventListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2274
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mAvrcpEventListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2276
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized registerBtStatusListener(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$BTStatusListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    .line 1969
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mBTStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    const-string v0, "MediaCenterManager"

    const-string v1, "registerBtStatusListener"

    .line 1971
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mBTStatusListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$BTStatusListenerToService;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->registerBtStatusListener(Lcom/xiaopeng/xuimanager/mediacenter/IBTStatusListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1977
    :try_start_2
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/XUIManager;->checkXUIServiceNotConnectedExceptionFromXUIService(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "MediaCenterManager"

    .line 1974
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not connect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 1981
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mBTStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MediaCenterManager"

    .line 1982
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerBtStatusListener add listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mBTStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1985
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerListener(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$MediaCenterEventListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 530
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mListeners:Ljava/util/Set;

    monitor-enter v0

    .line 531
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 533
    :try_start_1
    new-instance v1, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$MediaCenterEventListenerToService;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$MediaCenterEventListenerToService;-><init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)V

    iput-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$MediaCenterEventListenerToService;

    .line 534
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    invoke-interface {v2, v1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->registerListener(Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenterEventListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 539
    :try_start_2
    invoke-static {v1}, Lcom/xiaopeng/xuimanager/XUIManager;->checkXUIServiceNotConnectedExceptionFromXUIService(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v1, "MediaCenterManager"

    .line 536
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not connect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 542
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 543
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public registerLyricInfoListener(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfoListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 1746
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mLyricInfoListenerList:Ljava/util/List;

    monitor-enter v0

    .line 1747
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mLyricInfoListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1749
    :try_start_1
    new-instance v1, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$LyricInfoListenerToService;

    invoke-direct {v1, p0, p0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$LyricInfoListenerToService;-><init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)V

    iput-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mLyricInfoListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$LyricInfoListenerToService;

    .line 1750
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    invoke-interface {v2, v1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->registerLyricInfoListener(Lcom/xiaopeng/xuimanager/mediacenter/lyric/ILyricInfoListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1755
    :try_start_2
    invoke-static {v1}, Lcom/xiaopeng/xuimanager/XUIManager;->checkXUIServiceNotConnectedExceptionFromXUIService(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v1, "MediaCenterManager"

    .line 1752
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not connect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 1758
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mLyricInfoListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1759
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mLyricInfoListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1761
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public registerLyricUpdateListener(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$LyricUpdateListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 1723
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mLyricUpdateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1725
    :try_start_0
    new-instance v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$LyricUpdateServiceListener;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$LyricUpdateServiceListener;-><init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mLyricUpdateServiceListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$LyricUpdateServiceListener;

    .line 1726
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    invoke-interface {v1, v0}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->registerLyricUpdateListener(Lcom/xiaopeng/xuimanager/mediacenter/ILyricUpdateListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1731
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/XUIManager;->checkXUIServiceNotConnectedExceptionFromXUIService(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not connect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCenterManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 1734
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mLyricUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1735
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mLyricUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public registerModeChangedListener(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$ModeChangedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 1859
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mModeChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1861
    :try_start_0
    new-instance v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$ModeChangedServiceListener;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$ModeChangedServiceListener;-><init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mModeChangedListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$ModeChangedServiceListener;

    .line 1862
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    invoke-interface {v1, v0}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->registerModeChangedListener(Lcom/xiaopeng/xuimanager/mediacenter/IModeChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1867
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/XUIManager;->checkXUIServiceNotConnectedExceptionFromXUIService(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not connect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCenterManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 1870
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mModeChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1871
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mModeChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public registerPlaybackListener(ILcom/xiaopeng/xuimanager/mediacenter/SDPlaybackListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 1115
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mSDPlaybackListenersMap:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    const-string v1, "MediaCenterManager"

    .line 1116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerPlaybackListener with displayId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    .line 1121
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mPlaybackInfoListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackInfoListener;

    const/4 v2, 0x4

    if-nez v1, :cond_0

    .line 1122
    new-instance v1, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackInfoListener;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackInfoListener;-><init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)V

    iput-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mPlaybackInfoListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackInfoListener;

    if-eqz v1, :cond_0

    .line 1123
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    const-string v1, "MediaCenterManager"

    const-string v3, "registerPlaybackListener mPlaybackInfoListenerToService"

    .line 1125
    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    iget-object v3, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mPlaybackInfoListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackInfoListener;

    invoke-interface {v1, v3}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->registerPlaybackInfoListener(Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "MediaCenterManager"

    .line 1128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerPlaybackListener exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1133
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mSDPlaybackListenersMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_2

    .line 1135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1136
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_1

    :try_start_3
    const-string v4, "add_monitor_displayId"

    .line 1138
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/mediacenter/utils/ParamsBuild;->getDisplayIdParams(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->executeCmd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v3

    :try_start_4
    const-string v4, "MediaCenterManager"

    .line 1140
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerPlaybackListener exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v2, "MediaCenterManager"

    const-string v3, "registerPlaybackListener the service is null"

    .line 1143
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    :cond_2
    :goto_1
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1148
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1149
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mSDPlaybackListenersMap:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1151
    :cond_3
    monitor-exit v0

    return-void

    :cond_4
    const/4 p1, 0x3

    const-string p2, "MediaCenterManager"

    const-string v1, "registerPlaybackListener listener is null"

    .line 1118
    invoke-static {p1, p2, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1119
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "registerPlaybackListener listener cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 1151
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public registerPlaybackListener(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 1099
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mPlaybackListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1100
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mCompatibleListener:Lcom/xiaopeng/xuimanager/mediacenter/SDPlaybackListener;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->registerPlaybackListener(ILcom/xiaopeng/xuimanager/mediacenter/SDPlaybackListener;)V

    .line 1103
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mPlaybackListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1104
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mPlaybackListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public registerVisualizerListener(ILcom/xiaopeng/xuimanager/mediacenter/visualizer/SDVisualizerListener;)V
    .locals 3

    .line 876
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mSDVisualizerListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$SDVisualizerListenerToService;

    if-nez v0, :cond_0

    .line 877
    new-instance v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$SDVisualizerListenerToService;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$SDVisualizerListenerToService;-><init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mSDVisualizerListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$SDVisualizerListenerToService;

    .line 879
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mDisplayVisualizers:Ljava/util/HashMap;

    monitor-enter v0

    .line 880
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mDisplayVisualizers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 881
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mDisplayVisualizers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 882
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 883
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 886
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 887
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 888
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mDisplayVisualizers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->registerSDVisualizerToService(I)V

    .line 891
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerVisualizerListener(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 867
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVisualCaptureListeners:Landroid/util/ArraySet;

    monitor-enter v0

    .line 868
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVisualCaptureListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 869
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVisualCaptureListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 871
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 872
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mCompatibleVisualizerListener:Lcom/xiaopeng/xuimanager/mediacenter/visualizer/SDVisualizerListener;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->registerVisualizerListener(ILcom/xiaopeng/xuimanager/mediacenter/visualizer/SDVisualizerListener;)V

    return-void

    :catchall_0
    move-exception p1

    .line 871
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public registerVisualizerListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/mediacenter/visualizer/SDVisualizerListener;)V
    .locals 3

    const-string v0, "MediaCenterManager"

    .line 910
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerVisualizerListener pkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mSDVisualizerListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$SDVisualizerListenerToService;

    if-nez v0, :cond_0

    .line 912
    new-instance v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$SDVisualizerListenerToService;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$SDVisualizerListenerToService;-><init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mSDVisualizerListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$SDVisualizerListenerToService;

    .line 914
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mPackageVisualizers:Ljava/util/HashMap;

    monitor-enter v0

    .line 915
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mPackageVisualizers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 916
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mPackageVisualizers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 917
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 918
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 921
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 922
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 923
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mPackageVisualizers:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->registerSDVisualizerToService(Ljava/lang/String;)V

    .line 926
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerVisualizerViewEnableListener(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualizerViewEnableListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 1620
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVisualizerViewEnableListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1622
    :try_start_0
    new-instance v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualizerViewEnableServiceListener;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualizerViewEnableServiceListener;-><init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVisualizerViewEnableListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualizerViewEnableServiceListener;

    .line 1624
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    invoke-interface {v1, v0}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->registerVisualizerViewEnableListener(Lcom/xiaopeng/xuimanager/mediacenter/IVisualizerViewEnableListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1630
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/XUIManager;->checkXUIServiceNotConnectedExceptionFromXUIService(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not connect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCenterManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 1633
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVisualizerViewEnableListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1634
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVisualizerViewEnableListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public requestMediaButton(ZLandroid/os/Bundle;)V
    .locals 1

    .line 2168
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    if-eqz v0, :cond_0

    .line 2170
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->requestMediaButton(ZLandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "MediaCenterManager"

    const-string p2, "requestMediaButton exception"

    .line 2172
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public declared-synchronized setBtVolume(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    .line 2097
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2099
    :try_start_1
    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->setBtVolume(F)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p1, "MediaCenterManager"

    const-string v0, "setBtVolume error"

    .line 2101
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2104
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFavorite(Ljava/lang/String;ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    .line 2149
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2151
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "songId"

    .line 2152
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "favorite"

    .line 2153
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "displayId"

    .line 2154
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2155
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    invoke-interface {p1, v0}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->favorSong(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p1, "MediaCenterManager"

    const-string p2, "favorSong error"

    .line 2157
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2160
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFavorite(ZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    .line 2132
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2134
    :try_start_1
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->setFavorite(ZLjava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p1, "MediaCenterManager"

    const-string p2, "setFavorite error"

    .line 2136
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2139
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSDPosition(ILjava/lang/String;)V
    .locals 3

    .line 1272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSDPosition displayId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " &packageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "MediaCenterManager"

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1274
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    if-eqz v0, :cond_0

    .line 1276
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->setSDPosition(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1278
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0

    .line 1572
    sput-object p1, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mServiceName:Ljava/lang/String;

    return-void
.end method

.method public setSessionActivity(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 3

    .line 1297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSessionActivity pkgName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "MediaCenterManager"

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1298
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    if-eqz v0, :cond_0

    .line 1300
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->setSessionActivity(Ljava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1302
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setVisualCaptureObjectListener(ILcom/xiaopeng/xuimanager/mediacenter/visualizer/TypeVisualizerCaptureObjectListener;)V
    .locals 5

    .line 997
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mTypeVisualizerCaptureObjectListener:Lcom/xiaopeng/xuimanager/mediacenter/visualizer/TypeVisualizerCaptureObjectListener;

    const-string v0, "com.android.bluetooth"

    const-string v1, "com.xiaopeng.musicradio"

    const/4 v2, 0x0

    const/16 v3, 0x10

    const/4 v4, 0x1

    if-eqz p2, :cond_1

    and-int/lit8 p2, p1, 0x1

    if-ne p2, v4, :cond_0

    .line 1000
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mSDNapaListener:Lcom/xiaopeng/xuimanager/mediacenter/visualizer/SDVisualizerListener;

    invoke-virtual {p0, v2, p2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->registerVisualizerListener(ILcom/xiaopeng/xuimanager/mediacenter/visualizer/SDVisualizerListener;)V

    :cond_0
    and-int/2addr p1, v3

    if-ne p1, v3, :cond_3

    .line 1003
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mSDNapaListener:Lcom/xiaopeng/xuimanager/mediacenter/visualizer/SDVisualizerListener;

    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->registerVisualizerListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/mediacenter/visualizer/SDVisualizerListener;)V

    .line 1004
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mSDNapaListener:Lcom/xiaopeng/xuimanager/mediacenter/visualizer/SDVisualizerListener;

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->registerVisualizerListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/mediacenter/visualizer/SDVisualizerListener;)V

    goto :goto_0

    :cond_1
    and-int/lit8 p2, p1, 0x1

    if-ne p2, v4, :cond_2

    .line 1008
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mSDNapaListener:Lcom/xiaopeng/xuimanager/mediacenter/visualizer/SDVisualizerListener;

    invoke-virtual {p0, v2, p2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->unregisterVisualizerListener(ILcom/xiaopeng/xuimanager/mediacenter/visualizer/SDVisualizerListener;)V

    :cond_2
    and-int/2addr p1, v3

    if-ne p1, v3, :cond_3

    .line 1011
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mSDNapaListener:Lcom/xiaopeng/xuimanager/mediacenter/visualizer/SDVisualizerListener;

    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->unregisterVisualizerListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/mediacenter/visualizer/SDVisualizerListener;)V

    .line 1012
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mSDNapaListener:Lcom/xiaopeng/xuimanager/mediacenter/visualizer/SDVisualizerListener;

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->unregisterVisualizerListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/mediacenter/visualizer/SDVisualizerListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setVisualCaptureObjectListener(Lcom/xiaopeng/xuimanager/mediacenter/visualizer/VisualCaptureObjectListener;)V
    .locals 0

    return-void
.end method

.method public setVisualizerViewEnable(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "MediaCenterManager"

    const-string v2, "setVisualizerViewEnable"

    .line 1604
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1606
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->setVisualizerViewEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1608
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public startRender()V
    .locals 3

    const/4 v0, 0x2

    const-string v1, "MediaCenterManager"

    const-string v2, "startRender"

    .line 1311
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1312
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    if-eqz v0, :cond_0

    .line 1314
    :try_start_0
    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->startRender()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1316
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public stopMedia(IZLjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1287
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    if-eqz v0, :cond_0

    .line 1289
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->stopMedia(IZLjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1291
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaCenterManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public switchPlaySource(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 1215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchPlaySource targetSource:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    const-string v1, "MediaCenterManager"

    invoke-static {v0, v1, p2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1217
    :try_start_0
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    const/16 v0, 0x14

    const/4 v2, 0x0

    invoke-interface {p2, p1, v0, v2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->playbackControlWithBundle(IILandroid/os/Bundle;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1219
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public switchSource(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "MediaCenterManager"

    const-string v2, "switchSource"

    .line 1253
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1254
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    if-eqz v0, :cond_0

    .line 1256
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->switchSource(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1258
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public unRegisterAvrcpEventListener(Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpEventListener;)V
    .locals 4

    .line 2280
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mAvrcpEventListenerList:Ljava/util/List;

    monitor-enter v0

    .line 2281
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mAvrcpEventListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2282
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mAvrcpEventListenerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2283
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2285
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mAvrcpEventListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$AvrcpEventListenerToService;

    invoke-interface {p1, v1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->unRegisterAvrcpEventListener(Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "MediaCenterManager"

    .line 2287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unRegisterAvrcpEventListener error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized unRegisterBtStatusListener(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$BTStatusListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    .line 1994
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mBTStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MediaCenterManager"

    .line 1995
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegisterBtStatusListener remove listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mBTStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1999
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mBTStatusListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    :try_start_1
    const-string p1, "MediaCenterManager"

    const-string v0, "unRegisterBtStatusListener"

    .line 2001
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mBTStatusListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$BTStatusListenerToService;

    invoke-interface {p1, v0}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->unRegisterBtStatusListener(Lcom/xiaopeng/xuimanager/mediacenter/IBTStatusListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "MediaCenterManager"

    .line 2004
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not unregister: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2008
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public unRegisterLyricUpdateListener(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$LyricUpdateListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "MediaCenterManager"

    const-string v2, "unRegisterLyricUpdateListener"

    .line 1772
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1773
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mLyricUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1774
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mLyricUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1776
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mLyricUpdateListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1778
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mLyricUpdateServiceListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$LyricUpdateServiceListener;

    invoke-interface {p1, v0}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->unRegisterLyricUpdateListener(Lcom/xiaopeng/xuimanager/mediacenter/ILyricUpdateListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    .line 1783
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mLyricUpdateServiceListener:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$LyricUpdateServiceListener;

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not unregister: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public unRegisterModeChangedListener(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$ModeChangedListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "MediaCenterManager"

    const-string v2, "unRegisterModeChangedListener"

    .line 1882
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1883
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mModeChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1884
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mModeChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1886
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mModeChangedListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1888
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mModeChangedListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$ModeChangedServiceListener;

    invoke-interface {p1, v0}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->unRegisterModeChangedListener(Lcom/xiaopeng/xuimanager/mediacenter/IModeChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    .line 1893
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mModeChangedListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$ModeChangedServiceListener;

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not unregister: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public unRegisterPlaybackListener(ILcom/xiaopeng/xuimanager/mediacenter/SDPlaybackListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "MediaCenterManager"

    const-string v1, "unRegisterPlaybackListener"

    const/4 v2, 0x1

    .line 1174
    invoke-static {v2, v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1175
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mSDPlaybackListenersMap:Landroid/util/SparseArray;

    monitor-enter v0

    if-eqz p2, :cond_5

    .line 1181
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mSDPlaybackListenersMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1182
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1183
    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    const/4 p2, 0x4

    if-eqz v1, :cond_1

    .line 1186
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1187
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    :try_start_1
    const-string v2, "remove_monitor_displayId"

    .line 1189
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/mediacenter/utils/ParamsBuild;->getDisplayIdParams(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->executeCmd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "MediaCenterManager"

    .line 1191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unRegisterPlaybackListener exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1196
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mSDPlaybackListenersMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mPlaybackInfoListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackInfoListener;

    if-eqz p1, :cond_4

    .line 1197
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    .line 1199
    :try_start_3
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->unRegisterPlaybackInfoListener(Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_4
    const-string v1, "MediaCenterManager"

    .line 1201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerListener exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 1204
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mPlaybackInfoListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackInfoListener;

    .line 1206
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_5
    const/4 p1, 0x3

    const-string p2, "MediaCenterManager"

    const-string v1, "unRegisterPlaybackListener callback is null"

    .line 1177
    invoke-static {p1, p2, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1178
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "input listener cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1206
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public unRegisterPlaybackListener(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 1161
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mPlaybackListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1162
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mPlaybackListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1163
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mCompatibleListener:Lcom/xiaopeng/xuimanager/mediacenter/SDPlaybackListener;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->unRegisterPlaybackListener(ILcom/xiaopeng/xuimanager/mediacenter/SDPlaybackListener;)V

    :cond_0
    return-void
.end method

.method public unRegisterVisualizerListener(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualCaptureListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "MediaCenterManager"

    const-string v1, "unRegisterVisualizerListener"

    const/4 v2, 0x1

    .line 1082
    invoke-static {v2, v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1083
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVisualCaptureListeners:Landroid/util/ArraySet;

    monitor-enter v0

    .line 1084
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVisualCaptureListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1085
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVisualCaptureListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1087
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1088
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVisualCaptureListeners:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 1089
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mCompatibleVisualizerListener:Lcom/xiaopeng/xuimanager/mediacenter/visualizer/SDVisualizerListener;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->unregisterVisualizerListener(ILcom/xiaopeng/xuimanager/mediacenter/visualizer/SDVisualizerListener;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 1087
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public unRegisterVisualizerViewEnableListener(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualizerViewEnableListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "MediaCenterManager"

    const-string v2, "unRegisterVisualizerViewEnableListener"

    .line 1645
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1646
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVisualizerViewEnableListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1647
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVisualizerViewEnableListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1649
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVisualizerViewEnableListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1651
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVisualizerViewEnableListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualizerViewEnableServiceListener;

    invoke-interface {p1, v0}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->unRegisterVisualizerViewEnableListener(Lcom/xiaopeng/xuimanager/mediacenter/IVisualizerViewEnableListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    .line 1657
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVisualizerViewEnableListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VisualizerViewEnableServiceListener;

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not unregister: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public unregisterListener(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$MediaCenterEventListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "MediaCenterManager"

    const-string v1, "unregisterListener"

    const/4 v2, 0x1

    .line 553
    invoke-static {v2, v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mListeners:Ljava/util/Set;

    monitor-enter v0

    .line 555
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 556
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 558
    :try_start_1
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$MediaCenterEventListenerToService;

    invoke-interface {p1, v1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->unregisterListener(Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenterEventListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 563
    :try_start_2
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$MediaCenterEventListenerToService;

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "MediaCenterManager"

    .line 560
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not unregister: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 565
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public unregisterLyricInfoListener(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfoListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string v0, "MediaCenterManager"

    const-string v1, "unregisterLyricInfoListener"

    const/4 v2, 0x1

    .line 1794
    invoke-static {v2, v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1795
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mLyricInfoListenerList:Ljava/util/List;

    monitor-enter v0

    .line 1796
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mLyricInfoListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1797
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mLyricInfoListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1799
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1801
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mLyricInfoListenerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1803
    :try_start_1
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mLyricInfoListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$LyricInfoListenerToService;

    invoke-interface {p1, v0}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->unregisterLyricInfoListener(Lcom/xiaopeng/xuimanager/mediacenter/lyric/ILyricInfoListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p1, 0x0

    .line 1808
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mLyricInfoListenerToService:Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$LyricInfoListenerToService;

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MediaCenterManager"

    .line 1805
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not unregister: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 1799
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public unregisterVisualizerListener(ILcom/xiaopeng/xuimanager/mediacenter/visualizer/SDVisualizerListener;)V
    .locals 3

    .line 895
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mDisplayVisualizers:Ljava/util/HashMap;

    monitor-enter v0

    .line 896
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mDisplayVisualizers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 897
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mDisplayVisualizers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 898
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 899
    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 901
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 902
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mDisplayVisualizers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->unregisterSDVisualizerToService(I)V

    .line 906
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unregisterVisualizerListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/mediacenter/visualizer/SDVisualizerListener;)V
    .locals 3

    const-string v0, "MediaCenterManager"

    .line 930
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterVisualizerListener pkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mPackageVisualizers:Ljava/util/HashMap;

    monitor-enter v0

    .line 932
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mPackageVisualizers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 933
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mPackageVisualizers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 934
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 935
    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 937
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 938
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mPackageVisualizers:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->unregisterSDVisualizerToService(Ljava/lang/String;)V

    .line 942
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized venderInvoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 0

    monitor-enter p0

    .line 755
    monitor-exit p0

    return-void
.end method

.method public vendorMediaInfoNotify(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vendorMediaInfoNotify:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "MediaCenterManager"

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    if-eqz v0, :cond_0

    .line 651
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->vendorMediaInfoNotify(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 653
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public vendorNotifyLyricUpdated(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "MediaCenterManager"

    const-string v2, "notifyLyricInfoUpdated"

    .line 1707
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1709
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->notifyLyricInfoUpdated(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1711
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public declared-synchronized vendorRegister(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    const/4 p1, 0x1

    :try_start_0
    const-string v0, "MediaCenterManager"

    const-string v1, "vendorRegister"

    .line 575
    invoke-static {p1, v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 576
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 578
    :try_start_1
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->vendorRegister()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "MediaCenterManager"

    .line 580
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 584
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public vendorSetControlListener(Landroid/content/Context;Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VendorControlListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 668
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVendorControlListeners:Ljava/util/Map;

    monitor-enter v0

    .line 669
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 670
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVendorControlListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 671
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVendorControlListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 675
    :try_start_1
    new-instance v2, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackControlListener;

    invoke-direct {v2, p0, p1, p0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$PlaybackControlListener;-><init>(Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;Ljava/lang/String;Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)V

    invoke-interface {v1, p1, v2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->vendorSetControlListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackControlListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 680
    :try_start_2
    invoke-static {v1}, Lcom/xiaopeng/xuimanager/XUIManager;->checkXUIServiceNotConnectedExceptionFromXUIService(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string p2, "MediaCenterManager"

    .line 677
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not connect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2

    .line 683
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVendorControlListeners:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public vendorStartAudioSession(IILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 696
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    if-eqz v0, :cond_0

    .line 698
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->vendorStartAudioSession(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 703
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/XUIManager;->checkXUIServiceNotConnectedExceptionFromXUIService(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 700
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not connect: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "MediaCenterManager"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :cond_0
    :goto_0
    return-void
.end method

.method public vendorStopAudioSession(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 716
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    if-eqz v0, :cond_0

    .line 718
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->vendorStopAudioSession(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 723
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/XUIManager;->checkXUIServiceNotConnectedExceptionFromXUIService(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 720
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not connect: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MediaCenterManager"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :cond_0
    :goto_0
    return-void
.end method

.method public declared-synchronized vendorUnRegister(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    const/4 p1, 0x1

    :try_start_0
    const-string v0, "MediaCenterManager"

    const-string v1, "vendorUnRegister"

    .line 593
    invoke-static {p1, v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 594
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 596
    :try_start_1
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->vendorUnRegister()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "MediaCenterManager"

    .line 598
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 602
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public vendorUnSetControlListener(Landroid/content/Context;Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager$VendorControlListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    const-string p2, "MediaCenterManager"

    const-string v0, "vendorUnSetControlListener:"

    const/4 v1, 0x1

    .line 736
    invoke-static {v1, p2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 737
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVendorControlListeners:Ljava/util/Map;

    monitor-enter p2

    .line 738
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 740
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->vendorUnSetControlListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackControlListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 745
    :try_start_2
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mVendorControlListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    monitor-exit p2

    return-void

    :catch_0
    move-exception p1

    const-string v0, "MediaCenterManager"

    .line 742
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not unregister: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :catchall_0
    move-exception p1

    .line 746
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public vendorUpdatePlaybackStatus(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vendorUpdatePlaybackStatus status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "MediaCenterManager"

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    if-eqz v0, :cond_0

    .line 614
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->vendorUpdatePlaybackStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 616
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public vendorUpdatePosition(JJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vendorUpdatePosition position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "MediaCenterManager"

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 631
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->mService:Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;

    if-eqz v0, :cond_0

    .line 633
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenter;->vendorUpdatePosition(JJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 635
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :cond_0
    :goto_0
    return-void
.end method
