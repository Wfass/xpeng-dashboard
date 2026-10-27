.class public final Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;
.super Lcom/car/opensdk/pipebus/IPipeBus$Stub;
.source "OpenCarManagerService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$BusRecord;,
        Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OpenCarManagerService##"

.field private static final mCmdWhitelist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final mManagerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final mModuleBitsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static serviceReady:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDirectModulesMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$BusRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->serviceReady:Z

    .line 52
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mManagerMap:Ljava/util/HashMap;

    .line 53
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mModuleBitsMap:Ljava/util/HashMap;

    .line 54
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mCmdWhitelist:Ljava/util/HashSet;

    .line 57
    sget-object v1, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mManagerMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->getModuleName()Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;

    move-result-object v3

    .line 57
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v1, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mManagerMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->getModuleName()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;

    move-result-object v3

    .line 59
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v1, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mManagerMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/MessageRouterService;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/MessageRouterService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/opensdk/manager/MessageRouterService;->getModuleName()Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/MessageRouterService;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/MessageRouterService;

    move-result-object v3

    .line 61
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v1, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mManagerMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->getModuleName()Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;

    move-result-object v3

    .line 63
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v1, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mManagerMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;->getModuleName()Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;

    move-result-object v3

    .line 65
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v1, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mManagerMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->getModuleName()Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;

    move-result-object v3

    .line 67
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v1, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mManagerMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->getModuleName()Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;

    move-result-object v3

    .line 69
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v1, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mManagerMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->getModuleName()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;

    move-result-object v3

    .line 71
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v1, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mManagerMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->getModuleName()Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;

    move-result-object v3

    .line 73
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v1, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mManagerMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/DeviceServer;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/DeviceServer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/opensdk/manager/DeviceServer;->getModuleName()Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/DeviceServer;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/DeviceServer;

    move-result-object v3

    .line 75
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v1, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mManagerMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->getModuleName()Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;

    move-result-object v3

    .line 77
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v1, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mManagerMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/ScreenTaskManager;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/ScreenTaskManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/opensdk/manager/ScreenTaskManager;->getModuleName()Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/ScreenTaskManager;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/ScreenTaskManager;

    move-result-object v3

    .line 79
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v1, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mManagerMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager;->getModuleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v1, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mModuleBitsMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->getModuleName()Ljava/lang/String;

    move-result-object v2

    .line 85
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 84
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v1, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mModuleBitsMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/MessageRouterService;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/MessageRouterService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/opensdk/manager/MessageRouterService;->getModuleName()Ljava/lang/String;

    move-result-object v2

    .line 87
    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 86
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v1, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mModuleBitsMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->getModuleName()Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 88
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mModuleBitsMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/ATLv2Manager;->getModuleName()Ljava/lang/String;

    move-result-object v1

    .line 91
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 90
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mModuleBitsMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/AmbientManagerService;->getModuleName()Ljava/lang/String;

    move-result-object v1

    .line 93
    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 92
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mModuleBitsMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->getModuleName()Ljava/lang/String;

    move-result-object v1

    .line 95
    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 94
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mModuleBitsMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->getModuleName()Ljava/lang/String;

    move-result-object v1

    .line 97
    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 96
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mModuleBitsMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/DeviceServer;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/DeviceServer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/DeviceServer;->getModuleName()Ljava/lang/String;

    move-result-object v1

    .line 99
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 98
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mModuleBitsMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->getModuleName()Ljava/lang/String;

    move-result-object v1

    .line 101
    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 100
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mModuleBitsMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->getModuleName()Ljava/lang/String;

    move-result-object v1

    .line 103
    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 102
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mModuleBitsMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->getModuleName()Ljava/lang/String;

    move-result-object v1

    .line 105
    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 104
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mModuleBitsMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/ScreenTaskManager;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/ScreenTaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/ScreenTaskManager;->getModuleName()Ljava/lang/String;

    move-result-object v1

    .line 107
    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 106
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mModuleBitsMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/VoiceManager;->getModuleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mCmdWhitelist:Ljava/util/HashSet;

    new-instance v1, Landroid/util/Pair;

    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->getModuleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "carManagerInit"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 215
    invoke-direct {p0}, Lcom/car/opensdk/pipebus/IPipeBus$Stub;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mDirectModulesMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mListenersMap:Ljava/util/HashMap;

    .line 216
    const-string v0, "OpenCarManagerService##"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->setModuleLogLevel(Ljava/lang/String;I)V

    .line 217
    const-string v0, "OpenCarManagerService##"

    const-string v1, "create OpenCarManagerService"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mContext:Landroid/content/Context;

    .line 219
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/opensdk/-$$Lambda$OpenCarManagerService$8tN7BhSY0CWNbkRqG7jXBZ-Yts8;->INSTANCE:Lcom/xiaopeng/xuiservice/opensdk/-$$Lambda$OpenCarManagerService$8tN7BhSY0CWNbkRqG7jXBZ-Yts8;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 237
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mListenersMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->moduleListenerRemoveTry(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    .line 46
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mManagerMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mDirectModulesMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static getModuleBitsMap()Ljava/util/HashMap;
    .locals 1

    .line 538
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mModuleBitsMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private isInWhitelist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;

    .line 356
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mCmdWhitelist:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 357
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 358
    const/4 v0, 0x1

    return v0

    .line 360
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 361
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isReady()Z
    .locals 1

    .line 240
    sget-boolean v0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->serviceReady:Z

    return v0
.end method

.method static synthetic lambda$new$0()V
    .locals 5

    .line 220
    const-string v0, "OpenCarManagerService##"

    const-string v1, "manager init begin"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->init()V

    .line 224
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mManagerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;

    .line 225
    .local v1, "manager":Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;->init()V

    goto :goto_1

    .line 228
    :cond_0
    const-string v2, "OpenCarManagerService##"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not enabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;->getModuleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .end local v1    # "manager":Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;
    :goto_1
    goto :goto_0

    .line 231
    :cond_1
    const-string v0, "OpenCarManagerService##"

    const-string v1, "manager init end"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-class v0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;

    monitor-enter v0

    .line 233
    :try_start_0
    const-class v1, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 234
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->serviceReady:Z

    .line 236
    return-void

    .line 234
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private moduleListenerRemoveTry(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 542
    const/4 v0, 0x0

    .line 543
    .local v0, "pidLive":Z
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mListenersMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 544
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mListenersMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 545
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mListenersMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;

    .line 546
    .local v3, "record1":Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;
    iget-object v4, v3, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;->moduleList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 547
    const/4 v0, 0x1

    .line 548
    goto :goto_1

    .line 550
    .end local v3    # "record1":Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;
    :cond_0
    goto :goto_0

    .line 552
    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 553
    if-nez v0, :cond_3

    .line 554
    sget-object v1, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mManagerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;

    .line 555
    .local v1, "manager":Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;
    if-eqz v1, :cond_2

    .line 556
    const-string v2, "OpenCarManagerService##"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moduleListenerRemoveTry, clear:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    monitor-enter v1

    .line 558
    :try_start_1
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;->removeListener()V

    .line 559
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 561
    :cond_2
    const-string v2, "OpenCarManagerService##"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moduleListenerRemoveTry, manager not found:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    .end local v1    # "manager":Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;
    :cond_3
    :goto_2
    return-void

    .line 552
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 499
    const/4 v0, 0x0

    .line 501
    .local v0, "dumpAll":Z
    const/4 v1, 0x0

    .line 502
    .local v1, "opti":I
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_6

    .line 503
    aget-object v2, p3, v1

    .line 504
    .local v2, "opt":Ljava/lang/String;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    .line 505
    goto :goto_3

    .line 507
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 508
    const-string v3, "-a"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 509
    const/4 v0, 0x1

    .line 510
    goto :goto_3

    .line 511
    :cond_1
    const-string v3, "-h"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 512
    invoke-static {p2}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 513
    return-void

    .line 514
    :cond_2
    const-string v3, "-m"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "-module"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 525
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown argument: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; use -h for help"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v2    # "opt":Ljava/lang/String;
    goto :goto_2

    .line 515
    .restart local v2    # "opt":Ljava/lang/String;
    :cond_4
    :goto_1
    array-length v3, p3

    if-ge v1, v3, :cond_5

    .line 516
    aget-object v2, p3, v1

    .line 517
    add-int/lit8 v1, v1, 0x1

    .line 518
    if-eqz v2, :cond_5

    .line 520
    invoke-static {p2, v2, p3, v1}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->dumpModule(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;I)V

    .line 521
    return-void

    .line 527
    .end local v2    # "opt":Ljava/lang/String;
    :cond_5
    :goto_2
    goto :goto_0

    .line 529
    :cond_6
    :goto_3
    if-eqz v0, :cond_7

    .line 530
    const-string v2, "dump OpenCarManagerService##"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 531
    sget-object v2, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mManagerMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;

    .line 532
    .local v3, "manager":Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;
    invoke-virtual {v3, p2, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 533
    .end local v3    # "manager":Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;
    goto :goto_4

    .line 535
    :cond_7
    return-void
.end method

.method public getModuleImplementor(Ljava/lang/String;)Lcom/car/opensdk/pipebus/IPipeBus;
    .locals 5
    .param p1, "moduleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 484
    const-string v0, "OpenCarManagerService##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getModuleImplementor,moduleName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const/4 v0, 0x0

    .line 486
    .local v0, "pipeBus":Lcom/car/opensdk/pipebus/IPipeBus;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mDirectModulesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$BusRecord;

    .line 487
    .local v1, "record":Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$BusRecord;
    if-eqz v1, :cond_0

    .line 488
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$BusRecord;->bus:Lcom/car/opensdk/pipebus/IPipeBus;

    .line 490
    :cond_0
    if-nez v0, :cond_1

    .line 491
    const-string v2, "OpenCarManagerService##"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getModuleImplementor null for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :cond_1
    return-object v0
.end method

.method public ioControl(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 245
    const/4 v0, -0x1

    .line 246
    .local v0, "ret":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 247
    .local v1, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 248
    .local v2, "uid":I
    const-string v3, "OpenCarManagerService##"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ioControl,module="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",cmd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",call pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->isInWhitelist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 252
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->isSdkInit(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 253
    const/4 v3, -0x2

    return v3

    .line 257
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;

    move-result-object v3

    invoke-virtual {v3, v1, v2, p1}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->isModuleAuth(IILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 258
    const/4 v3, -0x3

    return v3

    .line 262
    :cond_1
    sget-object v3, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mManagerMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;

    .line 263
    .local v3, "manager":Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;
    if-eqz v3, :cond_2

    .line 264
    invoke-virtual {v3, p2, p3, v1, v2}, Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;->ioControl(Ljava/lang/String;[Ljava/lang/String;II)I

    move-result v0

    goto :goto_0

    .line 266
    :cond_2
    const-string v4, "OpenCarManagerService##"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ioControl, module not found:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :goto_0
    return v0
.end method

.method public ioControlWithBytes(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[B[B)I
    .locals 13
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/String;
    .param p4, "bytesIn"    # [B
    .param p5, "bytesOut"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p1

    .line 301
    const/4 v1, -0x1

    .line 302
    .local v1, "ret":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 303
    .local v9, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 304
    .local v10, "uid":I
    const-string v2, "OpenCarManagerService##"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ioControlWithBytes,module="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",cmd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v11, p2

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",call pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-direct {p0, v0, v11}, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->isInWhitelist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 308
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->isSdkInit(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 309
    const/4 v2, -0x2

    return v2

    .line 313
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;

    move-result-object v2

    invoke-virtual {v2, v9, v10, v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->isModuleAuth(IILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 314
    const/4 v2, -0x3

    return v2

    .line 318
    :cond_1
    sget-object v2, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mManagerMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;

    .line 319
    .local v12, "manager":Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;
    if-eqz v12, :cond_2

    .line 320
    move-object v2, v12

    move-object v3, v11

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move v7, v9

    move v8, v10

    invoke-virtual/range {v2 .. v8}, Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;->ioControlWithBytes(Ljava/lang/String;[Ljava/lang/String;[B[BII)I

    move-result v1

    goto :goto_0

    .line 322
    :cond_2
    const-string v2, "OpenCarManagerService##"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ioControlWithBytes, module not found:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :goto_0
    return v1
.end method

.method public ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/car/opensdk/pipebus/ParcelableData;Lcom/car/opensdk/pipebus/ParcelableData;)I
    .locals 10
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "dataIn"    # Lcom/car/opensdk/pipebus/ParcelableData;
    .param p4, "dataOut"    # Lcom/car/opensdk/pipebus/ParcelableData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 273
    const/4 v0, -0x1

    .line 274
    .local v0, "ret":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 275
    .local v7, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 276
    .local v8, "uid":I
    const-string v1, "OpenCarManagerService##"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ioControlWithParcelable,module="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",cmd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",call pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->isInWhitelist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 280
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->isSdkInit(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    const/4 v1, -0x2

    return v1

    .line 285
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;

    move-result-object v1

    invoke-virtual {v1, v7, v8, p1}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->isModuleAuth(IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 286
    const/4 v1, -0x3

    return v1

    .line 290
    :cond_1
    sget-object v1, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mManagerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;

    .line 291
    .local v9, "manager":Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;
    if-eqz v9, :cond_2

    .line 292
    move-object v1, v9

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, v7

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;->ioControlWithParcelable(Ljava/lang/String;Lcom/car/opensdk/pipebus/ParcelableData;Lcom/car/opensdk/pipebus/ParcelableData;II)I

    move-result v0

    goto :goto_0

    .line 294
    :cond_2
    const-string v1, "OpenCarManagerService##"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ioControlWithParcelable, module not found:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :goto_0
    return v0
.end method

.method public ioControlWithPocket(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/String;
    .param p4, "results"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 329
    const/4 v0, -0x1

    .line 330
    .local v0, "ret":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 331
    .local v7, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 332
    .local v8, "uid":I
    const-string v1, "OpenCarManagerService##"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ioControlWithPocket,module="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",cmd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",call pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->isInWhitelist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 336
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->isSdkInit(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 337
    const/4 v1, -0x2

    return v1

    .line 341
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;

    move-result-object v1

    invoke-virtual {v1, v7, v8, p1}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->isModuleAuth(IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 342
    const/4 v1, -0x3

    return v1

    .line 346
    :cond_1
    sget-object v1, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mManagerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;

    .line 347
    .local v9, "manager":Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;
    if-eqz v9, :cond_2

    .line 348
    move-object v1, v9

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, v7

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;->ioControlWithPocket(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;II)I

    move-result v0

    goto :goto_0

    .line 350
    :cond_2
    const-string v1, "OpenCarManagerService##"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ioControlWithPocket, module not found:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :goto_0
    return v0
.end method

.method public onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "events"    # [Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mListenersMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mListenersMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 128
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;

    .line 130
    .local v2, "record":Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;->moduleList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 132
    :try_start_1
    iget-object v3, v2, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/car/opensdk/pipebus/IPipeBusListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    goto :goto_1

    .line 133
    :catch_0
    move-exception v3

    .line 134
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "OpenCarManagerService##"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPipeBusNotify, e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .end local v2    # "record":Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    goto :goto_0

    .line 138
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;>;"
    :cond_1
    monitor-exit v0

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 5
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "events"    # [Ljava/lang/String;
    .param p4, "pid"    # I

    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "record":Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mListenersMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 145
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mListenersMap:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;

    move-object v0, v2

    .line 146
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;->moduleList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    :try_start_1
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/car/opensdk/pipebus/IPipeBusListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OpenCarManagerService##"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPipeBusNotify, e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",target pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 154
    :cond_0
    const-string v1, "OpenCarManagerService##"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPipeBusNotify,target pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",module="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",record="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :goto_1
    return-void

    .line 146
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public registerListener(Ljava/lang/String;Lcom/car/opensdk/pipebus/IPipeBusListener;)V
    .locals 8
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "iPipeBusListener"    # Lcom/car/opensdk/pipebus/IPipeBusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 366
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 367
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 368
    .local v1, "uid":I
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->isSdkInit(I)Z

    move-result v2

    .line 369
    .local v2, "sdkVerified":Z
    const-string v3, "OpenCarManagerService##"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerListener,module="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",l="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/car/opensdk/pipebus/IPipeBusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",sdkVerified="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    if-nez v2, :cond_0

    .line 373
    return-void

    .line 377
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;

    move-result-object v3

    invoke-virtual {v3, v0, v1, p1}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->isModuleAuth(IILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 378
    const-string v3, "OpenCarManagerService##"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "module auth fail:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    return-void

    .line 382
    :cond_1
    const/4 v3, 0x0

    .line 383
    .local v3, "record":Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mListenersMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 384
    :try_start_0
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mListenersMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;

    move-object v3, v5

    .line 385
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 386
    if-nez v3, :cond_2

    .line 387
    new-instance v4, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;

    invoke-direct {v4, p0, p2, v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;-><init>(Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;Lcom/car/opensdk/pipebus/IPipeBusListener;II)V

    move-object v3, v4

    .line 389
    :try_start_1
    invoke-interface {p2}, Lcom/car/opensdk/pipebus/IPipeBusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 393
    nop

    .line 394
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mListenersMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 395
    :try_start_2
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mListenersMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 390
    :catch_0
    move-exception v4

    .line 391
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "OpenCarManagerService##"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "linkToDeath e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    return-void

    .line 399
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    move-object v5, v3

    .end local v3    # "record":Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;
    .local v5, "record":Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;
    sget-object v3, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mManagerMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;

    .line 400
    .local v6, "manager":Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;
    if-eqz v6, :cond_3

    .line 401
    monitor-enter v6

    .line 402
    :try_start_3
    invoke-virtual {v6, p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;->addListener(Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;)V

    .line 403
    monitor-exit v6

    goto :goto_1

    :catchall_1
    move-exception v3

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 405
    :cond_3
    const-string v3, "OpenCarManagerService##"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "registerListener, manager not found:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :goto_1
    iget-object v7, v5, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;->moduleList:Ljava/util/List;

    monitor-enter v7

    .line 409
    :try_start_4
    iget-object v3, v5, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;->moduleList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 410
    iget-object v3, v5, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;->moduleList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_4
    monitor-exit v7

    .line 413
    return-void

    .line 412
    :catchall_2
    move-exception v3

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v3

    .line 385
    .end local v5    # "record":Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;
    .end local v6    # "manager":Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;
    .restart local v3    # "record":Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;
    :catchall_3
    move-exception v5

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v5
.end method

.method public registerModuleImplementor(Ljava/lang/String;Lcom/car/opensdk/pipebus/IPipeBus;)V
    .locals 9
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "iPipeBus"    # Lcom/car/opensdk/pipebus/IPipeBus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 458
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 459
    .local v6, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 461
    .local v7, "uid":I
    const-string v0, "OpenCarManagerService##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerModuleImplementor,moduleName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",iPipeBus class="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 461
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    new-instance v8, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$BusRecord;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p2

    move v3, v6

    move v4, v7

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$BusRecord;-><init>(Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;Lcom/car/opensdk/pipebus/IPipeBus;IILjava/lang/String;)V

    .line 464
    .local v0, "record":Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$BusRecord;
    invoke-interface {p2}, Lcom/car/opensdk/pipebus/IPipeBus;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 465
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mDirectModulesMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 466
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mDirectModulesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    monitor-exit v1

    .line 468
    return-void

    .line 467
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public unRegisterListener(Ljava/lang/String;)V
    .locals 7
    .param p1, "moduleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 417
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 418
    .local v0, "pid":I
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarManagerServer;->isSdkInit(I)Z

    move-result v1

    .line 419
    .local v1, "sdkVerified":Z
    const-string v2, "OpenCarManagerService##"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unRegisterListener, module="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",sdkVerified="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    if-nez v1, :cond_0

    .line 423
    return-void

    .line 426
    :cond_0
    const/4 v2, 0x0

    .line 427
    .local v2, "record":Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mListenersMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 428
    :try_start_0
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mListenersMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;

    move-object v2, v4

    .line 429
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 430
    if-nez v2, :cond_1

    .line 431
    const-string v3, "OpenCarManagerService##"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no listener for:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    return-void

    .line 435
    :cond_1
    iget-object v4, v2, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;->moduleList:Ljava/util/List;

    monitor-enter v4

    .line 436
    :try_start_1
    iget-object v3, v2, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;->moduleList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 437
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 439
    iget-object v3, v2, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;->moduleList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 441
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mListenersMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 442
    :try_start_2
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mListenersMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 445
    :try_start_3
    iget-object v3, v2, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;

    invoke-interface {v3}, Lcom/car/opensdk/pipebus/IPipeBusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 446
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$PipeListenerRecord;->listener:Lcom/car/opensdk/pipebus/IPipeBusListener;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 449
    goto :goto_0

    .line 447
    :catch_0
    move-exception v3

    .line 448
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "OpenCarManagerService##"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unlinkToDeath e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v2, 0x0

    goto :goto_1

    .line 443
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 453
    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->moduleListenerRemoveTry(Ljava/lang/String;)V

    .line 454
    return-void

    .line 437
    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v3

    .line 429
    :catchall_2
    move-exception v4

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v4
.end method

.method public unRegisterModuleImplementor(Ljava/lang/String;Lcom/car/opensdk/pipebus/IPipeBus;)V
    .locals 3
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "iPipeBus"    # Lcom/car/opensdk/pipebus/IPipeBus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 472
    const-string v0, "OpenCarManagerService##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegisterModuleImplementor,module="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mDirectModulesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$BusRecord;

    .line 474
    .local v0, "record":Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$BusRecord;
    if-eqz v0, :cond_0

    .line 475
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService$BusRecord;->bus:Lcom/car/opensdk/pipebus/IPipeBus;

    invoke-interface {v1}, Lcom/car/opensdk/pipebus/IPipeBus;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 477
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mDirectModulesMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 478
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/OpenCarManagerService;->mDirectModulesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    monitor-exit v1

    .line 480
    return-void

    .line 479
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
