.class Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController$2;
.super Landroid/database/ContentObserver;
.source "XpuController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;-><init>(Landroid/car/Car;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;Landroid/os/Handler;)V
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

    .line 95
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;

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
            "b",
            "uri"
        }
    .end annotation

    .line 98
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    const-string p2, "XPILOT_PRIVACY_EXPERIENCE_SW"

    .line 99
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", value = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XpuController"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 104
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->updateXpilotPrivacyStateToCarService(Z)V

    .line 105
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->access$100(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;)Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setXpilotUserExperiencePlanState(Z)V

    :cond_1
    return-void
.end method
