.class public final Lcom/blankj/utilcode/util/RegexUtils;
.super Ljava/lang/Object;
.source "RegexUtils.java"


# static fields
.field private static final CITY_MAP:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    sput-object v0, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMatches(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 4
    .param p0, "regex"    # Ljava/lang/String;
    .param p1, "input"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 258
    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 259
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v0, "matches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 261
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 262
    .local v2, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 263
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 265
    :cond_1
    return-object v0
.end method

.method public static getReplaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .line 312
    if-nez p0, :cond_0

    const-string v0, ""

    return-object v0

    .line 313
    :cond_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReplaceFirst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .line 294
    if-nez p0, :cond_0

    const-string v0, ""

    return-object v0

    .line 295
    :cond_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSplits(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "regex"    # Ljava/lang/String;

    .line 276
    if-nez p0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 277
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isDate(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "input"    # Ljava/lang/CharSequence;

    .line 226
    const-string v0, "^(?:(?!0000)[0-9]{4}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|2[0-8])|(?:0[13-9]|1[0-2])-(?:29|30)|(?:0[13578]|1[02])-31)|(?:[0-9]{2}(?:0[48]|[2468][048]|[13579][26])|(?:0[48]|[2468][048]|[13579][26])00)-02-29)$"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isEmail(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "input"    # Ljava/lang/CharSequence;

    .line 183
    const-string v0, "^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isIDCard15(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "input"    # Ljava/lang/CharSequence;

    .line 96
    const-string v0, "^[1-9]\\d{7}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}$"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isIDCard18(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "input"    # Ljava/lang/CharSequence;

    .line 106
    const-string v0, "^[1-9]\\d{5}[1-9]\\d{3}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}([0-9Xx])$"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isIDCard18Exact(Ljava/lang/CharSequence;)Z
    .locals 8
    .param p0, "input"    # Ljava/lang/CharSequence;

    .line 116
    invoke-static {p0}, Lcom/blankj/utilcode/util/RegexUtils;->isIDCard18(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 117
    const/16 v0, 0x11

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    .line 118
    .local v2, "factor":[I
    const/16 v3, 0xb

    new-array v3, v3, [C

    fill-array-data v3, :array_1

    .line 119
    .local v3, "suffix":[C
    sget-object v4, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v4}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 120
    sget-object v4, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v5, "11"

    const-string v6, "\u5317\u4eac"

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v4, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v5, "12"

    const-string v6, "\u5929\u6d25"

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v4, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v5, "13"

    const-string v6, "\u6cb3\u5317"

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v4, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v5, "14"

    const-string v6, "\u5c71\u897f"

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v4, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v5, "15"

    const-string v6, "\u5185\u8499\u53e4"

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v4, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v5, "21"

    const-string v6, "\u8fbd\u5b81"

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v4, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v5, "22"

    const-string v6, "\u5409\u6797"

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v4, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v5, "23"

    const-string v6, "\u9ed1\u9f99\u6c5f"

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v4, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v5, "31"

    const-string v6, "\u4e0a\u6d77"

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v4, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v5, "32"

    const-string v6, "\u6c5f\u82cf"

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v4, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v5, "33"

    const-string v6, "\u6d59\u6c5f"

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v4, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v5, "34"

    const-string v6, "\u5b89\u5fbd"

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v4, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v5, "35"

    const-string v6, "\u798f\u5efa"

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v4, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v5, "36"

    const-string v6, "\u6c5f\u897f"

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v4, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v5, "37"

    const-string v6, "\u5c71\u4e1c"

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v4, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v5, "41"

    const-string v6, "\u6cb3\u5357"

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v4, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v5, "42"

    const-string v6, "\u6e56\u5317"

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v4, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v5, "43"

    const-string v6, "\u6e56\u5357"

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v4, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v5, "44"

    const-string v6, "\u5e7f\u4e1c"

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v4, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v5, "45"

    const-string v6, "\u5e7f\u897f"

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v4, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v5, "46"

    const-string v6, "\u6d77\u5357"

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v4, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v5, "50"

    const-string v6, "\u91cd\u5e86"

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v4, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v5, "51"

    const-string v6, "\u56db\u5ddd"

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v4, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v5, "52"

    const-string v6, "\u8d35\u5dde"

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v4, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v5, "53"

    const-string v6, "\u4e91\u5357"

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v4, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v5, "54"

    const-string v6, "\u897f\u85cf"

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v4, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v5, "61"

    const-string v6, "\u9655\u897f"

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v4, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v5, "62"

    const-string v6, "\u7518\u8083"

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v4, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v5, "63"

    const-string v6, "\u9752\u6d77"

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v4, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v5, "64"

    const-string v6, "\u5b81\u590f"

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v4, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v5, "65"

    const-string v6, "\u65b0\u7586"

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v4, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v5, "71"

    const-string v6, "\u53f0\u6e7e\u8001"

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v4, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v5, "81"

    const-string v6, "\u9999\u6e2f"

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v4, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v5, "82"

    const-string v6, "\u6fb3\u95e8"

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v4, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v5, "83"

    const-string v6, "\u53f0\u6e7e\u65b0"

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v4, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v5, "91"

    const-string v6, "\u56fd\u5916"

    invoke-virtual {v4, v5, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_0
    sget-object v4, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const/4 v5, 0x2

    invoke-interface {p0, v1, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 164
    const/4 v4, 0x0

    .line 165
    .local v4, "weightSum":I
    move v5, v4

    move v4, v1

    .local v4, "i":I
    .local v5, "weightSum":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 166
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x30

    aget v7, v2, v4

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    .line 165
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 168
    .end local v4    # "i":I
    :cond_1
    rem-int/lit8 v4, v5, 0xb

    .line 169
    .local v4, "idCardMod":I
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 170
    .local v0, "idCardLast":C
    aget-char v6, v3, v4

    if-ne v0, v6, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    return v1

    .line 173
    .end local v0    # "idCardLast":C
    .end local v2    # "factor":[I
    .end local v3    # "suffix":[C
    .end local v4    # "idCardMod":I
    .end local v5    # "weightSum":I
    :cond_3
    return v1

    :array_0
    .array-data 4
        0x7
        0x9
        0xa
        0x5
        0x8
        0x4
        0x2
        0x1
        0x6
        0x3
        0x7
        0x9
        0xa
        0x5
        0x8
        0x4
        0x2
    .end array-data

    :array_1
    .array-data 2
        0x31s
        0x30s
        0x58s
        0x39s
        0x38s
        0x37s
        0x36s
        0x35s
        0x34s
        0x33s
        0x32s
    .end array-data
.end method

.method public static isIP(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "input"    # Ljava/lang/CharSequence;

    .line 236
    const-string v0, "((2[0-4]\\d|25[0-5]|[01]?\\d\\d?)\\.){3}(2[0-4]\\d|25[0-5]|[01]?\\d\\d?)"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "regex"    # Ljava/lang/String;
    .param p1, "input"    # Ljava/lang/CharSequence;

    .line 247
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isMobileExact(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "input"    # Ljava/lang/CharSequence;

    .line 50
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/RegexUtils;->isMobileExact(Ljava/lang/CharSequence;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public static isMobileExact(Ljava/lang/CharSequence;Ljava/util/List;)Z
    .locals 9
    .param p0, "input"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 61
    .local p1, "newSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "^((13[0-9])|(14[579])|(15[0-35-9])|(16[2567])|(17[0-35-8])|(18[0-9])|(19[0-35-9]))\\d{8}$"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 62
    .local v0, "match":Z
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 63
    :cond_0
    const/4 v2, 0x0

    if-nez p1, :cond_1

    return v2

    .line 64
    :cond_1
    if-eqz p0, :cond_7

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0xb

    if-eq v3, v4, :cond_2

    goto :goto_2

    .line 65
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "content":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_0
    if-ge v6, v5, :cond_4

    aget-char v7, v4, v6

    .line 67
    .local v7, "c":C
    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_3

    .line 68
    return v2

    .line 66
    .end local v7    # "c":C
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 71
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 72
    .local v5, "newSegment":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 73
    return v1

    .line 75
    .end local v5    # "newSegment":Ljava/lang/String;
    :cond_5
    goto :goto_1

    .line 76
    :cond_6
    return v2

    .line 64
    .end local v3    # "content":Ljava/lang/String;
    :cond_7
    :goto_2
    return v2
.end method

.method public static isMobileSimple(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "input"    # Ljava/lang/CharSequence;

    .line 40
    const-string v0, "^[1]\\d{10}$"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isTel(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "input"    # Ljava/lang/CharSequence;

    .line 86
    const-string v0, "^0\\d{2,3}[- ]?\\d{7,8}$"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isURL(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "input"    # Ljava/lang/CharSequence;

    .line 193
    const-string v0, "[a-zA-z]+://[^\\s]*"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isUsername(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "input"    # Ljava/lang/CharSequence;

    .line 216
    const-string v0, "^[\\w\\u4e00-\\u9fa5]{6,20}(?<!_)$"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isZh(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "input"    # Ljava/lang/CharSequence;

    .line 203
    const-string v0, "^[\\u4e00-\\u9fa5]+$"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
