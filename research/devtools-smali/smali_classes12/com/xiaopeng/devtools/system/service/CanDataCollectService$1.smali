.class Lcom/xiaopeng/devtools/system/service/CanDataCollectService$1;
.super Landroid/content/BroadcastReceiver;
.source "CanDataCollectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/system/service/CanDataCollectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$1;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 85
    const-string p2, "CanDataCollectService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive action-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    const-string p2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const v3, 0x7f10009e

    if-nez p2, :cond_1

    const-string p2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 93
    invoke-static {}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fn()Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$1;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    .line 94
    invoke-static {v4}, Lcom/xiaopeng/devtools/utils/t;->cN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    iget-object v1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$1;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    const v4, 0x7f1003ea

    invoke-virtual {v1, v4}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 93
    invoke-virtual {p2, v3, v2}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->setErrorMsg(Ljava/lang/String;)V

    .line 95
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$1;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-static {p1}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->a(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)V

    goto :goto_1

    .line 87
    :cond_1
    :goto_0
    invoke-static {}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fn()Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fo()I

    move-result p1

    const/16 p2, 0x2712

    if-ne p1, p2, :cond_2

    .line 88
    invoke-static {}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fn()Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$1;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    .line 89
    invoke-static {v4}, Lcom/xiaopeng/devtools/utils/t;->cN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    iget-object v1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$1;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    const v4, 0x7f1003f9

    invoke-virtual {v1, v4}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 88
    invoke-virtual {p2, v3, v2}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->setErrorMsg(Ljava/lang/String;)V

    .line 90
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$1;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-static {p1}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->a(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)V

    .line 97
    :cond_2
    :goto_1
    return-void
.end method
