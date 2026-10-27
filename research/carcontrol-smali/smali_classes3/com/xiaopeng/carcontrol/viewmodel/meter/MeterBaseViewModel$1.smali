.class Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel$1;
.super Landroid/database/ContentObserver;
.source "MeterBaseViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->registerContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;Landroid/os/Handler;)V
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

    .line 65
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
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

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChange: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MeterBaseViewModel"

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "xp_ecall_enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "key_door"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "key_wheel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 86
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->isEcallAvailable()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->handleEcallAvailableChanged(Z)V

    goto :goto_1

    .line 80
    :pswitch_1
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;

    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->access$000(Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;Ljava/lang/String;)I

    move-result p1

    .line 81
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->handleDoorKeyChanged(I)V

    goto :goto_1

    .line 74
    :pswitch_2
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;

    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->access$000(Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;Ljava/lang/String;)I

    move-result p1

    .line 75
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;->handleXKeyChanged(I)V

    :cond_3
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x61e2c685 -> :sswitch_2
        0x1dd7618e -> :sswitch_1
        0x53bf8ee6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
