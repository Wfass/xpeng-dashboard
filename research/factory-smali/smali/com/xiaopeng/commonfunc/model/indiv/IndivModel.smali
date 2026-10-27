.class public Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;
.super Ljava/lang/Object;
.source "IndivModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/commonfunc/model/indiv/IndivModel$EncryptCheckBean;
    }
.end annotation


# static fields
.field public static final INDIV_CHECKING:I = 0x1

.field public static final INDIV_CHECK_DEFAULT:I = -0x1

.field public static final INDIV_CHECK_FAIL:I = 0x0

.field public static final INDIV_CHECK_PASS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "IndivModel"

.field private static final TESTING_TEXT:Ljava/lang/String; = "\u5de5\u5382\u68c0\u67e5indiv\u52a0\u89e3\u5bc6\u72b6\u6001"

.field private static final TIME_OUT:I = 0x1

.field private static final URL_INDIV_TEST_DECRYPTION:Ljava/lang/String;

.field private static final URL_INDIV_TEST_ENCRYPTION:Ljava/lang/String;

.field private static final WAITING_TIMES:I = 0x7530


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSecurityCallback:Lcom/xiaopeng/commonfunc/callback/SecurityCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "INDIV_TEST_ENCRYPTION"

    .line 47
    invoke-static {v1}, Lcom/xiaopeng/xmlconfig/Support$Url;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;->URL_INDIV_TEST_ENCRYPTION:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "INDIV_TEST_DECRYPTION"

    .line 49
    invoke-static {v1}, Lcom/xiaopeng/xmlconfig/Support$Url;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;->URL_INDIV_TEST_DECRYPTION:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/commonfunc/callback/SecurityCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/xiaopeng/commonfunc/callback/SecurityCallback;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel$1;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/xiaopeng/lib/utils/ThreadUtils;->getLooper(I)Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel$1;-><init>(Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;->mHandler:Landroid/os/Handler;

    .line 69
    new-instance v0, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel$2;-><init>(Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;)V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 88
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;->mSecurityCallback:Lcom/xiaopeng/commonfunc/callback/SecurityCallback;

    .line 89
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;->mContext:Landroid/content/Context;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;)Lcom/xiaopeng/commonfunc/callback/SecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;->mSecurityCallback:Lcom/xiaopeng/commonfunc/callback/SecurityCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic lambda$checkIndiv$0(Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;)V
    .locals 4

    .line 117
    invoke-direct {p0}, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;->testEncryption()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;->testDecryption()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 118
    .local v0, "result":Z
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;->mSecurityCallback:Lcom/xiaopeng/commonfunc/callback/SecurityCallback;

    if-eqz v3, :cond_2

    .line 119
    iget-object v3, p0, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;->mSecurityCallback:Lcom/xiaopeng/commonfunc/callback/SecurityCallback;

    .line 120
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    .line 119
    :goto_1
    invoke-interface {v3, v1, v2}, Lcom/xiaopeng/commonfunc/callback/SecurityCallback;->onReceiveResult(II)V

    .line 122
    :cond_2
    return-void
.end method

.method private testDecryption()Z
    .locals 11

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "result":Z
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 157
    .local v1, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "rawData"

    const-string v3, "\u5de5\u5382\u68c0\u67e5indiv\u52a0\u89e3\u5bc6\u72b6\u6001"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :try_start_0
    const-class v2, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v2}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 161
    .local v2, "http":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    invoke-interface {v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v3

    sget-object v4, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;->URL_INDIV_TEST_DECRYPTION:Ljava/lang/String;

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    .line 162
    invoke-virtual {v5, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v3

    .line 163
    invoke-interface {v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->build()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v3

    .line 164
    invoke-interface {v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    move-result-object v3

    .line 165
    .local v3, "response":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;
    invoke-static {v3}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->getServerBean(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Lcom/xiaopeng/lib/http/server/ServerBean;

    move-result-object v4

    .line 166
    .local v4, "serverBean":Lcom/xiaopeng/lib/http/server/ServerBean;
    invoke-virtual {v4}, Lcom/xiaopeng/lib/http/server/ServerBean;->getCode()I

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_0

    .line 167
    return v0

    .line 170
    :cond_0
    invoke-virtual {v4}, Lcom/xiaopeng/lib/http/server/ServerBean;->getData()Ljava/lang/String;

    move-result-object v5

    .line 171
    .local v5, "data":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    .line 172
    return v7

    .line 175
    :cond_1
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    const-class v8, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel$EncryptCheckBean;

    invoke-virtual {v6, v5, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel$EncryptCheckBean;

    .line 176
    .local v6, "bean":Lcom/xiaopeng/commonfunc/model/indiv/IndivModel$EncryptCheckBean;
    if-eqz v6, :cond_5

    iget-object v8, v6, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel$EncryptCheckBean;->teeDataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sget v9, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->LOCAL_KEYS_NUM:I

    if-eq v8, v9, :cond_2

    goto :goto_2

    .line 180
    :cond_2
    const/4 v0, 0x1

    .line 181
    nop

    .local v7, "i":I
    :goto_0
    iget-object v8, v6, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel$EncryptCheckBean;->teeDataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 182
    const-string v8, "\u5de5\u5382\u68c0\u67e5indiv\u52a0\u89e3\u5bc6\u72b6\u6001"

    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->getInstance()Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;

    move-result-object v9

    iget-object v10, v6, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel$EncryptCheckBean;->teeDataList:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 183
    const/4 v0, 0x0

    .line 184
    const-string v8, "IndivModel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Decryption check failed with key: #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    goto :goto_1

    .line 181
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 191
    .end local v2    # "http":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    .end local v3    # "response":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;
    .end local v4    # "serverBean":Lcom/xiaopeng/lib/http/server/ServerBean;
    .end local v5    # "data":Ljava/lang/String;
    .end local v6    # "bean":Lcom/xiaopeng/commonfunc/model/indiv/IndivModel$EncryptCheckBean;
    .end local v7    # "i":I
    :cond_4
    :goto_1
    goto :goto_3

    .line 177
    .restart local v2    # "http":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    .restart local v3    # "response":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;
    .restart local v4    # "serverBean":Lcom/xiaopeng/lib/http/server/ServerBean;
    .restart local v5    # "data":Ljava/lang/String;
    .restart local v6    # "bean":Lcom/xiaopeng/commonfunc/model/indiv/IndivModel$EncryptCheckBean;
    :cond_5
    :goto_2
    return v0

    .line 188
    .end local v2    # "http":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    .end local v3    # "response":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;
    .end local v4    # "serverBean":Lcom/xiaopeng/lib/http/server/ServerBean;
    .end local v5    # "data":Ljava/lang/String;
    .end local v6    # "bean":Lcom/xiaopeng/commonfunc/model/indiv/IndivModel$EncryptCheckBean;
    :catch_0
    move-exception v2

    .line 189
    .local v2, "ex":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 190
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_3
    return v0
.end method

.method private testEncryption()Z
    .locals 9

    .line 126
    const/4 v0, 0x0

    .line 128
    .local v0, "result":Z
    new-instance v1, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel$EncryptCheckBean;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel$EncryptCheckBean;-><init>(Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;Lcom/xiaopeng/commonfunc/model/indiv/IndivModel$1;)V

    .line 129
    .local v1, "bean":Lcom/xiaopeng/commonfunc/model/indiv/IndivModel$EncryptCheckBean;
    const-string v2, "\u5de5\u5382\u68c0\u67e5indiv\u52a0\u89e3\u5bc6\u72b6\u6001"

    iput-object v2, v1, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel$EncryptCheckBean;->rawData:Ljava/lang/String;

    .line 130
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel$EncryptCheckBean;->teeDataList:Ljava/util/ArrayList;

    .line 133
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    sget v4, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->LOCAL_KEYS_NUM:I

    if-ge v3, v4, :cond_0

    .line 134
    iget-object v4, v1, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel$EncryptCheckBean;->teeDataList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->getInstance()Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;

    move-result-object v5

    const-string v6, "\u5de5\u5382\u68c0\u67e5indiv\u52a0\u89e3\u5bc6\u72b6\u6001"

    invoke-virtual {v5, v6, v3}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->encodeWithIndex(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 137
    .end local v3    # "i":I
    :cond_0
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "requestJson":Ljava/lang/String;
    const-string v4, "IndivModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Encrypt check string:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    :try_start_0
    const-class v4, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v4}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v4

    const-class v5, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v4, v5}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 142
    .local v4, "http":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    invoke-interface {v4}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v5

    sget-object v6, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;->URL_INDIV_TEST_ENCRYPTION:Ljava/lang/String;

    .line 143
    invoke-interface {v5, v6, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v5

    .line 144
    invoke-interface {v5}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->build()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v5

    invoke-interface {v5}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    move-result-object v5

    .line 145
    .local v5, "response":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;
    invoke-static {v5}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->getServerBean(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Lcom/xiaopeng/lib/http/server/ServerBean;

    move-result-object v6

    .line 146
    .local v6, "serverBean":Lcom/xiaopeng/lib/http/server/ServerBean;
    invoke-virtual {v6}, Lcom/xiaopeng/lib/http/server/ServerBean;->getCode()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    move v0, v2

    .line 149
    .end local v4    # "http":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    .end local v5    # "response":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;
    .end local v6    # "serverBean":Lcom/xiaopeng/lib/http/server/ServerBean;
    goto :goto_1

    .line 147
    :catch_0
    move-exception v2

    .line 148
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_1
    return v0
.end method


# virtual methods
.method public asyncInitIndivService()V
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 112
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/IndivHelper;->asyncInitIndivService()V

    .line 113
    return-void
.end method

.method public checkIndiv()V
    .locals 1

    .line 116
    new-instance v0, Lcom/xiaopeng/commonfunc/model/indiv/-$$Lambda$IndivModel$1Jo0twy0myj_VBDkiTWzjgjL3zw;

    invoke-direct {v0, p0}, Lcom/xiaopeng/commonfunc/model/indiv/-$$Lambda$IndivModel$1Jo0twy0myj_VBDkiTWzjgjL3zw;-><init>(Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    .line 123
    return-void
.end method

.method public clearLocalIndividualData()V
    .locals 0

    .line 107
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/IndivHelper;->clearLocalIndividualData()V

    .line 108
    return-void
.end method

.method public deinit()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 100
    return-void
.end method

.method public init()V
    .locals 3

    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 94
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.xiaopeng.action.SECURE_STORE_RELOAD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/indiv/IndivModel;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    return-void
.end method

.method public isTeeInitSuccess()Z
    .locals 1

    .line 103
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/IndivHelper;->isInitSuccess()Z

    move-result v0

    return v0
.end method
