.class public final synthetic Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$LampManagerImpl$_o2jcZ7iozk-U51AT1_CPWxP9vU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$LampManagerImpl$_o2jcZ7iozk-U51AT1_CPWxP9vU;->f$0:Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$LampManagerImpl$_o2jcZ7iozk-U51AT1_CPWxP9vU;->f$0:Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;

    check-cast p1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;->lambda$observeData$11$LampManagerImpl(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;)V

    return-void
.end method
