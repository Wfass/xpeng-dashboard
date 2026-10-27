.class final Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$DoorBossKeyListener;
.super Lcom/xiaopeng/IXPKeyListener$Stub;
.source "ServiceViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DoorBossKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 5945
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$DoorBossKeyListener;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-direct {p0}, Lcom/xiaopeng/IXPKeyListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$1;)V
    .locals 0

    .line 5945
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$DoorBossKeyListener;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V

    return-void
.end method


# virtual methods
.method public notify(Landroid/view/KeyEvent;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyEvent",
            "s"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 5951
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 v0, 0x444

    const/4 v1, 0x1

    if-eq p2, v0, :cond_3

    const/16 v0, 0x445

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 5967
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 5972
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$DoorBossKeyListener;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$5600(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V

    goto :goto_0

    .line 5969
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$DoorBossKeyListener;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$5500(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V

    goto :goto_0

    .line 5953
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_5

    if-eq p2, v1, :cond_4

    goto :goto_0

    .line 5960
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$DoorBossKeyListener;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$5600(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V

    goto :goto_0

    .line 5955
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-lez p1, :cond_6

    .line 5956
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$DoorBossKeyListener;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$5500(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V

    :cond_6
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
