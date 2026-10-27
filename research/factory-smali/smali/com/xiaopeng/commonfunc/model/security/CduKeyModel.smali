.class public Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;
.super Ljava/lang/Object;
.source "CduKeyModel.java"


# static fields
.field private static final RESPONSE_OK:Ljava/lang/String; = "ok"

.field private static final TAG:Ljava/lang/String; = "CduKeyModel"

.field private static final URL_CDU_CERT_CHECK:Ljava/lang/String;

.field private static final URL_V18_CDU_CERT_CHECK:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInputHardwareId:Ljava/lang/String;

.field private mIsChecking:Z

.field private final mKeyStoreModel:Lcom/xiaopeng/commonfunc/model/keystore/KeyStoreModel;

.field private mNeedRequestCduKey:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-string v0, "CHECK_CDU_KEY"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Url;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->URL_CDU_CERT_CHECK:Ljava/lang/String;

    .line 40
    const-string v0, "CHECK_V18_CDU_KEY"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Url;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->URL_V18_CDU_CERT_CHECK:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->mNeedRequestCduKey:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->mInputHardwareId:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->mContext:Landroid/content/Context;

    .line 50
    new-instance v0, Lcom/xiaopeng/commonfunc/model/keystore/KeyStoreModel;

    invoke-direct {v0, p1}, Lcom/xiaopeng/commonfunc/model/keystore/KeyStoreModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->mKeyStoreModel:Lcom/xiaopeng/commonfunc/model/keystore/KeyStoreModel;

    .line 51
    return-void
.end method

.method static synthetic access$002(Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;
    .param p1, "x1"    # Z

    .line 36
    iput-boolean p1, p0, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->mNeedRequestCduKey:Z

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->dealResponse(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private dealResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "sign"    # Ljava/lang/String;

    .line 240
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 241
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 242
    .local v1, "code":I
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 243
    const-string v2, "data"

    .line 244
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    const-string v3, "oBPMlkqO4eBRBa@N*zIGdRokeikjKbIg"

    .line 246
    invoke-static {p2, v3}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->getKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 243
    invoke-static {v2, v3}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->decrypt([B[B)[B

    move-result-object v2

    .line 247
    .local v2, "buff":[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 248
    .local v3, "result":Ljava/lang/String;
    const-string v4, "CduKeyModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dealResponse mInputHardwareId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->mInputHardwareId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", result.length:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", result:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    iget-object v4, p0, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->mInputHardwareId:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 250
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sdcard/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->mInputHardwareId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 252
    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    .line 253
    invoke-virtual {p0, v0}, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->saveCDUKey(Lorg/json/JSONObject;)V

    .line 255
    .end local v2    # "buff":[B
    .end local v3    # "result":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 256
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->mNeedRequestCduKey:Z

    .line 257
    const-string v2, "CduKeyModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dealResponse code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/commonfunc/bean/event/SSLKeyEvent;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lcom/xiaopeng/commonfunc/bean/event/SSLKeyEvent;-><init>(I)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "code":I
    :goto_1
    goto :goto_2

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 263
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private isCduKeyGotten()Z
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->mInputHardwareId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->isCduKeyFileExist()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->isCduKeyExist()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$asyncGetKey$0(Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 100
    const/4 v0, 0x5

    .line 101
    .local v0, "maxTime":I
    const/4 v1, 0x0

    move v2, v1

    .line 103
    .local v2, "time":I
    :goto_0
    add-int/lit8 v3, v2, 0x1

    .local v3, "time":I
    const/4 v4, 0x5

    if-ge v2, v4, :cond_3

    .line 104
    .end local v2    # "time":I
    :try_start_0
    const-string v2, "CduKeyModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mNeedRequestCduKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->mNeedRequestCduKey:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-boolean v2, p0, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->mNeedRequestCduKey:Z

    if-eqz v2, :cond_0

    .line 106
    iput-boolean v1, p0, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->mNeedRequestCduKey:Z

    .line 107
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->reqCduKey(Landroid/content/Context;)V

    .line 110
    :cond_0
    const-wide/16 v4, 0x2904

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 112
    invoke-direct {p0}, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->isCduKeyGotten()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    const-string v2, "CduKeyModel"

    const-string v4, "get key"

    invoke-static {v2, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    goto :goto_2

    .line 101
    :cond_1
    move v2, v3

    goto :goto_0

    .line 121
    .end local v0    # "maxTime":I
    .end local v3    # "time":I
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    .end local v0    # "e":Ljava/lang/Exception;
    iput-boolean v1, p0, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->mIsChecking:Z

    .line 122
    if-eqz p1, :cond_4

    goto :goto_3

    .line 121
    :goto_1
    iput-boolean v1, p0, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->mIsChecking:Z

    .line 122
    if-eqz p1, :cond_2

    .line 123
    invoke-static {p1}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    :cond_2
    throw v0

    .line 121
    :cond_3
    :goto_2
    iput-boolean v1, p0, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->mIsChecking:Z

    .line 122
    if-eqz p1, :cond_4

    .line 123
    :goto_3
    invoke-static {p1}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 126
    :cond_4
    return-void
.end method

.method private reqCduKey(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 213
    .local v0, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "app_id"

    const-string v2, "xmart:appid:002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v1, "hardware_id"

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->mInputHardwareId:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->mInputHardwareId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/SystemPropertyUtil;->getHardwareId()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 216
    .local v1, "time":J
    const-string v3, "timestamp"

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-static {p1, v0, v1, v2}, Lcom/xiaopeng/commonfunc/utils/IndivHelper;->sign(Landroid/content/Context;Ljava/util/Map;J)Ljava/lang/String;

    move-result-object v3

    .line 218
    .local v3, "sign":Ljava/lang/String;
    const-string v4, "sign"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-class v4, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v4}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v4

    const-class v5, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v4, v5}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 221
    .local v4, "http":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    const-string v5, "REQUEST_CDU_KEY"

    invoke-static {v5}, Lcom/xiaopeng/xmlconfig/Support$Url;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->post(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v5

    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    .line 222
    invoke-virtual {v6, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->uploadJson(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v5

    const-string v6, "Client"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "car.xmart.com/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getSystemVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v5

    new-instance v6, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel$1;

    invoke-direct {v6, p0, v3}, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel$1;-><init>(Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;Ljava/lang/String;)V

    .line 224
    invoke-interface {v5, v6}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 236
    return-void
.end method


# virtual methods
.method public asyncGetKey(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 2
    .param p1, "callback"    # Ljava/lang/Runnable;
    .param p2, "hardwareId"    # Ljava/lang/String;

    .line 89
    const-string v0, "CduKeyModel"

    const-string v1, "asyncGetKey"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-boolean v0, p0, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->mIsChecking:Z

    if-eqz v0, :cond_0

    .line 92
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->mIsChecking:Z

    .line 95
    iput-boolean v0, p0, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->mNeedRequestCduKey:Z

    .line 96
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->mInputHardwareId:Ljava/lang/String;

    .line 98
    new-instance v0, Lcom/xiaopeng/commonfunc/model/security/-$$Lambda$CduKeyModel$1kOM3WZzMOPeTfv2N8UHKuZA8ME;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/commonfunc/model/security/-$$Lambda$CduKeyModel$1kOM3WZzMOPeTfv2N8UHKuZA8ME;-><init>(Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 127
    return-void
.end method

.method public changeChnCaCert()Z
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->mKeyStoreModel:Lcom/xiaopeng/commonfunc/model/keystore/KeyStoreModel;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/model/keystore/KeyStoreModel;->CreateCaCert()Z

    move-result v0

    .line 81
    .local v0, "res":Z
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaopeng/lib/utils/SendBroadCastUtil;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/lib/utils/SendBroadCastUtil;

    move-result-object v1

    const-string v2, "com.xiaopeng.action.CLIENT_SSL_UPDATE"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/lib/utils/SendBroadCastUtil;->sendBroadCast(Ljava/lang/String;)V

    .line 82
    return v0
.end method

.method public changeV18CaCert()Z
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->mKeyStoreModel:Lcom/xiaopeng/commonfunc/model/keystore/KeyStoreModel;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/model/keystore/KeyStoreModel;->CreateV18CaCert()Z

    move-result v0

    .line 74
    .local v0, "res":Z
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaopeng/lib/utils/SendBroadCastUtil;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/lib/utils/SendBroadCastUtil;

    move-result-object v1

    const-string v2, "com.xiaopeng.action.CLIENT_SSL_UPDATE"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/lib/utils/SendBroadCastUtil;->sendBroadCast(Ljava/lang/String;)V

    .line 75
    return v0
.end method

.method public getInputHardwareId()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->mInputHardwareId:Ljava/lang/String;

    return-object v0
.end method

.method public isCduKeyExist()Z
    .locals 4

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->mKeyStoreModel:Lcom/xiaopeng/commonfunc/model/keystore/KeyStoreModel;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/model/keystore/KeyStoreModel;->isClientCertExist()Z

    move-result v0

    .line 189
    .local v0, "res":Z
    const-string v1, "CduKeyModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCduKeyExist? res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    return v0
.end method

.method public isCduKeyFileExist()Z
    .locals 4

    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "res":Z
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->mInputHardwareId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdcard/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->mInputHardwareId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->isExistFilePath(Ljava/lang/String;)Z

    move-result v0

    .line 198
    :cond_0
    const-string v1, "CduKeyModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCduKeyFileExist? mInputHardwareId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->mInputHardwareId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    return v0
.end method

.method public onDestroy()V
    .locals 0

    .line 54
    return-void
.end method

.method public saveCDUKey(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 61
    :try_start_0
    const-string v0, "pkcs12"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "pkcs12":Ljava/lang/String;
    const-string v1, "CduKeyModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveCDUKey pkcs12.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->mKeyStoreModel:Lcom/xiaopeng/commonfunc/model/keystore/KeyStoreModel;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/commonfunc/model/keystore/KeyStoreModel;->CreateClientCert(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaopeng/lib/utils/SendBroadCastUtil;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/lib/utils/SendBroadCastUtil;

    move-result-object v1

    const-string v2, "com.xiaopeng.action.CLIENT_SSL_UPDATE"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/lib/utils/SendBroadCastUtil;->sendBroadCast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v0    # "pkcs12":Ljava/lang/String;
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public verifyCduKey(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V
    .locals 5
    .param p1, "callback"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 167
    .local v0, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v1, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 168
    .local v1, "http":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    sget-object v2, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->URL_CDU_CERT_CHECK:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->cancelTag(Ljava/lang/Object;)V

    .line 169
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->URL_CDU_CERT_CHECK:Ljava/lang/String;

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->build()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->URL_CDU_CERT_CHECK:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->tag(Ljava/lang/Object;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v2

    .line 170
    invoke-interface {v2, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 171
    return-void
.end method

.method public verifyCduKey()Z
    .locals 6

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "result":Z
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 137
    .local v1, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-class v2, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v2}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 138
    .local v2, "http":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    invoke-interface {v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v3

    sget-object v4, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->URL_CDU_CERT_CHECK:Ljava/lang/String;

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    .line 139
    invoke-virtual {v5, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v3

    .line 140
    invoke-interface {v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->build()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v3

    invoke-interface {v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    move-result-object v3

    .line 141
    .local v3, "response":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;
    invoke-interface {v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ok"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v4

    .line 144
    .end local v2    # "http":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    .end local v3    # "response":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;
    goto :goto_0

    .line 142
    :catch_0
    move-exception v2

    .line 143
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public verifyV18CduKey(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V
    .locals 5
    .param p1, "callback"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;

    .line 174
    const-string v0, "CduKeyModel"

    const-string v1, "verifyV18CduKey"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 176
    .local v0, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v1, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 177
    .local v1, "http":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    sget-object v2, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->URL_V18_CDU_CERT_CHECK:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->cancelTag(Ljava/lang/Object;)V

    .line 178
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->URL_V18_CDU_CERT_CHECK:Ljava/lang/String;

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->build()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->URL_V18_CDU_CERT_CHECK:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->tag(Ljava/lang/Object;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v2

    .line 179
    invoke-interface {v2, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 180
    return-void
.end method

.method public verifyV18CduKey()Z
    .locals 6

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "result":Z
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 153
    .local v1, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-class v2, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v2}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 154
    .local v2, "http":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    invoke-interface {v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v3

    sget-object v4, Lcom/xiaopeng/commonfunc/model/security/CduKeyModel;->URL_V18_CDU_CERT_CHECK:Ljava/lang/String;

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    .line 155
    invoke-virtual {v5, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v3

    .line 156
    invoke-interface {v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->build()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v3

    invoke-interface {v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    move-result-object v3

    .line 157
    .local v3, "response":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;
    invoke-interface {v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ok"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v4

    .line 160
    .end local v2    # "http":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    .end local v3    # "response":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;
    goto :goto_0

    .line 158
    :catch_0
    move-exception v2

    .line 159
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_0
    return v0
.end method
