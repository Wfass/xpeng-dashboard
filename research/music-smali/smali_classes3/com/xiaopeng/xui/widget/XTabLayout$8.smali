.class Lcom/xiaopeng/xui/widget/XTabLayout$8;
.super Ljava/lang/Object;
.source "XTabLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XTabLayout;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/XTabLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XTabLayout;)V
    .locals 0

    .line 787
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$8;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 790
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout$8;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$400(Lcom/xiaopeng/xui/widget/XTabLayout;ZLcom/xiaopeng/xui/widget/XTabLayout$OnMoveIndicatorListener;)V

    return-void
.end method
