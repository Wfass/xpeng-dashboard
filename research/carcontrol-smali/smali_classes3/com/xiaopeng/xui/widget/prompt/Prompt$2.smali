.class Lcom/xiaopeng/xui/widget/prompt/Prompt$2;
.super Ljava/lang/Object;
.source "Prompt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/widget/prompt/Prompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/prompt/Prompt;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/prompt/Prompt;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt$2;->this$0:Lcom/xiaopeng/xui/widget/prompt/Prompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt$2;->this$0:Lcom/xiaopeng/xui/widget/prompt/Prompt;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/prompt/Prompt;->removeView()V

    return-void
.end method
