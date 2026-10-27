.class Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController$3;
.super Landroid/database/ContentObserver;
.source "BcmController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;-><init>(Landroid/car/Car;)V
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

    .line 149
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController$3;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selfChange"
        }
    .end annotation

    .line 152
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "screen_state_control_3"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rear screen state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BcmController"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController$3;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;->access$000(Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;I)V

    return-void
.end method
