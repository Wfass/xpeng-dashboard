.class public final synthetic Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$BcmCallbackImpl$PkskL3j_JPYRa_KPvD8mGT-Mvuo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$BcmCallbackImpl$PkskL3j_JPYRa_KPvD8mGT-Mvuo;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$BcmCallbackImpl$PkskL3j_JPYRa_KPvD8mGT-Mvuo;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$BcmCallbackImpl;->lambda$onCwcChargeErrorStateChanged$0$ServiceViewModel$BcmCallbackImpl()V

    return-void
.end method
