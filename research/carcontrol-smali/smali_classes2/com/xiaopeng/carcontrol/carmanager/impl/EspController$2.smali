.class Lcom/xiaopeng/carcontrol/carmanager/impl/EspController$2;
.super Landroid/database/ContentObserver;
.source "EspController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->registerContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;Landroid/os/Handler;)V
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

    .line 622
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
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

    .line 625
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    const-string p2, "esp_sw_notify"

    .line 627
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "onChange: "

    const-string v1, "EspController"

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 628
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v3, "esp_sw"

    invoke-static {p2, v3, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p2

    .line 630
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", esp sw="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->access$202(Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 632
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->access$300(Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;Z)V

    goto :goto_0

    :cond_0
    const-string p2, "avh_sw_notify"

    .line 633
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 634
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v3, "avh_sw"

    invoke-static {p2, v3, v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p2

    .line 636
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", avh sw="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->access$402(Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 638
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;->access$500(Lcom/xiaopeng/carcontrol/carmanager/impl/EspController;Z)V

    :cond_1
    :goto_0
    return-void
.end method
