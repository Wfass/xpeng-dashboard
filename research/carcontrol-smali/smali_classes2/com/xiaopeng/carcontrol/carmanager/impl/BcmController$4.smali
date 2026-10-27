.class Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController$4;
.super Landroid/database/ContentObserver;
.source "BcmController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;->registerContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "x0"
        }
    .end annotation

    .line 6374
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController$4;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selfChange",
            "uri"
        }
    .end annotation

    .line 6377
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "unlock_response"

    .line 6379
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "onChange: "

    const-string v3, "BcmController"

    if-eqz v1, :cond_0

    .line 6380
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget v1, Lcom/xiaopeng/carcontrol/GlobalConstant$DEFAULT;->UNLOCK_RESPONSE:I

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 6382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", unlock response ="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6383
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController$4;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;->access$102(Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 6384
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController$4;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;->handleUnlockResponse(I)V

    goto/16 :goto_0

    :cond_0
    const-string/jumbo v0, "win_high_spd_notify"

    .line 6385
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ", newValue="

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 6386
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController$4;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "win_high_spd"

    invoke-static {v0, v5, v4}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;->access$202(Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 6388
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController$4;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;->access$200(Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6389
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController$4;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;->access$200(Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;->access$300(Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;Z)V

    goto :goto_0

    :cond_1
    const-string v0, "child_mode_sw"

    .line 6390
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 6391
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    move v4, v0

    .line 6393
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "selfChange: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6394
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController$4;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;

    invoke-static {p1, v4}, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;->access$400(Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;Z)V

    :cond_3
    :goto_0
    return-void
.end method
