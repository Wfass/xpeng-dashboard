.class Lcom/xiaopeng/xuiservice/smart/SmartLluService$9;
.super Ljava/lang/Object;
.source "SmartLluService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartLluService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    .line 1382
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$9;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3
    .param p1, "focusChange"    # I

    .line 1384
    const-string v0, "persist.sys.llu.focuspolicy"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1385
    .local v0, "volumeAdjustPolicy":Z
    if-nez v0, :cond_0

    .line 1386
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$9;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->stopLightDancing()I

    goto :goto_1

    .line 1388
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 1396
    :pswitch_1
    goto :goto_1

    .line 1394
    :pswitch_2
    goto :goto_1

    .line 1391
    :pswitch_3
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$9;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->stopLightDancing()I

    .line 1392
    goto :goto_1

    .line 1399
    :pswitch_4
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$9;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v2, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$1800(Lcom/xiaopeng/xuiservice/smart/SmartLluService;Z)V

    .line 1403
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method
