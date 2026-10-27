.class public Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;
.super Ljava/lang/Object;
.source "VuiSceneTestCacheFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$Holder;,
        Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VuiSceneTestCacheFactory"


# instance fields
.field private mBuildCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;

.field private mDisplayLocationCache:Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoTestCache;

.field private mRemoveCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveTestCache;

.field private mSceneCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;

.field private mUpdateCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneUpdateTestCache;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->mBuildCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;

    .line 26
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->mUpdateCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneUpdateTestCache;

    .line 27
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->mRemoveCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveTestCache;

    .line 29
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->mSceneCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$1;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;-><init>()V

    return-void
.end method

.method public static final instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;
    .locals 1

    .line 35
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$Holder;->access$000()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;
    .locals 1

    .line 43
    sget-object v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 44
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->mBuildCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;

    if-nez p1, :cond_0

    .line 45
    new-instance p1, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;

    invoke-direct {p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->mBuildCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->mBuildCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;

    return-object p1

    .line 48
    :cond_1
    sget-object v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 49
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->mUpdateCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneUpdateTestCache;

    if-nez p1, :cond_2

    .line 50
    new-instance p1, Lcom/xiaopeng/speech/vui/cache/VuiSceneUpdateTestCache;

    invoke-direct {p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneUpdateTestCache;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->mUpdateCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneUpdateTestCache;

    .line 52
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->mUpdateCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneUpdateTestCache;

    return-object p1

    .line 53
    :cond_3
    sget-object v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->REMOVE:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 54
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->mRemoveCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveTestCache;

    if-nez p1, :cond_4

    .line 55
    new-instance p1, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveTestCache;

    invoke-direct {p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveTestCache;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->mRemoveCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveTestCache;

    .line 57
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->mRemoveCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveTestCache;

    return-object p1

    .line 58
    :cond_5
    sget-object v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->DISPLAY_LOCATION:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 59
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->mDisplayLocationCache:Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoTestCache;

    if-nez p1, :cond_6

    .line 60
    new-instance p1, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoTestCache;

    invoke-direct {p1}, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoTestCache;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->mDisplayLocationCache:Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoTestCache;

    .line 62
    :cond_6
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->mDisplayLocationCache:Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoTestCache;

    return-object p1

    .line 64
    :cond_7
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->mSceneCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;

    if-nez p1, :cond_8

    .line 65
    new-instance p1, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;

    invoke-direct {p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->mSceneCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;

    .line 67
    :cond_8
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->mSceneCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;

    return-object p1
.end method

.method public removeAllCache(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->mBuildCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;->removeCache(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->mBuildCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;->removeUploadState(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->mBuildCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;->removeDisplayLocation(Ljava/lang/String;)V

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->mUpdateCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneUpdateTestCache;

    if-eqz v0, :cond_2

    .line 79
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneUpdateTestCache;->removeCache(Ljava/lang/String;)V

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->mRemoveCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveTestCache;

    if-eqz v0, :cond_3

    .line 82
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveTestCache;->removeCache(Ljava/lang/String;)V

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->mDisplayLocationCache:Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoTestCache;

    if-eqz v0, :cond_4

    .line 85
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoTestCache;->removeDisplayCache(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public removeOtherCache(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->mUpdateCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneUpdateTestCache;

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneUpdateTestCache;->removeCache(Ljava/lang/String;)V

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->mRemoveCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveTestCache;

    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveTestCache;->removeCache(Ljava/lang/String;)V

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->mDisplayLocationCache:Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoTestCache;

    if-eqz v0, :cond_3

    .line 98
    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoTestCache;->removeDisplayCache(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
