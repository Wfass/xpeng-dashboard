.class Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout$1;
.super Ljava/lang/Object;
.source "GamePromptLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->handleEvSysReadyState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;

    .line 122
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;

    iput p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout$1;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->access$000(Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;)Lcom/xiaopeng/xui/widget/XButton;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout$1;->val$state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 126
    return-void
.end method
