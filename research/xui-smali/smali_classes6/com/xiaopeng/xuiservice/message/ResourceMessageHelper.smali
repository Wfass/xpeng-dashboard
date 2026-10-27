.class public Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;
.super Ljava/lang/Object;
.source "ResourceMessageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper$SingletonHolder;,
        Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper$ResourceUpdateListener;
    }
.end annotation


# static fields
.field private static final FILTER_TYPE_ALL_VEHICLE:Ljava/lang/String; = "0"

.field private static final FILTER_TYPE_SINGLE_VEHICLE:Ljava/lang/String; = "2"

.field private static final FILTER_TYPE_VEHICLE_GROUP:Ljava/lang/String; = "1"

.field private static final TAG:Ljava/lang/String; = "ResourceMessageHelper"


# instance fields
.field private final mListenerMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper$ResourceUpdateListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final pushMessageListener:Lcom/xiaopeng/xuiservice/message/PushMessage$PushMessageListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;->mListenerMap:Landroid/util/ArrayMap;

    .line 40
    new-instance v0, Lcom/xiaopeng/xuiservice/message/-$$Lambda$ResourceMessageHelper$5DVquQdBgKwH_lTV1afp-xGgJXc;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/message/-$$Lambda$ResourceMessageHelper$5DVquQdBgKwH_lTV1afp-xGgJXc;-><init>(Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;->pushMessageListener:Lcom/xiaopeng/xuiservice/message/PushMessage$PushMessageListener;

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper$1;

    .line 14
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;-><init>()V

    return-void
.end method

.method private static checkRomVersion([I[II)Z
    .locals 3
    .param p0, "romVersion"    # [I
    .param p1, "minRomVersion"    # [I
    .param p2, "index"    # I

    .line 218
    array-length v0, p0

    const/4 v1, 0x1

    if-lt p2, v0, :cond_0

    .line 219
    return v1

    .line 221
    :cond_0
    aget v0, p0, p2

    aget v2, p1, p2

    if-ge v0, v2, :cond_1

    .line 222
    const/4 v0, 0x0

    return v0

    .line 223
    :cond_1
    aget v0, p0, p2

    aget v2, p1, p2

    if-le v0, v2, :cond_2

    .line 224
    return v1

    .line 226
    :cond_2
    add-int/lit8 v0, p2, 0x1

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;->checkRomVersion([I[II)Z

    move-result v0

    return v0
.end method

.method private static filterMinRomVersion(Lorg/json/JSONObject;)Z
    .locals 4
    .param p0, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 161
    const-string v0, "min_rom_version"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "min_rom_version":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    const/4 v1, 0x1

    return v1

    .line 167
    :cond_0
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;->parseRomVersion(Ljava/lang/String;)[I

    move-result-object v1

    .line 168
    .local v1, "minRomVersion":[I
    invoke-static {}, Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;->getCurrentRomVersion()[I

    move-result-object v2

    .line 169
    .local v2, "romVersion":[I
    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 170
    invoke-static {v2, v1, v3}, Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;->checkRomVersion([I[II)Z

    move-result v3

    return v3

    .line 172
    :cond_1
    return v3
.end method

.method private filterPushTarget(Lorg/json/JSONObject;)Z
    .locals 9
    .param p1, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 126
    const-string v0, "push_target"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 127
    .local v0, "push_target":Lorg/json/JSONObject;
    const-string v1, "push_to_vehicle"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "push_to_vehicle":Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 129
    return v3

    .line 130
    :cond_0
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_2

    const-string v2, "2"

    .line 131
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 148
    :cond_1
    return v4

    .line 132
    :cond_2
    :goto_0
    const-string/jumbo v2, "vins"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "vins":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 134
    return v4

    .line 136
    :cond_3
    invoke-static {}, Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;->getVIN()Ljava/lang/String;

    move-result-object v5

    .line 137
    .local v5, "myVin":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 138
    return v4

    .line 140
    :cond_4
    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 141
    .local v6, "vinArr":[Ljava/lang/String;
    move v7, v4

    .line 141
    .local v7, "i":I
    :goto_1
    array-length v8, v6

    if-ge v7, v8, :cond_6

    .line 142
    aget-object v8, v6, v7

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 143
    return v3

    .line 141
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 146
    .end local v7    # "i":I
    :cond_6
    return v4
.end method

.method private static getCurrentRomVersion()[I
    .locals 6

    .line 199
    const-string v0, "ro.xiaopeng.software"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "info":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 201
    return-object v2

    .line 204
    :cond_0
    const-string v1, "_V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 205
    .local v1, "index1":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 206
    return-object v2

    .line 208
    :cond_1
    const-string v4, "_"

    add-int/lit8 v5, v1, 0x2

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 209
    .local v4, "index2":I
    if-ne v4, v3, :cond_2

    .line 210
    return-object v2

    .line 213
    :cond_2
    add-int/lit8 v2, v1, 0x2

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "versionStr":Ljava/lang/String;
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;->parseRomVersion(Ljava/lang/String;)[I

    move-result-object v3

    return-object v3
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;
    .locals 1

    .line 63
    invoke-static {}, Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper$SingletonHolder;->access$000()Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;

    move-result-object v0

    return-object v0
.end method

.method private getListenerCount()I
    .locals 5

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "count":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 108
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 109
    .local v3, "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper$ResourceUpdateListener;>;"
    if-eqz v3, :cond_0

    .line 110
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/2addr v0, v4

    .line 112
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper$ResourceUpdateListener;>;"
    :cond_0
    goto :goto_0

    .line 113
    :cond_1
    return v0
.end method

.method private static getVIN()Ljava/lang/String;
    .locals 2

    .line 152
    const-string v0, "persist.sys.xiaopeng.vin"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "vin":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    const-string v1, "sys.xiaopeng.vin"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    :cond_0
    return-object v0
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "messageType"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 42
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, "dataJson":Lorg/json/JSONObject;
    const-string v1, "category_code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "category_code":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;->filterMinRomVersion(Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;->filterPushTarget(Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;->notifyResourceUpdate(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_0
    const-string v2, "ResourceMessageHelper"

    const-string v3, "drop resource message"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v0    # "dataJson":Lorg/json/JSONObject;
    .end local v1    # "category_code":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ResourceMessageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse resource message error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v1, "ResourceMessageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error json: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method static synthetic lambda$notifyResourceUpdate$1(Ljava/lang/String;Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper$ResourceUpdateListener;)V
    .locals 0
    .param p0, "resourceType"    # Ljava/lang/String;
    .param p1, "l"    # Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper$ResourceUpdateListener;

    .line 120
    invoke-interface {p1, p0}, Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper$ResourceUpdateListener;->onResourceUpdated(Ljava/lang/String;)V

    return-void
.end method

.method private notifyResourceUpdate(Ljava/lang/String;)V
    .locals 3
    .param p1, "resourceType"    # Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;->mListenerMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 119
    .local v1, "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper$ResourceUpdateListener;>;"
    if-eqz v1, :cond_0

    .line 120
    new-instance v2, Lcom/xiaopeng/xuiservice/message/-$$Lambda$ResourceMessageHelper$p83nh_zQDDCRRPYCcHv7Owo6YBc;

    invoke-direct {v2, p1}, Lcom/xiaopeng/xuiservice/message/-$$Lambda$ResourceMessageHelper$p83nh_zQDDCRRPYCcHv7Owo6YBc;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    .line 122
    .end local v1    # "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper$ResourceUpdateListener;>;"
    :cond_0
    monitor-exit v0

    .line 123
    return-void

    .line 122
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static parseRomVersion(Ljava/lang/String;)[I
    .locals 7
    .param p0, "serverRomVersion"    # Ljava/lang/String;

    .line 179
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "split":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    .line 181
    return-object v2

    .line 183
    :cond_0
    array-length v1, v0

    new-array v1, v1, [I

    .line 185
    .local v1, "versions":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 186
    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 192
    .end local v3    # "i":I
    :cond_1
    nop

    .line 194
    return-object v1

    .line 188
    :catch_0
    move-exception v3

    .line 189
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "ResourceMessageHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parse server version error, version = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 189
    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-object v2
.end method


# virtual methods
.method public declared-synchronized registerResourceUpdateListener(Ljava/lang/String;Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper$ResourceUpdateListener;)V
    .locals 5
    .param p1, "resourceType"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper$ResourceUpdateListener;

    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;->mListenerMap:Landroid/util/ArrayMap;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 77
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 78
    .local v1, "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper$ResourceUpdateListener;>;"
    if-nez v1, :cond_0

    .line 79
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 80
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;->getListenerCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 84
    invoke-static {}, Lcom/xiaopeng/xuiservice/message/PushMessage;->getInstance()Lcom/xiaopeng/xuiservice/message/PushMessage;

    move-result-object v2

    const-string v3, "001"

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;->pushMessageListener:Lcom/xiaopeng/xuiservice/message/PushMessage$PushMessageListener;

    invoke-virtual {v2, v3, v4}, Lcom/xiaopeng/xuiservice/message/PushMessage;->registerMessage(Ljava/lang/String;Lcom/xiaopeng/xuiservice/message/PushMessage$PushMessageListener;)V

    .line 87
    :cond_1
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 88
    .end local v1    # "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper$ResourceUpdateListener;>;"
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 88
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 75
    .end local p1    # "resourceType":Ljava/lang/String;
    .end local p2    # "listener":Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper$ResourceUpdateListener;
    :catchall_1
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;
    throw p1
.end method

.method public declared-synchronized unregisterResourceUpdateListener(Ljava/lang/String;Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper$ResourceUpdateListener;)V
    .locals 5
    .param p1, "resourceType"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper$ResourceUpdateListener;

    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;->mListenerMap:Landroid/util/ArrayMap;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 93
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 94
    .local v1, "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper$ResourceUpdateListener;>;"
    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 97
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;->getListenerCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 98
    invoke-static {}, Lcom/xiaopeng/xuiservice/message/PushMessage;->getInstance()Lcom/xiaopeng/xuiservice/message/PushMessage;

    move-result-object v2

    const-string v3, "001"

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;->pushMessageListener:Lcom/xiaopeng/xuiservice/message/PushMessage$PushMessageListener;

    invoke-virtual {v2, v3, v4}, Lcom/xiaopeng/xuiservice/message/PushMessage;->unregisterMessage(Ljava/lang/String;Lcom/xiaopeng/xuiservice/message/PushMessage$PushMessageListener;)V

    .line 102
    .end local v1    # "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper$ResourceUpdateListener;>;"
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 91
    .end local p1    # "resourceType":Ljava/lang/String;
    .end local p2    # "listener":Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper$ResourceUpdateListener;
    :catchall_1
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/message/ResourceMessageHelper;
    throw p1
.end method
