.class Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout$2;
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

    .line 130
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;

    iput p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout$2;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;

    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout$2;->val$state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;->access$100(Lcom/xiaopeng/xuiservice/xapp/mode/widget/GamePromptLayout;Z)V

    .line 134
    return-void
.end method
