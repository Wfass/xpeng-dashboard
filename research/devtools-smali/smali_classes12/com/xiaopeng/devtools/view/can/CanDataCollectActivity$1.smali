.class Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity$1;
.super Landroid/os/Handler;
.source "CanDataCollectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Fv:Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity$1;->Fv:Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 57
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 64
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity$1;->Fv:Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->a(Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity$1;->Fv:Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->b(Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;)V

    .line 66
    goto :goto_0

    .line 59
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity$1;->Fv:Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity$1;->Fv:Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->a(Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;)Lcom/xiaopeng/devtools/system/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/system/a/b;->kG()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->a(Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity$1;->Fv:Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->b(Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;)V

    .line 61
    nop

    .line 71
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
