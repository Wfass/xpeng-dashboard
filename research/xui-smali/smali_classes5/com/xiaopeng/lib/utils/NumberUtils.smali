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

    .line 18
    const-string v0, "#,###.00"

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
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "number"    # D
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "locale",
            "number"
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x833

    if-eq v1, v2, :cond_8

    const/16 v2, 0x843

    if-eq v1, v2, :cond_7

    const/16 v2, 0x865

    if-eq v1, v2, :cond_6

    const/16 v2, 0x881

    if-eq v1, v2, :cond_5

    const/16 v2, 0x887

    if-eq v1, v2, :cond_4

    const/16 v2, 0x8cc

    if-eq v1, v2, :cond_3

    const/16 v2, 0x9be

    if-eq v1, v2, :cond_2

    const/16 v2, 0x9c1

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa52

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "SE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "NO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v1, "NL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    goto :goto_1

    :cond_3
    const-string v1, "FR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    goto :goto_1

    :cond_4
    const-string v1, "DK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x4

    goto :goto_1

    :cond_5
    const-string v1, "DE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x7

    goto :goto_1

    :cond_6
    const-string v1, "CH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x8

    goto :goto_1

    :cond_7
    const-string v1, "BE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x5

    goto :goto_1

    :cond_8
    const-string v1, "AT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x6

    goto :goto_1

    :cond_9
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/16 v1, 0x2e

    const/16 v2, 0x20

    const/16 v3, 0x2c

    packed-switch v0, :pswitch_data_0

    .line 50
    const-string v0, "com.xiaopeng.lib.utils.NumberUtils"

    const-string v1, "The country is not considered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    sget-object v0, Lcom/xiaopeng/lib/utils/NumberUtils;->sSymbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0, v2}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    .line 52
    sget-object v0, Lcom/xiaopeng/lib/utils/NumberUtils;->sSymbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0, v3}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    goto :goto_2

    .line 46
    :pswitch_0
    sget-object v0, Lcom/xiaopeng/lib/utils/NumberUtils;->sSymbols:Ljava/text/DecimalFormatSymbols;

    const/16 v2, 0x27

    invoke-virtual {v0, v2}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    .line 47
    sget-object v0, Lcom/xiaopeng/lib/utils/NumberUtils;->sSymbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 48
    goto :goto_2

    .line 42
    :pswitch_1
    sget-object v0, Lcom/xiaopeng/lib/utils/NumberUtils;->sSymbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    .line 43
    sget-object v0, Lcom/xiaopeng/lib/utils/NumberUtils;->sSymbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0, v3}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 44
    goto :goto_2

    .line 34
    :pswitch_2
    sget-object v0, Lcom/xiaopeng/lib/utils/NumberUtils;->sSymbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0, v2}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    .line 35
    sget-object v0, Lcom/xiaopeng/lib/utils/NumberUtils;->sSymbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0, v3}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 36
    nop

    .line 55
    :goto_2
    sget-object v0, Lcom/xiaopeng/lib/utils/NumberUtils;->sDecimalFormat:Ljava/text/DecimalFormat;

    sget-object v1, Lcom/xiaopeng/lib/utils/NumberUtils;->sSymbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 56
    sget-object v0, Lcom/xiaopeng/lib/utils/NumberUtils;->sDecimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

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
        :pswitch_0
    .end packed-switch
.end method
