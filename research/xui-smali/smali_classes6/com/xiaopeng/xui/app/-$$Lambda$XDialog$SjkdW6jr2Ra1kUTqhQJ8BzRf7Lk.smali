.class public final synthetic Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$SjkdW6jr2Ra1kUTqhQJ8BzRf7Lk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCountDownListener;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xui/app/XDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xui/app/XDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$SjkdW6jr2Ra1kUTqhQJ8BzRf7Lk;->f$0:Lcom/xiaopeng/xui/app/XDialog;

    return-void
.end method


# virtual methods
.method public final onCountDown(Lcom/xiaopeng/xui/widget/dialogview/XDialogView;I)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$SjkdW6jr2Ra1kUTqhQJ8BzRf7Lk;->f$0:Lcom/xiaopeng/xui/app/XDialog;

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xui/app/XDialog;->lambda$initCountDownListenerProxy$5(Lcom/xiaopeng/xui/app/XDialog;Lcom/xiaopeng/xui/widget/dialogview/XDialogView;I)Z

    move-result p1

    return p1
.end method
