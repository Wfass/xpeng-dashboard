.class public Lcom/xiaopeng/lib/utils/NumberUtils;
.super Ljava/lang/Object;
.source "NumberUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.xiaopeng.lib.utils.NumberUtils"

.field private static sDecimalFormat:Ljava/text/DecimalFormat;

.field private static sPattern:Ljava/lang/String;

.field private static sSymbols:Ljava/text/DecimalFormatSymbols;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v0}, Ljava/text/DecimalFormatSymbols;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/utils/NumberUtils;->sSymbols:Ljava/text/DecimalFormatSymbols;

    const-string v0, "#,###.00"

    .line 18
    sput-object v0, Lcom/xiaopeng/lib/utils/NumberUtils;->sPattern:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/text/DecimalFormat;

    sget-object v1, Lcom/xiaopeng/lib/utils/NumberUtils;->sPattern:Ljava/lang/String;

    sget-object v2, Lcom/xiaopeng/lib/utils/NumberUtils;->sSymbols:Ljava/text/DecimalFormatSymbols;

    invoke-direct {v0, v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/NumberUtils;->sDecimalFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCountryNumberFormat(Ljava/util/Locale;D)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x833

    if-eq v0, v1, :cond_8

    const/16 v1, 0x843

    if-eq v0, v1, :cond_7

    const/16 v1, 0x865

    if-eq v0, v1, :cond_6

    const/16 v1, 0x881

    if-eq v0, v1, :cond_5

    const/16 v1, 0x887

    if-eq v0, v1, :cond_4

    const/16 v1, 0x8cc

    if-eq v0, v1, :cond_3

    const/16 v1, 0x9be

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9c1

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa52

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "NO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "NL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    const/4 p0, 0x3

    goto :goto_1

    :cond_3
    const-string v0, "FR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    const/4 p0, 0x2

    goto :goto_1

    :cond_4
    const-string v0, "DK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    const/4 p0, 0x4

    goto :goto_1

    :cond_5
    const-string v0, "DE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    const/4 p0, 0x7

    goto :goto_1

    :cond_6
    const-string v0, "CH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    const/16 p0, 0x8

    goto :goto_1

    :cond_7
    const-string v0, "BE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    const/4 p0, 0x5

    goto :goto_1

    :cond_8
    const-string v0, "AT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    const/4 p0, 0x6

    goto :goto_1

    :cond_9
    :goto_0
    const/4 p0, -0x1

    :goto_1
    const/16 v0, 0x2e

    const/16 v1, 0x20

    const/16 v2, 0x2c

    packed-switch p0, :pswitch_data_0

    const-string p0, "com.xiaopeng.lib.utils.NumberUtils"

    const-string v0, "The country is not considered"

    .line 50
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    sget-object p0, Lcom/xiaopeng/lib/utils/NumberUtils;->sSymbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0, v1}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    .line 52
    sget-object p0, Lcom/xiaopeng/lib/utils/NumberUtils;->sSymbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0, v2}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    goto :goto_2

    .line 46
    :pswitch_0
    sget-object p0, Lcom/xiaopeng/lib/utils/NumberUtils;->sSymbols:Ljava/text/DecimalFormatSymbols;

    const/16 v1, 0x27

    invoke-virtual {p0, v1}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    .line 47
    sget-object p0, Lcom/xiaopeng/lib/utils/NumberUtils;->sSymbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0, v0}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    goto :goto_2

    .line 42
    :pswitch_1
    sget-object p0, Lcom/xiaopeng/lib/utils/NumberUtils;->sSymbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0, v0}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    .line 43
    sget-object p0, Lcom/xiaopeng/lib/utils/NumberUtils;->sSymbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0, v2}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    goto :goto_2

    .line 34
    :pswitch_2
    sget-object p0, Lcom/xiaopeng/lib/utils/NumberUtils;->sSymbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0, v1}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    .line 35
    sget-object p0, Lcom/xiaopeng/lib/utils/NumberUtils;->sSymbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0, v2}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 55
    :goto_2
    sget-object p0, Lcom/xiaopeng/lib/utils/NumberUtils;->sDecimalFormat:Ljava/text/DecimalFormat;

    sget-object v0, Lcom/xiaopeng/lib/utils/NumberUtils;->sSymbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0, v0}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 56
    sget-object p0, Lcom/xiaopeng/lib/utils/NumberUtils;->sDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {p0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

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
        :pswitch_0
    .end packed-switch
.end method
