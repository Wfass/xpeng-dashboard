.class Lcom/xiaopeng/xuiservice/smart/SmartAutoService$2;
.super Ljava/lang/Object;
.source "SmartAutoService.java"

# interfaces
.implements Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->initCarListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartAutoService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartAutoService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartAutoService;

    .line 66
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAutoService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAutoService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 6
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 69
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 70
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21101011

    if-eq v0, v1, :cond_1

    const v1, 0x21411031

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 73
    :cond_0
    const-string v0, "SmartAutoService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarTboxEventCallback CarPropertyValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAutoService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAutoService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->access$100(Lcom/xiaopeng/xuiservice/smart/SmartAutoService;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAutoService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAutoService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->access$200(Lcom/xiaopeng/xuiservice/smart/SmartAutoService;)V

    goto :goto_0

    .line 82
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "mcc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    const-string v1, "mcc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 85
    .local v1, "mcc":I
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/utils/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "country":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartAutoService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAutoService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->access$300(Lcom/xiaopeng/xuiservice/smart/SmartAutoService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 87
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartAutoService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAutoService;

    invoke-static {v3, v2}, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->access$302(Lcom/xiaopeng/xuiservice/smart/SmartAutoService;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartAutoService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAutoService;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartAutoService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAutoService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->access$300(Lcom/xiaopeng/xuiservice/smart/SmartAutoService;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->access$400(Lcom/xiaopeng/xuiservice/smart/SmartAutoService;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "mcc":I
    .end local v2    # "country":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartAutoService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTboxEvent ID_TBOX_CDU_APN e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .end local v0    # "e":Ljava/lang/Exception;
    nop

    .line 100
    :cond_3
    :goto_0
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 104
    return-void
.end method
