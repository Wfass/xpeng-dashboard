.class Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager$1;
.super Ljava/lang/Object;
.source "MobileAppManager.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/deviceshare/IDeviceShareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;

    .line 56
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager$1;->this$0:Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onCommonEvent$0([Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;)V
    .locals 3
    .param p0, "appInfos"    # [Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    .line 76
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->access$400()Lcom/xiaopeng/xuimanager/applist/AppEventListener;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {v0, v1, p0, v2}, Lcom/xiaopeng/xuimanager/applist/AppEventListener;->onAppEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V

    .line 78
    return-void
.end method


# virtual methods
.method public onAppInfoEvent(Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;Ljava/lang/String;[Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;)V
    .locals 5
    .param p1, "device"    # Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;
    .param p2, "eventType"    # Ljava/lang/String;
    .param p3, "appInfos"    # [Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;

    .line 95
    const-string v0, "MobileAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppInfoEvent eventType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",device = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", appInfos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x43eda35f

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v1, :cond_3

    const v1, 0x56db8205

    if-eq v0, v1, :cond_2

    const v1, 0x5790f17a

    if-eq v0, v1, :cond_1

    const v1, 0x5c90c24a

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "appUpdate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_1

    :cond_1
    const-string v0, "appLoadAll"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_1

    :cond_2
    const-string v0, "appRemove"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_1

    :cond_3
    const-string v0, "appAdded"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 110
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager$1;->this$0:Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;

    const/4 v1, 0x4

    invoke-static {v0, p3, v1}, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->access$300(Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;[Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;I)V

    .line 111
    goto :goto_3

    .line 107
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager$1;->this$0:Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;

    invoke-static {v0, p3, v2}, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->access$300(Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;[Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;I)V

    .line 108
    goto :goto_3

    .line 104
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager$1;->this$0:Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;

    invoke-static {v0, p3, v4}, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->access$300(Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;[Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;I)V

    .line 105
    goto :goto_3

    .line 99
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager$1;->this$0:Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;

    .line 100
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->getLastProtocolType()I

    move-result v1

    goto :goto_2

    :cond_5
    aget-object v1, p3, v3

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;->getProtocol()I

    move-result v1

    .line 99
    :goto_2
    invoke-static {v0, p1, v1}, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->access$000(Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;I)V

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager$1;->this$0:Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;

    invoke-static {v0, p3, v4}, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->access$300(Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;[Lcom/xiaopeng/xuimanager/deviceshare/data/ShareAppInfo;I)V

    .line 102
    nop

    .line 115
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCommonEvent(Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "device"    # Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;
    .param p2, "eventType"    # Ljava/lang/String;
    .param p3, "eventValue"    # Ljava/lang/String;
    .param p4, "eventParam"    # [Ljava/lang/String;

    .line 59
    const-string v0, "MobileAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCommonEvent,device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",eventType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", eventValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", eventParam = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const v3, -0x5c9fc425

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "deviceState"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    goto/16 :goto_4

    .line 63
    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v3, -0x2e3b8148

    if-eq v0, v3, :cond_6

    const v3, -0x22860cf7

    if-eq v0, v3, :cond_5

    const v3, 0x1f9d589c

    if-eq v0, v3, :cond_4

    const v3, 0x66bb3f28

    if-eq v0, v3, :cond_3

    goto :goto_2

    :cond_3
    const-string v0, "connectFail"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const-string v0, "disconnect"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x3

    goto :goto_2

    :cond_5
    const-string v0, "connected"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x2

    goto :goto_2

    :cond_6
    const-string v0, "connecting"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v1, v2

    :cond_7
    :goto_2
    packed-switch v1, :pswitch_data_0

    goto :goto_3

    .line 72
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager$1;->this$0:Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->access$100(Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager$1;->this$0:Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->access$100(Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;)Ljava/util/List;

    move-result-object v0

    new-array v1, v2, [Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    .line 75
    .local v0, "appInfos":[Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    new-instance v1, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$MobileAppManager$1$P5LI9zQRu_qB8LTYD0TBbAg37cg;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$MobileAppManager$1$P5LI9zQRu_qB8LTYD0TBbAg37cg;-><init>([Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;)V

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    .line 81
    .end local v0    # "appInfos":[Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    :cond_8
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager$1;->this$0:Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->access$100(Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager$1;->this$0:Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->access$200(Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 83
    goto :goto_3

    .line 69
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager$1;->this$0:Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->getLastProtocolType()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->access$000(Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;I)V

    .line 70
    goto :goto_3

    .line 66
    :pswitch_2
    nop

    .line 87
    :goto_3
    nop

    .line 91
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
