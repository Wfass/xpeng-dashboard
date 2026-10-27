.class public final synthetic Lcom/xiaopeng/lludancemanager/viewmodel/-$$Lambda$LluDanceViewModel$KNTvuVKWB8qmY0_AHD0PbTYow3U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/-$$Lambda$LluDanceViewModel$KNTvuVKWB8qmY0_AHD0PbTYow3U;->f$0:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/-$$Lambda$LluDanceViewModel$KNTvuVKWB8qmY0_AHD0PbTYow3U;->f$0:Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;

    check-cast p1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel;->lambda$new$0$LluDanceViewModel(Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;)V

    return-void
.end method
