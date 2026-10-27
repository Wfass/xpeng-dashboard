.class public final synthetic Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$McuCallbackImpl$nH1-sKqrXbkvTqQ0Ttz5UcjXFro;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$McuCallbackImpl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$McuCallbackImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$McuCallbackImpl$nH1-sKqrXbkvTqQ0Ttz5UcjXFro;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$McuCallbackImpl;

    iput p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$McuCallbackImpl$nH1-sKqrXbkvTqQ0Ttz5UcjXFro;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$McuCallbackImpl$nH1-sKqrXbkvTqQ0Ttz5UcjXFro;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$McuCallbackImpl;

    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$McuCallbackImpl$nH1-sKqrXbkvTqQ0Ttz5UcjXFro;->f$1:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$McuCallbackImpl;->lambda$onRemindWarning$0$ServiceViewModel$McuCallbackImpl(I)V

    return-void
.end method
