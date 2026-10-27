.class public final synthetic Lcom/xiaopeng/unity/carcontrol/-$$Lambda$DriveModeSetManager$crXpu7jGajMFhEXtlct4ygn79As;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$DriveModeSetManager$crXpu7jGajMFhEXtlct4ygn79As;->f$0:Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$DriveModeSetManager$crXpu7jGajMFhEXtlct4ygn79As;->f$0:Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;

    check-cast p1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->lambda$observeData$0$DriveModeSetManager(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;)V

    return-void
.end method
