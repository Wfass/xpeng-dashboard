.class Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$4;
.super Ljava/lang/Object;
.source "XVideoInsideLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    .line 246
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$4;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$4;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$4;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 252
    :cond_0
    return-void
.end method
