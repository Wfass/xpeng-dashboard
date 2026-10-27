.class public Lcom/amap/api/services/a/br;
.super Ljava/lang/Object;
.source "CoreUtil.java"


# direct methods
.method public static M(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    .line 219
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 222
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 223
    nop

    .line 225
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    goto :goto_0

    .line 226
    :catch_0
    move-exception p0

    .line 227
    const-string v1, "CoreUtil"

    const-string v2, "parseTime"

    invoke-static {p0, v1, v2}, Lcom/amap/api/services/a/br;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    move-object p0, v0

    :goto_0
    return-object p0

    .line 220
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static a(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .line 214
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 215
    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 250
    invoke-static {}, Lcom/amap/api/services/a/r;->bn()Lcom/amap/api/services/a/r;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0, p0, p1, p2}, Lcom/amap/api/services/a/r;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 255
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .line 66
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 67
    const-string p0, "status"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 68
    return-void

    .line 70
    :cond_0
    const-string p0, "status"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 71
    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    return-void

    .line 74
    :cond_1
    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "infocode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 76
    :cond_2
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u672a\u77e5\u9519\u8bef"

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 78
    :cond_3
    :goto_0
    const-string v1, "infocode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 79
    const-string v2, "0"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 80
    const/16 p0, 0x55f0

    if-eq v1, p0, :cond_4

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    packed-switch v1, :pswitch_data_4

    packed-switch v1, :pswitch_data_5

    .line 144
    const-string p0, "info"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 145
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    invoke-direct {v0, p0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :pswitch_0
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string v0, "App key\u672a\u5f00\u901a\u201c\u9644\u8fd1\u201d\u529f\u80fd,\u8bf7\u6ce8\u518c\u9644\u8fd1KEY"

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 132
    :pswitch_1
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u627e\u4e0d\u5230\u5bf9\u5e94\u7684userid\u4fe1\u606f,\u8bf7\u68c0\u67e5\u60a8\u63d0\u4f9b\u7684userid\u662f\u5426\u5b58\u5728"

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 130
    :pswitch_2
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u670d\u52a1\u5668\u7ef4\u62a4\u4e2d"

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 128
    :pswitch_3
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string v0, "ID\u4e0d\u5b58\u5728"

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 126
    :pswitch_4
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string v0, "key\u5bf9\u5e94\u7684tableID\u4e0d\u5b58\u5728"

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 114
    :pswitch_5
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u8bfb\u53d6\u670d\u52a1\u7ed3\u679c\u8d85\u65f6"

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 112
    :pswitch_6
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u670d\u52a1\u7aef\u8bf7\u6c42\u94fe\u63a5\u8d85\u65f6"

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 110
    :pswitch_7
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u5f15\u64ce\u8fd4\u56de\u6570\u636e\u5f02\u5e38"

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 108
    :pswitch_8
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u8bf7\u6c42\u670d\u52a1\u54cd\u5e94\u9519\u8bef"

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 142
    :pswitch_9
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u8d77\u70b9\u7ec8\u70b9\u8ddd\u79bb\u8fc7\u957f"

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 140
    :pswitch_a
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u8def\u7ebf\u8ba1\u7b97\u5931\u8d25\uff0c\u901a\u5e38\u662f\u7531\u4e8e\u9053\u8def\u8fde\u901a\u5173\u7cfb\u5bfc\u81f4"

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 138
    :pswitch_b
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u89c4\u5212\u70b9\uff08\u8d77\u70b9\u3001\u7ec8\u70b9\u3001\u9014\u7ecf\u70b9\uff09\u9644\u8fd1\u641c\u4e0d\u5230\u8def"

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 136
    :pswitch_c
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u89c4\u5212\u70b9\uff08\u5305\u62ec\u8d77\u70b9\u3001\u7ec8\u70b9\u3001\u9014\u7ecf\u70b9\uff09\u4e0d\u5728\u4e2d\u56fd\u9646\u5730\u8303\u56f4\u5185"

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 122
    :pswitch_d
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u5176\u4ed6\u672a\u77e5\u9519\u8bef"

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 120
    :pswitch_e
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u8bf7\u6c42\u534f\u8bae\u975e\u6cd5"

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 118
    :pswitch_f
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u7f3a\u5c11\u5fc5\u586b\u53c2\u6570"

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 116
    :pswitch_10
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u8bf7\u6c42\u53c2\u6570\u975e\u6cd5"

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 106
    :pswitch_11
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u5f00\u53d1\u8005\u5220\u9664\u4e86key\uff0ckey\u88ab\u5220\u9664\u540e\u65e0\u6cd5\u6b63\u5e38\u4f7f\u7528"

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 104
    :pswitch_12
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u6743\u9650\u4e0d\u8db3\uff0c\u670d\u52a1\u8bf7\u6c42\u88ab\u62d2\u7edd"

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 102
    :pswitch_13
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u670d\u52a1\u4e0d\u652f\u6301https\u8bf7\u6c42"

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 100
    :pswitch_14
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string v0, "IP\u8bbf\u95ee\u8d85\u9650"

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 98
    :pswitch_15
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u8bf7\u6c42key\u4e0e\u7ed1\u5b9a\u5e73\u53f0\u4e0d\u7b26"

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 96
    :pswitch_16
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u7528\u6237MD5\u5b89\u5168\u7801\u672a\u901a\u8fc7"

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 82
    :pswitch_17
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u7528\u6237\u7b7e\u540d\u672a\u901a\u8fc7"

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 94
    :pswitch_18
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u7528\u6237\u57df\u540d\u65e0\u6548"

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 92
    :pswitch_19
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u7528\u6237IP\u65e0\u6548"

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 90
    :pswitch_1a
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u7528\u6237\u8bbf\u95ee\u8fc7\u4e8e\u9891\u7e41"

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 88
    :pswitch_1b
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u8bbf\u95ee\u5df2\u8d85\u51fa\u65e5\u8bbf\u95ee\u91cf"

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 86
    :pswitch_1c
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u8bf7\u6c42\u670d\u52a1\u4e0d\u5b58\u5728"

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 84
    :pswitch_1d
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u7528\u6237key\u4e0d\u6b63\u786e\u6216\u8fc7\u671f"

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 124
    :cond_4
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string v0, "tableID\u683c\u5f0f\u4e0d\u6b63\u786e\u4e0d\u5b58\u5728"

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :cond_5
    nop

    .line 152
    return-void

    .line 148
    :catch_0
    move-exception p0

    .line 149
    const-string v0, "CoreUtil"

    const-string v1, "paseAuthFailurJson"

    invoke-static {p0, v0, v1}, Lcom/amap/api/services/a/br;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4e20
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5140
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7530
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x7d00
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x7dc8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
