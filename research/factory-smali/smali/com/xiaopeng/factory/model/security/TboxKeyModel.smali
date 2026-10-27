.class public Lcom/xiaopeng/factory/model/security/TboxKeyModel;
.super Ljava/lang/Object;
.source "TboxKeyModel.java"


# static fields
.field private static final ACTION_4G:Ljava/lang/String; = "4G"

.field private static final ACTION_4G_COMMON:Ljava/lang/String; = "4G_COMMON"

.field private static final ETH_TBOX_PATH_TEMP_KEY:Ljava/lang/String; = "/mnt/sdcard/tftpboot/tbox.key"

.field public static final EXECUTE_SUCCESS:I = 0x0

.field private static final PATH_CACHE_FACTORY:Ljava/lang/String; = "/cache/factory/"

.field private static final PATH_TEMP_KEY:Ljava/lang/String; = "/cache/factory/tbox.key"

.field public static final REQUEST_GET_CERT:I = 0x3

.field public static final REQUEST_GET_ICCID:I = 0x1

.field public static final REQUEST_INSTALL_CERT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TboxKeyModel"

.field private static final TBOX_CA_CERT_PATH:Ljava/lang/String; = "/res/dfer27nt.png"

.field private static final TBOX_CERT_PKCS12_PASS:Ljava/lang/String; = "T3g4daAxt6re"

.field private static final TBOX_PATH_TEMP_KEY:Ljava/lang/String; = "/mnt/sdcard2/tbox.key"


# instance fields
.field private mTboxBean:Lcom/xiaopeng/factory/bean/car/TboxBean;

.field private mTboxCertKey:Lcom/xiaopeng/factory/bean/http/TboxCertKey;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/xiaopeng/factory/bean/car/TboxBean;

    const-string v1, ""

    const-string v2, ""

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/xiaopeng/factory/bean/car/TboxBean;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/model/security/TboxKeyModel;->mTboxBean:Lcom/xiaopeng/factory/bean/car/TboxBean;

    .line 71
    new-instance v0, Lcom/xiaopeng/factory/bean/http/TboxCertKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/xiaopeng/factory/bean/http/TboxCertKey;-><init>([Lcom/xiaopeng/factory/bean/http/CertKey;Lcom/xiaopeng/factory/bean/http/CertKey;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/model/security/TboxKeyModel;->mTboxCertKey:Lcom/xiaopeng/factory/bean/http/TboxCertKey;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/factory/model/security/TboxKeyModel;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/factory/model/security/TboxKeyModel;
    .param p1, "x1"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/factory/model/security/TboxKeyModel;->dealResponse(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private dealResponse(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "iResponse"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;
    .param p2, "sign"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;

    .line 124
    invoke-static {p1}, Lcom/xiaopeng/factory/utils/DataHelp;->getServerBean(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Lcom/xiaopeng/lib/http/server/ServerBean;

    move-result-object v0

    .line 125
    .local v0, "bean":Lcom/xiaopeng/lib/http/server/ServerBean;
    invoke-virtual {v0}, Lcom/xiaopeng/lib/http/server/ServerBean;->getCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_3

    .line 126
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/http/server/ServerBean;->getData()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    const-string v4, "oBPMlkqO4eBRBa@N*zIGdRokeikjKbIg"

    .line 127
    invoke-static {p2, v4}, Lcom/xiaopeng/factory/utils/DataHelp;->getKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 126
    invoke-static {v2, v4}, Lcom/xiaopeng/factory/utils/DataHelp;->decrypt([B[B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 128
    .local v1, "content":Ljava/lang/String;
    const-string v2, "TboxKeyModel"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0x693

    if-eq v4, v5, :cond_1

    const v5, 0x59c1917

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "4G_COMMON"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "4G"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    :cond_2
    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 138
    :pswitch_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, Lcom/xiaopeng/factory/bean/http/CertKey;

    invoke-virtual {v2, v1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/factory/bean/http/CertKey;

    .line 139
    .local v2, "certKey":Lcom/xiaopeng/factory/bean/http/CertKey;
    invoke-virtual {v2, v3}, Lcom/xiaopeng/factory/bean/http/CertKey;->setIndex(I)V

    .line 140
    iget-object v3, p0, Lcom/xiaopeng/factory/model/security/TboxKeyModel;->mTboxCertKey:Lcom/xiaopeng/factory/bean/http/TboxCertKey;

    invoke-virtual {v3, v2}, Lcom/xiaopeng/factory/bean/http/TboxCertKey;->setBLeSecKey(Lcom/xiaopeng/factory/bean/http/CertKey;)V

    .line 141
    const-string v3, "/cache/factory/tbox.key"

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    iget-object v5, p0, Lcom/xiaopeng/factory/model/security/TboxKeyModel;->mTboxCertKey:Lcom/xiaopeng/factory/bean/http/TboxCertKey;

    invoke-virtual {v4, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/factory/utils/FileUtil;->writeNCreateFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 142
    invoke-direct {p0}, Lcom/xiaopeng/factory/model/security/TboxKeyModel;->requestInstallTboxKey()V

    .end local v2    # "certKey":Lcom/xiaopeng/factory/bean/http/CertKey;
    goto :goto_1

    .line 132
    :pswitch_1
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/xiaopeng/factory/model/security/TboxKeyModel$2;

    invoke-direct {v3, p0}, Lcom/xiaopeng/factory/model/security/TboxKeyModel$2;-><init>(Lcom/xiaopeng/factory/model/security/TboxKeyModel;)V

    .line 133
    invoke-virtual {v3}, Lcom/xiaopeng/factory/model/security/TboxKeyModel$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 132
    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/xiaopeng/factory/bean/http/CertKey;

    .line 134
    .local v2, "certKeys":[Lcom/xiaopeng/factory/bean/http/CertKey;
    iget-object v3, p0, Lcom/xiaopeng/factory/model/security/TboxKeyModel;->mTboxCertKey:Lcom/xiaopeng/factory/bean/http/TboxCertKey;

    invoke-virtual {v3, v2}, Lcom/xiaopeng/factory/bean/http/TboxCertKey;->setCertKeys([Lcom/xiaopeng/factory/bean/http/CertKey;)V

    .line 135
    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "4G_COMMON"

    invoke-direct {p0, v3, v4}, Lcom/xiaopeng/factory/model/security/TboxKeyModel;->reqTboxKey(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    nop

    .line 148
    .end local v2    # "certKeys":[Lcom/xiaopeng/factory/bean/http/CertKey;
    :goto_1
    goto :goto_2

    .line 145
    :catch_0
    move-exception v2

    .line 146
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "TboxKeyModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "save cert fail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    new-instance v4, Lcom/xiaopeng/factory/bean/event/SSLKeyEvent;

    const/16 v5, 0xe

    invoke-direct {v4, v5}, Lcom/xiaopeng/factory/bean/event/SSLKeyEvent;-><init>(I)V

    invoke-virtual {v3, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 149
    .end local v1    # "content":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_3

    .line 150
    :cond_3
    const-string v1, "TboxKeyModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dealResponse code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/http/server/ServerBean;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/factory/bean/event/SSLKeyEvent;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Lcom/xiaopeng/factory/bean/event/SSLKeyEvent;-><init>(I)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 153
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private reqTboxKey(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 98
    .local v0, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "app_id"

    const-string v2, "xmart:appid:002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v1, "hardware_id"

    invoke-static {}, Lcom/xiaopeng/factory/utils/SystemPropertyUtil;->getIccid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 101
    .local v1, "time":J
    const-string v3, "timestamp"

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v3, "action"

    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {p1, v0, v1, v2}, Lcom/xiaopeng/factory/utils/IndivHelper;->sign(Landroid/content/Context;Ljava/util/Map;J)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "sign":Ljava/lang/String;
    const-string v4, "sign"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-class v4, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v4}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v4

    const-class v5, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v4, v5}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 107
    .local v4, "http":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    const-string v5, "REQUEST_TBOX_KEY"

    invoke-static {v5}, Lcom/xiaopeng/xmlconfig/Support$Url;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->post(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v5

    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    .line 108
    invoke-virtual {v6, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->uploadJson(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v5

    const-string v6, "Client"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "car.xmart.com/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getSystemVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v5

    new-instance v6, Lcom/xiaopeng/factory/model/security/TboxKeyModel$1;

    invoke-direct {v6, p0, v3, p2}, Lcom/xiaopeng/factory/model/security/TboxKeyModel$1;-><init>(Lcom/xiaopeng/factory/model/security/TboxKeyModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-interface {v5, v6}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 121
    return-void
.end method

.method private requestInstallTboxKey()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/TboxKeyModel;->mTboxBean:Lcom/xiaopeng/factory/bean/car/TboxBean;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/bean/car/TboxBean;->setRequest(I)V

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/TboxKeyModel;->mTboxBean:Lcom/xiaopeng/factory/bean/car/TboxBean;

    const-string v1, "/mnt/sdcard/tftpboot/tbox.key"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/bean/car/TboxBean;->setStringValue1(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/TboxKeyModel;->mTboxBean:Lcom/xiaopeng/factory/bean/car/TboxBean;

    new-instance v1, Ljava/io/File;

    const-string v2, "/cache/factory/tbox.key"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaopeng/lib/utils/MD5Utils;->getFileMd5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/bean/car/TboxBean;->setStringValue2(Ljava/lang/String;)V

    .line 160
    :try_start_0
    const-string v0, "/cache/factory/tbox.key"

    const-string v1, "/mnt/sdcard/tftpboot/tbox.key"

    sget-object v2, Lcom/xiaopeng/commonfunc/utils/TftpSender;->HOST_TBOX:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/commonfunc/utils/TftpSender;->sendFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 164
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {}, Lcom/xiaopeng/factory/model/car/TboxModel;->getInstance()Lcom/xiaopeng/factory/model/car/TboxModel;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/factory/model/security/TboxKeyModel;->mTboxBean:Lcom/xiaopeng/factory/bean/car/TboxBean;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/model/car/TboxModel;->sendFactoryPreCert(Ljava/lang/String;)V

    .line 165
    const-string v0, "/cache/factory/tbox.key"

    invoke-static {v0}, Lcom/xiaopeng/factory/utils/FileUtil;->deleteFile(Ljava/lang/String;)Z

    .line 166
    return-void
.end method


# virtual methods
.method public copyTboxKeyToLocal(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "tboxCertPath"    # Ljava/lang/String;
    .param p2, "md5"    # Ljava/lang/String;

    .line 174
    const/4 v0, 0x0

    .line 176
    .local v0, "res":Z
    :try_start_0
    const-string v1, "/cache/factory/"

    invoke-static {v1}, Lcom/xiaopeng/factory/utils/FileUtil;->mkDir(Ljava/lang/String;)Z

    .line 177
    const-string v1, "/cache/factory/tbox.key"

    invoke-static {v1}, Lcom/xiaopeng/factory/utils/FileUtil;->deleteFile(Ljava/lang/String;)Z

    .line 178
    const-string v1, "/cache/factory/tbox.key"

    sget-object v2, Lcom/xiaopeng/commonfunc/utils/TftpSender;->HOST_TBOX:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/xiaopeng/commonfunc/utils/TftpSender;->receiveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v1, Ljava/io/File;

    const-string v2, "/cache/factory/tbox.key"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaopeng/lib/utils/MD5Utils;->getFileMd5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "fileMd5":Ljava/lang/String;
    const-string v2, "TboxKeyModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fileMd5 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", md5 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 182
    const/4 v0, 0x1

    .line 186
    .end local v1    # "fileMd5":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 184
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 187
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    return v0
.end method

.method public getIccid()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/TboxKeyModel;->mTboxBean:Lcom/xiaopeng/factory/bean/car/TboxBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/bean/car/TboxBean;->setRequest(I)V

    .line 84
    invoke-static {}, Lcom/xiaopeng/factory/model/car/TboxModel;->getInstance()Lcom/xiaopeng/factory/model/car/TboxModel;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/factory/model/security/TboxKeyModel;->mTboxBean:Lcom/xiaopeng/factory/bean/car/TboxBean;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/model/car/TboxModel;->sendFactoryPreCert(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 228
    return-void
.end method

.method public reqTboxKey(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 88
    const-string v0, "4G"

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/factory/model/security/TboxKeyModel;->reqTboxKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public requestGetTboxKey()V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/TboxKeyModel;->mTboxBean:Lcom/xiaopeng/factory/bean/car/TboxBean;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/bean/car/TboxBean;->setRequest(I)V

    .line 170
    invoke-static {}, Lcom/xiaopeng/factory/model/car/TboxModel;->getInstance()Lcom/xiaopeng/factory/model/car/TboxModel;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/factory/model/security/TboxKeyModel;->mTboxBean:Lcom/xiaopeng/factory/bean/car/TboxBean;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/model/car/TboxModel;->sendFactoryPreCert(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public startTboxCertInstall()V
    .locals 1

    .line 75
    invoke-static {}, Lcom/xiaopeng/factory/model/car/TboxModel;->getInstance()Lcom/xiaopeng/factory/model/car/TboxModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/factory/model/car/TboxModel;->startTboxCertInstall()V

    .line 76
    return-void
.end method

.method public startTboxCertVerify()V
    .locals 1

    .line 79
    invoke-static {}, Lcom/xiaopeng/factory/model/car/TboxModel;->getInstance()Lcom/xiaopeng/factory/model/car/TboxModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/factory/model/car/TboxModel;->startTboxCertVerify()V

    .line 80
    return-void
.end method

.method public verifyTboxCert(Lcom/xiaopeng/lib/http/ICallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/lib/http/ICallback<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 191
    .local p1, "callback":Lcom/xiaopeng/lib/http/ICallback;, "Lcom/xiaopeng/lib/http/ICallback<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/xiaopeng/factory/model/security/TboxKeyModel$3;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/factory/model/security/TboxKeyModel$3;-><init>(Lcom/xiaopeng/factory/model/security/TboxKeyModel;Lcom/xiaopeng/lib/http/ICallback;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 225
    return-void
.end method
