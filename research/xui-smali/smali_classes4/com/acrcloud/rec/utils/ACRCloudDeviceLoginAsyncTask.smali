.class public Lcom/acrcloud/rec/utils/ACRCloudDeviceLoginAsyncTask;
.super Landroid/os/AsyncTask;
.source "ACRCloudDeviceLoginAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ACRCloudDeviceLoginAsyncTask"


# instance fields
.field private mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

.field private mLoginAction:Ljava/lang/String;

.field private mLoginHost:Ljava/lang/String;

.field private mLoginUrl:Ljava/lang/String;

.field private mRetryNum:I


# direct methods
.method public constructor <init>(Lcom/acrcloud/rec/ACRCloudConfig;)V
    .locals 2
    .param p1, "config"    # Lcom/acrcloud/rec/ACRCloudConfig;

    .line 22
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 16
    const-string v0, "/v1/device"

    iput-object v0, p0, Lcom/acrcloud/rec/utils/ACRCloudDeviceLoginAsyncTask;->mLoginAction:Ljava/lang/String;

    .line 17
    const-string v0, "https://api.acrcloud.com"

    iput-object v0, p0, Lcom/acrcloud/rec/utils/ACRCloudDeviceLoginAsyncTask;->mLoginHost:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/acrcloud/rec/utils/ACRCloudDeviceLoginAsyncTask;->mLoginUrl:Ljava/lang/String;

    .line 20
    const/4 v0, 0x3

    iput v0, p0, Lcom/acrcloud/rec/utils/ACRCloudDeviceLoginAsyncTask;->mRetryNum:I

    .line 23
    iput-object p1, p0, Lcom/acrcloud/rec/utils/ACRCloudDeviceLoginAsyncTask;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    .line 24
    iget-object v0, p0, Lcom/acrcloud/rec/utils/ACRCloudDeviceLoginAsyncTask;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v0, v0, Lcom/acrcloud/rec/ACRCloudConfig;->host:Ljava/lang/String;

    const-string v1, "identify-cn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 25
    const-string v0, "https://cn-api.acrcloud.com"

    iput-object v0, p0, Lcom/acrcloud/rec/utils/ACRCloudDeviceLoginAsyncTask;->mLoginHost:Ljava/lang/String;

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/acrcloud/rec/utils/ACRCloudDeviceLoginAsyncTask;->mLoginHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/acrcloud/rec/utils/ACRCloudDeviceLoginAsyncTask;->mLoginAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/acrcloud/rec/utils/ACRCloudDeviceLoginAsyncTask;->mLoginUrl:Ljava/lang/String;

    .line 28
    const-string v0, "ACRCloudDeviceLoginAsyncTask"

    iget-object v1, p0, Lcom/acrcloud/rec/utils/ACRCloudDeviceLoginAsyncTask;->mLoginUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/acrcloud/rec/utils/ACRCloudDeviceLoginAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/acrcloud/rec/utils/ACRCloudDeviceLoginAsyncTask;->mRetryNum:I

    if-ge v1, v2, :cond_1

    .line 35
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 36
    .local v2, "initParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "access_key"

    iget-object v4, p0, Lcom/acrcloud/rec/utils/ACRCloudDeviceLoginAsyncTask;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v4, v4, Lcom/acrcloud/rec/ACRCloudConfig;->accessKey:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v3, "dkey"

    aget-object v4, p1, v0

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v3, "type"

    const-string v4, "device"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v3, p0, Lcom/acrcloud/rec/utils/ACRCloudDeviceLoginAsyncTask;->mLoginUrl:Ljava/lang/String;

    const/16 v4, 0x1388

    invoke-static {v3, v2, v4}, Lcom/acrcloud/rec/network/ACRCloudHttpWrapper;->doPost(Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/String;

    .line 40
    const-string v3, "ACRCloudDeviceLoginAsyncTask"

    const-string v4, "login done"

    invoke-static {v3, v4}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 44
    :try_start_1
    iget-object v3, p0, Lcom/acrcloud/rec/utils/ACRCloudDeviceLoginAsyncTask;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v3, v3, Lcom/acrcloud/rec/ACRCloudConfig;->context:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 45
    iget-object v3, p0, Lcom/acrcloud/rec/utils/ACRCloudDeviceLoginAsyncTask;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v3, v3, Lcom/acrcloud/rec/ACRCloudConfig;->context:Landroid/content/Context;

    const-string v4, "acrcloud"

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 46
    .local v3, "mySharedPreferences":Landroid/content/SharedPreferences;
    const-string v4, "login_num"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 47
    .local v4, "loginNum":I
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 48
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "login_num"

    add-int/lit8 v7, v4, 0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 49
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 53
    .end local v3    # "mySharedPreferences":Landroid/content/SharedPreferences;
    .end local v4    # "loginNum":I
    .end local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    goto :goto_1

    .line 51
    :catch_0
    move-exception v3

    .line 52
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 55
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_1
    goto :goto_2

    .line 56
    .end local v2    # "initParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_1
    move-exception v2

    .line 57
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    .end local v2    # "e":Ljava/lang/Exception;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    .end local v1    # "i":I
    :cond_1
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/acrcloud/rec/utils/ACRCloudDeviceLoginAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Void;

    .line 66
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 67
    return-void
.end method
