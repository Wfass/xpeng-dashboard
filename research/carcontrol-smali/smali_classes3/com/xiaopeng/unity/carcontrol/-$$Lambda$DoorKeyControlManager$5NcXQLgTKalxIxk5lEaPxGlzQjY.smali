.class public final synthetic Lcom/xiaopeng/unity/carcontrol/-$$Lambda$DoorKeyControlManager$5NcXQLgTKalxIxk5lEaPxGlzQjY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/unity/carcontrol/DoorKeyControlManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/DoorKeyControlManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$DoorKeyControlManager$5NcXQLgTKalxIxk5lEaPxGlzQjY;->f$0:Lcom/xiaopeng/unity/carcontrol/DoorKeyControlManager;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$DoorKeyControlManager$5NcXQLgTKalxIxk5lEaPxGlzQjY;->f$0:Lcom/xiaopeng/unity/carcontrol/DoorKeyControlManager;

    check-cast p1, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/unity/carcontrol/DoorKeyControlManager;->lambda$observeData$0$DoorKeyControlManager(Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;)V

    return-void
.end method
