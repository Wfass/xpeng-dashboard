.class public final synthetic Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ServiceViewManager$HiJb6FP1mNZA-rCYgNsi2GnaW_I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ServiceViewManager$HiJb6FP1mNZA-rCYgNsi2GnaW_I;->f$0:Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ServiceViewManager$HiJb6FP1mNZA-rCYgNsi2GnaW_I;->f$0:Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->lambda$observeData$10$ServiceViewManager(Ljava/lang/Integer;)V

    return-void
.end method
