.class public final synthetic Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$IVMvEEmuvlZ2kOdstFHHj12gtl0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCloseListener;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xui/app/XDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xui/app/XDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$IVMvEEmuvlZ2kOdstFHHj12gtl0;->f$0:Lcom/xiaopeng/xui/app/XDialog;

    return-void
.end method


# virtual methods
.method public final onClose(Lcom/xiaopeng/xui/widget/dialogview/XDialogView;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$IVMvEEmuvlZ2kOdstFHHj12gtl0;->f$0:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/XDialog;->lambda$initCloseListenerProxy$4$XDialog(Lcom/xiaopeng/xui/widget/dialogview/XDialogView;)Z

    move-result p1

    return p1
.end method
