.class public final synthetic Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$DriveControlManagerImpl$BXM9d4oqGS1Bm56XHSqtxYk4XMM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/sdkImpl/DriveControlManagerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/sdkImpl/DriveControlManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$DriveControlManagerImpl$BXM9d4oqGS1Bm56XHSqtxYk4XMM;->f$0:Lcom/xiaopeng/carcontrol/sdkImpl/DriveControlManagerImpl;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$DriveControlManagerImpl$BXM9d4oqGS1Bm56XHSqtxYk4XMM;->f$0:Lcom/xiaopeng/carcontrol/sdkImpl/DriveControlManagerImpl;

    check-cast p1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/sdkImpl/DriveControlManagerImpl;->lambda$observeData$0$DriveControlManagerImpl(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;)V

    return-void
.end method
