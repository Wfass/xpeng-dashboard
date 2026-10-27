.class public final synthetic Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuViewModel$jb6VZhsP7SuFV4dIFlZ63Js0Ces;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuViewModel$jb6VZhsP7SuFV4dIFlZ63Js0Ces;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iput-boolean p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuViewModel$jb6VZhsP7SuFV4dIFlZ63Js0Ces;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuViewModel$jb6VZhsP7SuFV4dIFlZ63Js0Ces;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuViewModel$jb6VZhsP7SuFV4dIFlZ63Js0Ces;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->lambda$setParkDropdownMenuEnable$0$VcuViewModel(Z)V

    return-void
.end method
