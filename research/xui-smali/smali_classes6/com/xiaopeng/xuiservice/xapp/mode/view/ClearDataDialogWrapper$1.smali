.class Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper$1;
.super Ljava/lang/Object;
.source "ClearDataDialogWrapper.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;->ensureClearAppDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;

    .line 69
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 1
    .param p1, "dialog"    # Lcom/xiaopeng/xui/app/XDialog;
    .param p2, "which"    # I

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;->access$000(Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    .line 73
    return-void
.end method
