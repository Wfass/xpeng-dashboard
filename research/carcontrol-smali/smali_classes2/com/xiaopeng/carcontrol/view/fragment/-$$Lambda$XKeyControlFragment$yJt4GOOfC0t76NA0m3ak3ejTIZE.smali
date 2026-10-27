.class public final synthetic Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$XKeyControlFragment$yJt4GOOfC0t76NA0m3ak3ejTIZE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/view/fragment/XKeyControlFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/view/fragment/XKeyControlFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$XKeyControlFragment$yJt4GOOfC0t76NA0m3ak3ejTIZE;->f$0:Lcom/xiaopeng/carcontrol/view/fragment/XKeyControlFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$XKeyControlFragment$yJt4GOOfC0t76NA0m3ak3ejTIZE;->f$0:Lcom/xiaopeng/carcontrol/view/fragment/XKeyControlFragment;

    check-cast p1, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/XKeyControlFragment;->lambda$new$0$XKeyControlFragment(Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;)V

    return-void
.end method
