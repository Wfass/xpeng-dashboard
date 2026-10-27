.class Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$5;
.super Landroid/os/Handler;
.source "XpLightlanuageService.java"


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
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 1490
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 1493
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1502
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->access$2100(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;)V

    goto :goto_0

    .line 1498
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 1499
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4, v4}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->access$2000(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;Ljava/lang/String;ZZZ)V

    .line 1500
    goto :goto_0

    .line 1495
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$5;->this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->access$1900(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$PlayEffect;)V

    .line 1496
    nop

    .line 1506
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
