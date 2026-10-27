.class public final synthetic Lcom/xiaopeng/lludancemanager/viewmodel/-$$Lambda$LluDanceViewModel$McuCallbackImplForLlu$b1XL9G93BAtwMS5X2hReTXH-gwk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel$McuCallbackImplForLlu;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel$McuCallbackImplForLlu;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/-$$Lambda$LluDanceViewModel$McuCallbackImplForLlu$b1XL9G93BAtwMS5X2hReTXH-gwk;->f$0:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel$McuCallbackImplForLlu;

    iput p2, p0, Lcom/xiaopeng/lludancemanager/viewmodel/-$$Lambda$LluDanceViewModel$McuCallbackImplForLlu$b1XL9G93BAtwMS5X2hReTXH-gwk;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/-$$Lambda$LluDanceViewModel$McuCallbackImplForLlu$b1XL9G93BAtwMS5X2hReTXH-gwk;->f$0:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel$McuCallbackImplForLlu;

    iget v1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/-$$Lambda$LluDanceViewModel$McuCallbackImplForLlu$b1XL9G93BAtwMS5X2hReTXH-gwk;->f$1:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel$McuCallbackImplForLlu;->lambda$onIgStatusChanged$0$LluDanceViewModel$McuCallbackImplForLlu(I)V

    return-void
.end method
