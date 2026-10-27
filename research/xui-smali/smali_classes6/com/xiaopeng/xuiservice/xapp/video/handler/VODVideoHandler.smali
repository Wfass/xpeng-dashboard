.class public Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;
.super Ljava/lang/Object;
.source "VODVideoHandler.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;
.implements Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$IVodCommandCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "VODVideoHandler"


# instance fields
.field private mCallbackHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuiservice/xapp/video/Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mId:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mVodManagerServer:Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mId:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mPackageName:Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->init()V

    .line 35
    return-void
.end method

.method private getCode(I)I
    .locals 2
    .param p1, "vodCode"    # I

    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, "result":I
    const/16 v1, -0x140

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    goto :goto_0

    .line 264
    :pswitch_0
    const/4 v0, 0x5

    .line 265
    goto :goto_0

    .line 260
    :pswitch_1
    const/4 v0, 0x3

    .line 261
    goto :goto_0

    .line 277
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 270
    :cond_0
    :pswitch_3
    const/4 v0, 0x2

    .line 271
    nop

    .line 281
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch -0x14d
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x135
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x12f
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private init()V
    .locals 1

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mCallbackHashMap:Ljava/util/HashMap;

    .line 39
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mVodManagerServer:Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;

    .line 40
    return-void
.end method

.method private registerCallback()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mVodManagerServer:Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->setVodCommandCallback(Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer$IVodCommandCallback;)V

    .line 50
    return-void
.end method


# virtual methods
.method public backward(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 116
    const-string/jumbo v0, "vodPlayFB"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->setCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mVodManagerServer:Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mId:Ljava/lang/String;

    const/16 v2, 0x3a98

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->onPlayFastBackward(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method

.method public clarityDown(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 171
    const-string/jumbo v0, "vodPlayResolution"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->setCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mVodManagerServer:Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mId:Ljava/lang/String;

    const-string v2, "DOWN"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->onPlaySetResolution(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void
.end method

.method public claritySet(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 177
    const-string/jumbo v0, "vodPlayResolution"

    invoke-virtual {p0, v0, p2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->setCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mVodManagerServer:Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->onPlaySetResolution(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void
.end method

.method public clarityUP(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 165
    const-string/jumbo v0, "vodPlayResolution"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->setCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mVodManagerServer:Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mId:Ljava/lang/String;

    const-string v2, "UP"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->onPlaySetResolution(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void
.end method

.method public collect(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 183
    const-string/jumbo v0, "vodPlayAddFavor"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->setCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mVodManagerServer:Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->onPlayAddFavor(Ljava/lang/String;Z)I

    .line 185
    return-void
.end method

.method public collectCancel(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 189
    const-string/jumbo v0, "vodPlayAddFavor"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->setCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mVodManagerServer:Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->onPlayAddFavor(Ljava/lang/String;Z)I

    .line 191
    return-void
.end method

.method public end(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 159
    const-string/jumbo v0, "vodPlayExit"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->setCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mVodManagerServer:Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->onPlayExit(Ljava/lang/String;)I

    .line 161
    return-void
.end method

.method public forward(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 110
    const-string/jumbo v0, "vodPlayFF"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->setCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mVodManagerServer:Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mId:Ljava/lang/String;

    const/16 v2, 0x3a98

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->onPlayFastForward(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public launchApp(Ljava/lang/String;I)V
    .locals 4
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "displayId"    # I

    .line 289
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getLauncherIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 290
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 291
    const-string v1, "VODVideoHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchApp with getLauncherIntent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v1, "resizeable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 293
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 294
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, p2, v3}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->startActivity(Landroid/content/Context;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 296
    :cond_0
    return-void
.end method

.method public next(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 97
    const-string v0, "VODVideoHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "next packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string/jumbo v0, "vodPlayNext"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->setCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mVodManagerServer:Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->onPlayNext(Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method public onVodCommand(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "result"    # [Ljava/lang/String;

    .line 231
    const-string v0, "VODVideoHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVodCommand id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " &param:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 234
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 235
    .local v0, "object":Lorg/json/JSONObject;
    const-string v1, "opResult"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 236
    .local v1, "opResult":Lorg/json/JSONObject;
    const-string v2, "opName"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "cmd":Ljava/lang/String;
    const-string v3, "opCode"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 238
    .local v3, "code":I
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 239
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mCallbackHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 240
    .local v4, "callback":Lcom/xiaopeng/xuiservice/xapp/video/Callback;
    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->getCode(I)I

    move-result v5

    .line 241
    .local v5, "uniCode":I
    if-eqz v4, :cond_0

    .line 242
    const-string v6, "VODVideoHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onVodCommand callback uniCode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-interface {v4, v5}, Lcom/xiaopeng/xuiservice/xapp/video/Callback;->onResult(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .end local v0    # "object":Lorg/json/JSONObject;
    .end local v1    # "opResult":Lorg/json/JSONObject;
    .end local v2    # "cmd":Ljava/lang/String;
    .end local v3    # "code":I
    .end local v4    # "callback":Lcom/xiaopeng/xuiservice/xapp/video/Callback;
    .end local v5    # "uniCode":I
    :cond_0
    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 250
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 129
    const-string/jumbo v0, "vodPlayPause"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->setCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mVodManagerServer:Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->onPlayPause(Ljava/lang/String;)I

    .line 131
    return-void
.end method

.method public play(ILjava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 6
    .param p1, "displayId"    # I
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 54
    const-string/jumbo v0, "vodSearch"

    invoke-virtual {p0, v0, p3}, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->setCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 56
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, "object":Lorg/json/JSONObject;
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 58
    .local v1, "data":Lorg/json/JSONObject;
    const-string v2, "keyword"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "keyword":Ljava/lang/String;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mVodManagerServer:Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->onSearch(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 60
    .local v3, "code":I
    const/16 v4, -0x12c

    if-eq v3, v4, :cond_0

    .line 61
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getTopPackage(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 62
    :cond_0
    const-string v4, "VODVideoHandler"

    const-string v5, "client not register, launch with keyword"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, v2, p1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->launchApp(Ljava/lang/String;I)V

    .line 64
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Lcom/xiaopeng/xuiservice/xapp/video/Callback;->onResult(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v0    # "object":Lorg/json/JSONObject;
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v2    # "keyword":Ljava/lang/String;
    .end local v3    # "code":I
    :cond_1
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 69
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public play(ILjava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "programName"    # Ljava/lang/String;
    .param p3, "artistName"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 73
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 75
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "programName"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string v1, "artistName"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 80
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    const-string/jumbo v1, "vodSearchAndPlay"

    invoke-virtual {p0, v1, p4}, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->setCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 81
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mVodManagerServer:Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->onSearchAndPlay(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method

.method public prev(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 91
    const-string/jumbo v0, "vodPlayPrevious"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->setCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mVodManagerServer:Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->onPlayPrevious(Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method public resume(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 135
    const-string/jumbo v0, "vodPlayPlay"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->setCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mVodManagerServer:Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->onPlayPlay(Ljava/lang/String;)I

    .line 137
    return-void
.end method

.method public set(ILcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 104
    const-string/jumbo v0, "vodPlayEpisode"

    invoke-virtual {p0, v0, p2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->setCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mVodManagerServer:Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mId:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->onPlayEpisode(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method

.method public setBarrageClose(ZLcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 2
    .param p1, "close"    # Z
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 225
    const-string/jumbo v0, "vodPlayCloseBarrage"

    invoke-virtual {p0, v0, p2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->setCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mVodManagerServer:Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->onPlayCloseBarrage(Ljava/lang/String;Z)I

    .line 227
    return-void
.end method

.method public setCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 3
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 43
    const-string v0, "VODVideoHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallback packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " &eventId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mCallbackHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->registerCallback()V

    .line 46
    return-void
.end method

.method public setMediaPlayMode(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 207
    const-string/jumbo v0, "vodAudioMode"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->setCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mVodManagerServer:Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->onPlayAudioMode(Ljava/lang/String;)I

    .line 209
    return-void
.end method

.method public setTime(DLcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 4
    .param p1, "time"    # D
    .param p3, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 122
    const-string/jumbo v0, "vodPlaySeek"

    invoke-virtual {p0, v0, p3}, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->setCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 123
    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, p1

    double-to-int v0, v0

    .line 124
    .local v0, "timeValue":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mVodManagerServer:Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->onPlaySeekTo(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void
.end method

.method public setVideoPlayMode(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 213
    const-string/jumbo v0, "vodVideoMode"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->setCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mVodManagerServer:Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->onPlayVideoMode(Ljava/lang/String;)I

    .line 215
    return-void
.end method

.method public skipAllModeSet(ZLcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 2
    .param p1, "skipEnable"    # Z
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 219
    const-string/jumbo v0, "vodPlaySkipHeadTailSet"

    invoke-virtual {p0, v0, p2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->setCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mVodManagerServer:Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->onPlaySkipVideoHeadTileSet(Ljava/lang/String;Z)I

    .line 221
    return-void
.end method

.method public skipBegin(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 195
    const-string/jumbo v0, "vodPlaySkipHead"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->setCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mVodManagerServer:Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->onPlaySkipVideoHead(Ljava/lang/String;)I

    .line 197
    return-void
.end method

.method public skipEnd(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 201
    const-string/jumbo v0, "vodPlaySkipTail"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->setCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mVodManagerServer:Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->onPlaySkipVideoTail(Ljava/lang/String;)I

    .line 203
    return-void
.end method

.method public speedDown(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 147
    const-string/jumbo v0, "vodPlaySpeed"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->setCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mVodManagerServer:Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mId:Ljava/lang/String;

    const-string v2, "DOWN"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->onPlaySetSpeed(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void
.end method

.method public speedSet(DLcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 3
    .param p1, "speed"    # D
    .param p3, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 153
    const-string/jumbo v0, "vodPlaySpeed"

    invoke-virtual {p0, v0, p3}, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->setCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mVodManagerServer:Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mId:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->onPlaySetSpeed(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void
.end method

.method public speedUp(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 141
    const-string/jumbo v0, "vodPlaySpeed"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->setCallback(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mVodManagerServer:Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/VODVideoHandler;->mId:Ljava/lang/String;

    const-string v2, "UP"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/opensdk/manager/VodManagerServer;->onPlaySetSpeed(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method
