.class public Lcom/xiaopeng/xuiservice/theme/parser/ThemeValuesParser;
.super Ljava/lang/Object;
.source "ThemeValuesParser.java"


# static fields
.field private static final ALL_TAGS:[Ljava/lang/String;

.field private static final ARRAY_TAGS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "xpTheme_ThemeValuesParser"

.field private static final TAG_BOOLEAN:Ljava/lang/String; = "boolean"

.field private static final TAG_BOOLEAN_ARRAY:Ljava/lang/String; = "boolean-array"

.field private static final TAG_COLOR:Ljava/lang/String; = "color"

.field private static final TAG_COLOR_ARRAY:Ljava/lang/String; = "color-array"

.field private static final TAG_DIMEN:Ljava/lang/String; = "dimen"

.field private static final TAG_DIMEN_ARRAY:Ljava/lang/String; = "dimen-array"

.field private static final TAG_FLOAT:Ljava/lang/String; = "float"

.field private static final TAG_FLOAT_ARRAY:Ljava/lang/String; = "float-array"

.field private static final TAG_INTEGER:Ljava/lang/String; = "integer"

.field private static final TAG_INTEGER_ARRAY:Ljava/lang/String; = "integer-array"

.field private static final TAG_STRING:Ljava/lang/String; = "string"

.field private static final TAG_STRING_ARRAY:Ljava/lang/String; = "string-array"

.field private static final VALUE_TAGS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 100
    const-string v0, "string"

    const-string v1, "boolean"

    const-string v2, "integer"

    const-string v3, "float"

    const-string v4, "color"

    const-string v5, "dimen"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/theme/parser/ThemeValuesParser;->VALUE_TAGS:[Ljava/lang/String;

    .line 104
    const-string v1, "string-array"

    const-string v2, "boolean-array"

    const-string v3, "integer-array"

    const-string v4, "float-array"

    const-string v5, "color-array"

    const-string v6, "dimen-array"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/theme/parser/ThemeValuesParser;->ARRAY_TAGS:[Ljava/lang/String;

    .line 111
    sget-object v0, Lcom/xiaopeng/xuiservice/theme/parser/ThemeValuesParser;->VALUE_TAGS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/theme/parser/ThemeValuesParser;->ARRAY_TAGS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/theme/parser/-$$Lambda$ThemeValuesParser$y3rsrwnoirQbzyDxdrgCKA5Eh7A;->INSTANCE:Lcom/xiaopeng/xuiservice/theme/parser/-$$Lambda$ThemeValuesParser$y3rsrwnoirQbzyDxdrgCKA5Eh7A;

    .line 112
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/xiaopeng/xuiservice/theme/parser/ThemeValuesParser;->ALL_TAGS:[Ljava/lang/String;

    .line 113
    sget-object v0, Lcom/xiaopeng/xuiservice/theme/parser/ThemeValuesParser;->ALL_TAGS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isAllTag(Ljava/lang/String;)Z
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .line 117
    sget-object v0, Lcom/xiaopeng/xuiservice/theme/parser/ThemeValuesParser;->ALL_TAGS:[Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$static$0(I)[Ljava/lang/String;
    .locals 1
    .param p0, "x$0"    # I

    .line 112
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method public static parseFrom(Lcom/xiaopeng/xuimanager/theme/Theme;)Lcom/xiaopeng/xuiservice/theme/Values;
    .locals 8
    .param p0, "theme"    # Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 121
    new-instance v0, Lcom/xiaopeng/xuiservice/theme/Values;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/theme/Values;-><init>()V

    .line 122
    .local v0, "values":Lcom/xiaopeng/xuiservice/theme/Values;
    invoke-static {p0}, Lcom/xiaopeng/xuimanager/theme/ThemeFile;->getSystemValuesDir(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v1

    .line 123
    .local v1, "valuesDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 125
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_1

    .line 126
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 127
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".xml"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 128
    invoke-static {v0, v5}, Lcom/xiaopeng/xuiservice/theme/parser/ThemeValuesParser;->parseValueFile(Lcom/xiaopeng/xuiservice/theme/Values;Ljava/io/File;)V

    .line 126
    .end local v5    # "file":Ljava/io/File;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 135
    .end local v2    # "files":[Ljava/io/File;
    :cond_1
    const-string/jumbo v2, "xpTheme_ThemeValuesParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseFrom, theme="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/theme/Theme;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", values="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-object v0
.end method

.method private static parseValueFile(Lcom/xiaopeng/xuiservice/theme/Values;Ljava/io/File;)V
    .locals 14
    .param p0, "values"    # Lcom/xiaopeng/xuiservice/theme/Values;
    .param p1, "file"    # Ljava/io/File;

    .line 143
    const-string/jumbo v0, "xpTheme_ThemeValuesParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseValueFile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 147
    .local v0, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 148
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 150
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 151
    .local v2, "eventType":I
    const/4 v3, 0x0

    .line 152
    .local v3, "currentTag":Ljava/lang/String;
    const/4 v4, 0x0

    move-object v5, v3

    move v3, v2

    move-object v2, v4

    .line 153
    .local v2, "name":Ljava/lang/String;
    .local v3, "eventType":I
    .local v5, "currentTag":Ljava/lang/String;
    :goto_0
    const/4 v6, 0x1

    if-eq v3, v6, :cond_9

    .line 155
    const/4 v7, 0x2

    if-ne v3, v7, :cond_1

    .line 156
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 157
    .local v6, "tag":Ljava/lang/String;
    invoke-static {v6}, Lcom/xiaopeng/xuiservice/theme/parser/ThemeValuesParser;->isAllTag(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 158
    move-object v5, v6

    .line 159
    const-string v7, "name"

    invoke-interface {v1, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    goto :goto_1

    .line 162
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown values tag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .end local v6    # "tag":Ljava/lang/String;
    :goto_1
    goto/16 :goto_4

    :cond_1
    const/4 v8, 0x3

    if-ne v3, v8, :cond_2

    .line 166
    const/4 v5, 0x0

    .line 167
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 168
    :cond_2
    const/4 v9, 0x4

    if-ne v3, v9, :cond_8

    .line 169
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    .line 170
    .local v10, "text":Ljava/lang/String;
    if-eqz v10, :cond_8

    if-eqz v5, :cond_8

    if-eqz v2, :cond_8

    .line 171
    const/4 v11, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v12

    const/4 v13, 0x0

    sparse-switch v12, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v7, "integer-array"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x8

    goto/16 :goto_3

    :sswitch_1
    const-string v8, "integer"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto/16 :goto_3

    :sswitch_2
    const-string v7, "float-array"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x9

    goto/16 :goto_3

    :sswitch_3
    const-string v7, "boolean-array"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x7

    goto :goto_3

    :sswitch_4
    const-string v7, "float"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v8

    goto :goto_3

    :sswitch_5
    const-string v7, "dimen"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x5

    goto :goto_3

    :sswitch_6
    const-string v7, "color"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v9

    goto :goto_3

    :sswitch_7
    const-string v7, "boolean"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v6

    goto :goto_3

    :sswitch_8
    const-string v7, "color-array"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0xa

    goto :goto_3

    :sswitch_9
    const-string v7, "string"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v13

    goto :goto_3

    :sswitch_a
    const-string v7, "string-array"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x6

    goto :goto_3

    :sswitch_b
    const-string v7, "dimen-array"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    if-eqz v7, :cond_3

    const/16 v7, 0xb

    goto :goto_3

    :cond_3
    :goto_2
    move v7, v11

    :goto_3
    packed-switch v7, :pswitch_data_0

    .end local v10    # "text":Ljava/lang/String;
    goto/16 :goto_4

    .line 247
    .restart local v10    # "text":Ljava/lang/String;
    :pswitch_0
    :try_start_1
    invoke-static {v10}, Lcom/xiaopeng/xuiservice/innerutils/DensityUtil;->parseDimen(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v2, v6}, Lcom/xiaopeng/xuiservice/theme/Values;->appendDimensionArray(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 250
    goto/16 :goto_4

    .line 248
    :catch_0
    move-exception v6

    .line 249
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v7, "xpTheme_ThemeValuesParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid dimen text item, tag="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", text="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    .end local v6    # "e":Ljava/lang/Exception;
    .end local v10    # "text":Ljava/lang/String;
    goto/16 :goto_4

    .line 240
    .restart local v10    # "text":Ljava/lang/String;
    :pswitch_1
    :try_start_3
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v2, v6}, Lcom/xiaopeng/xuiservice/theme/Values;->appendColorArray(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 243
    goto/16 :goto_4

    .line 241
    :catch_1
    move-exception v6

    .line 242
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v7, "xpTheme_ThemeValuesParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid color text item, tag="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", text="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 244
    .end local v6    # "e":Ljava/lang/Exception;
    goto/16 :goto_4

    .line 233
    :pswitch_2
    :try_start_5
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {p0, v2, v6, v7}, Lcom/xiaopeng/xuiservice/theme/Values;->appendFloatArray(Ljava/lang/String;D)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 236
    goto/16 :goto_4

    .line 234
    :catch_2
    move-exception v6

    .line 235
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v7, "xpTheme_ThemeValuesParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid float text item, tag="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", text="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    .line 237
    .end local v6    # "e":Ljava/lang/Exception;
    goto/16 :goto_4

    .line 226
    :pswitch_3
    :try_start_7
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v2, v6}, Lcom/xiaopeng/xuiservice/theme/Values;->appendIntegerArray(Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 229
    goto/16 :goto_4

    .line 227
    :catch_3
    move-exception v6

    .line 228
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_8
    const-string/jumbo v7, "xpTheme_ThemeValuesParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid integer text item, tag="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", text="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .end local v6    # "e":Ljava/lang/Exception;
    goto/16 :goto_4

    .line 216
    :pswitch_4
    const-string v7, "true"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 217
    invoke-virtual {p0, v2, v6}, Lcom/xiaopeng/xuiservice/theme/Values;->appendBooleanArray(Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 218
    :cond_4
    const-string v6, "false"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 219
    invoke-virtual {p0, v2, v13}, Lcom/xiaopeng/xuiservice/theme/Values;->appendBooleanArray(Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 221
    :cond_5
    const-string/jumbo v6, "xpTheme_ThemeValuesParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid boolean text item, tag="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", text="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    goto/16 :goto_4

    .line 213
    :pswitch_5
    invoke-virtual {p0, v2, v10}, Lcom/xiaopeng/xuiservice/theme/Values;->appendStringArray(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 214
    goto/16 :goto_4

    .line 207
    :pswitch_6
    :try_start_9
    invoke-static {v10}, Lcom/xiaopeng/xuiservice/innerutils/DensityUtil;->parseDimen(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v2, v6}, Lcom/xiaopeng/xuiservice/theme/Values;->putDimension(Ljava/lang/String;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 210
    goto/16 :goto_4

    .line 208
    :catch_4
    move-exception v6

    .line 209
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_a
    const-string/jumbo v7, "xpTheme_ThemeValuesParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid dimen text, tag="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", text="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 211
    .end local v6    # "e":Ljava/lang/Exception;
    goto/16 :goto_4

    .line 200
    :pswitch_7
    :try_start_b
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v2, v6}, Lcom/xiaopeng/xuiservice/theme/Values;->putColor(Ljava/lang/String;I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 203
    goto/16 :goto_4

    .line 201
    :catch_5
    move-exception v6

    .line 202
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_c
    const-string/jumbo v7, "xpTheme_ThemeValuesParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid color text, tag="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", text="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 204
    .end local v6    # "e":Ljava/lang/Exception;
    goto/16 :goto_4

    .line 193
    :pswitch_8
    :try_start_d
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {p0, v2, v6, v7}, Lcom/xiaopeng/xuiservice/theme/Values;->putFloat(Ljava/lang/String;D)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    .line 196
    goto/16 :goto_4

    .line 194
    :catch_6
    move-exception v6

    .line 195
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_e
    const-string/jumbo v7, "xpTheme_ThemeValuesParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid float text, tag="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", text="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    .line 197
    .end local v6    # "e":Ljava/lang/Exception;
    goto :goto_4

    .line 186
    :pswitch_9
    :try_start_f
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v2, v6}, Lcom/xiaopeng/xuiservice/theme/Values;->putInteger(Ljava/lang/String;I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    .line 189
    goto :goto_4

    .line 187
    :catch_7
    move-exception v6

    .line 188
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_10
    const-string/jumbo v7, "xpTheme_ThemeValuesParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid integer text, tag="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", text="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .end local v6    # "e":Ljava/lang/Exception;
    goto :goto_4

    .line 176
    :pswitch_a
    const-string v7, "true"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 177
    invoke-virtual {p0, v2, v6}, Lcom/xiaopeng/xuiservice/theme/Values;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_4

    .line 178
    :cond_6
    const-string v6, "false"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 179
    invoke-virtual {p0, v2, v13}, Lcom/xiaopeng/xuiservice/theme/Values;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_4

    .line 181
    :cond_7
    const-string/jumbo v6, "xpTheme_ThemeValuesParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid boolean text, tag="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", text="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    goto :goto_4

    .line 173
    :pswitch_b
    invoke-virtual {p0, v2, v10}, Lcom/xiaopeng/xuiservice/theme/Values;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    nop

    .line 256
    .end local v10    # "text":Ljava/lang/String;
    :cond_8
    :goto_4
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    move v3, v6

    goto/16 :goto_0

    .line 260
    .end local v0    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "eventType":I
    .end local v5    # "currentTag":Ljava/lang/String;
    :cond_9
    goto :goto_5

    .line 258
    :catch_8
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "xpTheme_ThemeValuesParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseValueFile file="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 261
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7a4cd343 -> :sswitch_b
        -0x3d122a63 -> :sswitch_a
        -0x352a9fef -> :sswitch_9
        -0x758a091 -> :sswitch_8
        0x3db6c28 -> :sswitch_7
        0x5a72f63 -> :sswitch_6
        0x5b28f31 -> :sswitch_5
        0x5d0225c -> :sswitch_4
        0x2aea3474 -> :sswitch_3
        0x52c273a8 -> :sswitch_2
        0x74b5813e -> :sswitch_1
        0x7ee9a10a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
