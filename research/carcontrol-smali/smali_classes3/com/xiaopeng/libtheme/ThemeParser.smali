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
    .locals 8
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

    if-eqz p1, :cond_4

    .line 49
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 50
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    const-string v3, "utf-8"

    .line 51
    invoke-interface {v2, p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 53
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    const/4 v5, 0x1

    if-eq p1, v5, :cond_4

    .line 55
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 57
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x2

    if-eq p1, v6, :cond_2

    const/4 v5, 0x3

    if-eq p1, v5, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v4, :cond_1

    .line 81
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object v4, v3

    goto :goto_1

    :cond_2
    const-string p1, "view"

    .line 61
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "id"

    .line 62
    invoke-interface {v2, v3, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "root"

    .line 63
    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "attr"

    .line 64
    invoke-interface {v2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "value"

    .line 65
    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 67
    new-instance v7, Lcom/xiaopeng/libtheme/ThemeView;

    invoke-direct {v7}, Lcom/xiaopeng/libtheme/ThemeView;-><init>()V

    .line 68
    iput-object p1, v7, Lcom/xiaopeng/libtheme/ThemeView;->xmlId:Ljava/lang/String;

    .line 69
    iput-object v4, v7, Lcom/xiaopeng/libtheme/ThemeView;->xmlRoot:Ljava/lang/String;

    .line 70
    iput-object v5, v7, Lcom/xiaopeng/libtheme/ThemeView;->xmlAttr:Ljava/lang/String;

    .line 71
    iput-object v6, v7, Lcom/xiaopeng/libtheme/ThemeView;->xmlValue:Ljava/lang/String;

    .line 72
    invoke-static {p0, v7}, Lcom/xiaopeng/libtheme/ThemeParser;->resolveThemeView(Landroid/content/Context;Lcom/xiaopeng/libtheme/ThemeView;)Lcom/xiaopeng/libtheme/ThemeView;

    move-result-object p1

    move-object v4, p1

    .line 89
    :cond_3
    :goto_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 95
    :catch_0
    :cond_4
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized parseXml(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 2
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

    if-eqz p0, :cond_0

    .line 38
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaopeng/libtheme/ThemeParser;->parseXml(Landroid/content/Context;Ljava/io/InputStream;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    .line 43
    monitor-exit v0

    return-object p0
.end method

.method private static resolveThemeView(Landroid/content/Context;Lcom/xiaopeng/libtheme/ThemeView;)Lcom/xiaopeng/libtheme/ThemeView;
    .locals 6

    const-string v0, "/"

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 100
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 105
    iget-object v2, p1, Lcom/xiaopeng/libtheme/ThemeView;->xmlId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "id"

    if-nez v2, :cond_0

    .line 106
    :try_start_1
    iget-object v2, p1, Lcom/xiaopeng/libtheme/ThemeView;->xmlId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

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

    invoke-virtual {v1, v2, v3, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

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

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 118
    iget-object v2, p1, Lcom/xiaopeng/libtheme/ThemeView;->xmlValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaopeng/libtheme/ThemeView;->xmlValue:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 119
    iget-object v3, p1, Lcom/xiaopeng/libtheme/ThemeView;->xmlValue:Ljava/lang/String;

    iget-object v5, p1, Lcom/xiaopeng/libtheme/ThemeView;->xmlValue:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-virtual {v1, v0, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 121
    invoke-static {v2}, Lcom/xiaopeng/libtheme/ThemeManager$ResourceType;->getType(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/xiaopeng/libtheme/ThemeView;->resType:I

    .line 122
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p1, Lcom/xiaopeng/libtheme/ThemeView;->resValue:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    return-object p1

    :catch_0
    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method
