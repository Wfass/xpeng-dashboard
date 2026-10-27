.class Lcom/xiaopeng/xui/widget/media/XVideoLayout$3;
.super Ljava/lang/Object;
.source "XVideoLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/media/XVideoLayout;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/media/XVideoLayout;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 228
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 229
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout$3;->this$0:Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
