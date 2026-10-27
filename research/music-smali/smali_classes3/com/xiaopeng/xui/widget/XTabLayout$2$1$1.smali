.class Lcom/xiaopeng/xui/widget/XTabLayout$2$1$1;
.super Ljava/lang/Object;
.source "XTabLayout.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/XTabLayout$OnMoveIndicatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XTabLayout$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/xiaopeng/xui/widget/XTabLayout$2$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XTabLayout$2$1;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$2$1$1;->this$2:Lcom/xiaopeng/xui/widget/XTabLayout$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 5

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout$2$1$1;->this$2:Lcom/xiaopeng/xui/widget/XTabLayout$2$1;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XTabLayout$2$1;->this$1:Lcom/xiaopeng/xui/widget/XTabLayout$2;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XTabLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$200(Lcom/xiaopeng/xui/widget/XTabLayout;)Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout$2$1$1;->this$2:Lcom/xiaopeng/xui/widget/XTabLayout$2$1;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XTabLayout$2$1;->this$1:Lcom/xiaopeng/xui/widget/XTabLayout$2;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XTabLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$200(Lcom/xiaopeng/xui/widget/XTabLayout;)Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$2$1$1;->this$2:Lcom/xiaopeng/xui/widget/XTabLayout$2$1;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XTabLayout$2$1;->this$1:Lcom/xiaopeng/xui/widget/XTabLayout$2;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XTabLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout$2$1$1;->this$2:Lcom/xiaopeng/xui/widget/XTabLayout$2$1;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XTabLayout$2$1;->this$1:Lcom/xiaopeng/xui/widget/XTabLayout$2;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XTabLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v2}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$300(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout$2$1$1;->this$2:Lcom/xiaopeng/xui/widget/XTabLayout$2$1;

    iget-boolean v3, v3, Lcom/xiaopeng/xui/widget/XTabLayout$2$1;->val$change:Z

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListener;->onTabChangeEnd(Lcom/xiaopeng/xui/widget/XTabLayout;IZZ)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 5

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout$2$1$1;->this$2:Lcom/xiaopeng/xui/widget/XTabLayout$2$1;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XTabLayout$2$1;->this$1:Lcom/xiaopeng/xui/widget/XTabLayout$2;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XTabLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$200(Lcom/xiaopeng/xui/widget/XTabLayout;)Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout$2$1$1;->this$2:Lcom/xiaopeng/xui/widget/XTabLayout$2$1;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XTabLayout$2$1;->this$1:Lcom/xiaopeng/xui/widget/XTabLayout$2;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XTabLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$200(Lcom/xiaopeng/xui/widget/XTabLayout;)Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$2$1$1;->this$2:Lcom/xiaopeng/xui/widget/XTabLayout$2$1;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XTabLayout$2$1;->this$1:Lcom/xiaopeng/xui/widget/XTabLayout$2;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/XTabLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout$2$1$1;->this$2:Lcom/xiaopeng/xui/widget/XTabLayout$2$1;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XTabLayout$2$1;->this$1:Lcom/xiaopeng/xui/widget/XTabLayout$2;

    iget-object v2, v2, Lcom/xiaopeng/xui/widget/XTabLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v2}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$300(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout$2$1$1;->this$2:Lcom/xiaopeng/xui/widget/XTabLayout$2$1;

    iget-boolean v3, v3, Lcom/xiaopeng/xui/widget/XTabLayout$2$1;->val$change:Z

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListener;->onTabChangeStart(Lcom/xiaopeng/xui/widget/XTabLayout;IZZ)V

    :cond_0
    return-void
.end method
