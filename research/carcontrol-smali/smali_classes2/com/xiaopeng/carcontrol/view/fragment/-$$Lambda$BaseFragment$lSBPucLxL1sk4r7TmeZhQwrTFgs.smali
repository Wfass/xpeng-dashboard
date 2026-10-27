.class public final synthetic Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$BaseFragment$lSBPucLxL1sk4r7TmeZhQwrTFgs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public synthetic constructor <init>(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$BaseFragment$lSBPucLxL1sk4r7TmeZhQwrTFgs;->f$0:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$BaseFragment$lSBPucLxL1sk4r7TmeZhQwrTFgs;->f$0:Landroid/content/DialogInterface$OnDismissListener;

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->lambda$showDialog$3(Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface;)V

    return-void
.end method
