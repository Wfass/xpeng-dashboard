.class Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$1;
.super Lcom/xiaopeng/screen/ScreenTaskListener;
.source "OtaVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;

    .line 79
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;

    invoke-direct {p0}, Lcom/xiaopeng/screen/ScreenTaskListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityChanged(ILjava/lang/String;)V
    .locals 4
    .param p1, "screenId"    # I
    .param p2, "property"    # Ljava/lang/String;

    .line 82
    if-nez p1, :cond_1

    .line 84
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "component"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "component":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->isHome(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    const-string v1, "OtaVideoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityChanged ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), stop media play"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v0    # "component":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OtaVideoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse json object failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method
