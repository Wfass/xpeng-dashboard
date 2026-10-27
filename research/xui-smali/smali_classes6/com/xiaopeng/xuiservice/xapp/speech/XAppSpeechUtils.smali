.class public Lcom/xiaopeng/xuiservice/xapp/speech/XAppSpeechUtils;
.super Ljava/lang/Object;
.source "XAppSpeechUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpeechUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertStartCode(ILjava/lang/String;I)I
    .locals 3
    .param p0, "startCheckCode"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "displayId"    # I

    .line 47
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 48
    const/16 v0, 0xa

    return v0

    .line 49
    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x5

    if-ne p0, v1, :cond_1

    .line 50
    return v2

    .line 51
    :cond_1
    if-ne p0, v2, :cond_2

    .line 52
    const/16 v0, 0xc

    return v0

    .line 53
    :cond_2
    const/4 v1, 0x6

    if-ne p0, v1, :cond_4

    .line 54
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->getInstance()Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->queryIsAssembling(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 55
    return v0

    .line 57
    :cond_3
    const/16 v0, 0x8

    return v0

    .line 58
    :cond_4
    const/4 v0, 0x7

    if-eq p0, v0, :cond_7

    const/16 v0, 0xe

    if-ne p0, v0, :cond_5

    goto :goto_0

    .line 61
    :cond_5
    const/16 v1, 0xb

    if-ne p0, v1, :cond_6

    .line 62
    return v0

    .line 64
    :cond_6
    const/4 v0, 0x3

    return v0

    .line 60
    :cond_7
    :goto_0
    const/16 v0, 0xd

    return v0
.end method

.method public static convertVideoOperationCode(I)I
    .locals 1
    .param p0, "code"    # I

    .line 68
    const/16 v0, 0x64

    add-int/2addr v0, p0

    return v0
.end method

.method public static getTargetDisplayId(Ljava/lang/String;)I
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, "displayId":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 24
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 25
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/speech/XAppSpeechUtils;->getTargetDisplayId(Lorg/json/JSONObject;)I

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 28
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 26
    :catch_0
    move-exception v1

    .line 27
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 30
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_0
    return v0
.end method

.method public static getTargetDisplayId(Lorg/json/JSONObject;)I
    .locals 4
    .param p0, "object"    # Lorg/json/JSONObject;

    .line 34
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isHasMultiScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    :try_start_0
    const-string v0, "display_location"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "display_location"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 41
    :cond_0
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "SpeechUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTargetDisplayId error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
