.class public Lcom/xiaopeng/speech/protocol/utils/LogSanitizer;
.super Ljava/lang/Object;
.source "LogSanitizer.java"


# static fields
.field private static final REPLACE_REGEX:Ljava/lang/String; = "((\\+\\d{2,3})?(\\d{3}))(\\d{4})"

.field private static final REPLACE_STRING:Ljava/lang/String; = "$1****"

.field private static final STRING_LENGTH:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "LogSanitizer"

.field private static final mCountryCode:Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ConstantLocale"
        }
    .end annotation
.end field

.field private static mIsDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/speech/protocol/utils/LogSanitizer;->mIsDebug:Z

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
    .locals 3
    .param p0, "log"    # Ljava/lang/String;

    .line 44
    sget-boolean v0, Lcom/xiaopeng/speech/protocol/utils/LogSanitizer;->mIsDebug:Z

    if-nez v0, :cond_2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    const-string v0, "LogSanitizer"

    const-string v1, "sanitize start"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1000

    if-le v0, v1, :cond_1

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 51
    :cond_1
    invoke-static {p0}, Lcom/xiaopeng/speech/protocol/utils/LogSanitizer;->sanitizePhoneNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "sanitizedLog":Ljava/lang/String;
    const-string v1, "LogSanitizer"

    const-string v2, "sanitize end"

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    return-object v0

    .line 45
    .end local v0    # "sanitizedLog":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object p0
.end method

.method private static sanitizePhoneNumbers(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "input"    # Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    .line 58
    .local v0, "phoneUtil":Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    sget-object v1, Lcom/xiaopeng/speech/protocol/utils/LogSanitizer;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v1

    .line 59
    .local v1, "matches":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/i18n/phonenumbers/PhoneNumberMatch;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 62
    .local v3, "lastEnd":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/i18n/phonenumbers/PhoneNumberMatch;

    .line 63
    .local v5, "match":Lcom/google/i18n/phonenumbers/PhoneNumberMatch;
    invoke-virtual {v5}, Lcom/google/i18n/phonenumbers/PhoneNumberMatch;->number()Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isPossibleNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 64
    invoke-virtual {v5}, Lcom/google/i18n/phonenumbers/PhoneNumberMatch;->start()I

    move-result v6

    invoke-virtual {v2, p0, v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v5}, Lcom/google/i18n/phonenumbers/PhoneNumberMatch;->rawString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "((\\+\\d{2,3})?(\\d{3}))(\\d{4})"

    const-string v8, "$1****"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v5}, Lcom/google/i18n/phonenumbers/PhoneNumberMatch;->end()I

    move-result v3

    .line 68
    .end local v5    # "match":Lcom/google/i18n/phonenumbers/PhoneNumberMatch;
    :cond_0
    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, p0, v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static setIsDebug(Z)V
    .locals 0
    .param p0, "isDebug"    # Z

    .line 35
    sput-boolean p0, Lcom/xiaopeng/speech/protocol/utils/LogSanitizer;->mIsDebug:Z

    .line 36
    return-void
.end method
