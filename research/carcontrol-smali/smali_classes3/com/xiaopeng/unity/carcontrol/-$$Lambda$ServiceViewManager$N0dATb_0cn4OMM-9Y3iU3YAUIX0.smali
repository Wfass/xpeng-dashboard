.class public final synthetic Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ServiceViewManager$N0dATb_0cn4OMM-9Y3iU3YAUIX0;
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

    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ServiceViewManager$N0dATb_0cn4OMM-9Y3iU3YAUIX0;->f$0:Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ServiceViewManager$N0dATb_0cn4OMM-9Y3iU3YAUIX0;->f$0:Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->lambda$observeData$11$ServiceViewManager(Ljava/lang/String;)V

    return-void
.end method
