.class Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine$1;
.super Ljava/lang/Object;
.source "XAppNavigationModeEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;->refreshNaviBar(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;

.field final synthetic val$screenId:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;

    iput p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine$1;->val$screenId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;

    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine$1;->val$screenId:I

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;->access$000(Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;I)V

    .line 58
    return-void
.end method
