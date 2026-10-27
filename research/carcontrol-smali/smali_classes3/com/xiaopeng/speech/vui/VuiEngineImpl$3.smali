.class Lcom/xiaopeng/speech/vui/VuiEngineImpl$3;
.super Lcom/xiaopeng/screen/ScreenTaskListener;
.source "VuiEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiEngineImpl;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$3;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-direct {p0}, Lcom/xiaopeng/screen/ScreenTaskListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityChanged(ILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "component"

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityChanged, screenId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VuiEngine"

    invoke-static {v2, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getOS5TopRunningPackageName()V

    .line 236
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 237
    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 239
    :try_start_0
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 240
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 241
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityChanged, object: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 244
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 245
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$3;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$300(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "areaType"

    const-string v4, ""

    .line 246
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getAreaLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getAppAreaLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 248
    invoke-static {v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setAppAreaLocation(Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$3;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$400(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)V

    goto :goto_1

    .line 251
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 257
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public onEventChanged(IILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "packageName"

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEventChanged, event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", prop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", screenId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "VuiEngine"

    invoke-static {v3, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x607

    if-eq v1, p2, :cond_0

    const/16 v1, 0x403

    if-ne v1, p2, :cond_1

    .line 206
    :cond_0
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 208
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 209
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onEventChanged, mPackageName: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$3;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ", ObjPackageName: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    iget-object p3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$3;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {p3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 211
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$3;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {p2, p1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$200(Lcom/xiaopeng/speech/vui/VuiEngineImpl;I)V

    .line 212
    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setSourceDisplayLocation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 228
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
