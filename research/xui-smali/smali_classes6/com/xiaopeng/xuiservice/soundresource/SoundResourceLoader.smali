.class public Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;
.super Ljava/lang/Object;
.source "SoundResourceLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;,
        Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundResourceLoaderHolder;,
        Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$ResourceListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_BOOT_RSC_PATH:Ljava/lang/String; = "/system/media/audio/sndresource/boot"

.field private static final DEFAULT_THEME_RSC_PATH:Ljava/lang/String; = "/system/media/audio/sndresource/theme"

.field private static final GLOBAL_CONFIG_FILE:Ljava/lang/String; = "config.txt"

.field private static final KEY_GROUP:Ljava/lang/String; = "group"

.field private static final KEY_ID_MAP:Ljava/lang/String; = "idMap"

.field private static final KEY_NAME_MAP:Ljava/lang/String; = "nameMap"

.field private static final KEY_PREVIEW_NAME:Ljava/lang/String; = "previewname"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final PROPERTY_SOUND_BOOT_INDEX:Ljava/lang/String; = "persist.xiaopeng.soundboot.index"

.field private static final PROPERTY_SOUND_BOOT_SWITCH:Ljava/lang/String; = "persist.xiaopeng.soundboot.switch"

.field private static final PROPERTY_SOUND_THEME_INDEX:Ljava/lang/String; = "persist.xiaopeng.soundtheme.index"

.field private static final PROPERTY_SOUND_THEME_PATH:Ljava/lang/String; = "persist.xiaopeng.soundtheme.path"

.field private static final RESOURCE_DESCRIPTION_FILE:Ljava/lang/String; = "desc.txt"

.field private static final SOUND_THEME_DAY_PIC:Ljava/lang/String; = "/day.png"

.field private static final SOUND_THEME_NIGHT_PIC:Ljava/lang/String; = "/night.png"

.field private static final TAG:Ljava/lang/String; = "SoundResourceLoader"

.field private static bootSoundIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static bootSoundNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static bootSoundOperationResMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static hasAmp:Z

.field private static final mBootSoundResourceGroup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/SparseArray<",
            "Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile mPendingBootSoundOperationRedId:Ljava/lang/String;

.field private static mSoundBootResourcePath:Ljava/lang/String;

.field private static mSoundThemeResourcePath:Ljava/lang/String;

.field private static nameMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static themeMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private static final themeResTypeMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final KEY_SOUND_MODE:Ljava/lang/String;

.field private isPrivateSoundMode:Z

.field private mBootSoundGroupIndex:I

.field private mBootSoundOnOff:I

.field private mBootSoundResourceIdx:I

.field private mContext:Landroid/content/Context;

.field private mLastBootSoundResourceIdx:I

.field private mListener:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$ResourceListener;

.field private mSoundThemeIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->themeResTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->nameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->themeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->bootSoundOperationResMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mPendingBootSoundOperationRedId:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mBootSoundResourceGroup:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->bootSoundIdMap:Ljava/util/HashMap;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->bootSoundNameMap:Ljava/util/HashMap;

    .line 68
    const-string v0, "AMP"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->hasAmp:Z

    .line 79
    const-string v0, "/system/media/audio/sndresource/theme"

    sput-object v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mSoundThemeResourcePath:Ljava/lang/String;

    .line 80
    const-string v0, "/system/media/audio/sndresource/boot"

    sput-object v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mSoundBootResourcePath:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mSoundThemeIndex:I

    .line 69
    iput v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mBootSoundGroupIndex:I

    .line 70
    iput v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mBootSoundResourceIdx:I

    .line 71
    iput v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mLastBootSoundResourceIdx:I

    .line 72
    iput v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mBootSoundOnOff:I

    .line 73
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->isPrivateSoundMode:Z

    .line 74
    const-string v1, "XpMainDriverMode"

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->KEY_SOUND_MODE:Ljava/lang/String;

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mListener:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$ResourceListener;

    .line 91
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mContext:Landroid/content/Context;

    .line 93
    iget v1, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mSoundThemeIndex:I

    if-ne v0, v1, :cond_0

    .line 95
    const-string v0, "persist.xiaopeng.soundtheme.index"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mSoundThemeIndex:I

    .line 97
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$1;

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;

    .line 37
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->isPrivateSoundMode:Z

    return v0
.end method

.method static synthetic access$202(Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;
    .param p1, "x1"    # Z

    .line 37
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->isPrivateSoundMode:Z

    return p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static calculateStringValue(Ljava/lang/String;)I
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .line 293
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 294
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .line 295
    .local v1, "sum":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 296
    aget-byte v3, v0, v2

    add-int/2addr v1, v3

    .line 295
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 298
    .end local v2    # "i":I
    :cond_0
    add-int/lit16 v1, v1, 0x2710

    .line 300
    return v1
.end method

.method private checkBootSoundGroupIndex()V
    .locals 4

    .line 713
    sget-object v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mBootSoundResourceGroup:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 714
    .local v0, "groupSize":I
    sget-boolean v1, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->hasAmp:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->isPrivateSoundMode:Z

    if-nez v1, :cond_0

    .line 716
    const/4 v1, 0x2

    iput v1, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mBootSoundGroupIndex:I

    goto :goto_0

    .line 719
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mBootSoundGroupIndex:I

    .line 721
    :goto_0
    const-string v1, "SoundResourceLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkBootSoundGroupIndex,group size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",hasAmp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->hasAmp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",boot sound group="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mBootSoundGroupIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    return-void
.end method

.method private getCurrentBootSoundGroup()Landroid/util/SparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;",
            ">;"
        }
    .end annotation

    .line 726
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->checkBootSoundGroupIndex()V

    .line 727
    sget-object v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mBootSoundResourceGroup:Ljava/util/HashMap;

    iget v1, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mBootSoundGroupIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 729
    .local v0, "curretGroup":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;>;"
    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;
    .locals 1

    .line 112
    invoke-static {}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundResourceLoaderHolder;->access$100()Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;

    move-result-object v0

    return-object v0
.end method

.method private static getResourceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "nameId"    # Ljava/lang/String;

    .line 202
    invoke-static {}, Lcom/xiaopeng/util/LocaleStrings;->getInstance()Lcom/xiaopeng/util/LocaleStrings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/util/LocaleStrings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, "name"

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private static loadBootGlobalConfig(Ljava/lang/String;)V
    .locals 8
    .param p0, "path"    # Ljava/lang/String;

    .line 336
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "content":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 338
    const-string v1, "SoundResourceLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadBootGlobalConfig,no data on:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    return-void

    .line 342
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 343
    .local v1, "obj":Lorg/json/JSONObject;
    const-string/jumbo v2, "version"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 344
    .local v2, "version":I
    const-string v3, "idMap"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 345
    .local v3, "map":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 345
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 346
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 347
    .local v5, "key":Ljava/lang/String;
    sget-object v6, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->bootSoundIdMap:Ljava/util/HashMap;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->calculateStringValue(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    .end local v5    # "key":Ljava/lang/String;
    goto :goto_0

    .line 349
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    const-string v4, "nameMap"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    move-object v3, v4

    .line 350
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 350
    .restart local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 351
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 352
    .restart local v5    # "key":Ljava/lang/String;
    sget-object v6, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->bootSoundNameMap:Ljava/util/HashMap;

    const-string v7, "XPeng Boot Sound"

    invoke-virtual {v3, v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .end local v5    # "key":Ljava/lang/String;
    goto :goto_1

    .line 354
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    const-string v4, "SoundResourceLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadBootGlobalConfig,ver="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",bootSoundIdMap="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->bootSoundIdMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",bootSoundNameMap="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->bootSoundNameMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    .end local v1    # "obj":Lorg/json/JSONObject;
    .end local v2    # "version":I
    .end local v3    # "map":Lorg/json/JSONObject;
    goto :goto_2

    .line 356
    :catch_0
    move-exception v1

    .line 357
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SoundResourceLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadBootGlobalConfig e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public static loadBootRscFromDisk(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;",
            ">;"
        }
    .end annotation

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "config.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->loadBootGlobalConfig(Ljava/lang/String;)V

    .line 305
    const/4 v0, 0x0

    move-object v1, v0

    .line 307
    .local v1, "resList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;>;"
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 308
    .local v2, "mfile":Ljava/io/File;
    nop

    .line 312
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 313
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 314
    .local v3, "files":[Ljava/io/File;
    if-nez v3, :cond_0

    .line 315
    const-string v4, "SoundResourceLoader"

    const-string v5, "empty folder"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    return-object v0

    .line 318
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 319
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 321
    aget-object v4, v3, v0

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->loadBootSoundFiles(Ljava/io/File;)Ljava/util/List;

    move-result-object v4

    move-object v1, v4

    .line 318
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    .end local v0    # "i":I
    :cond_2
    const-string v0, "SoundResourceLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadBootRscFromDisk,group size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mBootSoundResourceGroup:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .end local v3    # "files":[Ljava/io/File;
    goto :goto_1

    .line 326
    :cond_3
    const-string v0, "SoundResourceLoader"

    const-string v3, "loadBootRscFromDisk, not folder"

    invoke-static {v0, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    .end local v2    # "mfile":Ljava/io/File;
    :goto_1
    goto :goto_2

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SoundResourceLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadBootRscFromDisk fail e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v1
.end method

.method private static loadBootSoundFiles(Ljava/io/File;)Ljava/util/List;
    .locals 20
    .param p0, "fileIn"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;",
            ">;"
        }
    .end annotation

    .line 362
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 363
    .local v1, "files":[Ljava/io/File;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 364
    const-string v0, "SoundResourceLoader"

    const-string v3, "loadBootSoundFiles, file is null"

    invoke-static {v0, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    return-object v2

    .line 368
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 369
    .local v3, "absolutePath":Ljava/lang/String;
    const-string v0, "SoundResourceLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadBootSoundFiles from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "desc.txt"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 372
    .local v4, "content":Ljava/lang/String;
    const/4 v5, -0x1

    .line 373
    .local v5, "groupId":I
    move-object v6, v2

    .line 375
    .local v6, "selfNameMap":Lorg/json/JSONObject;
    const/4 v7, -0x1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 376
    .local v0, "obj":Lorg/json/JSONObject;
    const-string v8, "group"

    invoke-virtual {v0, v8, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    move v5, v8

    .line 377
    const-string v8, "nameMap"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v8

    .line 380
    .end local v0    # "obj":Lorg/json/JSONObject;
    goto :goto_0

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "SoundResourceLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadBootSoundFiles e="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x1

    if-ge v5, v0, :cond_1

    .line 383
    const-string v0, "SoundResourceLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadBootSoundFiles,invalid group id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    return-object v2

    .line 387
    :cond_1
    sget-object v2, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mBootSoundResourceGroup:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 388
    .local v2, "group":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;>;"
    if-nez v2, :cond_2

    .line 389
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    move-object v2, v8

    .line 390
    sget-object v8, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mBootSoundResourceGroup:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    :cond_2
    const/4 v8, 0x0

    .line 393
    .local v8, "bootSoundResourceList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;>;"
    array-length v9, v1

    const/4 v10, 0x0

    move-object v11, v8

    move v8, v10

    .end local v8    # "bootSoundResourceList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;>;"
    .local v11, "bootSoundResourceList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;>;"
    :goto_1
    if-ge v8, v9, :cond_7

    aget-object v12, v1, v8

    .line 394
    .local v12, "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    .line 395
    .local v13, "fileName":Ljava/lang/String;
    const-string v14, "desc.txt"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 396
    new-instance v14, Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;

    invoke-direct {v14}, Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;-><init>()V

    .line 397
    .local v14, "resource":Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x4

    invoke-virtual {v13, v10, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 398
    .local v15, "prefix":Ljava/lang/String;
    sget-object v10, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->bootSoundIdMap:Ljava/util/HashMap;

    invoke-virtual {v10, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 399
    .local v10, "obj":Ljava/lang/Integer;
    if-eqz v10, :cond_3

    .line 400
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v14, v0}, Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;->setResId(I)V

    goto :goto_2

    .line 402
    :cond_3
    invoke-virtual {v14, v7}, Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;->setResId(I)V

    .line 404
    :goto_2
    if-eqz v6, :cond_4

    .line 405
    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;->setFriendlyName(Ljava/lang/String;)V

    goto :goto_3

    .line 407
    :cond_4
    sget-object v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->bootSoundNameMap:Ljava/util/HashMap;

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v14, v0}, Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;->setFriendlyName(Ljava/lang/String;)V

    .line 409
    :goto_3
    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/String;

    .line 410
    .local v7, "path":[Ljava/lang/String;
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    const/16 v16, 0x0

    aput-object v17, v7, v16

    .line 411
    invoke-virtual {v14, v7}, Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;->setResPath([Ljava/lang/String;)V

    .line 413
    const-string v0, "SoundResourceLoader"

    move-object/from16 v18, v1

    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "files":[Ljava/io/File;
    .local v18, "files":[Ljava/io/File;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v3

    const-string v3, "loadBootSoundFiles,find :"

    .end local v3    # "absolutePath":Ljava/lang/String;
    .local v19, "absolutePath":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-virtual {v14}, Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;->getResId()I

    move-result v0

    invoke-virtual {v2, v0, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 415
    if-nez v11, :cond_5

    .line 416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 418
    :cond_5
    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v7    # "path":[Ljava/lang/String;
    .end local v10    # "obj":Ljava/lang/Integer;
    .end local v12    # "file":Ljava/io/File;
    .end local v13    # "fileName":Ljava/lang/String;
    .end local v14    # "resource":Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;
    .end local v15    # "prefix":Ljava/lang/String;
    goto :goto_4

    .line 393
    .end local v18    # "files":[Ljava/io/File;
    .end local v19    # "absolutePath":Ljava/lang/String;
    .restart local v1    # "files":[Ljava/io/File;
    .restart local v3    # "absolutePath":Ljava/lang/String;
    :cond_6
    move-object/from16 v18, v1

    move-object/from16 v19, v3

    move/from16 v16, v10

    .end local v1    # "files":[Ljava/io/File;
    .end local v3    # "absolutePath":Ljava/lang/String;
    .restart local v18    # "files":[Ljava/io/File;
    .restart local v19    # "absolutePath":Ljava/lang/String;
    :goto_4
    add-int/lit8 v8, v8, 0x1

    move/from16 v10, v16

    move-object/from16 v1, v18

    move-object/from16 v3, v19

    const/4 v0, 0x1

    const/4 v7, -0x1

    goto/16 :goto_1

    .line 422
    .end local v18    # "files":[Ljava/io/File;
    .end local v19    # "absolutePath":Ljava/lang/String;
    .restart local v1    # "files":[Ljava/io/File;
    .restart local v3    # "absolutePath":Ljava/lang/String;
    :cond_7
    move-object/from16 v18, v1

    move-object/from16 v19, v3

    .end local v1    # "files":[Ljava/io/File;
    .end local v3    # "absolutePath":Ljava/lang/String;
    .restart local v18    # "files":[Ljava/io/File;
    .restart local v19    # "absolutePath":Ljava/lang/String;
    const-string v0, "SoundResourceLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadBootSoundFiles,id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    return-object v11
.end method

.method private static loadSoundEffectResource(Ljava/lang/String;)Ljava/util/Map;
    .locals 14
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;",
            ">;"
        }
    .end annotation

    .line 252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 253
    .local v0, "resMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;>;"
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 256
    const-string v2, "SoundResourceLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no resource on:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const/4 v2, 0x0

    return-object v2

    .line 260
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 261
    .local v2, "files":[Ljava/io/File;
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_4

    .line 262
    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 264
    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 265
    .local v5, "folderName":Ljava/lang/String;
    new-instance v6, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;

    invoke-direct {v6}, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;-><init>()V

    .line 266
    .local v6, "resource":Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;->setResId(I)V

    .line 268
    sget-object v7, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->themeResTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 270
    .local v7, "value":Ljava/lang/Integer;
    if-eqz v7, :cond_1

    .line 271
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .local v8, "resType":I
    goto :goto_1

    .line 273
    .end local v8    # "resType":I
    :cond_1
    invoke-static {v5}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->calculateStringValue(Ljava/lang/String;)I

    move-result v8

    .line 274
    .restart local v8    # "resType":I
    sget-object v9, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->themeResTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :goto_1
    invoke-virtual {v6, v8}, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;->setResourceType(I)V

    .line 277
    sget-object v9, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->nameMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;->setFriendlyName(Ljava/lang/String;)V

    .line 278
    aget-object v9, v2, v4

    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 279
    .local v9, "resFile":[Ljava/io/File;
    array-length v10, v9

    new-array v10, v10, [Ljava/lang/String;

    .line 280
    .local v10, "resPath":[Ljava/lang/String;
    move v11, v3

    .local v11, "k":I
    :goto_2
    array-length v12, v10

    if-ge v11, v12, :cond_2

    .line 281
    aget-object v12, v9, v11

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 280
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 283
    .end local v11    # "k":I
    :cond_2
    invoke-virtual {v6, v10}, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;->setResPath([Ljava/lang/String;)V

    .line 284
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v11, "SoundResourceLoader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "loadSoundEffectResource,find "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ",file count="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v13, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .end local v5    # "folderName":Ljava/lang/String;
    .end local v6    # "resource":Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;
    .end local v7    # "value":Ljava/lang/Integer;
    .end local v8    # "resType":I
    .end local v9    # "resFile":[Ljava/io/File;
    .end local v10    # "resPath":[Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 289
    .end local v4    # "i":I
    :cond_4
    return-object v0
.end method

.method private static loadSoundTheme(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;
    .locals 9
    .param p0, "path"    # Ljava/lang/String;

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "desc.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "content":Ljava/lang/String;
    new-instance v1, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;-><init>()V

    .line 209
    .local v1, "themeWrapper":Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;
    iput-object p0, v1, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;->themeRscPath:Ljava/lang/String;

    .line 211
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 212
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v3, "id"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;->themeId:I

    .line 213
    iget-object v3, v1, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;->theme:Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;

    iget v4, v1, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;->themeId:I

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;->setThemeId(I)V

    .line 214
    const-string v3, "nameId"

    const-string v4, "name"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, "nameId":Ljava/lang/String;
    iget-object v4, v1, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;->theme:Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->getResourceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;->setFriendlyName(Ljava/lang/String;)V

    .line 216
    iget-object v4, v1, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;->theme:Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_sub"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->getResourceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;->setSubName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v2    # "obj":Lorg/json/JSONObject;
    .end local v3    # "nameId":Ljava/lang/String;
    goto :goto_0

    .line 217
    :catch_0
    move-exception v2

    .line 218
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SoundResourceLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadSoundTheme e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/day.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/night.png"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 225
    .local v2, "picPath":[Ljava/lang/String;
    const/4 v3, 0x1

    .line 226
    .local v3, "validPicPath":Z
    array-length v5, v2

    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v6, v2, v4

    .line 227
    .local v6, "s":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 229
    const/4 v3, 0x0

    .line 230
    goto :goto_2

    .line 226
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "file":Ljava/io/File;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 233
    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    .line 234
    iget-object v4, v1, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;->theme:Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;

    invoke-virtual {v4, v2}, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;->setPlaybillPath([Ljava/lang/String;)V

    .line 236
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/play"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->loadSoundEffectResource(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, v1, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;->playRscMap:Ljava/util/Map;

    .line 237
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/preview"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->loadSoundEffectResource(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, v1, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;->previewRscMap:Ljava/util/Map;

    .line 238
    const-string v4, "SoundResourceLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadSoundTheme,id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;->themeId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",themeRscPath="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;->themeRscPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",theme="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;->theme:Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",play rsc size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;->playRscMap:Ljava/util/Map;

    .line 240
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",play sample="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;->playRscMap:Ljava/util/Map;

    .line 241
    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    iget-object v6, v1, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;->previewRscMap:Ljava/util/Map;

    if-eqz v6, :cond_3

    .line 244
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ",preview size="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;->previewRscMap:Ljava/util/Map;

    .line 243
    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "preview sample="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;->previewRscMap:Ljava/util/Map;

    .line 244
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 245
    :cond_3
    const-string v6, ""

    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 238
    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-object v1
.end method

.method private static loadThemeGlobalConfig(Ljava/lang/String;)V
    .locals 10
    .param p0, "path"    # Ljava/lang/String;

    .line 139
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "content":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 145
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 146
    .local v1, "obj":Lorg/json/JSONObject;
    const-string/jumbo v2, "version"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 147
    .local v2, "version":I
    const-string v4, "previewname"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 148
    .local v4, "previewObj":Lorg/json/JSONObject;
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 148
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 149
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 150
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 151
    .local v7, "values":[Ljava/lang/String;
    sget-object v8, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->nameMap:Ljava/util/concurrent/ConcurrentHashMap;

    aget-object v9, v7, v3

    invoke-virtual {v8, v6, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v8, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->themeResTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "values":[Ljava/lang/String;
    goto :goto_0

    .line 154
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    const-string v3, "SoundResourceLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadThemeGlobalConfig,ver="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",nameMap="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->nameMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",themeResTypeMap="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->themeResTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v1    # "obj":Lorg/json/JSONObject;
    .end local v2    # "version":I
    .end local v4    # "previewObj":Lorg/json/JSONObject;
    goto :goto_1

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SoundResourceLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadThemeGlobalConfig e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 141
    :cond_2
    :goto_2
    const-string v1, "SoundResourceLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no config on:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public static loadThemeRscFromDisk(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;",
            ">;"
        }
    .end annotation

    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, "themeList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "config.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->loadThemeGlobalConfig(Ljava/lang/String;)V

    .line 165
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    .local v1, "mfile":Ljava/io/File;
    nop

    .line 170
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 171
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 172
    .local v2, "files":[Ljava/io/File;
    if-nez v2, :cond_0

    .line 173
    const-string v3, "SoundResourceLoader"

    const-string v4, "empty folder"

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const/4 v3, 0x0

    return-object v3

    .line 176
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 177
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 179
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->loadSoundTheme(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;

    move-result-object v4

    .line 180
    .local v4, "wrapper":Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;
    if-eqz v4, :cond_2

    .line 181
    sget-object v5, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->themeMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v6, v4, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;->themeId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    if-nez v0, :cond_1

    .line 183
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    .line 185
    :cond_1
    iget-object v5, v4, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;->theme:Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    .end local v4    # "wrapper":Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 189
    .end local v3    # "i":I
    :cond_3
    const-string v3, "SoundResourceLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load theme size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->themeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .end local v2    # "files":[Ljava/io/File;
    goto :goto_1

    .line 191
    :cond_4
    const-string v2, "SoundResourceLoader"

    const-string v3, "loadThemeRscFromDisk, not folder"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v1    # "mfile":Ljava/io/File;
    :goto_1
    goto :goto_2

    .line 193
    :catch_0
    move-exception v1

    .line 194
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SoundResourceLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadThemeRscFromDisk fail e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "[\\t\\n\\r]"

    const-string v6, "#"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 194
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v0
.end method

.method private registerObserver()V
    .locals 5

    .line 733
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "XpMainDriverMode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v2, v1

    nop

    :cond_0
    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->isPrivateSoundMode:Z

    .line 734
    const-string v0, "SoundResourceLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerObserver isPrivateSoundMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->isPrivateSoundMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "XpMainDriverMode"

    .line 736
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$1;

    new-instance v4, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    invoke-direct {v4}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$1;-><init>(Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;Landroid/os/Handler;)V

    .line 735
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 745
    return-void
.end method


# virtual methods
.method public getActiveBootSoundResource()Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;
    .locals 6

    .line 671
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->getCurrentBootSoundGroup()Landroid/util/SparseArray;

    move-result-object v0

    .line 673
    .local v0, "group":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;>;"
    if-nez v0, :cond_0

    .line 674
    const-string v1, "SoundResourceLoader"

    const-string v2, "getActiveBootSoundResource,group data is null"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    const/4 v1, 0x0

    return-object v1

    .line 678
    :cond_0
    iget v1, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mBootSoundResourceIdx:I

    const/4 v2, -0x1

    if-ne v2, v1, :cond_3

    .line 679
    const-string v1, "persist.xiaopeng.soundboot.index"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 681
    .local v1, "val":Ljava/lang/String;
    const-string v3, "SoundResourceLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getActiveBootSoundResource,initial="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 685
    iput v3, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mBootSoundResourceIdx:I

    goto :goto_0

    .line 687
    :cond_1
    const-string v4, "#"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 688
    .local v4, "ids":[Ljava/lang/String;
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mBootSoundResourceIdx:I

    .line 689
    array-length v5, v4

    if-le v5, v3, :cond_2

    .line 690
    aget-object v5, v4, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mLastBootSoundResourceIdx:I

    .line 693
    .end local v4    # "ids":[Ljava/lang/String;
    :cond_2
    :goto_0
    iget v4, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mBootSoundResourceIdx:I

    if-ne v2, v4, :cond_3

    .line 695
    iput v3, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mBootSoundResourceIdx:I

    .line 699
    .end local v1    # "val":Ljava/lang/String;
    :cond_3
    iget v1, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mBootSoundResourceIdx:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;

    .line 701
    .local v1, "resource":Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;
    return-object v1
.end method

.method public getActiveSoundEffectResource(I)Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;
    .locals 4
    .param p1, "effectType"    # I

    .line 523
    sget-object v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->themeMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mSoundThemeIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;

    .line 524
    .local v0, "themeWrapper":Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;->playRscMap:Ljava/util/Map;

    if-nez v1, :cond_0

    goto :goto_0

    .line 529
    :cond_0
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;->playRscMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;

    return-object v1

    .line 525
    :cond_1
    :goto_0
    const-string v1, "SoundResourceLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActiveSoundEffectResource,no rsc for theme:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mSoundThemeIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const/4 v1, 0x0

    return-object v1
.end method

.method public getActiveSoundTheme()Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;
    .locals 2

    .line 120
    sget-object v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->themeMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mSoundThemeIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;

    .line 121
    .local v0, "themeWrapper":Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;
    if-nez v0, :cond_0

    .line 122
    const/4 v1, 0x0

    return-object v1

    .line 125
    :cond_0
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;->theme:Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;

    return-object v1
.end method

.method public getActiveSoundThemeIndex()I
    .locals 1

    .line 432
    iget v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mSoundThemeIndex:I

    return v0
.end method

.method public getAvailableThemes()[Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;
    .locals 6

    .line 457
    sget-object v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->themeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    .line 458
    .local v0, "size":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 459
    const-string v1, "SoundResourceLoader"

    const-string v2, "getAvailableThemes, no available theme"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const/4 v1, 0x0

    return-object v1

    .line 463
    :cond_0
    new-array v1, v0, [Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;

    .line 464
    .local v1, "themes":[Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;
    const/4 v2, 0x0

    .line 465
    .local v2, "i":I
    sget-object v3, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->themeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 466
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;

    iget-object v5, v5, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;->theme:Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;

    aput-object v5, v1, v2

    .line 467
    add-int/lit8 v2, v2, 0x1

    .line 468
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;>;"
    goto :goto_0

    .line 470
    :cond_1
    return-object v1
.end method

.method public getBootSoundOnOff()I
    .locals 2

    .line 550
    iget v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mBootSoundOnOff:I

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    .line 552
    const-string v0, "persist.xiaopeng.soundboot.switch"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mBootSoundOnOff:I

    .line 554
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mBootSoundOnOff:I

    return v0
.end method

.method public getBootSoundResource()[Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;
    .locals 4

    .line 562
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->getCurrentBootSoundGroup()Landroid/util/SparseArray;

    move-result-object v0

    .line 564
    .local v0, "group":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;>;"
    if-nez v0, :cond_0

    .line 565
    const-string v1, "SoundResourceLoader"

    const-string v2, "getBootSoundResource,group data is null"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const/4 v1, 0x0

    return-object v1

    .line 569
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-array v1, v1, [Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;

    .line 571
    .local v1, "resources":[Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 573
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;

    aput-object v3, v1, v2

    .line 571
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 576
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method protected getLastBootSoundIdx()I
    .locals 1

    .line 705
    iget v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mLastBootSoundResourceIdx:I

    return v0
.end method

.method public getSoundEffectPlayResource(I)[Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;
    .locals 7
    .param p1, "themeId"    # I

    .line 479
    sget-object v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->themeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;

    .line 480
    .local v0, "themeWrapper":Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;->playRscMap:Ljava/util/Map;

    if-nez v1, :cond_0

    goto :goto_1

    .line 484
    :cond_0
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;->playRscMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 485
    .local v1, "sets":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;

    .line 486
    .local v2, "resources":[Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;
    const/4 v3, 0x0

    .line 487
    .local v3, "i":I
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 488
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;

    aput-object v6, v2, v3

    .line 489
    add-int/lit8 v3, v3, 0x1

    .line 490
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;>;"
    goto :goto_0

    .line 492
    :cond_1
    return-object v2

    .line 481
    .end local v1    # "sets":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;>;>;"
    .end local v2    # "resources":[Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;
    .end local v3    # "i":I
    :cond_2
    :goto_1
    const-string v1, "SoundResourceLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSoundEffectPlayResource,no rsc for theme:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSoundEffectPreviewResource(I)[Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;
    .locals 7
    .param p1, "themeId"    # I

    .line 501
    sget-object v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->themeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;

    .line 502
    .local v0, "themeWrapper":Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;->previewRscMap:Ljava/util/Map;

    if-nez v1, :cond_0

    goto :goto_1

    .line 506
    :cond_0
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;->previewRscMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 507
    .local v1, "sets":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;

    .line 508
    .local v2, "resources":[Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;
    const/4 v3, 0x0

    .line 509
    .local v3, "i":I
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 510
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;

    aput-object v6, v2, v3

    .line 511
    add-int/lit8 v3, v3, 0x1

    .line 512
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;>;"
    goto :goto_0

    .line 514
    :cond_1
    return-object v2

    .line 503
    .end local v1    # "sets":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;>;>;"
    .end local v2    # "resources":[Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;
    .end local v3    # "i":I
    :cond_2
    :goto_1
    const-string v1, "SoundResourceLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSoundEffectPreviewResource,no rsc for theme:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const/4 v1, 0x0

    return-object v1
.end method

.method public getThemeMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;",
            ">;"
        }
    .end annotation

    .line 116
    sget-object v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->themeMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public loadRsc()V
    .locals 3

    .line 129
    sget-object v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mSoundThemeResourcePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->loadThemeRscFromDisk(Ljava/lang/String;)Ljava/util/List;

    .line 130
    sget-object v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mSoundBootResourcePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->loadBootRscFromDisk(Ljava/lang/String;)Ljava/util/List;

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mListener:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$ResourceListener;

    if-eqz v0, :cond_0

    .line 133
    const-string v0, "SoundResourceLoader"

    const-string v1, "loadRsc done"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mListener:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$ResourceListener;

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$ResourceListener;->onResourceEvent(II)V

    .line 136
    :cond_0
    return-void
.end method

.method protected restoreToLastBootSound(Ljava/lang/String;)I
    .locals 4
    .param p1, "operationId"    # Ljava/lang/String;

    .line 647
    const-string v0, "SoundResourceLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreToLastBootSound,res id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mLastBootSoundResourceIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    sget-object v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->bootSoundOperationResMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 650
    .local v0, "resId":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 651
    const-string v1, "SoundResourceLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreToLastBootSound,null boot sound id for op id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const/4 v1, -0x1

    return v1

    .line 654
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mBootSoundResourceIdx:I

    if-ne v1, v2, :cond_1

    .line 656
    iget v1, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mLastBootSoundResourceIdx:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->setBootSoundResource(I)I

    goto :goto_0

    .line 657
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mLastBootSoundResourceIdx:I

    if-ne v1, v2, :cond_2

    .line 659
    iget v1, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mBootSoundResourceIdx:I

    iput v1, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mLastBootSoundResourceIdx:I

    .line 663
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public setActiveSoundThemIndex(I)I
    .locals 3
    .param p1, "index"    # I

    .line 441
    sget-object v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->themeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 442
    const-string v0, "SoundResourceLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActiveSoundTheme,invalid theme id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const/4 v0, -0x1

    return v0

    .line 445
    :cond_0
    iput p1, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mSoundThemeIndex:I

    .line 446
    const-string v0, "persist.xiaopeng.soundtheme.index"

    iget v1, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mSoundThemeIndex:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string v0, "persist.xiaopeng.soundtheme.path"

    sget-object v1, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->themeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;->themeRscPath:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string v0, "SoundResourceLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActiveSoundTheme:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const/4 v0, 0x0

    return v0
.end method

.method public setBootSoundOnOff(Z)I
    .locals 2
    .param p1, "flag"    # Z

    .line 539
    iput p1, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mBootSoundOnOff:I

    .line 541
    const-string v0, "persist.xiaopeng.soundboot.switch"

    iget v1, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mBootSoundOnOff:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const/4 v0, 0x0

    return v0
.end method

.method public setBootSoundResource(I)I
    .locals 6
    .param p1, "resourceId"    # I

    .line 586
    const-string v0, "SoundResourceLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##setBootSoundResource,id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",current id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mBootSoundResourceIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    iget v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mBootSoundResourceIdx:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 589
    return v1

    .line 591
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->getCurrentBootSoundGroup()Landroid/util/SparseArray;

    move-result-object v0

    .line 592
    .local v0, "group":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;>;"
    if-nez v0, :cond_1

    .line 593
    const-string v1, "SoundResourceLoader"

    const-string v2, "setBootSoundResource, no group found"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const/4 v1, -0x1

    return v1

    .line 596
    :cond_1
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 597
    const-string v2, "SoundResourceLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBootSoundResource,resourceId not valid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const/4 p1, 0x1

    .line 601
    :cond_2
    iget v2, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mBootSoundResourceIdx:I

    iput v2, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mLastBootSoundResourceIdx:I

    .line 602
    iput p1, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mBootSoundResourceIdx:I

    .line 603
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mLastBootSoundResourceIdx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 604
    .local v2, "saveValue":Ljava/lang/String;
    const-string v3, "persist.xiaopeng.soundboot.index"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const-string v3, "SoundResourceLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setBootSoundResource, saveValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mListener:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$ResourceListener;

    const/16 v4, 0x64

    invoke-interface {v3, p1, v4}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$ResourceListener;->onResourceEvent(II)V

    .line 609
    return v1
.end method

.method protected setBootSoundResourceByOperationId(Ljava/lang/String;)I
    .locals 4
    .param p1, "operationId"    # Ljava/lang/String;

    .line 613
    sget-object v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->bootSoundOperationResMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 614
    .local v0, "resId":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 615
    const/4 v1, 0x0

    sput-object v1, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mPendingBootSoundOperationRedId:Ljava/lang/String;

    .line 616
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->setBootSoundResource(I)I

    goto :goto_0

    .line 618
    :cond_0
    sput-object p1, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mPendingBootSoundOperationRedId:Ljava/lang/String;

    .line 619
    const-string v1, "SoundResourceLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBootSoundResourceByOperationId,no valid res for operation id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method protected setBootSoundResourceOperationIdMap(Ljava/lang/String;I)I
    .locals 2
    .param p1, "operationId"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .line 636
    sget-object v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->bootSoundOperationResMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    const/4 v0, 0x0

    return v0
.end method

.method public setResourceListener(Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$ResourceListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$ResourceListener;

    .line 709
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mListener:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$ResourceListener;

    .line 710
    return-void
.end method

.method protected tryActiveBootSoundResourceFromOperation()I
    .locals 1

    .line 627
    sget-object v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mPendingBootSoundOperationRedId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 628
    sget-object v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->mPendingBootSoundOperationRedId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;->setBootSoundResourceByOperationId(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 631
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
