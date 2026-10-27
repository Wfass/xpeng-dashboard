.class public Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;
.super Ljava/lang/Object;
.source "IndivPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter$EncryptCheckBean;
    }
.end annotation


# static fields
.field public static final INDIV_CHECKING:I = 0x1

.field public static final INDIV_CHECK_DEFAULT:I = -0x1

.field public static final INDIV_CHECK_FAIL:I = 0x0

.field public static final INDIV_CHECK_PASS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "IndivPresenter"

.field private static final TESTING_TEXT:Ljava/lang/String; = "\u5de5\u5382\u68c0\u67e5indiv\u52a0\u89e3\u5bc6\u72b6\u6001"

.field private static final URL_INDIV_TEST_DECRYPTION:Ljava/lang/String;

.field private static final URL_INDIV_TEST_ENCRYPTION:Ljava/lang/String;


# instance fields
.field private mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

.field private mIndivView:Lcom/xiaopeng/factory/view/indiv/IIndivView;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/biz/v5/vehicle/factory/teeEncryptCheck"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;->URL_INDIV_TEST_ENCRYPTION:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/biz/v5/vehicle/factory/teeDecryptCheck"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;->URL_INDIV_TEST_DECRYPTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;)V
    .locals 1
    .param p1, "writer"    # Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter$1;-><init>(Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    iput-object p1, p0, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/factory/view/indiv/IIndivView;)V
    .locals 1
    .param p1, "indivView"    # Lcom/xiaopeng/factory/view/indiv/IIndivView;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter$1;-><init>(Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    iput-object p1, p0, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;->mIndivView:Lcom/xiaopeng/factory/view/indiv/IIndivView;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;)Lcom/xiaopeng/factory/view/indiv/IIndivView;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;->mIndivView:Lcom/xiaopeng/factory/view/indiv/IIndivView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;)Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    return-object v0
.end method

.method public static synthetic lambda$checkIndiv$0(Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;)V
    .locals 5

    .line 110
    const/16 v0, 0xeb

    const/16 v1, 0x45

    invoke-static {v0, v1}, Lcom/xiaopeng/factory/utils/TestResultUtil;->writeTestResult(IB)Z

    .line 111
    invoke-direct {p0}, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;->testEncryption()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;->testDecryption()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 113
    .local v1, "result":Z
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;->mIndivView:Lcom/xiaopeng/factory/view/indiv/IIndivView;

    if-eqz v3, :cond_2

    .line 114
    iget-object v3, p0, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;->mIndivView:Lcom/xiaopeng/factory/view/indiv/IIndivView;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    nop

    :cond_1
    invoke-interface {v3, v2}, Lcom/xiaopeng/factory/view/indiv/IIndivView;->updateIndivCheckView(I)V

    .line 116
    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    if-eqz v2, :cond_4

    .line 117
    iget-object v2, p0, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    if-eqz v1, :cond_3

    .line 118
    sget-object v3, Lcom/xiaopeng/factory/utils/DmUtil$IndivTest;->CMD_NAME:[B

    sget-object v4, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_00_01:[B

    invoke-static {v3, v4}, Lcom/xiaopeng/factory/utils/DmUtil;->responseOK([B[B)[B

    move-result-object v3

    goto :goto_1

    .line 119
    :cond_3
    sget-object v3, Lcom/xiaopeng/factory/utils/DmUtil$IndivTest;->CMD_NAME:[B

    sget-object v4, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_00_01:[B

    invoke-static {v3, v4}, Lcom/xiaopeng/factory/utils/DmUtil;->responseNG([B[B)[B

    move-result-object v3

    .line 117
    :goto_1
    invoke-virtual {v2, v3}, Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;->write([B)Z

    .line 121
    :cond_4
    if-eqz v1, :cond_5

    .line 122
    const/16 v2, 0x50

    goto :goto_2

    :cond_5
    const/16 v2, 0x46

    .line 121
    :goto_2
    invoke-static {v0, v2}, Lcom/xiaopeng/factory/utils/TestResultUtil;->writeTestResult(IB)Z

    .line 123
    return-void
.end method

.method private testDecryption()Z
    .locals 11

    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "result":Z
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 158
    .local v1, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "rawData"

    const-string v3, "\u5de5\u5382\u68c0\u67e5indiv\u52a0\u89e3\u5bc6\u72b6\u6001"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :try_start_0
    const-class v2, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v2}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 162
    .local v2, "http":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    invoke-interface {v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v3

    sget-object v4, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;->URL_INDIV_TEST_DECRYPTION:Ljava/lang/String;

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    .line 163
    invoke-virtual {v5, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v3

    .line 164
    invoke-interface {v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->build()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v3

    .line 165
    invoke-interface {v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    move-result-object v3

    .line 166
    .local v3, "response":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;
    invoke-static {v3}, Lcom/xiaopeng/factory/utils/DataHelp;->getServerBean(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Lcom/xiaopeng/lib/http/server/ServerBean;

    move-result-object v4

    .line 167
    .local v4, "serverBean":Lcom/xiaopeng/lib/http/server/ServerBean;
    invoke-virtual {v4}, Lcom/xiaopeng/lib/http/server/ServerBean;->getCode()I

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_0

    .line 168
    return v0

    .line 171
    :cond_0
    invoke-virtual {v4}, Lcom/xiaopeng/lib/http/server/ServerBean;->getData()Ljava/lang/String;

    move-result-object v5

    .line 172
    .local v5, "data":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    .line 173
    return v7

    .line 176
    :cond_1
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    const-class v8, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter$EncryptCheckBean;

    invoke-virtual {v6, v5, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter$EncryptCheckBean;

    .line 177
    .local v6, "bean":Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter$EncryptCheckBean;
    if-eqz v6, :cond_5

    iget-object v8, v6, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter$EncryptCheckBean;->teeDataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sget v9, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->LOCAL_KEYS_NUM:I

    if-eq v8, v9, :cond_2

    goto :goto_2

    .line 181
    :cond_2
    const/4 v0, 0x1

    .line 182
    nop

    .local v7, "i":I
    :goto_0
    iget-object v8, v6, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter$EncryptCheckBean;->teeDataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 183
    const-string v8, "\u5de5\u5382\u68c0\u67e5indiv\u52a0\u89e3\u5bc6\u72b6\u6001"

    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->getInstance()Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;

    move-result-object v9

    iget-object v10, v6, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter$EncryptCheckBean;->teeDataList:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 184
    const/4 v0, 0x0

    .line 185
    const-string v8, "IndivPresenter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Decryption check failed with key: #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    goto :goto_1

    .line 182
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 192
    .end local v2    # "http":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    .end local v3    # "response":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;
    .end local v4    # "serverBean":Lcom/xiaopeng/lib/http/server/ServerBean;
    .end local v5    # "data":Ljava/lang/String;
    .end local v6    # "bean":Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter$EncryptCheckBean;
    .end local v7    # "i":I
    :cond_4
    :goto_1
    goto :goto_3

    .line 178
    .restart local v2    # "http":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    .restart local v3    # "response":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;
    .restart local v4    # "serverBean":Lcom/xiaopeng/lib/http/server/ServerBean;
    .restart local v5    # "data":Ljava/lang/String;
    .restart local v6    # "bean":Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter$EncryptCheckBean;
    :cond_5
    :goto_2
    return v0

    .line 189
    .end local v2    # "http":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    .end local v3    # "response":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;
    .end local v4    # "serverBean":Lcom/xiaopeng/lib/http/server/ServerBean;
    .end local v5    # "data":Ljava/lang/String;
    .end local v6    # "bean":Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter$EncryptCheckBean;
    :catch_0
    move-exception v2

    .line 190
    .local v2, "ex":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 191
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 194
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_3
    return v0
.end method

.method private testEncryption()Z
    .locals 9

    .line 127
    const/4 v0, 0x0

    .line 129
    .local v0, "result":Z
    new-instance v1, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter$EncryptCheckBean;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter$EncryptCheckBean;-><init>(Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter$1;)V

    .line 130
    .local v1, "bean":Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter$EncryptCheckBean;
    const-string v2, "\u5de5\u5382\u68c0\u67e5indiv\u52a0\u89e3\u5bc6\u72b6\u6001"

    iput-object v2, v1, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter$EncryptCheckBean;->rawData:Ljava/lang/String;

    .line 131
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter$EncryptCheckBean;->teeDataList:Ljava/util/ArrayList;

    .line 134
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    sget v4, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->LOCAL_KEYS_NUM:I

    if-ge v3, v4, :cond_0

    .line 135
    iget-object v4, v1, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter$EncryptCheckBean;->teeDataList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->getInstance()Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;

    move-result-object v5

    const-string v6, "\u5de5\u5382\u68c0\u67e5indiv\u52a0\u89e3\u5bc6\u72b6\u6001"

    invoke-virtual {v5, v6, v3}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->encodeWithIndex(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 138
    .end local v3    # "i":I
    :cond_0
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "requestJson":Ljava/lang/String;
    const-string v4, "IndivPresenter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Encrypt check string:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    :try_start_0
    const-class v4, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v4}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v4

    const-class v5, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v4, v5}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 143
    .local v4, "http":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    invoke-interface {v4}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v5

    sget-object v6, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;->URL_INDIV_TEST_ENCRYPTION:Ljava/lang/String;

    .line 144
    invoke-interface {v5, v6, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v5

    .line 145
    invoke-interface {v5}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->build()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v5

    invoke-interface {v5}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    move-result-object v5

    .line 146
    .local v5, "response":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;
    invoke-static {v5}, Lcom/xiaopeng/factory/utils/DataHelp;->getServerBean(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Lcom/xiaopeng/lib/http/server/ServerBean;

    move-result-object v6

    .line 147
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

    .line 150
    .end local v4    # "http":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    .end local v5    # "response":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;
    .end local v6    # "serverBean":Lcom/xiaopeng/lib/http/server/ServerBean;
    goto :goto_1

    .line 148
    :catch_0
    move-exception v2

    .line 149
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_1
    return v0
.end method


# virtual methods
.method public asyncInitIndivService()V
    .locals 0

    .line 102
    invoke-static {}, Lcom/xiaopeng/factory/utils/IndivHelper;->asyncInitIndivService()V

    .line 103
    return-void
.end method

.method public checkIndiv()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;->mIndivView:Lcom/xiaopeng/factory/view/indiv/IIndivView;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;->mIndivView:Lcom/xiaopeng/factory/view/indiv/IIndivView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xiaopeng/factory/view/indiv/IIndivView;->updateIndivCheckView(I)V

    .line 109
    :cond_0
    new-instance v0, Lcom/xiaopeng/factory/presenter/indiv/-$$Lambda$IndivPresenter$_O6RwpJRRVfa9XLum7epbri98GI;

    invoke-direct {v0, p0}, Lcom/xiaopeng/factory/presenter/indiv/-$$Lambda$IndivPresenter$_O6RwpJRRVfa9XLum7epbri98GI;-><init>(Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    .line 124
    return-void
.end method

.method public clearLocalIndividualData()V
    .locals 0

    .line 98
    invoke-static {}, Lcom/xiaopeng/factory/utils/IndivHelper;->clearLocalIndividualData()V

    .line 99
    return-void
.end method

.method public deinit()V
    .locals 2

    .line 90
    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 91
    return-void
.end method

.method public init()V
    .locals 3

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 85
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.xiaopeng.action.SECURE_STORE_RELOAD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/factory/presenter/indiv/IndivPresenter;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    return-void
.end method

.method public isTeeInitSuccess()Z
    .locals 1

    .line 94
    invoke-static {}, Lcom/xiaopeng/factory/utils/IndivHelper;->isInitSuccess()Z

    move-result v0

    return v0
.end method
