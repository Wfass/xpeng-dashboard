.class Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity$1;
.super Landroid/os/Handler;
.source "CsDebugToolActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic FG:Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity$1;->FG:Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 55
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 61
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity$1;->FG:Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->a(Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;Z)V

    .line 62
    goto :goto_0

    .line 57
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity$1;->FG:Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->a(Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;Z)V

    .line 58
    nop

    .line 67
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
