.class public final synthetic Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ServiceViewManager$HJwIbwles_XabFRmic1RGOFYW8E;
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

    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ServiceViewManager$HJwIbwles_XabFRmic1RGOFYW8E;->f$0:Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ServiceViewManager$HJwIbwles_XabFRmic1RGOFYW8E;->f$0:Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;

    check-cast p1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->lambda$observeData$7$ServiceViewManager(Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;)V

    return-void
.end method
