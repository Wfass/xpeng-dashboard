.class Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$8;
.super Landroid/database/ContentObserver;
.source "SpaceCapsuleViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->registerDayNightSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;Landroid/os/Handler;)V
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

    .line 1131
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$8;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
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

    .line 1135
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    const-string p1, "ui_night_mode"

    .line 1136
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "SpaceCapsuleViewModel"

    const-string p2, "mDayNightObserver"

    .line 1137
    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel$8;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->access$1202(Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;Z)Z

    :cond_0
    return-void
.end method
