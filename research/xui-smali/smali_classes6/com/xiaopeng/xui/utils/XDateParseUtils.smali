.class public Lcom/xiaopeng/xui/utils/XDateParseUtils;
.super Ljava/lang/Object;
.source "XDateParseUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseCustomFormat(Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .param p0, "formate"    # Ljava/lang/String;
    .param p1, "time"    # J

    .line 187
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, "format":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static parseDate()Ljava/lang/String;
    .locals 5

    .line 83
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "language":Ljava/lang/String;
    const-string v2, "d MMM"

    .line 85
    .local v2, "formatStr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0xc7d

    if-eq v3, v4, :cond_9

    const/16 v1, 0xc81

    if-eq v3, v1, :cond_8

    const/16 v1, 0xca9

    if-eq v3, v1, :cond_7

    const/16 v1, 0xccc

    if-eq v3, v1, :cond_6

    const/16 v1, 0xd2b

    if-eq v3, v1, :cond_5

    const/16 v1, 0xdb4

    if-eq v3, v1, :cond_4

    const/16 v1, 0xdbe

    if-eq v3, v1, :cond_3

    const/16 v1, 0xe63

    if-eq v3, v1, :cond_2

    const/16 v1, 0xe74

    if-eq v3, v1, :cond_1

    const/16 v1, 0xf2e

    if-eq v3, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string/jumbo v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0x9

    goto :goto_1

    :cond_1
    const-string v1, "th"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0x8

    goto :goto_1

    :cond_2
    const-string v1, "sv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x7

    goto :goto_1

    :cond_3
    const-string v1, "nl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x6

    goto :goto_1

    :cond_4
    const-string v1, "nb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x2

    goto :goto_1

    :cond_5
    const-string v1, "it"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x5

    goto :goto_1

    :cond_6
    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x4

    goto :goto_1

    :cond_7
    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x3

    goto :goto_1

    :cond_8
    const-string v1, "de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_1

    :cond_9
    const-string v3, "da"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_1

    :cond_a
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 100
    :pswitch_0
    const-string v2, "M\u6708d\u65e5"

    goto :goto_2

    .line 97
    :pswitch_1
    const-string v2, "d MMM"

    .line 98
    goto :goto_2

    .line 89
    :pswitch_2
    const-string v2, "d. MMM"

    .line 90
    nop

    .line 103
    :goto_2
    return-object v2

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseDate(J)Ljava/lang/String;
    .locals 1
    .param p0, "time"    # J

    .line 107
    invoke-static {}, Lcom/xiaopeng/xui/utils/XDateParseUtils;->parseDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/xiaopeng/xui/utils/XDateParseUtils;->parseCustomFormat(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseLongDate()Ljava/lang/String;
    .locals 5

    .line 49
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "language":Ljava/lang/String;
    const-string/jumbo v2, "yyyy\u5e74M\u6708d\u65e5"

    .line 51
    .local v2, "formatStr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0xc7d

    if-eq v3, v4, :cond_9

    const/16 v1, 0xc81

    if-eq v3, v1, :cond_8

    const/16 v1, 0xca9

    if-eq v3, v1, :cond_7

    const/16 v1, 0xccc

    if-eq v3, v1, :cond_6

    const/16 v1, 0xd2b

    if-eq v3, v1, :cond_5

    const/16 v1, 0xdb4

    if-eq v3, v1, :cond_4

    const/16 v1, 0xdbe

    if-eq v3, v1, :cond_3

    const/16 v1, 0xe63

    if-eq v3, v1, :cond_2

    const/16 v1, 0xe74

    if-eq v3, v1, :cond_1

    const/16 v1, 0xf2e

    if-eq v3, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string/jumbo v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0x9

    goto :goto_1

    :cond_1
    const-string v1, "th"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x7

    goto :goto_1

    :cond_2
    const-string v1, "sv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x6

    goto :goto_1

    :cond_3
    const-string v1, "nl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x5

    goto :goto_1

    :cond_4
    const-string v1, "nb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x2

    goto :goto_1

    :cond_5
    const-string v1, "it"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0x8

    goto :goto_1

    :cond_6
    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x4

    goto :goto_1

    :cond_7
    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x3

    goto :goto_1

    :cond_8
    const-string v1, "de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_1

    :cond_9
    const-string v3, "da"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_1

    :cond_a
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 68
    :pswitch_0
    const-string/jumbo v2, "yyyy\u5e74M\u6708d\u65e5"

    goto :goto_2

    .line 65
    :pswitch_1
    const-string v2, "d-MMM-yyyy"

    .line 66
    goto :goto_2

    .line 62
    :pswitch_2
    const-string v2, "d MMM yyyy"

    .line 63
    goto :goto_2

    .line 55
    :pswitch_3
    const-string v2, "d. MMM yyyy"

    .line 56
    nop

    .line 71
    :goto_2
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseLongDate(J)Ljava/lang/String;
    .locals 1
    .param p0, "time"    # J

    .line 75
    invoke-static {}, Lcom/xiaopeng/xui/utils/XDateParseUtils;->parseLongDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/xiaopeng/xui/utils/XDateParseUtils;->parseCustomFormat(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseLongTime()Ljava/lang/String;
    .locals 5

    .line 153
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "language":Ljava/lang/String;
    const-string v2, "aa h:mm"

    .line 155
    .local v2, "formatStr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0xc7d

    if-eq v3, v4, :cond_9

    const/16 v1, 0xc81

    if-eq v3, v1, :cond_8

    const/16 v1, 0xca9

    if-eq v3, v1, :cond_7

    const/16 v1, 0xccc

    if-eq v3, v1, :cond_6

    const/16 v1, 0xd2b

    if-eq v3, v1, :cond_5

    const/16 v1, 0xdb4

    if-eq v3, v1, :cond_4

    const/16 v1, 0xdbe

    if-eq v3, v1, :cond_3

    const/16 v1, 0xe63

    if-eq v3, v1, :cond_2

    const/16 v1, 0xe74

    if-eq v3, v1, :cond_1

    const/16 v1, 0xf2e

    if-eq v3, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string/jumbo v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0x9

    goto :goto_1

    :cond_1
    const-string v1, "th"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0x8

    goto :goto_1

    :cond_2
    const-string v1, "sv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x7

    goto :goto_1

    :cond_3
    const-string v1, "nl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x6

    goto :goto_1

    :cond_4
    const-string v1, "nb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x2

    goto :goto_1

    :cond_5
    const-string v1, "it"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x5

    goto :goto_1

    :cond_6
    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x4

    goto :goto_1

    :cond_7
    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x3

    goto :goto_1

    :cond_8
    const-string v1, "de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_1

    :cond_9
    const-string v3, "da"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_1

    :cond_a
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 168
    :pswitch_0
    const-string v2, "aa h:mm"

    goto :goto_2

    .line 165
    :pswitch_1
    const-string v2, "h:mm aa"

    .line 166
    nop

    .line 171
    :goto_2
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseLongTime(J)Ljava/lang/String;
    .locals 1
    .param p0, "time"    # J

    .line 175
    invoke-static {}, Lcom/xiaopeng/xui/utils/XDateParseUtils;->parseLongTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/xiaopeng/xui/utils/XDateParseUtils;->parseCustomFormat(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseOnlyAMPM()Ljava/lang/String;
    .locals 1

    .line 183
    const-string v0, "aa"

    return-object v0
.end method

.method public static parseOnlyTime()Ljava/lang/String;
    .locals 1

    .line 179
    const-string v0, "h:mm"

    return-object v0
.end method

.method public static parseShortDate()Ljava/lang/String;
    .locals 5

    .line 15
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, "language":Ljava/lang/String;
    const-string/jumbo v2, "yyyy-MM-dd"

    .line 17
    .local v2, "formatStr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0xc7d

    if-eq v3, v4, :cond_9

    const/16 v1, 0xc81

    if-eq v3, v1, :cond_8

    const/16 v1, 0xca9

    if-eq v3, v1, :cond_7

    const/16 v1, 0xccc

    if-eq v3, v1, :cond_6

    const/16 v1, 0xd2b

    if-eq v3, v1, :cond_5

    const/16 v1, 0xdb4

    if-eq v3, v1, :cond_4

    const/16 v1, 0xdbe

    if-eq v3, v1, :cond_3

    const/16 v1, 0xe63

    if-eq v3, v1, :cond_2

    const/16 v1, 0xe74

    if-eq v3, v1, :cond_1

    const/16 v1, 0xf2e

    if-eq v3, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string/jumbo v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0x9

    goto :goto_1

    :cond_1
    const-string v1, "th"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x6

    goto :goto_1

    :cond_2
    const-string v1, "sv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0x8

    goto :goto_1

    :cond_3
    const-string v1, "nl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x7

    goto :goto_1

    :cond_4
    const-string v1, "nb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x2

    goto :goto_1

    :cond_5
    const-string v1, "it"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x5

    goto :goto_1

    :cond_6
    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x4

    goto :goto_1

    :cond_7
    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x3

    goto :goto_1

    :cond_8
    const-string v1, "de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_1

    :cond_9
    const-string v3, "da"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_1

    :cond_a
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 34
    :pswitch_0
    const-string/jumbo v2, "yyyy-MM-dd"

    goto :goto_2

    .line 30
    :pswitch_1
    const-string v2, "dd-MM-yy"

    .line 31
    goto :goto_2

    .line 27
    :pswitch_2
    const-string v2, "dd/MM/yyyy"

    .line 28
    goto :goto_2

    .line 21
    :pswitch_3
    const-string v2, "dd.MM.yyyy"

    .line 22
    nop

    .line 37
    :goto_2
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static parseShortDate(J)Ljava/lang/String;
    .locals 1
    .param p0, "time"    # J

    .line 41
    invoke-static {}, Lcom/xiaopeng/xui/utils/XDateParseUtils;->parseShortDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/xiaopeng/xui/utils/XDateParseUtils;->parseCustomFormat(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseShortTime()Ljava/lang/String;
    .locals 1

    .line 141
    const-string v0, "HH:mm"

    return-object v0
.end method

.method public static parseShortTime(J)Ljava/lang/String;
    .locals 1
    .param p0, "time"    # J

    .line 145
    invoke-static {}, Lcom/xiaopeng/xui/utils/XDateParseUtils;->parseShortTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/xiaopeng/xui/utils/XDateParseUtils;->parseCustomFormat(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseWeek()Ljava/lang/String;
    .locals 5

    .line 111
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "language":Ljava/lang/String;
    const-string v2, "EEE"

    .line 113
    .local v2, "formatStr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0xc7d

    if-eq v3, v4, :cond_9

    const/16 v1, 0xc81

    if-eq v3, v1, :cond_8

    const/16 v1, 0xca9

    if-eq v3, v1, :cond_7

    const/16 v1, 0xccc

    if-eq v3, v1, :cond_6

    const/16 v1, 0xd2b

    if-eq v3, v1, :cond_5

    const/16 v1, 0xdb4

    if-eq v3, v1, :cond_4

    const/16 v1, 0xdbe

    if-eq v3, v1, :cond_3

    const/16 v1, 0xe63

    if-eq v3, v1, :cond_2

    const/16 v1, 0xe74

    if-eq v3, v1, :cond_1

    const/16 v1, 0xf2e

    if-eq v3, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string/jumbo v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0x9

    goto :goto_1

    :cond_1
    const-string v1, "th"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0x8

    goto :goto_1

    :cond_2
    const-string v1, "sv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x7

    goto :goto_1

    :cond_3
    const-string v1, "nl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x6

    goto :goto_1

    :cond_4
    const-string v1, "nb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x2

    goto :goto_1

    :cond_5
    const-string v1, "it"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x5

    goto :goto_1

    :cond_6
    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x4

    goto :goto_1

    :cond_7
    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x3

    goto :goto_1

    :cond_8
    const-string v1, "de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_1

    :cond_9
    const-string v3, "da"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_1

    :cond_a
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 126
    :pswitch_0
    const-string v2, "EEEE"

    goto :goto_2

    .line 123
    :pswitch_1
    const-string v2, "EEE"

    .line 124
    nop

    .line 129
    :goto_2
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseWeek(J)Ljava/lang/String;
    .locals 1
    .param p0, "time"    # J

    .line 133
    invoke-static {}, Lcom/xiaopeng/xui/utils/XDateParseUtils;->parseWeek()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/xiaopeng/xui/utils/XDateParseUtils;->parseCustomFormat(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
