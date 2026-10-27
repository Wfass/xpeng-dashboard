.class Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle$1;
.super Ljava/lang/Object;
.source "XStatefulToggleButtonSingle.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/XStatefulView$OnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    .line 95
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle$1;->this$0:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 0
    .param p1, "reason"    # I

    .line 104
    return-void
.end method

.method public onStateChange(II)V
    .locals 1
    .param p1, "prestate"    # I
    .param p2, "state"    # I

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle$1;->this$0:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-static {v0, p2}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->access$000(Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;I)V

    .line 99
    return-void
.end method
