.class Lcom/xiaopeng/xui/widget/slider/SlideLineView$3;
.super Ljava/lang/Object;
.source "SlideLineView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/slider/SlideLineView;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/slider/SlideLineView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/slider/SlideLineView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/slider/SlideLineView;

    .line 137
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView$3;->this$0:Lcom/xiaopeng/xui/widget/slider/SlideLineView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/slider/SlideLineView$3;->this$0:Lcom/xiaopeng/xui/widget/slider/SlideLineView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/slider/SlideLineView;->invalidate()V

    .line 141
    return-void
.end method
