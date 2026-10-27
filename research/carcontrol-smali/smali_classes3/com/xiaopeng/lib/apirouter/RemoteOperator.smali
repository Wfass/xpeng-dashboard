.class Lcom/xiaopeng/lib/apirouter/RemoteOperator;
.super Ljava/lang/Object;
.source "RemoteOperator.java"


# static fields
.field private static TAG:Ljava/lang/String; = "RemoteOperator"


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
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/os/IBinder;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
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

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mRemoteAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 89
    iput-object p1, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mIBinder:Landroid/os/IBinder;

    .line 90
    iput-object p2, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mRemoteApis:Ljava/util/Map;

    .line 91
    iput-object p3, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mDescription:Ljava/lang/String;

    .line 92
    iput-object p4, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mAuthority:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/lib/apirouter/RemoteOperator;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/lib/apirouter/RemoteOperator;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mAuthority:Ljava/lang/String;

    return-object p0
.end method

.method public static fromJson(Landroid/os/IBinder;Ljava/lang/String;)Lcom/xiaopeng/lib/apirouter/RemoteOperator;
    .locals 14

    const/4 v0, 0x0

    .line 42
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "DESCRIPTOR"

    .line 43
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "authority"

    .line 44
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TRANSACTION"

    .line 45
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 46
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    .line 47
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 48
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "parameter"

    .line 49
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 53
    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    move v9, v4

    .line 54
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 55
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 56
    new-instance v11, Landroid/util/Pair;

    const-string v12, "alias"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "name"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v12, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    move-object v8, v0

    :cond_1
    const-string v7, "METHOD"

    .line 60
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "path"

    .line 61
    invoke-virtual {v6, v9, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 63
    new-instance v10, Lcom/xiaopeng/lib/apirouter/RemoteMethod;

    const-string v11, "ID"

    .line 65
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v10, v7, v6, v8}, Lcom/xiaopeng/lib/apirouter/RemoteMethod;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 69
    invoke-interface {v3, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 74
    invoke-interface {v3, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 81
    :cond_3
    new-instance v1, Lcom/xiaopeng/lib/apirouter/RemoteOperator;

    invoke-direct {v1, p0, v3, p1, v2}, Lcom/xiaopeng/lib/apirouter/RemoteOperator;-><init>(Landroid/os/IBinder;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_2

    .line 83
    :catch_0
    sget-object p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->TAG:Ljava/lang/String;

    const-string p1, "Remote IDL parsed error"

    invoke-static {p0, p1}, Lcom/xiaopeng/lib/apirouter/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v0
.end method

.method private readResult(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .line 183
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public call(Landroid/net/Uri;Z[B)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->call(Landroid/net/Uri;Z[BZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public call(Landroid/net/Uri;Z[BZ)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 115
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    .line 120
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    iget-object v1, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mRemoteApis:Ljava/util/Map;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_a

    .line 126
    iget-object v1, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mRemoteApis:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/apirouter/RemoteMethod;

    if-eqz v0, :cond_9

    .line 132
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 133
    iget-object v2, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/lib/apirouter/RemoteMethod;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 134
    invoke-virtual {v0}, Lcom/xiaopeng/lib/apirouter/RemoteMethod;->getParamsList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 135
    invoke-virtual {v0}, Lcom/xiaopeng/lib/apirouter/RemoteMethod;->getParamsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 136
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 137
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 138
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 140
    :cond_1
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 141
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 142
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 147
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v2

    .line 148
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 149
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 152
    :cond_3
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 154
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p4, :cond_4

    move-object v3, v2

    goto :goto_2

    .line 155
    :cond_4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 159
    :goto_2
    :try_start_0
    iget-object v4, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 160
    invoke-static {v1, p1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    if-eqz p2, :cond_5

    .line 162
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeBlob([B)V

    .line 164
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mIBinder:Landroid/os/IBinder;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/apirouter/RemoteMethod;->getId()I

    move-result p2

    invoke-interface {p1, p2, v1, v3, p4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_6

    .line 167
    :try_start_1
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 168
    invoke-direct {p0, v3}, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->readResult(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 171
    :try_start_2
    sget-object p2, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "ex="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/apirouter/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    :goto_3
    if-eqz v3, :cond_7

    .line 175
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 176
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_7
    return-object v2

    :catchall_0
    move-exception p1

    if-eqz v3, :cond_8

    .line 175
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 176
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 178
    :cond_8
    throw p1

    .line 128
    :cond_9
    sget-object p1, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->TAG:Ljava/lang/String;

    const-string p2, "No matching method"

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/apirouter/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_a
    sget-object p1, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->TAG:Ljava/lang/String;

    const-string p2, "Server do not provide any method"

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/apirouter/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :cond_b
    sget-object p1, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->TAG:Ljava/lang/String;

    const-string p2, "Can not find uri path segment"

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/apirouter/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public isRemoteAlive()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mIBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mRemoteAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 106
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized linkToDeath()V
    .locals 3

    monitor-enter p0

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Lcom/xiaopeng/lib/apirouter/RemoteOperator$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/apirouter/RemoteOperator$1;-><init>(Lcom/xiaopeng/lib/apirouter/RemoteOperator;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 197
    :try_start_1
    iget-object v2, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mIBinder:Landroid/os/IBinder;

    invoke-interface {v2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 199
    :catch_0
    :try_start_2
    iget-object v0, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mRemoteAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 200
    sget-object v0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkToDeath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'s process has already died"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/apirouter/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unLinkToDeath(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mRemoteAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-eqz v0, :cond_1

    .line 209
    iget-object v2, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mIBinder:Landroid/os/IBinder;

    invoke-interface {v2, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    sget-object v0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unLinkToDeath("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "):"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mAuthority:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\'s process has already died"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/apirouter/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 213
    iput-object p1, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
