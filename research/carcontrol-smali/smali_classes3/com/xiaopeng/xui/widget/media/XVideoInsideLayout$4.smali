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

    .line 246
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$4;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 249
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$4;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 250
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$4;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
