.class public Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;
.super Ljava/lang/Object;
.source "WifiKeyModel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiKeyModel"

.field public static final WIFI_CLIENT_CERT_PATH:Ljava/lang/String; = "/mnt/vendor/private/ck58l92i5/wf_c.png"

.field public static final WIFI_ROOT_BKS_CERT_PATH:Ljava/lang/String; = "/mnt/vendor/private/ck58l92i5/wf_r_bks.png"

.field public static final WIFI_ROOT_CERT_PATH:Ljava/lang/String; = "/mnt/vendor/private/ck58l92i5/wf_r.png"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsChecking:Z

.field private final mKeyStoreModel:Lcom/xiaopeng/commonfunc/model/keystore/KeyStoreModel;

.field private mNeedRequestWifiKey:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;->mNeedRequestWifiKey:Z

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;->mContext:Landroid/content/Context;

    .line 47
    new-instance v0, Lcom/xiaopeng/commonfunc/model/keystore/KeyStoreModel;

    invoke-direct {v0, p1}, Lcom/xiaopeng/commonfunc/model/keystore/KeyStoreModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;->mKeyStoreModel:Lcom/xiaopeng/commonfunc/model/keystore/KeyStoreModel;

    .line 48
    return-void
.end method

.method static synthetic access$002(Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;->mNeedRequestWifiKey:Z

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;->dealResponse(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private dealResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "sign"    # Ljava/lang/String;

    .line 154
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 156
    .local v1, "code":I
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 157
    const-string v2, "data"

    .line 158
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    const-string v3, "oBPMlkqO4eBRBa@N*zIGdRokeikjKbIg"

    .line 160
    invoke-static {p2, v3}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->getKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 157
    invoke-static {v2, v3}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->decrypt([B[B)[B

    move-result-object v2

    .line 161
    .local v2, "buff":[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 162
    .local v3, "result":Ljava/lang/String;
    const-string v4, "WifiKeyModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dealResponse result.length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ,result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    .line 164
    invoke-virtual {p0, v0}, Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;->saveWifiKey(Lorg/json/JSONObject;)V

    .line 165
    .end local v2    # "buff":[B
    .end local v3    # "result":Ljava/lang/String;
    goto :goto_0

    .line 166
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;->mNeedRequestWifiKey:Z

    .line 167
    const-string v2, "WifiKeyModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dealResponse code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/commonfunc/bean/event/SSLKeyEvent;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Lcom/xiaopeng/commonfunc/bean/event/SSLKeyEvent;-><init>(I)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "code":I
    :goto_0
    goto :goto_1

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 173
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public static synthetic lambda$asyncGetKey$0(Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 91
    const/4 v0, 0x5

    .line 92
    .local v0, "maxTime":I
    const/4 v1, 0x0

    move v2, v1

    .line 94
    .local v2, "time":I
    :goto_0
    add-int/lit8 v3, v2, 0x1

    .local v3, "time":I
    const/4 v4, 0x5

    if-ge v2, v4, :cond_3

    .line 95
    .end local v2    # "time":I
    :try_start_0
    const-string v2, "WifiKeyModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mNeedRequestWifiKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;->mNeedRequestWifiKey:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-boolean v2, p0, Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;->mNeedRequestWifiKey:Z

    if-eqz v2, :cond_0

    .line 97
    iput-boolean v1, p0, Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;->mNeedRequestWifiKey:Z

    .line 98
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;->reqWifiKey(Landroid/content/Context;)V

    .line 101
    :cond_0
    const-wide/16 v4, 0x2904

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 103
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;->isWifiKeyExist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    const-string v2, "WifiKeyModel"

    const-string v4, "get key"

    invoke-static {v2, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    goto :goto_2

    .line 92
    :cond_1
    move v2, v3

    goto :goto_0

    .line 112
    .end local v0    # "maxTime":I
    .end local v3    # "time":I
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    iput-boolean v1, p0, Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;->mIsChecking:Z

    .line 113
    if-eqz p1, :cond_4

    goto :goto_3

    .line 112
    :goto_1
    iput-boolean v1, p0, Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;->mIsChecking:Z

    .line 113
    if-eqz p1, :cond_2

    .line 114
    invoke-static {p1}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    :cond_2
    throw v0

    .line 112
    :cond_3
    :goto_2
    iput-boolean v1, p0, Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;->mIsChecking:Z

    .line 113
    if-eqz p1, :cond_4

    .line 114
    :goto_3
    invoke-static {p1}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 117
    :cond_4
    return-void
.end method

.method private reqWifiKey(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 127
    .local v0, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "app_id"

    const-string v2, "xmart:appid:002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v1, "cduId"

    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/SystemPropertyUtil;->getHardwareId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 130
    .local v1, "time":J
    const-string v3, "timestamp"

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-static {p1, v0, v1, v2}, Lcom/xiaopeng/commonfunc/utils/IndivHelper;->sign(Landroid/content/Context;Ljava/util/Map;J)Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "sign":Ljava/lang/String;
    const-string v4, "sign"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-class v4, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v4}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v4

    const-class v5, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v4, v5}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 135
    .local v4, "http":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    const-string v5, "REQUEST_WIFI_KEY"

    invoke-static {v5}, Lcom/xiaopeng/xmlconfig/Support$Url;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->post(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v5

    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    .line 136
    invoke-virtual {v6, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->uploadJson(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v5

    const-string v6, "Client"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "car.xmart.com/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getSystemVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v5

    new-instance v6, Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel$1;

    invoke-direct {v6, p0, v3}, Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel$1;-><init>(Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;Ljava/lang/String;)V

    .line 138
    invoke-interface {v5, v6}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 150
    return-void
.end method


# virtual methods
.method public asyncGetKey(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 81
    const-string v0, "WifiKeyModel"

    const-string v1, "asyncGetKey"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-boolean v0, p0, Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;->mIsChecking:Z

    if-eqz v0, :cond_0

    .line 84
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;->mIsChecking:Z

    .line 87
    iput-boolean v0, p0, Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;->mNeedRequestWifiKey:Z

    .line 89
    new-instance v0, Lcom/xiaopeng/commonfunc/model/security/-$$Lambda$WifiKeyModel$1jcZMK2bXnY9uvJ5NwF8PEaTXcw;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/commonfunc/model/security/-$$Lambda$WifiKeyModel$1jcZMK2bXnY9uvJ5NwF8PEaTXcw;-><init>(Lcom/xiaopeng/commonfunc/model/security/WifiKeyModel;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 118
    return-void
.end method

.method public isWifiKeyExist()Z
    .locals 1

    .line 54
    const-string v0, "/mnt/vendor/private/ck58l92i5/wf_c.png"

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->isExistFilePath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/mnt/vendor/private/ck58l92i5/wf_r.png"

    .line 55
    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->isExistFilePath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/mnt/vendor/private/ck58l92i5/wf_r_bks.png"

    .line 56
    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->isExistFilePath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0
.end method

.method public onDestroy()V
    .locals 0

    .line 51
    return-void
.end method

.method public saveWifiKey(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 64
    :try_start_0
    const-string v0, "pkcs12"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "pkcs12":Ljava/lang/String;
    const-string v1, "caPem"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "caPem":Ljava/lang/String;
    const-string v2, "caBks"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "caBks":Ljava/lang/String;
    const-string v3, "WifiKeyModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveWifiKey pkcs12.length:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", caPem.length:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", caBks.length:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 67
    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    const-string v3, "/mnt/vendor/private/ck58l92i5/wf_c.png"

    invoke-static {v3, v0}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->writeNCreateFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 70
    const-string v3, "/mnt/vendor/private/ck58l92i5/wf_r.png"

    invoke-static {v3, v1}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->writeNCreateFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 71
    const-string v3, "/mnt/vendor/private/ck58l92i5/wf_r_bks.png"

    invoke-static {v3, v2}, Lcom/xiaopeng/commonfunc/utils/FileUtil;->writeNCreateFile(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v0    # "pkcs12":Ljava/lang/String;
    .end local v1    # "caPem":Ljava/lang/String;
    .end local v2    # "caBks":Ljava/lang/String;
    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
