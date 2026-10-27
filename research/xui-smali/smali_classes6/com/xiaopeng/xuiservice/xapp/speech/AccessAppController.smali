.class public Lcom/xiaopeng/xuiservice/xapp/speech/AccessAppController;
.super Ljava/lang/Object;
.source "AccessAppController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AccessAppController"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public startAccessApp(ILjava/lang/String;)I
    .locals 9
    .param p1, "screenId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 21
    const/4 v0, 0x1

    .line 22
    .local v0, "result":I
    const/16 v1, 0x64

    invoke-static {v1}, Lcom/xiaopeng/xuimanager/xapp/XAppManager;->getXpAppPackageListByCategory(I)Ljava/util/List;

    move-result-object v1

    .line 23
    .local v1, "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/app/xpAppInfo;>;"
    const/4 v2, 0x0

    .line 24
    .local v2, "appInstalled":Z
    if-eqz v1, :cond_1

    .line 25
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/app/xpAppInfo;

    .line 26
    .local v4, "appInfo":Lcom/xiaopeng/app/xpAppInfo;
    if-eqz p2, :cond_0

    iget-object v5, v4, Lcom/xiaopeng/app/xpAppInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 27
    const-string v3, "AccessAppController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startApplicationForResult,find app:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const/4 v2, 0x1

    .line 29
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 31
    .local v3, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "screenId"

    invoke-virtual {v3, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_1

    .line 32
    :catch_0
    move-exception v5

    .line 33
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "AccessAppController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "put json e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {}, Lcom/xiaopeng/xuimanager/access/AccessAppManager;->getInstance()Lcom/xiaopeng/xuimanager/access/AccessAppManager;

    move-result-object v5

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/xiaopeng/xuimanager/access/AccessAppManager;->startAppWithParam(Lcom/xiaopeng/app/xpAppInfo;Ljava/lang/String;)I

    move-result v5

    .line 36
    .local v5, "opRet":I
    if-nez v5, :cond_1

    .line 37
    const/4 v0, 0x1

    goto :goto_2

    .line 41
    .end local v3    # "obj":Lorg/json/JSONObject;
    .end local v4    # "appInfo":Lcom/xiaopeng/app/xpAppInfo;
    .end local v5    # "opRet":I
    :cond_0
    goto :goto_0

    .line 44
    :cond_1
    :goto_2
    if-nez v2, :cond_2

    .line 45
    const/4 v0, 0x4

    .line 48
    :cond_2
    return v0
.end method
