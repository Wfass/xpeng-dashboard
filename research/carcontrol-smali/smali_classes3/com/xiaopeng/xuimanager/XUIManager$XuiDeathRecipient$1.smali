.class Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient$1;
.super Landroid/os/Handler;
.source "XUIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;Landroid/os/Looper;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient$1;->this$0:Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 409
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 418
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient$1;->this$0:Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;->access$1000(Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;)V

    goto :goto_0

    .line 411
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient$1;->this$0:Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;->access$900(Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;)V

    :goto_0
    return-void
.end method
