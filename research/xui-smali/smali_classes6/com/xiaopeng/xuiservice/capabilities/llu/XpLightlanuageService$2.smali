.class Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$2;
.super Ljava/lang/Object;
.source "XpLightlanuageService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    .line 1440
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 5
    .param p1, "onChange"    # I

    .line 1443
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->isDanceEffectRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1445
    :cond_0
    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1448
    :pswitch_0
    const-string v0, "XpLightlanuageService"

    const-string v1, "AF loss, stopDanceEffect"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    const-string v1, "any"

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->access$1500(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;Ljava/lang/String;ZJ)V

    .line 1451
    goto :goto_0

    .line 1453
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-static {v0, v1, v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->access$1600(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;FF)V

    .line 1454
    goto :goto_0

    .line 1456
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->access$1600(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;FF)V

    .line 1459
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
