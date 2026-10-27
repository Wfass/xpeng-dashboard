.class public Lcom/xiaopeng/xuiservice/xapp/miniprog/manager/HttpManagerUtil;
.super Ljava/lang/Object;
.source "HttpManagerUtil.java"


# static fields
.field public static final REQUEST_XP_MO:Ljava/lang/String; = "XP-Mo"

.field private static final TAG:Ljava/lang/String; = "HttpManagerUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCarType()Ljava/lang/String;
    .locals 5

    .line 16
    const-string v0, ""

    .line 18
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/car/Car;->getXpCduType()Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, "xpCduType":Ljava/lang/String;
    const-string v2, "HttpManagerUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "carType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0xa00

    if-eq v3, v4, :cond_1

    const/16 v4, 0xa02

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v3, "Q9"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x3

    goto :goto_0

    :pswitch_1
    const-string v3, "Q8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    :pswitch_2
    const-string v3, "Q7"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const-string v3, "Q3"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const-string v3, "Q1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    :goto_0
    packed-switch v2, :pswitch_data_1

    .end local v1    # "xpCduType":Ljava/lang/String;
    goto :goto_1

    .line 34
    .restart local v1    # "xpCduType":Ljava/lang/String;
    :pswitch_3
    const-string v2, "D55"

    move-object v0, v2

    .line 35
    goto :goto_1

    .line 31
    :pswitch_4
    const-string v2, "F30"

    move-object v0, v2

    .line 32
    goto :goto_1

    .line 28
    :pswitch_5
    const-string v2, "E28A"

    move-object v0, v2

    .line 29
    goto :goto_1

    .line 25
    :pswitch_6
    const-string v2, "E28"

    move-object v0, v2

    .line 26
    goto :goto_1

    .line 22
    :pswitch_7
    const-string v2, "E38"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 23
    nop

    .line 41
    .end local v1    # "xpCduType":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "HttpManagerUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not get getCarType error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xa06
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
