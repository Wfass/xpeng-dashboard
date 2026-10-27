.class public final synthetic Lcom/android/car/ui/preference/-$$Lambda$CarUiDialogFragment$SpCk5feImT4yEJooxbC98MBarQI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field private final synthetic f$0:Lcom/android/car/ui/preference/CarUiDialogFragment;

.field private final synthetic f$1:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/ui/preference/CarUiDialogFragment;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/ui/preference/-$$Lambda$CarUiDialogFragment$SpCk5feImT4yEJooxbC98MBarQI;->f$0:Lcom/android/car/ui/preference/CarUiDialogFragment;

    iput-object p2, p0, Lcom/android/car/ui/preference/-$$Lambda$CarUiDialogFragment$SpCk5feImT4yEJooxbC98MBarQI;->f$1:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/car/ui/preference/-$$Lambda$CarUiDialogFragment$SpCk5feImT4yEJooxbC98MBarQI;->f$0:Lcom/android/car/ui/preference/CarUiDialogFragment;

    iget-object v1, p0, Lcom/android/car/ui/preference/-$$Lambda$CarUiDialogFragment$SpCk5feImT4yEJooxbC98MBarQI;->f$1:Landroid/app/Dialog;

    invoke-virtual {v0, v1, p1}, Lcom/android/car/ui/preference/CarUiDialogFragment;->lambda$onCreateDialog$0$CarUiDialogFragment(Landroid/app/Dialog;Landroid/content/DialogInterface;)V

    return-void
.end method
