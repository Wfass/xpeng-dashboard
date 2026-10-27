.class public Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;
.super Ljava/lang/Object;
.source "VuiSceneCacheFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$Holder;,
        Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VuiSceneCacheFactory"


# instance fields
.field private mBuildCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;

.field private mDisplayLocationCache:Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoCache;

.field private mRemoveCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveCache;

.field private mSceneCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

.field private mUpdateCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneUpdateCache;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->mBuildCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;

    .line 26
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->mUpdateCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneUpdateCache;

    .line 27
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->mRemoveCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveCache;

    .line 29
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->mSceneCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$1;

    .line 4
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;-><init>()V

    return-void
.end method

.method public static final instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;
    .locals 1

    .line 35
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$Holder;->access$000()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .locals 1
    .param p1, "type"    # I

    .line 43
    sget-object v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->mBuildCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;

    invoke-direct {v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->mBuildCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->mBuildCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;

    return-object v0

    .line 48
    :cond_1
    sget-object v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->mUpdateCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneUpdateCache;

    if-nez v0, :cond_2

    .line 50
    new-instance v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneUpdateCache;

    invoke-direct {v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneUpdateCache;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->mUpdateCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneUpdateCache;

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->mUpdateCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneUpdateCache;

    return-object v0

    .line 53
    :cond_3
    sget-object v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->REMOVE:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->mRemoveCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveCache;

    if-nez v0, :cond_4

    .line 55
    new-instance v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveCache;

    invoke-direct {v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveCache;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->mRemoveCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveCache;

    .line 57
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->mRemoveCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveCache;

    return-object v0

    .line 58
    :cond_5
    sget-object v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->DISPLAY_LOCATION:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->mDisplayLocationCache:Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoCache;

    if-nez v0, :cond_6

    .line 60
    new-instance v0, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoCache;

    invoke-direct {v0}, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoCache;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->mDisplayLocationCache:Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoCache;

    .line 62
    :cond_6
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->mDisplayLocationCache:Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoCache;

    return-object v0

    .line 64
    :cond_7
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->mSceneCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    if-nez v0, :cond_8

    .line 65
    new-instance v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    invoke-direct {v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->mSceneCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    .line 67
    :cond_8
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->mSceneCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    return-object v0
.end method

.method public removeAllCache(Ljava/lang/String;)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 72
    if-nez p1, :cond_0

    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->mBuildCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->mBuildCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;->removeCache(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->mBuildCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;->removeUploadState(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->mBuildCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;->removeDisplayLocation(Ljava/lang/String;)V

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->mUpdateCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneUpdateCache;

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->mUpdateCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneUpdateCache;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneUpdateCache;->removeCache(Ljava/lang/String;)V

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->mRemoveCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveCache;

    if-eqz v0, :cond_3

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->mRemoveCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveCache;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveCache;->removeCache(Ljava/lang/String;)V

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->mDisplayLocationCache:Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoCache;

    if-eqz v0, :cond_4

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->mDisplayLocationCache:Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoCache;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoCache;->removeDisplayCache(Ljava/lang/String;)V

    .line 87
    :cond_4
    return-void
.end method

.method public removeOtherCache(Ljava/lang/String;)V
    .locals 1
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 90
    if-nez p1, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->mUpdateCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneUpdateCache;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->mUpdateCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneUpdateCache;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneUpdateCache;->removeCache(Ljava/lang/String;)V

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->mRemoveCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveCache;

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->mRemoveCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveCache;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveCache;->removeCache(Ljava/lang/String;)V

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->mDisplayLocationCache:Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoCache;

    if-eqz v0, :cond_3

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->mDisplayLocationCache:Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoCache;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoCache;->removeDisplayCache(Ljava/lang/String;)V

    .line 100
    :cond_3
    return-void
.end method
