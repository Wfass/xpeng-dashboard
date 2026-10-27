.class public Lcom/xiaopeng/factory/utils/internal/IrdetoIndivHelper;
.super Ljava/lang/Object;
.source "IrdetoIndivHelper.java"

# interfaces
.implements Lcom/xiaopeng/factory/utils/internal/IIndivInternal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/factory/utils/internal/IrdetoIndivHelper$Holder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IrdetoIndivHelper"

.field private static final URL_INDIV_SERVICE_SAVE_V5:Ljava/lang/String;

.field private static final URL_INDIV_SERVICE_V5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/biz/v5/secure/indiv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/factory/utils/internal/IrdetoIndivHelper;->URL_INDIV_SERVICE_V5:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/biz/v5/secure/indivSave"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/factory/utils/internal/IrdetoIndivHelper;->URL_INDIV_SERVICE_SAVE_V5:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/factory/utils/internal/IrdetoIndivHelper;
    .locals 1

    .line 206
    invoke-static {}, Lcom/xiaopeng/factory/utils/internal/IrdetoIndivHelper$Holder;->access$000()Lcom/xiaopeng/factory/utils/internal/IrdetoIndivHelper;

    move-result-object v0

    return-object v0
.end method

.method private static sign(Landroid/content/Context;Ljava/util/Map;J)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "time"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 161
    .local p1, "kV":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/xiaopeng/factory/utils/internal/IrdetoIndivHelper;->sortParameterAndValues(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "k":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xmart:appid:002"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "B638C588DCAD7C1A43E6FB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib/utils/MD5Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static sortParameterAndValues(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 173
    .local p0, "parameterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 174
    const-string v0, ""

    return-object v0

    .line 177
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 179
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v1, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 182
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_0

    .line 185
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 187
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 189
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 190
    .local v4, "key":Ljava/lang/String;
    const-string v5, "app_id"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "timestamp"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "sign"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 191
    goto :goto_1

    .line 193
    :cond_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 195
    .local v5, "valArr":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "valArr":Ljava/lang/String;
    goto :goto_1

    .line 198
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public buildIndivRequest(Landroid/content/Context;Lcom/xiaopeng/lib/security/ISecurityModule;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "security"    # Lcom/xiaopeng/lib/security/ISecurityModule;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    invoke-interface {p2}, Lcom/xiaopeng/lib/security/ISecurityModule;->getIndividualRequestStr()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "provisionRequestStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    const-string v1, "IrdetoIndivHelper"

    const-string v2, "provisionRequestStr error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v1, 0x0

    return-object v1

    .line 57
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 58
    .local v1, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "app_id"

    const-string v3, "xmart:appid:002"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 60
    .local v2, "time":J
    const-string v4, "timestamp"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v4, "sData"

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-static {p1, v1, v2, v3}, Lcom/xiaopeng/factory/utils/internal/IrdetoIndivHelper;->sign(Landroid/content/Context;Ljava/util/Map;J)Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, "sign":Ljava/lang/String;
    const-string v5, "sign"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v5, "IrdetoIndivHelper"

    const-string v6, "irdeto sdk try get indiv info"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-class v5, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v5}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v5

    const-class v6, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v5, v6}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 67
    .local v5, "http":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    invoke-interface {v5}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v6

    sget-object v7, Lcom/xiaopeng/factory/utils/internal/IrdetoIndivHelper;->URL_INDIV_SERVICE_V5:Ljava/lang/String;

    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    .line 68
    invoke-virtual {v8, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v6

    .line 69
    invoke-interface {v6}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->build()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v6

    .line 67
    return-object v6
.end method

.method public buildIndivSavingRequest(Landroid/content/Context;Lcom/xiaopeng/lib/security/ISecurityModule;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "security"    # Lcom/xiaopeng/lib/security/ISecurityModule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 100
    :try_start_0
    invoke-interface {p2}, Lcom/xiaopeng/lib/security/ISecurityModule;->generateIndividualDataForServer()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "data":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 103
    .local v1, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "sData"

    invoke-interface {p2, v0}, Lcom/xiaopeng/lib/security/ISecurityModule;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v2, "app_id"

    const-string v3, "xmart:appid:002"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 106
    .local v2, "time":J
    const-string v4, "timestamp"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-static {p1, v1, v2, v3}, Lcom/xiaopeng/factory/utils/internal/IrdetoIndivHelper;->sign(Landroid/content/Context;Ljava/util/Map;J)Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, "sign":Ljava/lang/String;
    const-string v5, "sign"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v5, "IrdetoIndivHelper"

    const-string v6, "irdeto sdk try save indiv info to server"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-class v5, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v5}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v5

    const-class v6, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v5, v6}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 112
    .local v5, "http":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    invoke-interface {v5}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v6

    sget-object v7, Lcom/xiaopeng/factory/utils/internal/IrdetoIndivHelper;->URL_INDIV_SERVICE_SAVE_V5:Ljava/lang/String;

    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    .line 113
    invoke-virtual {v8, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v6

    .line 114
    invoke-interface {v6}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->enableIrdetoEncoding()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v6

    .line 115
    invoke-interface {v6}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->needAuthorizationInfo()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v6

    .line 116
    invoke-interface {v6}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->build()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    return-object v6

    .line 117
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "time":J
    .end local v4    # "sign":Ljava/lang/String;
    .end local v5    # "http":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    const/4 v1, 0x0

    return-object v1
.end method

.method public checkIndivSavingResult(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Z
    .locals 4
    .param p1, "response"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 126
    invoke-static {p1}, Lcom/xiaopeng/factory/utils/DataHelp;->getServerBean(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Lcom/xiaopeng/lib/http/server/ServerBean;

    move-result-object v0

    .line 127
    .local v0, "bean":Lcom/xiaopeng/lib/http/server/ServerBean;
    invoke-virtual {v0}, Lcom/xiaopeng/lib/http/server/ServerBean;->getCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 128
    .local v1, "result":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 129
    const-string v2, "IrdetoIndivHelper"

    const-string v3, "irdeto sdk save indiv success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string v2, "IrdetoIndivHelper"

    const-string v3, "irdeto sdk indiv success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_1
    return v1
.end method

.method public getIndivDataFromResponse(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Ljava/lang/String;
    .locals 5
    .param p1, "response"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "result":Ljava/lang/String;
    invoke-static {p1}, Lcom/xiaopeng/factory/utils/DataHelp;->getServerBean(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Lcom/xiaopeng/lib/http/server/ServerBean;

    move-result-object v1

    .line 78
    .local v1, "bean":Lcom/xiaopeng/lib/http/server/ServerBean;
    :try_start_0
    invoke-virtual {v1}, Lcom/xiaopeng/lib/http/server/ServerBean;->getCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 79
    invoke-virtual {v1}, Lcom/xiaopeng/lib/http/server/ServerBean;->getData()Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "data":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 81
    const-string v3, "IrdetoIndivHelper"

    const-string v4, "irdeto sdk get indiv info success"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 83
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "sData"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 89
    .end local v2    # "data":Ljava/lang/String;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    goto :goto_0

    .line 86
    :catch_0
    move-exception v2

    .line 87
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    const-string v3, "IrdetoIndivHelper"

    const-string v4, "irdeto sdk get indiv info failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public notifyIndivFinished(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 140
    const-string v0, "IrdetoIndivHelper"

    const-string v1, "notifyIndivFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 143
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.xiaopeng.action.ISF_SECURE_STORE_RELOAD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    if-eqz p1, :cond_0

    .line 145
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 150
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
