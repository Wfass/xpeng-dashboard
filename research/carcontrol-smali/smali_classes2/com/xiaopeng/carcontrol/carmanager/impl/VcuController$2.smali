.class Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController$2;
.super Landroid/database/ContentObserver;
.source "VcuController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;-><init>(Landroid/car/Car;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;Landroid/os/Handler;)V
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

    .line 128
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;

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

    .line 131
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "model_setting_disable"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle AUTO_SHOW_MODEL_SETTING_CONFIG_KE update by provider: isAmbientLightOpen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VcuController"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;->access$100(Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;I)V

    const-string v0, "isSupportVMCControl"

    .line 134
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 136
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;->setVMCRwsSwitch(Z)V

    :cond_0
    return-void
.end method
