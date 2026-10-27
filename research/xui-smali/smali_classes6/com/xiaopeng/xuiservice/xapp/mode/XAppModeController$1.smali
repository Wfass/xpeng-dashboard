.class Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController$1;
.super Ljava/lang/Object;
.source "XAppModeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->handleShareEvent(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$subScreenId:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;

    .line 194
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;

    iput p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController$1;->val$subScreenId:I

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;

    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController$1;->val$subScreenId:I

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController$1;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->access$000(Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;ILjava/lang/String;)V

    .line 198
    return-void
.end method
