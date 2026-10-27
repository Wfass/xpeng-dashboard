.class Lcom/xiaopeng/xuiservice/smart/SmartScenesService$1;
.super Ljava/lang/Object;
.source "SmartScenesService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController$InternalCommonEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->initXUIManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartScenesService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartScenesService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartScenesService;

    .line 89
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartScenesService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartScenesService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInternalCommonEvent(II)V
    .locals 3
    .param p1, "eventType"    # I
    .param p2, "eventValue"    # I

    .line 92
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 101
    :pswitch_0
    if-nez p2, :cond_0

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartScenesService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartScenesService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->access$000(Lcom/xiaopeng/xuiservice/smart/SmartScenesService;)I

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartScenesService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartScenesService;

    const-string v1, "music"

    invoke-static {v0, v1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->access$100(Lcom/xiaopeng/xuiservice/smart/SmartScenesService;Ljava/lang/String;I)I

    .line 106
    goto :goto_0

    .line 94
    :pswitch_1
    if-nez p2, :cond_1

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartScenesService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartScenesService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->access$000(Lcom/xiaopeng/xuiservice/smart/SmartScenesService;)I

    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartScenesService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartScenesService;

    const-string v1, "follow_speed"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartScenesService;->access$100(Lcom/xiaopeng/xuiservice/smart/SmartScenesService;Ljava/lang/String;I)I

    .line 99
    nop

    .line 110
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
