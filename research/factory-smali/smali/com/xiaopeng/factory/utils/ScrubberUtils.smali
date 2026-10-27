.class public Lcom/xiaopeng/factory/utils/ScrubberUtils;
.super Ljava/lang/Object;
.source "ScrubberUtils.java"


# static fields
.field private static final ACCOUNT_INFO_PATTERN:Ljava/util/regex/Pattern;

.field private static final DEBUG:Z = false

.field private static final EMAIL_PATTERN:Ljava/util/regex/Pattern;

.field public static final IGNORE_CACHE_DALVIK_CACHE:Ljava/lang/String; = "/private/dalvik-cache"

.field public static final IGNORE_DATA_DALVIK_CACHE:Ljava/lang/String; = "/data/dalvik-cache"

.field public static final IGNORE_DATA_RESOURCE_CACHE:Ljava/lang/String; = "/data/resource-cache"

.field private static final IPADDRESS_PATTERN:Ljava/util/regex/Pattern;

.field private static final PHONE_INFO_PATTERN:Ljava/util/regex/Pattern;

.field private static final PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String;

.field private static final USER_INFO_PATTERN:Ljava/util/regex/Pattern;

.field private static final WEB_URL_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    const-class v0, Lcom/xiaopeng/factory/utils/ScrubberUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/factory/utils/ScrubberUtils;->TAG:Ljava/lang/String;

    .line 38
    const-string v0, "[a-zA-Z0-9_]+(?:\\.[A-Za-z0-9!#$%&\'*+/=?^_`{|}~-]+)*(@|%40)(?!([a-zA-Z0-9]*\\.[a-zA-Z0-9]*\\.[a-zA-Z0-9]*\\.))(?:[A-Za-z0-9](?:[a-zA-Z0-9-]*[A-Za-z0-9])?\\.)+[a-zA-Z](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/factory/utils/ScrubberUtils;->EMAIL_PATTERN:Ljava/util/regex/Pattern;

    .line 39
    const-string v0, "^(?:(?:\\+?1\\s*(?:[.-]\\s*)?)?(?:\\(\\s*([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9])\\s*\\)|([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]))\\s*(?:[.-]\\s*)?)?([2-9]1[02-9]|[2-9][02-9]1|[2-9][02-9]{2})\\s*(?:[.-]\\s*)?([0-9]{4})(?:\\s*(?:#|x\\.?|ext\\.?|extension)\\s*(\\d+))?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/factory/utils/ScrubberUtils;->PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 40
    const-string v0, "\\b(https?|ftp|file)://[-a-zA-Z0-9+&@#/%?=~_|!:,.;]*[-a-zA-Z0-9+&@#/%=~_|]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/factory/utils/ScrubberUtils;->WEB_URL_PATTERN:Ljava/util/regex/Pattern;

    .line 41
    const-string v0, "^([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/factory/utils/ScrubberUtils;->IPADDRESS_PATTERN:Ljava/util/regex/Pattern;

    .line 42
    const-string v0, "(msisdn=|mMsisdn=|iccid=|iccid: |mImsi=)[a-zA-Z0-9]*"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/factory/utils/ScrubberUtils;->PHONE_INFO_PATTERN:Ljava/util/regex/Pattern;

    .line 43
    const-string v0, "(UserInfo\\{\\d:)[a-zA-Z0-9\\s]*"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/factory/utils/ScrubberUtils;->USER_INFO_PATTERN:Ljava/util/regex/Pattern;

    .line 44
    const-string v0, "(Account \\{name=)[a-zA-Z0-9]*"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/factory/utils/ScrubberUtils;->ACCOUNT_INFO_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSerialNumber()Ljava/lang/String;
    .locals 1

    .line 144
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    return-object v0
.end method

.method public static scrubFile(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/io/File;
    .param p2, "output"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 79
    .local v0, "startScrubTime":J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v2, "extraFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "phone"

    .line 81
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 82
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 83
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_0
    invoke-static {}, Lcom/xiaopeng/factory/utils/ScrubberUtils;->getSerialNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    const-string v4, ""

    .line 87
    .local v4, "extraRegex":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 88
    .local v6, "regex":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 89
    .end local v6    # "regex":Ljava/lang/String;
    goto :goto_0

    .line 90
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 96
    .local v5, "privateInfoPattern":Ljava/util/regex/Pattern;
    const/4 v6, 0x0

    .line 97
    .local v6, "bw":Ljava/io/BufferedWriter;
    const/4 v7, 0x0

    .line 99
    .local v7, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v7, v8

    .line 100
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/FileWriter;

    invoke-direct {v9, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v6, v8

    .line 104
    :goto_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .local v9, "line":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 105
    invoke-static {v9, v5}, Lcom/xiaopeng/factory/utils/ScrubberUtils;->scrubLine(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v8

    .line 106
    .local v8, "scrubbedLine":Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {v6, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_1

    .line 113
    .end local v8    # "scrubbedLine":Ljava/lang/String;
    :cond_2
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .end local v9    # "line":Ljava/lang/String;
    nop

    .line 117
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 119
    :catch_0
    move-exception v8

    goto :goto_3

    .line 121
    :goto_2
    nop

    .line 123
    :goto_3
    nop

    .line 124
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 126
    :catch_1
    move-exception v8

    goto :goto_5

    .line 128
    :goto_4
    nop

    .line 130
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 132
    nop

    .line 133
    return-void

    .line 115
    :catchall_0
    move-exception v8

    .line 116
    if-eqz v7, :cond_3

    .line 117
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    .line 119
    :catch_2
    move-exception v9

    goto :goto_7

    .line 121
    :cond_3
    :goto_6
    nop

    .line 123
    :goto_7
    if-eqz v6, :cond_4

    .line 124
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_8

    .line 126
    :catch_3
    move-exception v9

    goto :goto_9

    .line 128
    :cond_4
    :goto_8
    nop

    .line 130
    :goto_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 132
    throw v8
.end method

.method public static scrubLine(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 2
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "extraPattern"    # Ljava/util/regex/Pattern;

    .line 51
    const-string v0, "/data/resource-cache"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "/data/dalvik-cache"

    .line 52
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "/private/dalvik-cache"

    .line 53
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    sget-object v0, Lcom/xiaopeng/factory/utils/ScrubberUtils;->IPADDRESS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "<IP address omitted>"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 58
    sget-object v0, Lcom/xiaopeng/factory/utils/ScrubberUtils;->EMAIL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "<email omitted>"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 59
    sget-object v0, Lcom/xiaopeng/factory/utils/ScrubberUtils;->PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "<phone number omitted>"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 60
    sget-object v0, Lcom/xiaopeng/factory/utils/ScrubberUtils;->WEB_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "<web url omitted>"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 61
    sget-object v0, Lcom/xiaopeng/factory/utils/ScrubberUtils;->PHONE_INFO_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "<omitted>"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 62
    sget-object v0, Lcom/xiaopeng/factory/utils/ScrubberUtils;->USER_INFO_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "<omitted>"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 63
    sget-object v0, Lcom/xiaopeng/factory/utils/ScrubberUtils;->ACCOUNT_INFO_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "<omitted>"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 65
    if-eqz p1, :cond_1

    .line 66
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "<private info omitted>"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 68
    :cond_1
    return-object p0

    .line 55
    :cond_2
    :goto_0
    return-object p0
.end method
