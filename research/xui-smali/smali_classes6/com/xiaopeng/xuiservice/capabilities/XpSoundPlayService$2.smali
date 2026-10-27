.class Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$2;
.super Landroid/os/Handler;
.source "XpSoundPlayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 238
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 241
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 242
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 256
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->access$900(Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;)V

    .line 257
    goto :goto_0

    .line 253
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->handleLoad(Ljava/lang/String;)V

    .line 254
    goto :goto_0

    .line 250
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$StopSound;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->access$800(Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$StopSound;)V

    .line 251
    goto :goto_0

    .line 247
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->access$700(Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;I)V

    .line 248
    goto :goto_0

    .line 244
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;->access$600(Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService;Lcom/xiaopeng/xuiservice/capabilities/XpSoundPlayService$PlaySound;)V

    .line 245
    nop

    .line 261
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
