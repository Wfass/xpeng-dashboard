.class public final synthetic Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$0npHt66oUxspIxJNhgO6qa49Eyw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$0npHt66oUxspIxJNhgO6qa49Eyw;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$0npHt66oUxspIxJNhgO6qa49Eyw;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->lambda$showReadyDisableDialog$13$ServiceViewModel()V

    return-void
.end method
