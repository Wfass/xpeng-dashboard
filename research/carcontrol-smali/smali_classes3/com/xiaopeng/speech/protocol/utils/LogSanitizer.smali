.class public Lcom/xiaopeng/speech/protocol/utils/LogSanitizer;
.super Ljava/lang/Object;
.source "LogSanitizer.java"


# static fields
.field private static final REPLACE_REGEX:Ljava/lang/String; = "((\\+\\d{2,3})?(\\d{3}))(\\d{4})"

.field private static final REPLACE_STRING:Ljava/lang/String; = "$1****"

.field private static final STRING_LENGTH:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "LogSanitizer"

.field private static final mCountryCode:Ljava/lang/String;

.field private static mIsDebug:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "CN"

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/xiaopeng/speech/protocol/utils/LogSanitizer;->mCountryCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sanitize(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method private static sanitizePhoneNumbers(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 58
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    .line 59
    sget-object v1, Lcom/xiaopeng/speech/protocol/utils/LogSanitizer;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v1

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/i18n/phonenumbers/PhoneNumberMatch;

    .line 64
    invoke-virtual {v4}, Lcom/google/i18n/phonenumbers/PhoneNumberMatch;->number()Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isPossibleNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 65
    invoke-virtual {v4}, Lcom/google/i18n/phonenumbers/PhoneNumberMatch;->start()I

    move-result v5

    invoke-virtual {v2, p0, v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v4}, Lcom/google/i18n/phonenumbers/PhoneNumberMatch;->rawString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "((\\+\\d{2,3})?(\\d{3}))(\\d{4})"

    const-string v6, "$1****"

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v4}, Lcom/google/i18n/phonenumbers/PhoneNumberMatch;->end()I

    move-result v3

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, p0, v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setIsDebug(Z)V
    .locals 0

    .line 35
    sput-boolean p0, Lcom/xiaopeng/speech/protocol/utils/LogSanitizer;->mIsDebug:Z

    return-void
.end method
