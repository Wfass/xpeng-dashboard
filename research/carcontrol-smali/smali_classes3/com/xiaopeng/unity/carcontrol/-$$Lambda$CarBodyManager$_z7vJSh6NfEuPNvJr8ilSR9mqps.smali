.class public final synthetic Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$_z7vJSh6NfEuPNvJr8ilSR9mqps;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/unity/carcontrol/CarBodyManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/CarBodyManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$_z7vJSh6NfEuPNvJr8ilSR9mqps;->f$0:Lcom/xiaopeng/unity/carcontrol/CarBodyManager;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CarBodyManager$_z7vJSh6NfEuPNvJr8ilSR9mqps;->f$0:Lcom/xiaopeng/unity/carcontrol/CarBodyManager;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/unity/carcontrol/CarBodyManager;->lambda$observeData$16$CarBodyManager(Ljava/lang/Boolean;)V

    return-void
.end method
