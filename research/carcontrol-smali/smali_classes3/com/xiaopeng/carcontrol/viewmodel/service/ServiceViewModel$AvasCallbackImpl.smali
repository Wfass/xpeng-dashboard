.class Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$AvasCallbackImpl;
.super Ljava/lang/Object;
.source "ServiceViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IAvasController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AvasCallbackImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$1;)V
    .locals 0

    .line 5551
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$AvasCallbackImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvasLowSpdChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 5556
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasSmartControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasSmartControl;->setSettingLowSpdEnable()V

    :cond_0
    return-void
.end method
