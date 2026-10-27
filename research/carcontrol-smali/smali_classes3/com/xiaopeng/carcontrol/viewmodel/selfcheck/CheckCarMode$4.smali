.class Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$4;
.super Ljava/lang/Object;
.source "CheckCarMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->callAvatar(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

.field final synthetic val$eventId:I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$subId:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$subId",
            "val$eventId",
            "val$pkg"
        }
    .end annotation

    .line 458
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$4;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$4;->val$pkg:Ljava/lang/String;

    iput p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$4;->val$eventId:I

    iput p4, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$4;->val$subId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 461
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 463
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "packageName"

    .line 464
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$4;->val$pkg:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "eventId"

    .line 465
    iget v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$4;->val$eventId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 466
    iget v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$4;->val$subId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const-string v3, "subId"

    .line 467
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v2, "com.xiaopeng.aiavatarservice.APIRouterHelper"

    .line 469
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "callAvatar"

    .line 470
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "param"

    .line 471
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 472
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    .line 473
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$4;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callAvatar success: eventId ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$4;->val$eventId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 475
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
