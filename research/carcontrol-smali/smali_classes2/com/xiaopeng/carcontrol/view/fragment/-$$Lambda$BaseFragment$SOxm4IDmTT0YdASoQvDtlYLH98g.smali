.class public final synthetic Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$BaseFragment$SOxm4IDmTT0YdASoQvDtlYLH98g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Landroid/os/CountDownTimer;


# direct methods
.method public synthetic constructor <init>(Landroid/os/CountDownTimer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$BaseFragment$SOxm4IDmTT0YdASoQvDtlYLH98g;->f$0:Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$BaseFragment$SOxm4IDmTT0YdASoQvDtlYLH98g;->f$0:Landroid/os/CountDownTimer;

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->lambda$showCustomConfirmDialog$5(Landroid/os/CountDownTimer;Landroid/content/DialogInterface;)V

    return-void
.end method
