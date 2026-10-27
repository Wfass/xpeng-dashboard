.class public final synthetic Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$DoorKeyControlFragment$XayRJt47GhSWlqbxflFiCQOs-bc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/view/fragment/DoorKeyControlFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/view/fragment/DoorKeyControlFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$DoorKeyControlFragment$XayRJt47GhSWlqbxflFiCQOs-bc;->f$0:Lcom/xiaopeng/carcontrol/view/fragment/DoorKeyControlFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$DoorKeyControlFragment$XayRJt47GhSWlqbxflFiCQOs-bc;->f$0:Lcom/xiaopeng/carcontrol/view/fragment/DoorKeyControlFragment;

    check-cast p1, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/DoorKeyControlFragment;->lambda$new$2$DoorKeyControlFragment(Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;)V

    return-void
.end method
