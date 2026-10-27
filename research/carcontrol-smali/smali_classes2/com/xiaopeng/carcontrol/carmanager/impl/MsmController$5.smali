.class Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController$5;
.super Landroid/database/ContentObserver;
.source "MsmController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->registerContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;Landroid/os/Handler;)V
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

    .line 4302
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController$5;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
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

    .line 4305
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    const-string p2, "esb_notify"

    .line 4307
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4308
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController$5;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "esb"

    invoke-static {v0, v2, v1}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->access$702(Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 4310
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChange: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", newValue="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController$5;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->access$700(Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MsmController"

    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4311
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController$5;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->access$700(Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->access$800(Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;I)V

    :cond_0
    return-void
.end method
