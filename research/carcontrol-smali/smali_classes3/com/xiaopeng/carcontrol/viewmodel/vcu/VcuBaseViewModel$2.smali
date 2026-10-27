.class Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$2;
.super Landroid/database/ContentObserver;
.source "VcuBaseViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;Landroid/os/Handler;)V
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

    .line 120
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;

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

    .line 123
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "quick_control_ui_resume"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_2

    const-string p2, "set_snow_mode"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 131
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;

    .line 132
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 131
    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->setSnowMode(Z)V

    goto :goto_0

    .line 135
    :cond_2
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;

    .line 136
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p1

    .line 135
    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->access$202(Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;Z)Z

    .line 138
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->access$200(Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->handleQuickControlVisible(Z)V

    :goto_0
    return-void
.end method
