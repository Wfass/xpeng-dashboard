.class public final synthetic Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$lR33Z2gAVQ3UaS2VfBXMw0Gq9TY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$lR33Z2gAVQ3UaS2VfBXMw0Gq9TY;->f$0:Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$lR33Z2gAVQ3UaS2VfBXMw0Gq9TY;->f$0:Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;

    check-cast p1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->lambda$observeData$30$CarBodyManagerImpl(Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;)V

    return-void
.end method
