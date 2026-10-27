.class public final synthetic Lcom/xiaopeng/carcontrol/viewmodel/audio/-$$Lambda$AudioViewModel$mB7Qx7TI1tcQmkQvyM-qPJYjQjM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/audio/-$$Lambda$AudioViewModel$mB7Qx7TI1tcQmkQvyM-qPJYjQjM;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;

    return-void
.end method


# virtual methods
.method public final onClick(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/audio/-$$Lambda$AudioViewModel$mB7Qx7TI1tcQmkQvyM-qPJYjQjM;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->lambda$confirmUnmuteMicrophone$3$AudioViewModel(Lcom/xiaopeng/xui/app/XDialog;I)V

    return-void
.end method
