.class Lcom/xiaopeng/xuiservice/smart/SmartRecordService$MicServiceCallBack;
.super Ljava/lang/Object;
.source "SmartRecordService.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$MicCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartRecordService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MicServiceCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartRecordService;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartRecordService;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService$MicServiceCallBack;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartRecordService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartRecordService;Lcom/xiaopeng/xuiservice/smart/SmartRecordService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartRecordService;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/smart/SmartRecordService$1;

    .line 98
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService$MicServiceCallBack;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartRecordService;)V

    return-void
.end method


# virtual methods
.method public micServiceCallBack(I)V
    .locals 3
    .param p1, "msg"    # I

    .line 101
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 115
    return-void

    .line 112
    :pswitch_0
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->access$202(Z)Z

    .line 113
    goto :goto_0

    .line 109
    :pswitch_1
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->access$202(Z)Z

    .line 110
    goto :goto_0

    .line 106
    :pswitch_2
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->access$102(Z)Z

    .line 107
    goto :goto_0

    .line 103
    :pswitch_3
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->access$102(Z)Z

    .line 104
    nop

    .line 117
    :goto_0
    const-string v0, "SmartRecordService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "micServiceCallBack msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mDongleStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->access$100()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mMicStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->access$200()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "a"    # I
    .param p2, "b"    # I

    .line 125
    return-void
.end method
