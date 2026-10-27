.class Lcom/xiaopeng/xui/vui/VuiRecyclerView$1;
.super Ljava/lang/Object;
.source "VuiRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/vui/VuiRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/vui/VuiRecyclerView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    .line 115
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$1;->this$0:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$1;->this$0:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->access$000(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Lcom/xiaopeng/vui/commons/IVuiEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$1;->this$0:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->access$100(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$1;->this$0:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->access$000(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Lcom/xiaopeng/vui/commons/IVuiEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$1;->this$0:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-static {v1}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->access$100(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$1;->this$0:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/vui/commons/IVuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 121
    :cond_0
    return-void
.end method
