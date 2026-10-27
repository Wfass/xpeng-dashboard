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
    .param p1    # Landroid/os/IBinder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
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
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/lib/apirouter/RemoteOperator;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mAuthority:Ljava/lang/String;

    return-object p0
.end method

.method public static fromJson(Landroid/os/IBinder;Ljava/lang/String;)Lcom/xiaopeng/lib/apirouter/RemoteOperator;
    .locals 14
    .param p0    # Landroid/os/IBinder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 37
    nop

    .line 39
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 40
    const-string p1, "DESCRIPTOR"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 41
    const-string v2, "authority"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    const-string v3, "TRANSACTION"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 43
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 44
    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 45
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 46
    const-string v7, "parameter"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 47
    nop

    .line 49
    if-eqz v7, :cond_0

    .line 50
    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    move v9, v4

    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 52
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 53
    new-instance v11, Landroid/util/Pair;

    const-string v12, "alias"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "name"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v12, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 57
    :cond_0
    move-object v8, v0

    :cond_1
    const-string v7, "METHOD"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 58
    const-string v9, "path"

    invoke-virtual {v6, v9, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 60
    new-instance v10, Lcom/xiaopeng/lib/apirouter/RemoteMethod;

    const-string v11, "ID"

    .line 62
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v10, v7, v6, v8}, Lcom/xiaopeng/lib/apirouter/RemoteMethod;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 66
    invoke-interface {v3, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 71
    invoke-interface {v3, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 78
    :cond_3
    new-instance v1, Lcom/xiaopeng/lib/apirouter/RemoteOperator;

    invoke-direct {v1, p0, v3, p1, v2}, Lcom/xiaopeng/lib/apirouter/RemoteOperator;-><init>(Landroid/os/IBinder;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    nop

    .line 82
    move-object v0, v1

    goto :goto_2

    .line 79
    :catch_0
    move-exception p0

    .line 80
    sget-object p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->TAG:Ljava/lang/String;

    const-string p1, "Remote IDL parsed error"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_2
    return-object v0
.end method

.method private readResult(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .line 164
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
    .locals 7
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 108
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_7

    .line 112
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 113
    iget-object v2, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mRemoteApis:Ljava/util/Map;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mRemoteApis:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-eqz v2, :cond_6

    .line 117
    iget-object v2, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mRemoteApis:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/apirouter/RemoteMethod;

    .line 118
    if-eqz v0, :cond_5

    .line 122
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 123
    iget-object v3, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/xiaopeng/lib/apirouter/RemoteMethod;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 124
    invoke-virtual {v0}, Lcom/xiaopeng/lib/apirouter/RemoteMethod;->getParamsList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 125
    invoke-virtual {v0}, Lcom/xiaopeng/lib/apirouter/RemoteMethod;->getParamsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 126
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 127
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 128
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 130
    :cond_0
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 131
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 132
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 135
    :cond_1
    :goto_1
    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v3

    .line 138
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 139
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 140
    goto :goto_2

    .line 142
    :cond_3
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 144
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 145
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 146
    nop

    .line 148
    :try_start_0
    iget-object v4, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mDescription:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 149
    invoke-static {v2, p1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 150
    if-eqz p2, :cond_4

    .line 151
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeBlob([B)V

    .line 153
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mIBinder:Landroid/os/IBinder;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/apirouter/RemoteMethod;->getId()I

    move-result p2

    invoke-interface {p1, p2, v2, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 154
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 155
    invoke-direct {p0, v3}, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->readResult(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 158
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 159
    nop

    .line 160
    return-object p1

    .line 157
    :catchall_0
    move-exception p1

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 158
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 159
    throw p1

    .line 119
    :cond_5
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "No matching method"

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 114
    :cond_6
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Server do not provide any method"

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :cond_7
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Can not find uri path segment"

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
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
    :try_start_2
    iget-object v1, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mRemoteAlive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 181
    sget-object v0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkToDeath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'s process has already died"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unLinkToDeath(Ljava/lang/String;)V
    .locals 4

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
    if-nez v0, :cond_0

    .line 192
    sget-object v0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unLinkToDeath("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "):"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'s process has already died"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :cond_1
    monitor-exit p0

    return-void

    .line 186
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
