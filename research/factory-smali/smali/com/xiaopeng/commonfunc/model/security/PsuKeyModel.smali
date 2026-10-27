.class public Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;
.super Ljava/lang/Object;
.source "PsuKeyModel.java"


# static fields
.field private static final CAR_TYPE:Ljava/lang/String; = "car_type"

.field private static final CDU_ID:Ljava/lang/String; = "cdu_id"

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

.field public static sPsuWebHost:Ljava/lang/String;


# instance fields
.field private mHasResetPsuKey:Z

.field private mIsChecking:Z

.field private mIsSet2Keystore:Z

.field private final mKeyStoreModel:Lcom/xiaopeng/commonfunc/model/keystore/KeyStoreModel;

.field private mNeedRequestPsuKey:Z

.field private final mPsoModel:Lcom/xiaopeng/commonfunc/model/security/PsoModel;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    const-string v0, "psu_host"

    const-string v1, "http://10.0.11.90"

    const-string v2, "http://pso-int.xiaopeng.com"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/utils/config/EnvConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;->sPsuWebHost:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;->mNeedRequestPsuKey:Z

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;->mHasResetPsuKey:Z

    .line 59
    iput-boolean v0, p0, Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;->mIsSet2Keystore:Z

    .line 62
    new-instance v0, Lcom/xiaopeng/commonfunc/model/keystore/KeyStoreModel;

    invoke-direct {v0, p1}, Lcom/xiaopeng/commonfunc/model/keystore/KeyStoreModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;->mKeyStoreModel:Lcom/xiaopeng/commonfunc/model/keystore/KeyStoreModel;

    .line 63
    new-instance v0, Lcom/xiaopeng/commonfunc/model/security/PsoModel;

    invoke-direct {v0, p1}, Lcom/xiaopeng/commonfunc/model/security/PsoModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;->mPsoModel:Lcom/xiaopeng/commonfunc/model/security/PsoModel;

    .line 64
    return-void
.end method

.method static synthetic access$002(Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;->mNeedRequestPsuKey:Z

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;
    .param p1, "x1"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1}, Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;->dealResponse(Ljava/lang/String;)V

    return-void
.end method

.method private dealResponse(Ljava/lang/String;)V
    .locals 6
    .param p1, "response"    # Ljava/lang/String;

    .line 217
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 219
    .local v1, "code":I
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 220
    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "result":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 222
    .local v3, "keybin":[B
    const-string v4, "PSO_KEY"

    invoke-static {v4}, Lcom/xiaopeng/xmlconfig/Support$Path;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->writeNCreateFile(Ljava/lang/String;[B)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 223
    iget-object v4, p0, Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;->mPsoModel:Lcom/xiaopeng/commonfunc/model/security/PsoModel;

    const-string v5, "PSO_KEY"

    invoke-static {v5}, Lcom/xiaopeng/xmlconfig/Support$Path;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/commonfunc/model/security/PsoModel;->presetCertKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 224
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;->mIsSet2Keystore:Z

    .line 227
    .end local v2    # "result":Ljava/lang/String;
    .end local v3    # "keybin":[B
    :cond_0
    goto :goto_0

    .line 228
    :cond_1
    const-string v2, "message"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 229
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

    .line 230
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    new-instance v4, Lcom/xiaopeng/commonfunc/bean/event/SSLKeyEvent;

    const/16 v5, 0xb

    invoke-direct {v4, v5, v2}, Lcom/xiaopeng/commonfunc/bean/event/SSLKeyEvent;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "code":I
    .end local v2    # "psuMessage":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 235
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public static synthetic lambda$asyncGetKey$0(Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 120
    const/4 v0, 0x5

    .line 121
    .local v0, "maxTime":I
    const/4 v1, 0x0

    move v2, v1

    .line 123
    .local v2, "time":I
    :goto_0
    add-int/lit8 v3, v2, 0x1

    .local v3, "time":I
    const/4 v4, 0x5

    if-ge v2, v4, :cond_3

    .line 124
    .end local v2    # "time":I
    :try_start_0
    const-string v2, "PsuKeyModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mNeedRequestPsuKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;->mNeedRequestPsuKey:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-boolean v2, p0, Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;->mNeedRequestPsuKey:Z

    if-eqz v2, :cond_0

    .line 126
    iput-boolean v1, p0, Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;->mNeedRequestPsuKey:Z

    .line 127
    invoke-direct {p0}, Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;->reqPsuKey()V

    .line 130
    :cond_0
    const-wide/16 v4, 0x2904

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 131
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;->isPsuKeyExist()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;->mIsSet2Keystore:Z

    if-eqz v2, :cond_1

    .line 132
    const-string v2, "PsuKeyModel"

    const-string v4, "get key"

    invoke-static {v2, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    goto :goto_2

    .line 121
    :cond_1
    move v2, v3

    goto :goto_0

    .line 140
    .end local v0    # "maxTime":I
    .end local v3    # "time":I
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    .end local v0    # "e":Ljava/lang/Exception;
    iput-boolean v1, p0, Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;->mIsChecking:Z

    .line 141
    if-eqz p1, :cond_4

    goto :goto_3

    .line 140
    :goto_1
    iput-boolean v1, p0, Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;->mIsChecking:Z

    .line 141
    if-eqz p1, :cond_2

    .line 142
    invoke-static {p1}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    :cond_2
    throw v0

    .line 140
    :cond_3
    :goto_2
    iput-boolean v1, p0, Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;->mIsChecking:Z

    .line 141
    if-eqz p1, :cond_4

    .line 142
    :goto_3
    invoke-static {p1}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 145
    :cond_4
    return-void
.end method

.method public static synthetic lambda$repairPsu$1(Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V
    .locals 8
    .param p1, "psuid"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 199
    .local v0, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/SystemPropertyUtil;->getHardwareId()Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "cduid":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 201
    .local v2, "time":J
    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;->sign(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    .line 202
    .local v4, "sign":Ljava/lang/String;
    const-string v5, "cdu_id"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v5, "psu_id"

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v5, "timestamp"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v5, "secret_id"

    const-string v6, "p7kGkaPX2nfZx4Ne"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v5, "sign"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-class v5, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v5}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v5

    const-class v6, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v5, v6}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 209
    .local v5, "http":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;->sPsuWebHost:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "REQUEST_REPAIR_PSU"

    invoke-static {v7}, Lcom/xiaopeng/xmlconfig/Support$Url;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->post(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v6

    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    .line 210
    invoke-virtual {v7, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->uploadJson(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v6

    .line 211
    invoke-interface {v6, p2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 212
    return-void
.end method

.method private reqPsuKey()V
    .locals 9

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 161
    .local v0, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/SystemPropertyUtil;->getHardwareId()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "cduid":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 163
    .local v2, "time":J
    iget-object v4, p0, Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;->mPsoModel:Lcom/xiaopeng/commonfunc/model/security/PsoModel;

    invoke-virtual {v4}, Lcom/xiaopeng/commonfunc/model/security/PsoModel;->getPsuId()Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, "psuid":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 165
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v5

    new-instance v6, Lcom/xiaopeng/commonfunc/bean/event/SSLKeyEvent;

    const/4 v7, 0x7

    invoke-direct {v6, v7}, Lcom/xiaopeng/commonfunc/bean/event/SSLKeyEvent;-><init>(I)V

    invoke-virtual {v5, v6}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 167
    :cond_0
    invoke-virtual {p0, v1, v4, v2, v3}, Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;->sign(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    .line 168
    .local v5, "sign":Ljava/lang/String;
    const-string v6, "cdu_id"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v6, "psu_id"

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :try_start_0
    const-string v6, "car_type"

    invoke-static {}, Landroid/car/Car;->getHardwareCarType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    goto :goto_0

    .line 172
    :catch_0
    move-exception v6

    .line 173
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 175
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v6, "timestamp"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v6, "secret_id"

    const-string v7, "p7kGkaPX2nfZx4Ne"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v6, "sign"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-class v6, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v6}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v6

    const-class v7, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v6, v7}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 180
    .local v6, "http":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;->sPsuWebHost:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "REQUEST_PSU_KEY"

    invoke-static {v8}, Lcom/xiaopeng/xmlconfig/Support$Url;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->post(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v7

    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    .line 181
    invoke-virtual {v8, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->uploadJson(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v7

    new-instance v8, Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel$1;

    invoke-direct {v8, p0}, Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel$1;-><init>(Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;)V

    .line 182
    invoke-interface {v7, v8}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 194
    return-void
.end method

.method public static savePSUKey(Lorg/json/JSONObject;)V
    .locals 4
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .line 71
    :try_start_0
    const-string v0, "tdeskey"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
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

    .line 74
    const-string v1, "PSO_KEY"

    invoke-static {v1}, Lcom/xiaopeng/xmlconfig/Support$Path;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->writeNCreateFile(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v0    # "key":Ljava/lang/String;
    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private declared-synchronized sendBin2PSU(Lorg/json/JSONObject;)Z
    .locals 6
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    monitor-enter p0

    .line 84
    const/4 v0, 0x0

    move v1, v0

    .line 86
    .local v1, "result":Z
    :try_start_0
    const-string v2, "bin"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
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

    iget-boolean v5, p0, Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;->mHasResetPsuKey:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-static {v2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 91
    .local v0, "bytes":[B
    iget-boolean v3, p0, Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;->mHasResetPsuKey:Z

    if-nez v3, :cond_0

    .line 92
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;->mHasResetPsuKey:Z

    .line 93
    const/4 v1, 0x0

    .line 94
    if-nez v1, :cond_0

    .line 95
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    new-instance v4, Lcom/xiaopeng/commonfunc/bean/event/SSLKeyEvent;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/xiaopeng/commonfunc/bean/event/SSLKeyEvent;-><init>(I)V

    invoke-virtual {v3, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .end local v0    # "bytes":[B
    .end local v2    # "bin":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 83
    .end local v1    # "result":Z
    .end local p1    # "jsonObject":Lorg/json/JSONObject;
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 98
    .restart local v1    # "result":Z
    .restart local p1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
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

    .line 102
    monitor-exit p0

    return v1

    .line 83
    .end local v1    # "result":Z
    .end local p1    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;
    throw p1
.end method


# virtual methods
.method public asyncGetKey(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 109
    const-string v0, "PsuKeyModel"

    const-string v1, "asyncGetKey"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-boolean v0, p0, Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;->mIsChecking:Z

    if-eqz v0, :cond_0

    .line 112
    return-void

    .line 114
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;->mIsChecking:Z

    .line 115
    iput-boolean v0, p0, Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;->mNeedRequestPsuKey:Z

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;->mIsSet2Keystore:Z

    .line 118
    new-instance v0, Lcom/xiaopeng/commonfunc/model/security/-$$Lambda$PsuKeyModel$dZOcg79kp_pU0tNqnADp9xraFuo;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/commonfunc/model/security/-$$Lambda$PsuKeyModel$dZOcg79kp_pU0tNqnADp9xraFuo;-><init>(Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 146
    return-void
.end method

.method public isPsuKeyExist()Z
    .locals 1

    .line 149
    const-string v0, "PSO_KEY"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Path;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->isExistFilePath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;->mPsoModel:Lcom/xiaopeng/commonfunc/model/security/PsoModel;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/model/security/PsoModel;->checkIfPreseted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDestroy()V
    .locals 0

    .line 81
    return-void
.end method

.method public repairPsu(Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V
    .locals 1
    .param p1, "psuid"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;

    .line 197
    new-instance v0, Lcom/xiaopeng/commonfunc/model/security/-$$Lambda$PsuKeyModel$72jarv2tHTxc9GLPRiUbCJrbDlU;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/commonfunc/model/security/-$$Lambda$PsuKeyModel$72jarv2tHTxc9GLPRiUbCJrbDlU;-><init>(Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 213
    return-void
.end method

.method public sign(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .param p1, "cduid"    # Ljava/lang/String;
    .param p2, "psuid"    # Ljava/lang/String;
    .param p3, "timestamp"    # J

    .line 238
    if-eqz p2, :cond_0

    .line 239
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

    .line 241
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

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/PsuKeyModel;->mPsoModel:Lcom/xiaopeng/commonfunc/model/security/PsoModel;

    const-string v1, "PSO_KEY"

    invoke-static {v1}, Lcom/xiaopeng/xmlconfig/Support$Path;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/commonfunc/model/security/PsoModel;->verifyCertKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
