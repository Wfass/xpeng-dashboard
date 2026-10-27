.class Lcom/xiaopeng/xui/widget/XTabLayout$2$1;
.super Ljava/lang/Object;
.source "XTabLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XTabLayout$2;->refreshIndicator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/xui/widget/XTabLayout$2;

.field final synthetic val$change:Z


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XTabLayout$2;Z)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$2$1;->this$1:Lcom/xiaopeng/xui/widget/XTabLayout$2;

    iput-boolean p2, p0, Lcom/xiaopeng/xui/widget/XTabLayout$2$1;->val$change:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout$2$1;->this$1:Lcom/xiaopeng/xui/widget/XTabLayout$2;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/XTabLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    new-instance v1, Lcom/xiaopeng/xui/widget/XTabLayout$2$1$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/XTabLayout$2$1$1;-><init>(Lcom/xiaopeng/xui/widget/XTabLayout$2$1;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$400(Lcom/xiaopeng/xui/widget/XTabLayout;ZLcom/xiaopeng/xui/widget/XTabLayout$OnMoveIndicatorListener;)V

    return-void
.end method
