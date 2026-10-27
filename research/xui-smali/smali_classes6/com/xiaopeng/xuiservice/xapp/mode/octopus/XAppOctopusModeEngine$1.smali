.class Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine$1;
.super Ljava/lang/Object;
.source "XAppOctopusModeEngine.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->initKeyMapDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;

    .line 178
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 0
    .param p1, "dialog"    # Lcom/xiaopeng/xui/app/XDialog;
    .param p2, "which"    # I

    .line 181
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    .line 182
    return-void
.end method
