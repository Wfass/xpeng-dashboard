.class public Lcom/xiaopeng/factory/model/security/PsuKeyModel;
.super Ljava/lang/Object;
.source "PsuKeyModel.java"


# static fields
.field private static final CDU_ID:Ljava/lang/String; = "cdu_id"

.field public static final CERT_PSU_PATH:Ljava/lang/String; = "mnt/vendor/private/sec/pso.jpg"

.field private static final CLIENT_PSU_KEY_URL:Ljava/lang/String;

.field private static final HTTP_PSU_REPAIR:Ljava/lang/String;

.field private static final PSU_ID:Ljava/lang/String; = "psu_id"

.field private static final PSU_SECRET_ID:Ljava/lang/String; = "p7kGkaPX2nfZx4Ne"

.field private static final PSU_SECRET_KEY:Ljava/lang/String; = "PnBaj4jz2dh58nJfijfk4CYcTBCJwF4R"

.field public static final RESPONSE_BIN:Ljava/lang/String; = "bin"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "code"

.field public static final RESPONSE_DATA:Ljava/lang/String; = "data"

.field public static final RESPONSE_MESSAGE:Ljava/lang/String; = "message"

.field public static final RESPONSE_TDESKEY:Ljava/lang/String; = "tdeskey"

.field private static final SECRET_ID:Ljava/lang/String; = "secret_id"

.field private static final SIGN:Ljava/lang/String; = "sign"

.field private static final TAG:Ljava/lang/String; = "PsuKeyModel"

.field private static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static sPsuWebAddress:Ljava/lang/String;

.field public static sPsuWebHost:Ljava/lang/String;


# instance fields
.field private mHasResetPsuKey:Z

.field private mIsChecking:Z

.field private mIsSet2Keystore:Z

.field private mKeyStoreModel:Lcom/xiaopeng/factory/model/keystore/KeyStoreModel;

.field private mNeedRequestPsuKey:Z

.field private mPsoModel:Lcom/xiaopeng/factory/model/security/PsoModel;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    const-string v0, "psu_host"

    const-string v1, "http://10.0.11.90"

    const-string v2, "http://pso-int.xiaopeng.com"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/utils/config/EnvConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->sPsuWebHost:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->sPsuWebHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/api/v3/psu/repair.do"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->HTTP_PSU_REPAIR:Ljava/lang/String;

    .line 44
    :try_start_0
    const-string v0, "E28"

    invoke-static {}, Landroid/car/Car;->getHardwareCarType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const-string v0, "/api/v3/pso/e28/bin/create.do"

    goto :goto_0

    :cond_0
    const-string v0, "/api/v3/psu/bin/create.do"

    :goto_0
    sput-object v0, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->sPsuWebAddress:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_1

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "/api/v3/psu/bin/create.do"

    sput-object v1, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->sPsuWebAddress:Ljava/lang/String;

    .line 48
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->sPsuWebHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->sPsuWebAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->CLIENT_PSU_KEY_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->mNeedRequestPsuKey:Z

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->mHasResetPsuKey:Z

    .line 74
    iput-boolean v0, p0, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->mIsSet2Keystore:Z

    .line 77
    new-instance v0, Lcom/xiaopeng/factory/model/keystore/KeyStoreModel;

    invoke-direct {v0}, Lcom/xiaopeng/factory/model/keystore/KeyStoreModel;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->mKeyStoreModel:Lcom/xiaopeng/factory/model/keystore/KeyStoreModel;

    .line 78
    new-instance v0, Lcom/xiaopeng/factory/model/security/PsoModel;

    invoke-direct {v0}, Lcom/xiaopeng/factory/model/security/PsoModel;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->mPsoModel:Lcom/xiaopeng/factory/model/security/PsoModel;

    .line 79
    return-void
.end method

.method static synthetic access$002(Lcom/xiaopeng/factory/model/security/PsuKeyModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/factory/model/security/PsuKeyModel;
    .param p1, "x1"    # Z

    .line 34
    iput-boolean p1, p0, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->mNeedRequestPsuKey:Z

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/factory/model/security/PsuKeyModel;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/factory/model/security/PsuKeyModel;
    .param p1, "x1"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->dealResponse(Ljava/lang/String;)V

    return-void
.end method

.method private dealResponse(Ljava/lang/String;)V
    .locals 6
    .param p1, "response"    # Ljava/lang/String;

    .line 230
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 231
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 232
    .local v1, "code":I
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 233
    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "result":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 235
    .local v3, "keybin":[B
    const-string v4, "mnt/vendor/private/sec/pso.jpg"

    invoke-static {v4, v3}, Lcom/xiaopeng/factory/utils/FileUtil;->writeNCreateFile(Ljava/lang/String;[B)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 236
    iget-object v4, p0, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->mPsoModel:Lcom/xiaopeng/factory/model/security/PsoModel;

    const-string v5, "mnt/vendor/private/sec/pso.jpg"

    invoke-virtual {v4, v5}, Lcom/xiaopeng/factory/model/security/PsoModel;->presetCertKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 237
    iget-object v4, p0, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->mPsoModel:Lcom/xiaopeng/factory/model/security/PsoModel;

    invoke-virtual {v4}, Lcom/xiaopeng/factory/model/security/PsoModel;->presetMcuKey()Z

    move-result v4

    iput-boolean v4, p0, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->mIsSet2Keystore:Z

    .line 240
    .end local v2    # "result":Ljava/lang/String;
    .end local v3    # "keybin":[B
    :cond_0
    goto :goto_0

    .line 241
    :cond_1
    const-string v2, "message"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, "psuMessage":Ljava/lang/String;
    const-string v3, "PsuKeyModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "psuMessage ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    new-instance v4, Lcom/xiaopeng/factory/bean/event/SSLKeyEvent;

    const/16 v5, 0xb

    invoke-direct {v4, v5, v2}, Lcom/xiaopeng/factory/bean/event/SSLKeyEvent;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "code":I
    .end local v2    # "psuMessage":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 248
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public static synthetic lambda$asyncGetKey$0(Lcom/xiaopeng/factory/model/security/PsuKeyModel;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 138
    const/4 v0, 0x5

    .line 139
    .local v0, "maxTime":I
    const/4 v1, 0x0

    move v2, v1

    .line 141
    .local v2, "time":I
    :goto_0
    add-int/lit8 v3, v2, 0x1

    .local v3, "time":I
    const/4 v4, 0x5

    if-ge v2, v4, :cond_3

    .line 142
    .end local v2    # "time":I
    :try_start_0
    const-string v2, "PsuKeyModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mNeedRequestPsuKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->mNeedRequestPsuKey:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iget-boolean v2, p0, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->mNeedRequestPsuKey:Z

    if-eqz v2, :cond_0

    .line 144
    iput-boolean v1, p0, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->mNeedRequestPsuKey:Z

    .line 145
    invoke-direct {p0}, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->reqPsuKey()V

    .line 148
    :cond_0
    const-wide/16 v4, 0x2904

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 149
    invoke-virtual {p0}, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->isPsuKeyExist()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->mIsSet2Keystore:Z

    if-eqz v2, :cond_1

    .line 150
    const-string v2, "PsuKeyModel"

    const-string v4, "get key"

    invoke-static {v2, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    goto :goto_2

    .line 139
    :cond_1
    move v2, v3

    goto :goto_0

    .line 158
    .end local v0    # "maxTime":I
    .end local v3    # "time":I
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    .end local v0    # "e":Ljava/lang/Exception;
    iput-boolean v1, p0, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->mIsChecking:Z

    .line 159
    if-eqz p1, :cond_4

    goto :goto_3

    .line 158
    :goto_1
    iput-boolean v1, p0, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->mIsChecking:Z

    .line 159
    if-eqz p1, :cond_2

    .line 160
    invoke-static {p1}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    :cond_2
    throw v0

    .line 158
    :cond_3
    :goto_2
    iput-boolean v1, p0, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->mIsChecking:Z

    .line 159
    if-eqz p1, :cond_4

    .line 160
    :goto_3
    invoke-static {p1}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 163
    :cond_4
    return-void
.end method

.method public static synthetic lambda$repairPsu$1(Lcom/xiaopeng/factory/model/security/PsuKeyModel;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V
    .locals 8
    .param p1, "psuid"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 212
    .local v0, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/xiaopeng/factory/utils/SystemPropertyUtil;->getHardwareId()Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "cduid":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 214
    .local v2, "time":J
    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->sign(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, "sign":Ljava/lang/String;
    const-string v5, "cdu_id"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v5, "psu_id"

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v5, "timestamp"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v5, "secret_id"

    const-string v6, "p7kGkaPX2nfZx4Ne"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v5, "sign"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-class v5, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v5}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v5

    const-class v6, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v5, v6}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 222
    .local v5, "http":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    sget-object v6, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->HTTP_PSU_REPAIR:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->post(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v6

    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    .line 223
    invoke-virtual {v7, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->uploadJson(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v6

    .line 224
    invoke-interface {v6, p2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 225
    return-void
.end method

.method private reqPsuKey()V
    .locals 9

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 179
    .local v0, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/xiaopeng/factory/utils/SystemPropertyUtil;->getHardwareId()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "cduid":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 181
    .local v2, "time":J
    iget-object v4, p0, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->mPsoModel:Lcom/xiaopeng/factory/model/security/PsoModel;

    invoke-virtual {v4}, Lcom/xiaopeng/factory/model/security/PsoModel;->getPsuId()Ljava/lang/String;

    move-result-object v4

    .line 182
    .local v4, "psuid":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 183
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v5

    new-instance v6, Lcom/xiaopeng/factory/bean/event/SSLKeyEvent;

    const/4 v7, 0x7

    invoke-direct {v6, v7}, Lcom/xiaopeng/factory/bean/event/SSLKeyEvent;-><init>(I)V

    invoke-virtual {v5, v6}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 185
    :cond_0
    invoke-virtual {p0, v1, v4, v2, v3}, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->sign(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    .line 186
    .local v5, "sign":Ljava/lang/String;
    const-string v6, "cdu_id"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v6, "psu_id"

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v6, "timestamp"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v6, "secret_id"

    const-string v7, "p7kGkaPX2nfZx4Ne"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v6, "sign"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-class v6, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v6}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v6

    const-class v7, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v6, v7}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 193
    .local v6, "http":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    sget-object v7, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->CLIENT_PSU_KEY_URL:Ljava/lang/String;

    invoke-interface {v6, v7}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->post(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v7

    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    .line 194
    invoke-virtual {v8, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->uploadJson(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v7

    new-instance v8, Lcom/xiaopeng/factory/model/security/PsuKeyModel$1;

    invoke-direct {v8, p0}, Lcom/xiaopeng/factory/model/security/PsuKeyModel$1;-><init>(Lcom/xiaopeng/factory/model/security/PsuKeyModel;)V

    .line 195
    invoke-interface {v7, v8}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 207
    return-void
.end method

.method public static savePSUKey(Lorg/json/JSONObject;)V
    .locals 4
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .line 89
    :try_start_0
    const-string v0, "tdeskey"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "key":Ljava/lang/String;
    const-string v1, "PsuKeyModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "savePSUKey key.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", key.md5:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/MD5Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    const-string v1, "mnt/vendor/private/sec/pso.jpg"

    invoke-static {v1, v0}, Lcom/xiaopeng/factory/utils/FileUtil;->writeNCreateFile(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v0    # "key":Ljava/lang/String;
    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private declared-synchronized sendBin2PSU(Lorg/json/JSONObject;)Z
    .locals 6
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    monitor-enter p0

    .line 102
    const/4 v0, 0x0

    move v1, v0

    .line 104
    .local v1, "result":Z
    :try_start_0
    const-string v2, "bin"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "bin":Ljava/lang/String;
    const-string v3, "PsuKeyModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendBin2PSU bin.length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mHasResetPsuKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->mHasResetPsuKey:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-static {v2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 109
    .local v0, "bytes":[B
    iget-boolean v3, p0, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->mHasResetPsuKey:Z

    if-nez v3, :cond_0

    .line 110
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->mHasResetPsuKey:Z

    .line 111
    const/4 v1, 0x0

    .line 112
    if-nez v1, :cond_0

    .line 113
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    new-instance v4, Lcom/xiaopeng/factory/bean/event/SSLKeyEvent;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/xiaopeng/factory/bean/event/SSLKeyEvent;-><init>(I)V

    invoke-virtual {v3, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .end local v0    # "bytes":[B
    .end local v2    # "bin":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 101
    .end local v1    # "result":Z
    .end local p1    # "jsonObject":Lorg/json/JSONObject;
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 116
    .restart local v1    # "result":Z
    .restart local p1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v0, "PsuKeyModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendBin2PSU result ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->v(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    monitor-exit p0

    return v1

    .line 101
    .end local v1    # "result":Z
    .end local p1    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/factory/model/security/PsuKeyModel;
    throw p1
.end method


# virtual methods
.method public asyncGetKey(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 127
    const-string v0, "PsuKeyModel"

    const-string v1, "asyncGetKey"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iget-boolean v0, p0, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->mIsChecking:Z

    if-eqz v0, :cond_0

    .line 130
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->mIsChecking:Z

    .line 133
    iput-boolean v0, p0, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->mNeedRequestPsuKey:Z

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->mIsSet2Keystore:Z

    .line 136
    new-instance v0, Lcom/xiaopeng/factory/model/security/-$$Lambda$PsuKeyModel$-xIdnvD3_1deKut4ndLLuEPuaLY;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/factory/model/security/-$$Lambda$PsuKeyModel$-xIdnvD3_1deKut4ndLLuEPuaLY;-><init>(Lcom/xiaopeng/factory/model/security/PsuKeyModel;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 164
    return-void
.end method

.method public isPsuKeyExist()Z
    .locals 1

    .line 167
    const-string v0, "mnt/vendor/private/sec/pso.jpg"

    invoke-static {v0}, Lcom/xiaopeng/factory/utils/FileUtil;->isExistFilePath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .line 82
    return-void
.end method

.method public repairPsu(Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V
    .locals 1
    .param p1, "psuid"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;

    .line 210
    new-instance v0, Lcom/xiaopeng/factory/model/security/-$$Lambda$PsuKeyModel$nZWFn_16Siuq9_ntxSNW1lJ2ZXs;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/factory/model/security/-$$Lambda$PsuKeyModel$nZWFn_16Siuq9_ntxSNW1lJ2ZXs;-><init>(Lcom/xiaopeng/factory/model/security/PsuKeyModel;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 226
    return-void
.end method

.method public sign(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .param p1, "cduid"    # Ljava/lang/String;
    .param p2, "psuid"    # Ljava/lang/String;
    .param p3, "timestamp"    # J

    .line 251
    if-eqz p2, :cond_0

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cdu_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&psu_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PnBaj4jz2dh58nJfijfk4CYcTBCJwF4R"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/MD5Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 254
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cdu_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PnBaj4jz2dh58nJfijfk4CYcTBCJwF4R"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/MD5Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verifyPsuKey()Z
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->mPsoModel:Lcom/xiaopeng/factory/model/security/PsoModel;

    const-string v1, "mnt/vendor/private/sec/pso.jpg"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/model/security/PsoModel;->verifyCertKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
