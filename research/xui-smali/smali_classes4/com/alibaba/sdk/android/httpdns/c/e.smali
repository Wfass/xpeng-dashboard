.class public Lcom/alibaba/sdk/android/httpdns/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/b/b;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xc81

    if-eq v0, v1, :cond_6

    const/16 v1, 0xd03

    if-eq v0, v1, :cond_4

    const/16 v1, 0xe54

    if-eq v0, v1, :cond_2

    const/16 v1, 0xe9e

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "us"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    goto :goto_1

    :cond_2
    const-string v0, "sg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x2

    goto :goto_1

    :cond_4
    const-string v0, "hk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    goto :goto_1

    :cond_6
    const-string v0, "de"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    :goto_0
    const/4 p0, -0x1

    goto :goto_1

    :cond_7
    const/4 p0, 0x0

    :goto_1
    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result p0

    if-eqz p0, :cond_c

    const-string p0, "use default region"

    invoke-static {p0}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_0
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "use us region"

    invoke-static {p0}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V

    :cond_8
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/c/a;->a()Lcom/alibaba/sdk/android/httpdns/b/b;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "use sg region"

    invoke-static {p0}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V

    :cond_9
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/c/f;->a()Lcom/alibaba/sdk/android/httpdns/b/b;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result p0

    if-eqz p0, :cond_a

    const-string p0, "use hk region"

    invoke-static {p0}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V

    :cond_a
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/c/d;->a()Lcom/alibaba/sdk/android/httpdns/b/b;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, "use de region"

    invoke-static {p0}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V

    :cond_b
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/c/c;->a()Lcom/alibaba/sdk/android/httpdns/b/b;

    move-result-object p0

    return-object p0

    :cond_c
    :goto_2
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/c/b;->a()Lcom/alibaba/sdk/android/httpdns/b/b;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/b/b;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xc81

    if-eq v0, v1, :cond_6

    const/16 v1, 0xd03

    if-eq v0, v1, :cond_4

    const/16 v1, 0xe54

    if-eq v0, v1, :cond_2

    const/16 v1, 0xe9e

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "us"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    goto :goto_1

    :cond_2
    const-string v0, "sg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x2

    goto :goto_1

    :cond_4
    const-string v0, "hk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    goto :goto_1

    :cond_6
    const-string v0, "de"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    :goto_0
    const/4 p0, -0x1

    goto :goto_1

    :cond_7
    const/4 p0, 0x0

    :goto_1
    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/c/b;->b()Lcom/alibaba/sdk/android/httpdns/b/b;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/c/a;->b()Lcom/alibaba/sdk/android/httpdns/b/b;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/c/f;->b()Lcom/alibaba/sdk/android/httpdns/b/b;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/c/d;->b()Lcom/alibaba/sdk/android/httpdns/b/b;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/c/c;->b()Lcom/alibaba/sdk/android/httpdns/b/b;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
