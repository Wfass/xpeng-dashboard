.class public Lcom/xiaopeng/xuiservice/operation/resource/PresetFileProcessor;
.super Ljava/lang/Object;
.source "PresetFileProcessor.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PresetFileProcessor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method private createOperationResourceDir()V
    .locals 5

    .line 39
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/operation/resource/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 42
    .local v1, "result":Z
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->setOperationResourcePermission(Ljava/lang/String;)V

    .line 43
    const-string v2, "PresetFileProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createOperationResourceDir success:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .end local v1    # "result":Z
    :cond_0
    return-void
.end method

.method private deleteInvalidDancePreset(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 81
    .local p1, "presetDanceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v0

    const v1, 0xf69b5

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getLocalResourceByType(I)Ljava/util/List;

    move-result-object v0

    .line 82
    .local v0, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 83
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 84
    .local v2, "info":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    iget-object v3, v2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceId:Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/xiaopeng/xuiservice/operation/resource/PresetFileProcessor;->isPresetFileInvalid(Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    const-string v3, "PresetFileProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteInvalidDancePreset info:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->deleteResourceInfo(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->targetPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 89
    .end local v2    # "info":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    :cond_0
    goto :goto_0

    .line 91
    :cond_1
    return-void
.end method

.method private findPresetDanceIdList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 101
    const-string v0, "/system/etc/xuiservice/dance/LocalDance_Info.json"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "presetDanceInfo":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v1, "danceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 105
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 106
    .local v2, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 107
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 108
    .local v4, "object":Lorg/json/JSONObject;
    const-string v5, "id"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 109
    .local v5, "id":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 110
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v4    # "object":Lorg/json/JSONObject;
    .end local v5    # "id":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 115
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "i":I
    :cond_1
    goto :goto_1

    .line 113
    :catch_0
    move-exception v2

    .line 114
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 117
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_2
    :goto_1
    return-object v1
.end method

.method private getFileBaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 149
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 150
    .local v0, "dot":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "base":Ljava/lang/String;
    :goto_0
    const-string v2, "PresetFileProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fileBaseName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-object v1
.end method

.method private getUnZippedName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "keySettingProvider"    # Ljava/lang/String;

    .line 161
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isPresetFileInvalid(Ljava/util/List;Ljava/lang/String;)Z
    .locals 2
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 94
    .local p1, "presetDanceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0

    .line 97
    :cond_0
    return v0
.end method

.method private processDanceFile()V
    .locals 2

    .line 48
    const-string v0, "/system/etc/xuiservice/dance/"

    const-string v1, "/data/xuiservice/llu/"

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/operation/resource/PresetFileProcessor;->processDanceFileInner(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method private processDanceFileInner(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "srcPath"    # Ljava/lang/String;
    .param p2, "dstPath"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/operation/resource/PresetFileProcessor;->findPresetDanceIdList()Ljava/util/List;

    move-result-object v0

    .line 63
    .local v0, "danceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/operation/resource/PresetFileProcessor;->deleteInvalidDancePreset(Ljava/util/List;)V

    .line 64
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 66
    .local v2, "id":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 67
    .local v9, "dst_file":Ljava/lang/String;
    const v5, 0xf69b5

    move-object v3, p0

    move-object v4, v2

    move-object v6, v2

    move-object v7, p2

    move-object v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/xiaopeng/xuiservice/operation/resource/PresetFileProcessor;->savePresetResourceInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "video_src_file":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".mp4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, "video_dst_file":Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, "png_src_file":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 75
    .local v6, "png_dst_file":Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "video_src_file":Ljava/lang/String;
    .end local v4    # "video_dst_file":Ljava/lang/String;
    .end local v5    # "png_src_file":Ljava/lang/String;
    .end local v6    # "png_dst_file":Ljava/lang/String;
    .end local v9    # "dst_file":Ljava/lang/String;
    goto/16 :goto_0

    .line 78
    :cond_0
    return-void
.end method

.method private processSpeechEngine()V
    .locals 3

    .line 52
    const-string v0, "/system/speech/"

    const-string v1, "/sdcard/speech/"

    const-string v2, "key_unzipped_speech"

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/xuiservice/operation/resource/PresetFileProcessor;->processZipFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method private processTTSEngine()V
    .locals 3

    .line 57
    const-string v0, "/system/tts/"

    const-string v1, "/mnt/tts/"

    const-string v2, "key_unzipped_tts"

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/xuiservice/operation/resource/PresetFileProcessor;->processZipFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method private processZipFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "rscPath"    # Ljava/lang/String;
    .param p2, "targetPath"    # Ljava/lang/String;
    .param p3, "keySettingProvider"    # Ljava/lang/String;

    .line 121
    const-string v0, "PresetFileProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start processZipFile rscPath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "ttsFolder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 124
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_2

    array-length v2, v1

    if-gtz v2, :cond_0

    goto :goto_1

    .line 128
    :cond_0
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 129
    .local v2, "zipFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "zipFileName":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/operation/resource/PresetFileProcessor;->getFileBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "zipFileBaseName":Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/operation/resource/PresetFileProcessor;->getUnZippedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 132
    .local v5, "savedUnZippedName":Ljava/lang/String;
    const-string v6, "PresetFileProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "zipFileName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " &savedUnZippedName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 134
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 136
    .local v6, "targetFolderPath":Ljava/lang/String;
    :try_start_0
    const-string v7, "PresetFileProcessor"

    const-string v8, "FileUtils start unZip"

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {v2, v6}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->unZip(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    nop

    .line 143
    invoke-direct {p0, v6}, Lcom/xiaopeng/xuiservice/operation/resource/PresetFileProcessor;->setZipFilePermission(Ljava/lang/String;)V

    .line 144
    invoke-direct {p0, p3, v4}, Lcom/xiaopeng/xuiservice/operation/resource/PresetFileProcessor;->saveUnZippedName(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .end local v6    # "targetFolderPath":Ljava/lang/String;
    goto :goto_0

    .line 138
    .restart local v6    # "targetFolderPath":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 139
    .local v7, "e":Ljava/lang/Exception;
    const-string v8, "PresetFileProcessor"

    const-string v9, "unZip tts zip exception"

    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    return-void

    .line 146
    .end local v6    # "targetFolderPath":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void

    .line 125
    .end local v2    # "zipFile":Ljava/io/File;
    .end local v3    # "zipFileName":Ljava/lang/String;
    .end local v4    # "zipFileBaseName":Ljava/lang/String;
    .end local v5    # "savedUnZippedName":Ljava/lang/String;
    :cond_2
    :goto_1
    const-string v2, "PresetFileProcessor"

    const-string v3, "unzipFile empty folder"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method private savePresetResourceInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "sourceName"    # Ljava/lang/String;
    .param p4, "targetPath"    # Ljava/lang/String;
    .param p5, "fileFullPath"    # Ljava/lang/String;

    .line 195
    const-string v0, "/system/etc/xuiservice/dance/LocalDance_Info.json"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "presetDanceInfo":Ljava/lang/String;
    new-instance v1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;-><init>()V

    .line 197
    .local v1, "resourceInfo":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    iput-object p1, v1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceId:Ljava/lang/String;

    .line 198
    iput p2, v1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceType:I

    .line 199
    iput-object p3, v1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceName:Ljava/lang/String;

    .line 200
    iput-object p4, v1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->targetPath:Ljava/lang/String;

    .line 201
    const-string v2, "preset_resource"

    iput-object v2, v1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceFrom:Ljava/lang/String;

    .line 202
    iput-object v0, v1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->extraInfo:Ljava/lang/String;

    .line 203
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->getInstance()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;->saveResourceInfo(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V

    .line 204
    return-void
.end method

.method private saveUnZippedName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "keySettingProvider"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 171
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 173
    return-void
.end method

.method private setZipFilePermission(Ljava/lang/String;)V
    .locals 4
    .param p1, "destDirPath"    # Ljava/lang/String;

    .line 176
    const-string v0, "PresetFileProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setZipFilePermission path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 179
    .local v0, "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 185
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 187
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    .local v1, "file":Ljava/io/File;
    invoke-static {v1, v0, v0}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->setFilePermission(Ljava/io/File;Ljava/util/Set;Ljava/util/Set;)V

    .line 191
    const-string v2, "PresetFileProcessor"

    const-string v3, "setTTSFilePermission end"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void
.end method


# virtual methods
.method public start()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/operation/resource/PresetFileProcessor;->createOperationResourceDir()V

    .line 33
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/operation/resource/PresetFileProcessor;->processDanceFile()V

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/operation/resource/PresetFileProcessor;->processSpeechEngine()V

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/operation/resource/PresetFileProcessor;->processTTSEngine()V

    .line 36
    return-void
.end method
