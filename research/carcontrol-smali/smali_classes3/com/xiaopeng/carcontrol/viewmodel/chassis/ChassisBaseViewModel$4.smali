.class Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel$4;
.super Landroid/database/ContentObserver;
.source "ChassisBaseViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;Landroid/os/Handler;)V
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

    .line 229
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel$4;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;

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

    .line 232
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    const-string p2, "trailer_hook_sw"

    .line 233
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 234
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, p1, v0}, Lcom/xiaopeng/carcontrol/provider/CarControl$Quick;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 235
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel$4;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->handleTtmSwitchStatusChanged(I)V

    goto :goto_0

    :cond_0
    const-string p2, "trailer_mode_sw"

    .line 236
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 237
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, p1, v0}, Lcom/xiaopeng/carcontrol/provider/CarControl$Quick;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    move v0, p2

    .line 238
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel$4;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisBaseViewModel;->handleTrailerModeChanged(Z)V

    :cond_2
    :goto_0
    return-void
.end method
