.class Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController$1;
.super Landroid/database/ContentObserver;
.source "CarInfoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;->registerContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;Landroid/os/Handler;)V
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

    .line 122
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController$1;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
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

    .line 125
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    const-string p2, "car_license_plate"

    .line 127
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController$1;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;->access$002(Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChange: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", value ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController$1;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;->access$000(Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CarInfoController"

    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController$1;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;->access$000(Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;->access$100(Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
