.class public final synthetic Lcom/xiaopeng/xui/app/-$$Lambda$XDialogPure$TmTqTT8l_NsTrBnEReCFmPTmjIE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xui/app/XDialogPure;

.field private final synthetic f$1:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xui/app/XDialogPure;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/app/-$$Lambda$XDialogPure$TmTqTT8l_NsTrBnEReCFmPTmjIE;->f$0:Lcom/xiaopeng/xui/app/XDialogPure;

    iput-object p2, p0, Lcom/xiaopeng/xui/app/-$$Lambda$XDialogPure$TmTqTT8l_NsTrBnEReCFmPTmjIE;->f$1:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xui/app/-$$Lambda$XDialogPure$TmTqTT8l_NsTrBnEReCFmPTmjIE;->f$0:Lcom/xiaopeng/xui/app/XDialogPure;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/-$$Lambda$XDialogPure$TmTqTT8l_NsTrBnEReCFmPTmjIE;->f$1:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xui/app/XDialogPure;->lambda$setOnDismissListener$2$XDialogPure(Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface;)V

    return-void
.end method
