.class public final synthetic Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$uxLJ7o_d9nQdN3rNrMF4CtxRyQI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/xui/app/XDialog;

.field public final synthetic f$1:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xui/app/XDialog;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$uxLJ7o_d9nQdN3rNrMF4CtxRyQI;->f$0:Lcom/xiaopeng/xui/app/XDialog;

    iput-object p2, p0, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$uxLJ7o_d9nQdN3rNrMF4CtxRyQI;->f$1:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$uxLJ7o_d9nQdN3rNrMF4CtxRyQI;->f$0:Lcom/xiaopeng/xui/app/XDialog;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$uxLJ7o_d9nQdN3rNrMF4CtxRyQI;->f$1:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xui/app/XDialog;->lambda$setOnDismissListener$8$XDialog(Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface;)V

    return-void
.end method
