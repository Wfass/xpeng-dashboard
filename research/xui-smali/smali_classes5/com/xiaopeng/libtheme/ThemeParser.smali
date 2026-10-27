.class public Lcom/xiaopeng/libtheme/ThemeParser;
.super Ljava/lang/Object;
.source "ThemeParser.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final NODE:Ljava/lang/String; = "view"

.field private static final TAG:Ljava/lang/String; = "ThemeXmlParser"

.field private static final _ATTR:Ljava/lang/String; = "attr"

.field private static final _ID:Ljava/lang/String; = "id"

.field private static final _ROOT:Ljava/lang/String; = "root"

.field private static final _VALUE:Ljava/lang/String; = "value"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized parseXml(Landroid/content/Context;Ljava/io/InputStream;)Ljava/util/List;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/libtheme/ThemeView;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/xiaopeng/libtheme/ThemeParser;

    monitor-enter v0

    .line 46
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/libtheme/ThemeView;>;"
    if-eqz p1, :cond_3

    .line 49
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 50
    .local v2, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 51
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v4, "utf-8"

    invoke-interface {v3, p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 52
    const/4 v4, 0x0

    .line 53
    .local v4, "themeView":Lcom/xiaopeng/libtheme/ThemeView;
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 54
    .local v5, "eventType":I
    :goto_0
    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    .line 55
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 57
    .local v6, "nodeName":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 58
    packed-switch v5, :pswitch_data_0

    goto :goto_2

    .line 80
    :pswitch_0
    if-eqz v4, :cond_0

    .line 81
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_0
    const/4 v4, 0x0

    .line 84
    goto :goto_2

    .line 61
    :pswitch_1
    const-string v7, "view"

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 62
    const-string v7, "id"

    const/4 v8, 0x0

    invoke-interface {v3, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 63
    .local v7, "xmlId":Ljava/lang/String;
    const-string v9, "root"

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 64
    .local v9, "xmlRoot":Ljava/lang/String;
    const-string v10, "attr"

    invoke-interface {v3, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 65
    .local v10, "xmlAttr":Ljava/lang/String;
    const-string v11, "value"

    invoke-interface {v3, v8, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 66
    .local v8, "xmlValue":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 67
    new-instance v11, Lcom/xiaopeng/libtheme/ThemeView;

    invoke-direct {v11}, Lcom/xiaopeng/libtheme/ThemeView;-><init>()V

    move-object v4, v11

    .line 68
    iput-object v7, v4, Lcom/xiaopeng/libtheme/ThemeView;->xmlId:Ljava/lang/String;

    .line 69
    iput-object v9, v4, Lcom/xiaopeng/libtheme/ThemeView;->xmlRoot:Ljava/lang/String;

    .line 70
    iput-object v10, v4, Lcom/xiaopeng/libtheme/ThemeView;->xmlAttr:Ljava/lang/String;

    .line 71
    iput-object v8, v4, Lcom/xiaopeng/libtheme/ThemeView;->xmlValue:Ljava/lang/String;

    .line 72
    invoke-static {p0, v4}, Lcom/xiaopeng/libtheme/ThemeParser;->resolveThemeView(Landroid/content/Context;Lcom/xiaopeng/libtheme/ThemeView;)Lcom/xiaopeng/libtheme/ThemeView;

    move-result-object v11

    move-object v4, v11

    goto :goto_1

    .line 74
    :cond_1
    const/4 v4, 0x0

    .line 76
    .end local v7    # "xmlId":Ljava/lang/String;
    .end local v8    # "xmlValue":Ljava/lang/String;
    .end local v9    # "xmlRoot":Ljava/lang/String;
    .end local v10    # "xmlAttr":Ljava/lang/String;
    :goto_1
    nop

    .line 89
    :cond_2
    :goto_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v7

    .line 90
    .end local v6    # "nodeName":Ljava/lang/String;
    goto :goto_0

    .line 92
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "themeView":Lcom/xiaopeng/libtheme/ThemeView;
    .end local v5    # "eventType":I
    :catch_0
    move-exception v2

    goto :goto_3

    .line 94
    :cond_3
    nop

    .line 95
    :goto_3
    monitor-exit v0

    return-object v1

    .line 45
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/libtheme/ThemeView;>;"
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized parseXml(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/libtheme/ThemeView;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/xiaopeng/libtheme/ThemeParser;

    monitor-enter v0

    .line 38
    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/xiaopeng/libtheme/ThemeParser;->parseXml(Landroid/content/Context;Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 37
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "xml":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 41
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "xml":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 42
    :cond_0
    nop

    .line 43
    :goto_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1
.end method

.method private static resolveThemeView(Landroid/content/Context;Lcom/xiaopeng/libtheme/ThemeView;)Lcom/xiaopeng/libtheme/ThemeView;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "themeView"    # Lcom/xiaopeng/libtheme/ThemeView;

    .line 98
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 100
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 101
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "pkg":Ljava/lang/String;
    iget-object v2, p1, Lcom/xiaopeng/libtheme/ThemeView;->xmlId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    iget-object v2, p1, Lcom/xiaopeng/libtheme/ThemeView;->xmlId:Ljava/lang/String;

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, p1, Lcom/xiaopeng/libtheme/ThemeView;->resId:I

    .line 109
    :cond_0
    iget-object v2, p1, Lcom/xiaopeng/libtheme/ThemeView;->xmlAttr:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 110
    iget-object v2, p1, Lcom/xiaopeng/libtheme/ThemeView;->xmlAttr:Ljava/lang/String;

    iput-object v2, p1, Lcom/xiaopeng/libtheme/ThemeView;->resAttr:Ljava/lang/String;

    .line 113
    :cond_1
    iget-object v2, p1, Lcom/xiaopeng/libtheme/ThemeView;->xmlRoot:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 114
    iget-object v2, p1, Lcom/xiaopeng/libtheme/ThemeView;->xmlRoot:Ljava/lang/String;

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, p1, Lcom/xiaopeng/libtheme/ThemeView;->resRoot:I

    .line 117
    :cond_2
    iget-object v2, p1, Lcom/xiaopeng/libtheme/ThemeView;->xmlValue:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/xiaopeng/libtheme/ThemeView;->xmlValue:Ljava/lang/String;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/xiaopeng/libtheme/ThemeView;->xmlValue:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 118
    iget-object v2, p1, Lcom/xiaopeng/libtheme/ThemeView;->xmlValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaopeng/libtheme/ThemeView;->xmlValue:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "type":Ljava/lang/String;
    iget-object v3, p1, Lcom/xiaopeng/libtheme/ThemeView;->xmlValue:Ljava/lang/String;

    iget-object v5, p1, Lcom/xiaopeng/libtheme/ThemeView;->xmlValue:Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v0, v3, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 121
    .local v4, "identifier":I
    invoke-static {v2}, Lcom/xiaopeng/libtheme/ThemeManager$ResourceType;->getType(Ljava/lang/String;)I

    move-result v5

    iput v5, p1, Lcom/xiaopeng/libtheme/ThemeView;->resType:I

    .line 122
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p1, Lcom/xiaopeng/libtheme/ThemeView;->resValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "identifier":I
    :cond_3
    return-object p1

    .line 125
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 128
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method
