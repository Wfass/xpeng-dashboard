.class public Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;
.super Ljava/lang/Object;
.source "LightEffectManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager$InstanceHolder;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "LightEffectManager"


# instance fields
.field private mAmbientLightEffectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;",
            ">;"
        }
    .end annotation
.end field

.field private mAmbientLightEffectTypeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLightEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;->mAmbientLightEffectList:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;->mAmbientLightEffectTypeList:Ljava/util/ArrayList;

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;->parseLightEffectFromJsons()V

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager$1;

    .line 19
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;
    .locals 1

    .line 33
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager$InstanceHolder;->access$000()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;

    move-result-object v0

    return-object v0
.end method

.method private parseLightEffectFromJsons()V
    .locals 6

    .line 53
    const-string v0, "/data/xuiservice/atl"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;->getFilesAllName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 55
    .local v0, "effectFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;->mAmbientLightEffectList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 56
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;->mAmbientLightEffectTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 57
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 58
    move v2, v1

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 60
    :try_start_0
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    new-instance v4, Ljava/io/FileReader;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const-class v5, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;

    iput-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;->mLightEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;

    .line 61
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;->mAmbientLightEffectList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;->mLightEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;->mAmbientLightEffectTypeList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;->mLightEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->getEffect_type()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    const-string v3, "LightEffectManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseLightEffectFromJsons Effect_type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;->mLightEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->getEffect_type()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/gson/JsonIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 70
    :catch_0
    move-exception v3

    .line 71
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/FileNotFoundException;
    goto :goto_2

    .line 68
    :catch_1
    move-exception v3

    .line 69
    .local v3, "e":Lcom/google/gson/JsonSyntaxException;
    invoke-virtual {v3}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    .end local v3    # "e":Lcom/google/gson/JsonSyntaxException;
    goto :goto_1

    .line 66
    :catch_2
    move-exception v3

    .line 67
    .local v3, "e":Lcom/google/gson/JsonIOException;
    invoke-virtual {v3}, Lcom/google/gson/JsonIOException;->printStackTrace()V

    .line 72
    .end local v3    # "e":Lcom/google/gson/JsonIOException;
    :goto_1
    nop

    .line 58
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    .end local v2    # "i":I
    :cond_0
    const-string v2, "/system/etc/xuiservice/atl"

    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;->getFilesAllName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 78
    if-nez v0, :cond_1

    .line 79
    return-void

    .line 81
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;->mAmbientLightEffectList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 82
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;->mAmbientLightEffectTypeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 83
    nop

    .local v1, "i":I
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 85
    :try_start_1
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Ljava/io/FileReader;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const-class v4, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;->mLightEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;

    .line 86
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;->mAmbientLightEffectTypeList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;->mLightEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->getEffect_type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 87
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;->mAmbientLightEffectList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;->mLightEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;->mAmbientLightEffectTypeList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;->mLightEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->getEffect_type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    const-string v2, "LightEffectManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseLightEffectFromJsons Effect_type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;->mLightEffect:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;->getEffect_type()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/gson/JsonIOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_4

    .line 97
    :catch_3
    move-exception v2

    .line 98
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    goto :goto_5

    .line 95
    :catch_4
    move-exception v2

    .line 96
    .local v2, "e":Lcom/google/gson/JsonSyntaxException;
    invoke-virtual {v2}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    .end local v2    # "e":Lcom/google/gson/JsonSyntaxException;
    goto :goto_4

    .line 93
    :catch_5
    move-exception v2

    .line 94
    .local v2, "e":Lcom/google/gson/JsonIOException;
    invoke-virtual {v2}, Lcom/google/gson/JsonIOException;->printStackTrace()V

    .line 99
    .end local v2    # "e":Lcom/google/gson/JsonIOException;
    :cond_2
    :goto_4
    nop

    .line 83
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 101
    .end local v1    # "i":I
    :cond_3
    return-void
.end method


# virtual methods
.method public getAmbientLightEffectList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffect;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;->mAmbientLightEffectList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAmbientLightEffectTypeList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;->mAmbientLightEffectTypeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFilesAllName(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 39
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_0

    .line 40
    const-string v2, "LightEffectManager"

    const-string/jumbo v3, "\u7a7a\u76ee\u5f55"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const/4 v2, 0x0

    return-object v2

    .line 43
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v2, "s":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 44
    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 45
    const-string v4, "LightEffectManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v1, v3

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 48
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method
