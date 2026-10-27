.class public final synthetic Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$epxF7Isj9CMzoza5cTrAzJ8iTGg;
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

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$epxF7Isj9CMzoza5cTrAzJ8iTGg;->f$0:Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$CarBodyManagerImpl$epxF7Isj9CMzoza5cTrAzJ8iTGg;->f$0:Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/sdkImpl/CarBodyManagerImpl;->lambda$observeData$11$CarBodyManagerImpl(Ljava/lang/Integer;)V

    return-void
.end method
