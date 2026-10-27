.class public Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;
.super Ljava/lang/Object;
.source "KeyConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager$ConfigUpload;
    }
.end annotation


# static fields
.field private static final MSG_CONFIG_UPLOAD:I = 0x1

.field private static final SIZE_CONFIG:I = 0x3

.field private static final TAG:Ljava/lang/String; = "KeyConfigManager"

.field private static volatile mInstance:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;


# instance fields
.field private mConfigRepository:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;

.field private mDefaultKeyConfig:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mKeyViewInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->initDefaultKeyInfo()V

    .line 39
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->initDefaultKeyConfigs()V

    .line 40
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ConfigManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 42
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->mWorkHandler:Landroid/os/Handler;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager$ConfigUpload;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager$ConfigUpload;

    .line 26
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->processConfigUpload(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager$ConfigUpload;)V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;
    .locals 2

    .line 59
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->mInstance:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;

    if-nez v0, :cond_1

    .line 60
    const-class v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->mInstance:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->mInstance:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;

    .line 64
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 66
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->mInstance:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;

    return-object v0
.end method

.method private getKeyConfigsFromAppConfig(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager$ConfigUpload;)Ljava/util/List;
    .locals 16
    .param p1, "configUpload"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager$ConfigUpload;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager$ConfigUpload;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;",
            ">;"
        }
    .end annotation

    .line 95
    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager$ConfigUpload;->configJsonString:Ljava/lang/String;

    .line 96
    .local v2, "jsonString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 97
    return-object v3

    .line 100
    :cond_0
    :try_start_0
    const-string v0, "KeyConfigManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getKeyConfigsFromAppConfig:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v0, "keyConfigList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;>;"
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 103
    .local v4, "appInfoJsonObject":Lorg/json/JSONObject;
    const-string v5, "joystickConfig"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 104
    .local v5, "joystickConfig":Lorg/json/JSONObject;
    if-nez v5, :cond_1

    .line 105
    return-object v3

    .line 107
    :cond_1
    const-string v6, "pkgName"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 108
    .local v6, "pkgName":Ljava/lang/String;
    const-string v7, "needJoystickMotionEvent"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 109
    .local v7, "needJoystickMotionEvent":Z
    const-string v8, "eventMapConfigs"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 110
    .local v8, "eventMapConfigs":Lorg/json/JSONArray;
    const-string v9, "KeyConfigManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "eventMapConfigs length:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_2

    .line 112
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 113
    .local v10, "configJsonItem":Lorg/json/JSONObject;
    const-string v11, "configName"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 114
    .local v11, "configName":Ljava/lang/String;
    new-instance v12, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;

    invoke-direct {v12}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;-><init>()V

    .line 115
    .local v12, "keyConfig":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;
    iput-object v6, v12, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->pkgName:Ljava/lang/String;

    .line 116
    iput-object v11, v12, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->configName:Ljava/lang/String;

    .line 117
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->configInfo:Ljava/lang/String;

    .line 118
    const-string v13, "KeyConfigManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "pkgName:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " & configInfo:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v12, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->configInfo:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v10    # "configJsonItem":Lorg/json/JSONObject;
    .end local v11    # "configName":Ljava/lang/String;
    .end local v12    # "keyConfig":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 121
    .end local v9    # "i":I
    :cond_2
    return-object v0

    .line 122
    .end local v0    # "keyConfigList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;>;"
    .end local v4    # "appInfoJsonObject":Lorg/json/JSONObject;
    .end local v5    # "joystickConfig":Lorg/json/JSONObject;
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "needJoystickMotionEvent":Z
    .end local v8    # "eventMapConfigs":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 125
    .end local v0    # "e":Lorg/json/JSONException;
    return-object v3
.end method

.method private initDefaultKeyConfigs()V
    .locals 4

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->mDefaultKeyConfig:Ljava/util/List;

    .line 140
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 141
    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;

    invoke-direct {v2}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;-><init>()V

    .line 142
    .local v2, "keyConfig":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;
    const-string v3, ""

    iput-object v3, v2, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->pkgName:Ljava/lang/String;

    .line 143
    const/high16 v3, 0x7f030000

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getArrayString(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    iput-object v3, v2, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->configName:Ljava/lang/String;

    .line 144
    if-nez v1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    iput v3, v2, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->selected:I

    .line 145
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->getDefaultKeyMapInfos()Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfos;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->configInfo:Ljava/lang/String;

    .line 146
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->mDefaultKeyConfig:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    .end local v2    # "keyConfig":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private initDefaultKeyInfo()V
    .locals 11

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->mKeyViewInfos:Ljava/util/List;

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->mKeyViewInfos:Ljava/util/List;

    new-instance v8, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;

    const-string v3, "a"

    new-instance v5, Landroid/graphics/Point;

    .line 179
    const v1, 0x7f0700b9

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v1

    .line 180
    const v2, 0x7f0700ba

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v2

    invoke-direct {v5, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 181
    const v9, 0x7f0700da

    invoke-static {v9}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v6

    .line 182
    invoke-static {v9}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v7

    const/16 v2, 0x60

    const v4, 0x7f080268

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;-><init>(ILjava/lang/String;ILandroid/graphics/Point;II)V

    .line 177
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->mKeyViewInfos:Ljava/util/List;

    new-instance v8, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;

    const-string v3, "b"

    new-instance v5, Landroid/graphics/Point;

    .line 186
    const v1, 0x7f0700bb

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v1

    .line 187
    const v2, 0x7f0700bc

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v2

    invoke-direct {v5, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 188
    invoke-static {v9}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v6

    .line 189
    invoke-static {v9}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v7

    const/16 v2, 0x61

    const v4, 0x7f080269

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;-><init>(ILjava/lang/String;ILandroid/graphics/Point;II)V

    .line 184
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->mKeyViewInfos:Ljava/util/List;

    new-instance v8, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;

    const-string/jumbo v3, "x"

    new-instance v5, Landroid/graphics/Point;

    .line 193
    const v1, 0x7f0700e1

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v1

    .line 194
    const v2, 0x7f0700e2

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v2

    invoke-direct {v5, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 195
    invoke-static {v9}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v6

    .line 196
    invoke-static {v9}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v7

    const/16 v2, 0x63

    const v4, 0x7f080278

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;-><init>(ILjava/lang/String;ILandroid/graphics/Point;II)V

    .line 191
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->mKeyViewInfos:Ljava/util/List;

    new-instance v8, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;

    const-string/jumbo v3, "y"

    new-instance v5, Landroid/graphics/Point;

    .line 200
    const v1, 0x7f0700e3

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v1

    .line 201
    const v2, 0x7f0700e4

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v2

    invoke-direct {v5, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 202
    invoke-static {v9}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v6

    .line 203
    invoke-static {v9}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v7

    const/16 v2, 0x64

    const v4, 0x7f080279

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;-><init>(ILjava/lang/String;ILandroid/graphics/Point;II)V

    .line 198
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->mKeyViewInfos:Ljava/util/List;

    new-instance v8, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;

    const-string v3, "l"

    new-instance v5, Landroid/graphics/Point;

    .line 207
    const v1, 0x7f0700c3

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v1

    .line 208
    const v2, 0x7f0700c4

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v2

    invoke-direct {v5, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 209
    const v10, 0x7f0700cb

    invoke-static {v10}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v6

    .line 210
    invoke-static {v10}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v7

    const/16 v2, 0x1f41

    const v4, 0x7f08026c

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;-><init>(ILjava/lang/String;ILandroid/graphics/Point;II)V

    .line 205
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->mKeyViewInfos:Ljava/util/List;

    new-instance v8, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;

    const-string v3, "r"

    new-instance v5, Landroid/graphics/Point;

    .line 214
    const v1, 0x7f0700cc

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v1

    .line 215
    const v2, 0x7f0700cd

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v2

    invoke-direct {v5, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 216
    invoke-static {v10}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v6

    .line 217
    invoke-static {v10}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v7

    const/16 v2, 0x1f42

    const v4, 0x7f080270

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;-><init>(ILjava/lang/String;ILandroid/graphics/Point;II)V

    .line 212
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->mKeyViewInfos:Ljava/util/List;

    new-instance v8, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;

    const-string v3, "l1"

    new-instance v5, Landroid/graphics/Point;

    .line 221
    const v1, 0x7f0700c5

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v1

    .line 222
    const v2, 0x7f0700c6

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v2

    invoke-direct {v5, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 223
    invoke-static {v9}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v6

    .line 224
    invoke-static {v9}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v7

    const/16 v2, 0x66

    const v4, 0x7f08026d

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;-><init>(ILjava/lang/String;ILandroid/graphics/Point;II)V

    .line 219
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->mKeyViewInfos:Ljava/util/List;

    new-instance v8, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;

    const-string v3, "l2"

    new-instance v5, Landroid/graphics/Point;

    .line 228
    const v1, 0x7f0700c9

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v1

    .line 229
    const v2, 0x7f0700ca

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v2

    invoke-direct {v5, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 230
    invoke-static {v9}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v6

    .line 231
    invoke-static {v9}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v7

    const/16 v2, 0x68

    const v4, 0x7f08026f

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;-><init>(ILjava/lang/String;ILandroid/graphics/Point;II)V

    .line 226
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->mKeyViewInfos:Ljava/util/List;

    new-instance v8, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;

    const-string v3, "r1"

    new-instance v5, Landroid/graphics/Point;

    .line 235
    const v1, 0x7f0700ce

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v1

    .line 236
    const v2, 0x7f0700cf

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v2

    invoke-direct {v5, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 237
    invoke-static {v9}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v6

    .line 238
    invoke-static {v9}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v7

    const/16 v2, 0x67

    const v4, 0x7f080271

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;-><init>(ILjava/lang/String;ILandroid/graphics/Point;II)V

    .line 233
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->mKeyViewInfos:Ljava/util/List;

    new-instance v8, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;

    const-string v3, "r2"

    new-instance v5, Landroid/graphics/Point;

    .line 242
    const v1, 0x7f0700d6

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v1

    .line 243
    const v2, 0x7f0700d7

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v2

    invoke-direct {v5, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 244
    invoke-static {v9}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v6

    .line 245
    invoke-static {v9}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v7

    const/16 v2, 0x69

    const v4, 0x7f080273

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;-><init>(ILjava/lang/String;ILandroid/graphics/Point;II)V

    .line 240
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->mKeyViewInfos:Ljava/util/List;

    new-instance v8, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;

    const-string v3, "select"

    new-instance v5, Landroid/graphics/Point;

    .line 249
    const v1, 0x7f0700d8

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v1

    .line 250
    const v2, 0x7f0700d9

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v2

    invoke-direct {v5, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 251
    invoke-static {v9}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v6

    .line 252
    invoke-static {v9}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v7

    const/16 v2, 0x6d

    const v4, 0x7f080274

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;-><init>(ILjava/lang/String;ILandroid/graphics/Point;II)V

    .line 247
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->mKeyViewInfos:Ljava/util/List;

    new-instance v8, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;

    const-string v3, "start"

    new-instance v5, Landroid/graphics/Point;

    .line 256
    const v1, 0x7f0700db

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v1

    .line 257
    const v2, 0x7f0700dc

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v2

    invoke-direct {v5, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 258
    invoke-static {v9}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v6

    .line 259
    invoke-static {v9}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v7

    const/16 v2, 0x6c

    const v4, 0x7f080275

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;-><init>(ILjava/lang/String;ILandroid/graphics/Point;II)V

    .line 254
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->mKeyViewInfos:Ljava/util/List;

    new-instance v8, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;

    const-string v3, "clear"

    new-instance v5, Landroid/graphics/Point;

    .line 263
    const v1, 0x7f0700bd

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v1

    .line 264
    const v2, 0x7f0700be

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v2

    invoke-direct {v5, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 265
    invoke-static {v9}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v6

    .line 266
    invoke-static {v9}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v7

    const/16 v2, 0x1c

    const v4, 0x7f08026a

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;-><init>(ILjava/lang/String;ILandroid/graphics/Point;II)V

    .line 261
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    return-void
.end method

.method private processConfigUpload(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager$ConfigUpload;)V
    .locals 2
    .param p1, "configUpload"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager$ConfigUpload;

    .line 88
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->getKeyConfigsFromAppConfig(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager$ConfigUpload;)Ljava/util/List;

    move-result-object v0

    .line 89
    .local v0, "configs":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->mConfigRepository:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->mConfigRepository:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;->saveConfigs(Ljava/util/List;)V

    .line 92
    :cond_0
    return-void
.end method


# virtual methods
.method public getDefaultKeyConfigList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;",
            ">;"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->mDefaultKeyConfig:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultKeyMapInfos()Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfos;
    .locals 8

    .line 151
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfos;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfos;-><init>()V

    .line 152
    .local v0, "keyMapInfos":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfos;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 153
    .local v1, "rect":Landroid/graphics/Rect;
    const v2, 0x7f0700c3

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 154
    const v2, 0x7f0700c4

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 155
    iget v2, v1, Landroid/graphics/Rect;->left:I

    const v3, 0x7f0700cb

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 156
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 157
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfos;->setTouchRect(Landroid/graphics/Rect;)V

    .line 158
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v2, "keyMapInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;>;"
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->mKeyViewInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;

    .line 160
    .local v4, "keyViewInfo":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;
    iget v5, v4, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;->mKeyCode:I

    const/16 v6, 0x1f42

    if-eq v5, v6, :cond_0

    iget v5, v4, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;->mKeyCode:I

    const/16 v6, 0x1f41

    if-ne v5, v6, :cond_1

    .line 162
    goto :goto_0

    .line 164
    :cond_1
    new-instance v5, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;

    invoke-direct {v5}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;-><init>()V

    .line 165
    .local v5, "keyMapInfo":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;
    iget v6, v4, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;->mKeyCode:I

    iput v6, v5, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;->keycode:I

    .line 166
    iget-object v6, v4, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;->mKeyCodeIndexName:Ljava/lang/String;

    iput-object v6, v5, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;->desc:Ljava/lang/String;

    .line 167
    iget-object v6, v4, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;->mPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget v7, v4, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;->mWidth:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iput v6, v5, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;->x:I

    .line 168
    iget-object v6, v4, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;->mPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v7, v4, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;->mHeight:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iput v6, v5, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;->y:I

    .line 169
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    .end local v4    # "keyViewInfo":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;
    .end local v5    # "keyMapInfo":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfo;
    goto :goto_0

    .line 171
    :cond_2
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyMapInfos;->setKeyMap(Ljava/util/List;)V

    .line 172
    return-object v0
.end method

.method public getKeyConfigs(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigLoaderCallback;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigLoaderCallback;

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->mConfigRepository:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;->getConfigs(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigLoaderCallback;)V

    .line 81
    return-void
.end method

.method public onAppConfigUpload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "jsonString"    # Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager$ConfigUpload;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager$ConfigUpload;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 85
    return-void
.end method

.method public saveConfig(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;)V
    .locals 1
    .param p1, "keyConfig"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;

    .line 74
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->mConfigRepository:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->mConfigRepository:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;->saveConfig(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;)V

    .line 77
    :cond_0
    return-void
.end method

.method public setupWithConfigRepository(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;)V
    .locals 0
    .param p1, "configRepository"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;

    .line 70
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/KeyConfigManager;->mConfigRepository:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;

    .line 71
    return-void
.end method
