.class Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel$2;
.super Landroid/database/ContentObserver;
.source "LampBaseViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->registerContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;Landroid/os/Handler;)V
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

    .line 224
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selfChange"
        }
    .end annotation

    .line 227
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/Utils;->getDayNightMode(Landroid/content/Context;)I

    move-result p1

    .line 228
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEY_THEME_TYPE ONCHANGE, currentMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 230
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampBaseViewModel;->setHeadLampGroup(IZ)V

    :cond_0
    return-void
.end method
