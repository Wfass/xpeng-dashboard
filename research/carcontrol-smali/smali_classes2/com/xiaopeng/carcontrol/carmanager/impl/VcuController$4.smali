.class Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController$4;
.super Landroid/database/ContentObserver;
.source "VcuController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;->registerContentObserver()V
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

    .line 1805
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController$4;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
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

    .line 1808
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    const-string p2, "new_drive_mode_value"

    .line 1809
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ", Current: "

    const-string v2, "onChange: "

    const-string v3, "VcuController"

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 1810
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2, v4}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    .line 1812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", Pre Drive Mode: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController$4;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;->access$600(Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1813
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController$4;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;->access$602(Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1814
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController$4;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;->access$600(Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;->handleDriveModeUpdate(I)V

    goto :goto_0

    :cond_0
    const-string/jumbo p2, "user_define_drive_info"

    .line 1815
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1816
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", Pre Info: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1819
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController$4;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;->access$702(Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p2, "p_drop_sw"

    .line 1820
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1821
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController$4;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;->access$802(Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1823
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController$4;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;->access$800(Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;->handlePGearMenuRemindState(Z)V

    :cond_2
    :goto_0
    return-void
.end method
