.class public Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;
.super Ljava/lang/Object;
.source "AppResourceRequest.java"


# static fields
.field private static longInc:J = -0x1L


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
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SHARED"

    .line 46
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mShared:Ljava/lang/String;

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mCoverRecord:Z

    .line 74
    sget-wide v0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->longInc:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->longInc:J

    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mId:J

    return-void
.end method

.method public static from(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

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

    const-string v1, "id"

    .line 220
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mId:J

    const-string v1, "update_policy"

    .line 221
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mUpdatePolicy:I

    const-string v1, "local_path"

    .line 222
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mLocalPath:Ljava/lang/String;

    const-string v1, "uri_path"

    .line 223
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mUriPath:Ljava/lang/String;

    const-string v1, "remote_uri"

    .line 224
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mRemoteUri:Ljava/lang/String;

    const-string v1, "shared"

    const-string v2, "SHARED"

    .line 225
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mShared:Ljava/lang/String;

    const-string v1, "effective"

    .line 226
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mEffectiveDate:J

    const-string v1, "unzip"

    .line 227
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mUnzip:Z

    const-string v1, "operate"

    .line 228
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mOperate:Ljava/lang/String;

    const-string v1, "cover_record"

    const/4 v2, 0x1

    .line 229
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mCoverRecord:Z

    const-string v1, "check_update"

    .line 230
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mCheckUpdate:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 234
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private stringEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "le",
            "ri"
        }
    .end annotation

    .line 208
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 211
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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "check"
        }
    .end annotation

    .line 113
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mCheckUpdate:Z

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "replace"
        }
    .end annotation

    .line 118
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mCoverRecord:Z

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "date"
        }
    .end annotation

    .line 103
    iput-wide p1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mEffectiveDate:J

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 190
    instance-of v0, p1, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_0

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mLocalPath:Ljava/lang/String;

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "op"
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mOperate:Ljava/lang/String;

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mRemoteUri:Ljava/lang/String;

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shared"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mShared:Ljava/lang/String;

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

    :try_start_0
    const-string v1, "update_policy"

    .line 171
    iget v2, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mUpdatePolicy:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "local_path"

    .line 172
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mLocalPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "uri_path"

    .line 173
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mUriPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "remote_uri"

    .line 174
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mRemoteUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "effective"

    .line 175
    iget-wide v2, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mEffectiveDate:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "unzip"

    .line 176
    iget-boolean v2, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mUnzip:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "shared"

    .line 177
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mShared:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "operate"

    .line 178
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mOperate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "id"

    .line 179
    iget-wide v2, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mId:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "check_update"

    .line 180
    iget-boolean v2, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mCheckUpdate:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "cover_record"

    .line 181
    iget-boolean v2, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mCoverRecord:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unzip"
        }
    .end annotation

    .line 108
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mUnzip:Z

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "policy"
        }
    .end annotation

    .line 83
    iput p1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mUpdatePolicy:I

    return-object p0
.end method

.method public uriPath(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uriPath"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mUriPath:Ljava/lang/String;

    return-object p0
.end method

.method public uriPath()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->mUriPath:Ljava/lang/String;

    return-object v0
.end method
