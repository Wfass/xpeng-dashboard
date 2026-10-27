.class Lcom/xiaopeng/lib/apirouter/RemoteOperator;
.super Ljava/lang/Object;
.source "RemoteOperator.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAuthority:Ljava/lang/String;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mDescription:Ljava/lang/String;

.field private mIBinder:Landroid/os/IBinder;

.field private mRemoteAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mRemoteApis:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/lib/apirouter/RemoteMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/IBinder;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "iBinder"    # Landroid/os/IBinder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "description"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "authority"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/lib/apirouter/RemoteMethod;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 85
    .local p2, "remoteApi":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/xiaopeng/lib/apirouter/RemoteMethod;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mRemoteAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 86
    iput-object p1, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mIBinder:Landroid/os/IBinder;

    .line 87
    iput-object p2, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mRemoteApis:Ljava/util/Map;

    .line 88
    iput-object p3, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mDescription:Ljava/lang/String;

    .line 89
    iput-object p4, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mAuthority:Ljava/lang/String;

    .line 90
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/lib/apirouter/RemoteOperator;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/apirouter/RemoteOperator;

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/lib/apirouter/RemoteOperator;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/apirouter/RemoteOperator;

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public static fromJson(Landroid/os/IBinder;Ljava/lang/String;)Lcom/xiaopeng/lib/apirouter/RemoteOperator;
    .locals 17
    .param p0, "iBinder"    # Landroid/os/IBinder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "operationManifest"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 37
    const/4 v0, 0x0

    move-object v1, v0

    .line 39
    .local v1, "remoteOperator":Lcom/xiaopeng/lib/apirouter/RemoteOperator;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v2, p1

    :try_start_1
    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "manifest":Lorg/json/JSONObject;
    const-string v3, "DESCRIPTOR"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, "descriptor":Ljava/lang/String;
    const-string v4, "authority"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 42
    .local v4, "authority":Ljava/lang/String;
    const-string v5, "TRANSACTION"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 43
    .local v5, "transactions":Lorg/json/JSONArray;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 44
    .local v6, "mMethd":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/xiaopeng/lib/apirouter/RemoteMethod;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 45
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 46
    .local v9, "method":Lorg/json/JSONObject;
    const-string v10, "parameter"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 47
    .local v10, "jsonParams":Lorg/json/JSONArray;
    const/4 v11, 0x0

    .line 49
    .local v11, "params":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v10, :cond_0

    .line 50
    new-instance v12, Ljava/util/ArrayList;

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    move-object v11, v12

    .line 51
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_1
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v12, v13, :cond_0

    .line 52
    invoke-virtual {v10, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 53
    .local v13, "jsonParam":Lorg/json/JSONObject;
    new-instance v14, Landroid/util/Pair;

    const-string v15, "alias"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v7, "name"

    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v14, v15, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .end local v13    # "jsonParam":Lorg/json/JSONObject;
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 57
    .end local v12    # "j":I
    :cond_0
    const-string v7, "METHOD"

    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 58
    .local v7, "methodKey":Ljava/lang/String;
    const-string v12, "path"

    invoke-virtual {v9, v12, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 60
    .local v12, "pathKey":Ljava/lang/String;
    new-instance v13, Lcom/xiaopeng/lib/apirouter/RemoteMethod;

    const-string v14, "ID"

    .line 62
    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-direct {v13, v7, v14, v11}, Lcom/xiaopeng/lib/apirouter/RemoteMethod;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 66
    .local v13, "remoteMethod":Lcom/xiaopeng/lib/apirouter/RemoteMethod;
    invoke-interface {v6, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 71
    invoke-interface {v6, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .end local v7    # "methodKey":Ljava/lang/String;
    .end local v9    # "method":Lorg/json/JSONObject;
    .end local v10    # "jsonParams":Lorg/json/JSONArray;
    .end local v11    # "params":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v12    # "pathKey":Ljava/lang/String;
    .end local v13    # "remoteMethod":Lcom/xiaopeng/lib/apirouter/RemoteMethod;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 78
    .end local v8    # "i":I
    :cond_2
    new-instance v7, Lcom/xiaopeng/lib/apirouter/RemoteOperator;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v8, p0

    :try_start_2
    invoke-direct {v7, v8, v6, v3, v4}, Lcom/xiaopeng/lib/apirouter/RemoteOperator;-><init>(Landroid/os/IBinder;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v7

    .line 81
    .end local v0    # "manifest":Lorg/json/JSONObject;
    .end local v3    # "descriptor":Ljava/lang/String;
    .end local v4    # "authority":Ljava/lang/String;
    .end local v5    # "transactions":Lorg/json/JSONArray;
    .end local v6    # "mMethd":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/xiaopeng/lib/apirouter/RemoteMethod;>;"
    goto :goto_3

    .line 79
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v8, p0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v8, p0

    move-object/from16 v2, p1

    .line 80
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    sget-object v3, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->TAG:Ljava/lang/String;

    const-string v4, "Remote IDL parsed error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_3
    return-object v1
.end method

.method private readResult(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "reply"    # Landroid/os/Parcel;

    .line 164
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public call(Landroid/net/Uri;Z[B)Ljava/lang/Object;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "withBlob"    # Z
    .param p3, "blob"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 108
    .local v0, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_7

    .line 112
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 113
    .local v2, "firstPathSegment":Ljava/lang/String;
    iget-object v3, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mRemoteApis:Ljava/util/Map;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mRemoteApis:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-eqz v3, :cond_6

    .line 117
    iget-object v3, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mRemoteApis:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/lib/apirouter/RemoteMethod;

    .line 118
    .local v3, "remoteMethod":Lcom/xiaopeng/lib/apirouter/RemoteMethod;
    if-eqz v3, :cond_5

    .line 122
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 123
    .local v4, "builder":Landroid/net/Uri$Builder;
    iget-object v5, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mDescription:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/xiaopeng/lib/apirouter/RemoteMethod;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 124
    invoke-virtual {v3}, Lcom/xiaopeng/lib/apirouter/RemoteMethod;->getParamsList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 125
    invoke-virtual {v3}, Lcom/xiaopeng/lib/apirouter/RemoteMethod;->getParamsList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 126
    .local v6, "paramKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 127
    .local v7, "param":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 128
    iget-object v8, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 130
    :cond_0
    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p1, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 131
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 132
    iget-object v8, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 135
    .end local v6    # "paramKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "param":Ljava/lang/String;
    :cond_1
    :goto_1
    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v5

    .line 138
    .local v5, "queryKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 139
    .local v7, "queryKey":Ljava/lang/String;
    invoke-virtual {p1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 140
    .end local v7    # "queryKey":Ljava/lang/String;
    goto :goto_2

    .line 142
    .end local v5    # "queryKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 144
    .local v5, "realUrl":Landroid/net/Uri;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 145
    .local v6, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    .line 146
    .local v7, "reply":Landroid/os/Parcel;
    const/4 v8, 0x0

    .line 148
    .local v8, "result":Ljava/lang/Object;
    :try_start_0
    iget-object v9, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mDescription:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 149
    invoke-static {v6, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 150
    if-eqz p2, :cond_4

    .line 151
    invoke-virtual {v6, p3}, Landroid/os/Parcel;->writeBlob([B)V

    .line 153
    :cond_4
    iget-object v9, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mIBinder:Landroid/os/IBinder;

    invoke-virtual {v3}, Lcom/xiaopeng/lib/apirouter/RemoteMethod;->getId()I

    move-result v10

    invoke-interface {v9, v10, v6, v7, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 154
    invoke-virtual {v7}, Landroid/os/Parcel;->readException()V

    .line 155
    invoke-direct {p0, v7}, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->readResult(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    .end local v8    # "result":Ljava/lang/Object;
    .local v1, "result":Ljava/lang/Object;
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 158
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 159
    nop

    .line 160
    return-object v1

    .line 157
    .end local v1    # "result":Ljava/lang/Object;
    .restart local v8    # "result":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 158
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 159
    throw v1

    .line 119
    .end local v4    # "builder":Landroid/net/Uri$Builder;
    .end local v5    # "realUrl":Landroid/net/Uri;
    .end local v6    # "data":Landroid/os/Parcel;
    .end local v7    # "reply":Landroid/os/Parcel;
    .end local v8    # "result":Ljava/lang/Object;
    :cond_5
    new-instance v1, Landroid/os/RemoteException;

    const-string v4, "No matching method"

    invoke-direct {v1, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    .end local v3    # "remoteMethod":Lcom/xiaopeng/lib/apirouter/RemoteMethod;
    :cond_6
    new-instance v1, Landroid/os/RemoteException;

    const-string v3, "Server do not provide any method"

    invoke-direct {v1, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    .end local v2    # "firstPathSegment":Ljava/lang/String;
    :cond_7
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Can not find uri path segment"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public isRemoteAlive()Z
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mIBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mIBinder:Landroid/os/IBinder;

    .line 102
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mRemoteAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 103
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 101
    :goto_0
    return v0
.end method

.method public declared-synchronized linkToDeath()V
    .locals 4

    monitor-enter p0

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lcom/xiaopeng/lib/apirouter/RemoteOperator$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/apirouter/RemoteOperator$1;-><init>(Lcom/xiaopeng/lib/apirouter/RemoteOperator;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "linkToDeath:desc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",auth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mAuthority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",rec="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",obj="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v1, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mIBinder:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    goto :goto_0

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    iget-object v2, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mRemoteAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 181
    sget-object v0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "linkToDeath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mAuthority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'s process has already died"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/lib/apirouter/RemoteOperator;
    throw v0
.end method

.method public declared-synchronized unLinkToDeath(Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    monitor-enter p0

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mRemoteAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-eqz v0, :cond_1

    .line 189
    sget-object v0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unLinkToDeath("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "):desc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",auth= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mAuthority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",rec="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",obj="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mIBinder:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v0

    .line 191
    .local v0, "result":Z
    if-nez v0, :cond_0

    .line 192
    sget-object v1, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unLinkToDeath("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mAuthority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'s process has already died"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    .end local v0    # "result":Z
    :cond_1
    monitor-exit p0

    return-void

    .line 186
    .end local p1    # "tag":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/lib/apirouter/RemoteOperator;
    throw p1
.end method
