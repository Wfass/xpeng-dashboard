.class Lcom/xiaopeng/libcarcontrol/CarControlManager$2;
.super Landroid/database/ContentObserver;
.source "CarControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/libcarcontrol/CarControlManager;->registerObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/libcarcontrol/CarControlManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/libcarcontrol/CarControlManager;Landroid/os/Handler;)V
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

    .line 723
    iput-object p1, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager$2;->this$0:Lcom/xiaopeng/libcarcontrol/CarControlManager;

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

    if-nez p2, :cond_0

    return-void

    .line 730
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChange: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarControlManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 736
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "left_charge_port_state"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, -0x1

    if-nez p2, :cond_3

    const-string p2, "right_charge_port_state"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 743
    :cond_2
    iget-object p2, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager$2;->this$0:Lcom/xiaopeng/libcarcontrol/CarControlManager;

    const/4 v1, 0x0

    .line 744
    invoke-static {p2}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$2500(Lcom/xiaopeng/libcarcontrol/CarControlManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, v0}, Lcom/xiaopeng/carcontrol/provider/CarControl$Quick;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 743
    invoke-static {p2, v1, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$2600(Lcom/xiaopeng/libcarcontrol/CarControlManager;ZI)V

    goto :goto_0

    .line 738
    :cond_3
    iget-object p2, p0, Lcom/xiaopeng/libcarcontrol/CarControlManager$2;->this$0:Lcom/xiaopeng/libcarcontrol/CarControlManager;

    const/4 v1, 0x1

    .line 739
    invoke-static {p2}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$2500(Lcom/xiaopeng/libcarcontrol/CarControlManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, v0}, Lcom/xiaopeng/carcontrol/provider/CarControl$Quick;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 738
    invoke-static {p2, v1, p1}, Lcom/xiaopeng/libcarcontrol/CarControlManager;->access$2600(Lcom/xiaopeng/libcarcontrol/CarControlManager;ZI)V

    :goto_0
    return-void
.end method
