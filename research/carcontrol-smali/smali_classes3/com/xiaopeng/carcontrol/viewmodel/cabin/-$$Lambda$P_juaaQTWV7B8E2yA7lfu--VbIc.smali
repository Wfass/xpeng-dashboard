.class public final synthetic Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$P_juaaQTWV7B8E2yA7lfu--VbIc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$P_juaaQTWV7B8E2yA7lfu--VbIc;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$P_juaaQTWV7B8E2yA7lfu--VbIc;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->handleWindowStateChange()V

    return-void
.end method
