.class public final synthetic Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$BUOF95ThcwFO7LR0WH5eu76CN-A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl$OnStatusChangedListener;


# instance fields
.field public final synthetic f$0:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/MutableLiveData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$BUOF95ThcwFO7LR0WH5eu76CN-A;->f$0:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public final onStatusChanged(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatStatus;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$BUOF95ThcwFO7LR0WH5eu76CN-A;->f$0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
