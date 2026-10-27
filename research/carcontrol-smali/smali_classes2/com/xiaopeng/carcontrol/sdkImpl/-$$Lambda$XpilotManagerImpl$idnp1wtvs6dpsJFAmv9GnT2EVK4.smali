.class public final synthetic Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$idnp1wtvs6dpsJFAmv9GnT2EVK4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$idnp1wtvs6dpsJFAmv9GnT2EVK4;->f$0:Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$XpilotManagerImpl$idnp1wtvs6dpsJFAmv9GnT2EVK4;->f$0:Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;

    check-cast p1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/sdkImpl/XpilotManagerImpl;->lambda$observeData$11$XpilotManagerImpl(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V

    return-void
.end method
