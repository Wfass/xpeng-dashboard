.class public final synthetic Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$Byvj310OyRYs470yD9Td4cOmEeE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCountDownListener;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/xui/app/XDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xui/app/XDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$Byvj310OyRYs470yD9Td4cOmEeE;->f$0:Lcom/xiaopeng/xui/app/XDialog;

    return-void
.end method


# virtual methods
.method public final onCountDown(Lcom/xiaopeng/xui/widget/dialogview/XDialogView;I)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xui/app/-$$Lambda$XDialog$Byvj310OyRYs470yD9Td4cOmEeE;->f$0:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xui/app/XDialog;->lambda$initCountDownListenerProxy$5$XDialog(Lcom/xiaopeng/xui/widget/dialogview/XDialogView;I)Z

    move-result p1

    return p1
.end method
