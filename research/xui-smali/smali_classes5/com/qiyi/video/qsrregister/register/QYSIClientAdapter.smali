.class public Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter;
.super Ljava/lang/Object;
.source "QYSIClientAdapter.java"

# interfaces
.implements Lcom/qiyi/video/qsrregister/register/QYSIClient;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/qiyi/video/qsrregister/listener/QYSListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter;)Lcom/qiyi/video/qsrregister/listener/QYSListener;
    .locals 1
    .param p0, "x0"    # Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter;

    .line 26
    iget-object v0, p0, Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter;->mListener:Lcom/qiyi/video/qsrregister/listener/QYSListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter;Lcom/qiyi/video/qys/IQYSResponse;)Lcom/qiyi/video/qsrbase/QYSExecType;
    .locals 1
    .param p0, "x0"    # Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter;
    .param p1, "x1"    # Lcom/qiyi/video/qys/IQYSResponse;

    .line 26
    invoke-direct {p0, p1}, Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter;->getQYSExecType(Lcom/qiyi/video/qys/IQYSResponse;)Lcom/qiyi/video/qsrbase/QYSExecType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter;Lcom/qiyi/video/qys/IQYSResponse;Lcom/qiyi/video/qsrbase/QYSExecType;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter;
    .param p1, "x1"    # Lcom/qiyi/video/qys/IQYSResponse;
    .param p2, "x2"    # Lcom/qiyi/video/qsrbase/QYSExecType;

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter;->convert(Lcom/qiyi/video/qys/IQYSResponse;Lcom/qiyi/video/qsrbase/QYSExecType;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private convert(Lcom/qiyi/video/qys/IQYSResponse;Lcom/qiyi/video/qsrbase/QYSExecType;)Ljava/util/List;
    .locals 20
    .param p1, "response"    # Lcom/qiyi/video/qys/IQYSResponse;
    .param p2, "type"    # Lcom/qiyi/video/qsrbase/QYSExecType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qiyi/video/qys/IQYSResponse;",
            "Lcom/qiyi/video/qsrbase/QYSExecType;",
            ")",
            "Ljava/util/List<",
            "Lcom/qiyi/video/qsrbase/QYSVideoInfo;",
            ">;"
        }
    .end annotation

    .line 109
    sget-object v0, Lcom/qiyi/video/qsrbase/QYSExecType;->SEARCH:Lcom/qiyi/video/qsrbase/QYSExecType;

    const/4 v1, 0x0

    move-object/from16 v2, p2

    if-eq v2, v0, :cond_0

    .line 110
    return-object v1

    .line 112
    :cond_0
    move-object/from16 v3, p1

    iget-object v0, v3, Lcom/qiyi/video/qys/IQYSResponse;->mResult:Lcom/qiyi/video/qys/IQYSStringWrapper;

    invoke-interface {v0}, Lcom/qiyi/video/qys/IQYSStringWrapper;->get()Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, "json":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    return-object v1

    .line 117
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, "object":Lorg/json/JSONObject;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/qiyi/video/qsrbase/QYSVideoInfo;>;"
    const-string v6, "epgs"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 120
    .local v6, "arrays":Lorg/json/JSONArray;
    invoke-direct/range {p0 .. p1}, Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter;->getParam(Lcom/qiyi/video/qys/IQYSResponse;)Ljava/lang/String;

    move-result-object v7

    .line 121
    .local v7, "key":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 122
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 123
    .local v9, "obj":Lorg/json/JSONObject;
    const-string v10, "name"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 124
    .local v12, "name":Ljava/lang/String;
    const-string v10, "albumId"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 125
    .local v17, "aid":Ljava/lang/String;
    const-string v10, "qipuId"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 126
    .local v18, "tvid":Ljava/lang/String;
    const-string v10, "pic"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 127
    .local v19, "imgUrl":Ljava/lang/String;
    const-string v10, "len"

    const-wide/16 v13, 0x0

    invoke-virtual {v9, v10, v13, v14}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v13

    .line 128
    .local v13, "duration":J
    new-instance v10, Lcom/qiyi/video/qsrbase/QYSVideoInfo;

    const-wide/16 v15, 0x0

    move-object v11, v10

    invoke-direct/range {v11 .. v19}, Lcom/qiyi/video/qsrbase/QYSVideoInfo;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .local v10, "info":Lcom/qiyi/video/qsrbase/QYSVideoInfo;
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v9    # "obj":Lorg/json/JSONObject;
    .end local v10    # "info":Lcom/qiyi/video/qsrbase/QYSVideoInfo;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "duration":J
    .end local v17    # "aid":Ljava/lang/String;
    .end local v18    # "tvid":Ljava/lang/String;
    .end local v19    # "imgUrl":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 131
    .end local v8    # "i":I
    :cond_2
    return-object v5

    .line 132
    .end local v0    # "object":Lorg/json/JSONObject;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/qiyi/video/qsrbase/QYSVideoInfo;>;"
    .end local v6    # "arrays":Lorg/json/JSONArray;
    .end local v7    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 135
    return-object v1
.end method

.method private getParam(Lcom/qiyi/video/qys/IQYSResponse;)Ljava/lang/String;
    .locals 3
    .param p1, "response"    # Lcom/qiyi/video/qys/IQYSResponse;

    .line 99
    :try_start_0
    iget-object v0, p1, Lcom/qiyi/video/qys/IQYSResponse;->mRequest:Lcom/qiyi/video/qys/IQYSRequest;

    iget-object v0, v0, Lcom/qiyi/video/qys/IQYSRequest;->mCmd:Lcom/qiyi/video/qys/IQYSStringWrapper;

    invoke-interface {v0}, Lcom/qiyi/video/qys/IQYSStringWrapper;->get()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "cmd":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 101
    .local v1, "parse":Landroid/net/Uri;
    const-string v2, "param"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 102
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v1    # "parse":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method private getQYSExecType(Lcom/qiyi/video/qys/IQYSResponse;)Lcom/qiyi/video/qsrbase/QYSExecType;
    .locals 4
    .param p1, "response"    # Lcom/qiyi/video/qys/IQYSResponse;

    .line 87
    :try_start_0
    iget-object v0, p1, Lcom/qiyi/video/qys/IQYSResponse;->mRequest:Lcom/qiyi/video/qys/IQYSRequest;

    iget-object v0, v0, Lcom/qiyi/video/qys/IQYSRequest;->mCmd:Lcom/qiyi/video/qys/IQYSStringWrapper;

    invoke-interface {v0}, Lcom/qiyi/video/qys/IQYSStringWrapper;->get()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "cmd":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 89
    .local v1, "parse":Landroid/net/Uri;
    const-string v2, "command"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "command":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/qiyi/video/qsrbase/QYSExecType;->UNKNOWN:Lcom/qiyi/video/qsrbase/QYSExecType;

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/qiyi/video/qsrbase/QYSExecType;->valueOf(Ljava/lang/String;)Lcom/qiyi/video/qsrbase/QYSExecType;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "cmd":Ljava/lang/String;
    .end local v1    # "parse":Landroid/net/Uri;
    .end local v2    # "command":Ljava/lang/String;
    :goto_0
    move-object v0, v3

    .line 93
    .local v0, "type":Lcom/qiyi/video/qsrbase/QYSExecType;
    goto :goto_1

    .line 91
    .end local v0    # "type":Lcom/qiyi/video/qsrbase/QYSExecType;
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v0, Lcom/qiyi/video/qsrbase/QYSExecType;->UNKNOWN:Lcom/qiyi/video/qsrbase/QYSExecType;

    .line 94
    .local v0, "type":Lcom/qiyi/video/qsrbase/QYSExecType;
    :goto_1
    return-object v0
.end method


# virtual methods
.method public execScheme(Ljava/lang/String;)V
    .locals 3
    .param p1, "scheme"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 66
    invoke-static {}, Lcom/qiyi/video/client/IQYSManager;->getInstance()Lcom/qiyi/video/client/IQYSManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qiyi/video/client/IQYSManager;->getService()Lcom/qiyi/video/client/IQYSService;

    move-result-object v0

    new-instance v1, Lcom/qiyi/video/qys/IQYSRequest;

    invoke-direct {v1, p1}, Lcom/qiyi/video/qys/IQYSRequest;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter$2;

    invoke-direct {v2, p0}, Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter$2;-><init>(Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter;)V

    invoke-interface {v0, v1, v2}, Lcom/qiyi/video/client/IQYSService;->executeAsync(Lcom/qiyi/video/qys/IQYSRequest;Lcom/qiyi/video/client/IQYSService$Callback;)V

    .line 82
    return-void
.end method

.method public register(Lcom/qiyi/video/qsrregister/listener/QYSListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/qiyi/video/qsrregister/listener/QYSListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 38
    iput-object p1, p0, Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter;->mListener:Lcom/qiyi/video/qsrregister/listener/QYSListener;

    .line 39
    invoke-static {}, Lcom/qiyi/video/client/IQYSManager;->getInstance()Lcom/qiyi/video/client/IQYSManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter$1;

    invoke-direct {v2, p0}, Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter$1;-><init>(Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter;)V

    invoke-virtual {v0, v1, v2}, Lcom/qiyi/video/client/IQYSManager;->register(Landroid/content/Context;Lcom/qiyi/video/client/IQYSManager$RegisterListener;)V

    .line 56
    return-void
.end method

.method public unregister()V
    .locals 1

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qiyi/video/qsrregister/register/QYSIClientAdapter;->mListener:Lcom/qiyi/video/qsrregister/listener/QYSListener;

    .line 61
    invoke-static {}, Lcom/qiyi/video/client/IQYSManager;->getInstance()Lcom/qiyi/video/client/IQYSManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qiyi/video/client/IQYSManager;->unRegister()V

    .line 62
    return-void
.end method
