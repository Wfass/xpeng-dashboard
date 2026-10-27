.class public final synthetic Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$XOGX5ABPCfcBQd5-8VMosXUVZsA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$XOGX5ABPCfcBQd5-8VMosXUVZsA;->f$0:Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$SeatManagerImpl$XOGX5ABPCfcBQd5-8VMosXUVZsA;->f$0:Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/sdkImpl/SeatManagerImpl;->lambda$observeData$42$SeatManagerImpl(Ljava/lang/Boolean;)V

    return-void
.end method
