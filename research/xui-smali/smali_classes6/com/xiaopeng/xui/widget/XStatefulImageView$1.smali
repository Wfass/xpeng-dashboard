.class Lcom/xiaopeng/xui/widget/XStatefulImageView$1;
.super Ljava/lang/Object;
.source "XStatefulImageView.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/XStatefulView$OnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XStatefulImageView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/XStatefulImageView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XStatefulImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/XStatefulImageView;

    .line 101
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView$1;->this$0:Lcom/xiaopeng/xui/widget/XStatefulImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 0
    .param p1, "reason"    # I

    .line 110
    return-void
.end method

.method public onStateChange(II)V
    .locals 1
    .param p1, "prestate"    # I
    .param p2, "state"    # I

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulImageView$1;->this$0:Lcom/xiaopeng/xui/widget/XStatefulImageView;

    invoke-static {v0, p2}, Lcom/xiaopeng/xui/widget/XStatefulImageView;->access$000(Lcom/xiaopeng/xui/widget/XStatefulImageView;I)V

    .line 105
    return-void
.end method
