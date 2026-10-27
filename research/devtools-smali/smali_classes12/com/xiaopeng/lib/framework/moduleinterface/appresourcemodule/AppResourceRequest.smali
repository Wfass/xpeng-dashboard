.class public Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;
.super Ljava/lang/Object;
.source "AppResourceRequest.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field private static longInc:J


# instance fields
.field private mCheckUpdate:Z

.field private mCoverRecord:Z

.field private mEffectiveDate:J

.field private mId:J

.field private mLocalPath:Ljava/lang/String;

.field private mOperate:Ljava/lang/String;

.field private mRemoteUri:Ljava/lang/String;

.field private mShared:Ljava/lang/String;

.field private mUnzip:Z

.field private mUpdatePolicy:I

.field private mUriPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->longInc:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "SHARED"

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mShared:Ljava/lang/String;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mCoverRecord:Z

    .line 74
    sget-wide v0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->longInc:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->longInc:J

    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mId:J

    .line 75
    return-void
.end method

.method public static from(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;
    .locals 3

    .line 217
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 219
    new-instance p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;

    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;-><init>()V

    .line 220
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mId:J

    .line 221
    const-string v1, "update_policy"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mUpdatePolicy:I

    .line 222
    const-string v1, "local_path"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mLocalPath:Ljava/lang/String;

    .line 223
    const-string v1, "uri_path"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mUriPath:Ljava/lang/String;

    .line 224
    const-string v1, "remote_uri"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mRemoteUri:Ljava/lang/String;

    .line 225
    const-string v1, "shared"

    const-string v2, "SHARED"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mShared:Ljava/lang/String;

    .line 226
    const-string v1, "effective"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mEffectiveDate:J

    .line 227
    const-string v1, "unzip"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mUnzip:Z

    .line 228
    const-string v1, "operate"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mOperate:Ljava/lang/String;

    .line 229
    const-string v1, "cover_record"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mCoverRecord:Z

    .line 230
    const-string v1, "check_update"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mCheckUpdate:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    return-object p0

    .line 235
    :cond_0
    goto :goto_0

    .line 233
    :catch_0
    move-exception p0

    .line 234
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 236
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private stringEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 208
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    return v1

    .line 211
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public checkUpdate(Z)Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;
    .locals 0

    .line 113
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mCheckUpdate:Z

    .line 114
    return-object p0
.end method

.method public checkUpdate()Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mCheckUpdate:Z

    return v0
.end method

.method public coverRecord(Z)Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;
    .locals 0

    .line 118
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mCoverRecord:Z

    .line 119
    return-object p0
.end method

.method public effectiveDate()J
    .locals 2

    .line 164
    iget-wide v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mEffectiveDate:J

    return-wide v0
.end method

.method public effectiveDate(J)Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;
    .locals 0

    .line 103
    iput-wide p1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mEffectiveDate:J

    .line 104
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 190
    instance-of v0, p1, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 191
    return v1

    .line 193
    :cond_0
    check-cast p1, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;

    .line 194
    iget v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mUpdatePolicy:I

    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->updatePolicy()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-wide v2, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mEffectiveDate:J

    iget-wide v4, p1, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mEffectiveDate:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mLocalPath:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mLocalPath:Ljava/lang/String;

    .line 196
    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->stringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mUriPath:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mUriPath:Ljava/lang/String;

    .line 197
    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->stringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mRemoteUri:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mRemoteUri:Ljava/lang/String;

    .line 198
    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->stringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mOperate:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mOperate:Ljava/lang/String;

    .line 199
    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->stringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mShared:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mShared:Ljava/lang/String;

    .line 200
    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->stringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mCheckUpdate:Z

    iget-boolean v2, p1, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mCheckUpdate:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mCoverRecord:Z

    iget-boolean v2, p1, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mCoverRecord:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mUnzip:Z

    iget-boolean v2, p1, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mUnzip:Z

    if-ne v0, v2, :cond_1

    iget-wide v2, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mId:J

    iget-wide v4, p1, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mId:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    const/4 v1, 0x1

    nop

    .line 194
    :cond_1
    return v1
.end method

.method public isCoverRecord()Z
    .locals 1

    .line 155
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mCoverRecord:Z

    return v0
.end method

.method public isUnzip()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mUnzip:Z

    return v0
.end method

.method public localPath(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mLocalPath:Ljava/lang/String;

    .line 89
    return-object p0
.end method

.method public localPath()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method public operate(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mOperate:Ljava/lang/String;

    .line 160
    return-object p0
.end method

.method public operate()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mOperate:Ljava/lang/String;

    return-object v0
.end method

.method public remoteUri(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mRemoteUri:Ljava/lang/String;

    .line 99
    return-object p0
.end method

.method public remoteUri()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mRemoteUri:Ljava/lang/String;

    return-object v0
.end method

.method public shared(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mShared:Ljava/lang/String;

    .line 94
    return-object p0
.end method

.method public shared()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mShared:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 169
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 171
    :try_start_0
    const-string v1, "update_policy"

    iget v2, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mUpdatePolicy:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 172
    const-string v1, "local_path"

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mLocalPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    const-string v1, "uri_path"

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mUriPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    const-string v1, "remote_uri"

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mRemoteUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    const-string v1, "effective"

    iget-wide v2, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mEffectiveDate:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 176
    const-string v1, "unzip"

    iget-boolean v2, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mUnzip:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 177
    const-string v1, "shared"

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mShared:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    const-string v1, "operate"

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mOperate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    const-string v1, "id"

    iget-wide v2, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mId:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 180
    const-string v1, "check_update"

    iget-boolean v2, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mCheckUpdate:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 181
    const-string v1, "cover_record"

    iget-boolean v2, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mCoverRecord:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    goto :goto_0

    .line 182
    :catch_0
    move-exception v1

    .line 183
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 185
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unzip(Z)Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mUnzip:Z

    .line 109
    return-object p0
.end method

.method public updatePolicy()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mUpdatePolicy:I

    return v0
.end method

.method public updatePolicy(I)Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;
    .locals 0

    .line 83
    iput p1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mUpdatePolicy:I

    .line 84
    return-object p0
.end method

.method public uriPath(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mUriPath:Ljava/lang/String;

    .line 79
    return-object p0
.end method

.method public uriPath()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mUriPath:Ljava/lang/String;

    return-object v0
.end method
