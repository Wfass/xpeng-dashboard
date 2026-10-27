.class Lcom/xiaopeng/xuiservice/userscene/UserSceneService$1;
.super Ljava/lang/Object;
.source "UserSceneService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService$IMiniNaviInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/userscene/UserSceneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    .line 429
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$1;->this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateNaviInfo(Ljava/lang/String;)V
    .locals 4
    .param p1, "naviInfo"    # Ljava/lang/String;

    .line 432
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    const/4 v0, 0x0

    .line 435
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 438
    goto :goto_0

    .line 436
    :catch_0
    move-exception v1

    .line 437
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 439
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$1;->this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    const-string v2, "msgType"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;->access$002(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;I)I

    .line 441
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    return-void
.end method
