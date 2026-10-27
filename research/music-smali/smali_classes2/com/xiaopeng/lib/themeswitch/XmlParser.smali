.class public Lcom/xiaopeng/lib/themeswitch/XmlParser;
.super Ljava/lang/Object;
.source "XmlParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThemeXmlParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseXMLWithPull(Ljava/io/InputStream;Ljava/lang/String;)Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;
    .locals 9

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseXMLWithPull: target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThemeXmlParser"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 31
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    const-string v2, "utf-8"

    .line 33
    invoke-interface {v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 34
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    .line 39
    new-instance v2, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;

    invoke-direct {v2}, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-eq p0, v5, :cond_6

    if-eqz v3, :cond_0

    return-object v2

    .line 46
    :cond_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x2

    const-string v8, "page"

    if-eq p0, v7, :cond_2

    const/4 v7, 0x3

    if-eq p0, v7, :cond_1

    goto/16 :goto_1

    .line 71
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    if-eqz v4, :cond_5

    move v3, v5

    goto/16 :goto_1

    .line 50
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "name"

    .line 51
    invoke-interface {v1, v0, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 53
    invoke-virtual {v2, p1}, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;->setPageName(Ljava/lang/String;)V

    .line 54
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, p0}, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;->setViewList(Ljava/util/List;)V

    move v4, v5

    goto :goto_1

    :cond_3
    const-string p0, "view"

    .line 55
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    if-eqz v4, :cond_4

    .line 57
    new-instance p0, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme$ThemeView;

    invoke-direct {p0}, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme$ThemeView;-><init>()V

    const-string v5, "id"

    .line 58
    invoke-interface {v1, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme$ThemeView;->setId(Ljava/lang/String;)V

    .line 59
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v5}, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme$ThemeView;->setAttrList(Ljava/util/List;)V

    .line 60
    invoke-virtual {v2}, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;->getViewList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_5

    .line 62
    new-instance p0, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme$ThemeView$ViewAttr;

    invoke-direct {p0}, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme$ThemeView$ViewAttr;-><init>()V

    .line 63
    invoke-virtual {p0, v6}, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme$ThemeView$ViewAttr;->setAttrName(Ljava/lang/String;)V

    const-string v6, "value"

    .line 64
    invoke-interface {v1, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme$ThemeView$ViewAttr;->setAttrValue(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v2}, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;->getViewList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v2}, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;->getViewList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme$ThemeView;

    invoke-virtual {v5}, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme$ThemeView;->getAttrList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_5
    :goto_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 84
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    return-object v0
.end method

.method public static parseXMLWithPull(Ljava/io/InputStream;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;",
            ">;"
        }
    .end annotation

    const-string v0, "ThemeXmlParser"

    const-string v1, "parseXMLWithPull: target=all"

    .line 94
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 97
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    const-string v2, "utf-8"

    .line 99
    invoke-interface {v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 101
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    const/4 v4, 0x1

    if-eq p0, v4, :cond_6

    .line 106
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x2

    const-string v7, "page"

    if-eq p0, v6, :cond_1

    const/4 v4, 0x3

    if-eq p0, v4, :cond_0

    goto/16 :goto_1

    .line 137
    :cond_0
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    if-eqz v3, :cond_5

    .line 139
    invoke-virtual {v3}, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;->getPageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 110
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "name"

    .line 111
    invoke-interface {v1, v2, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz v3, :cond_2

    .line 113
    invoke-virtual {v3}, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;->getPageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 114
    :cond_2
    new-instance v3, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;

    invoke-direct {v3}, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;-><init>()V

    .line 115
    invoke-virtual {v3, p0}, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;->setPageName(Ljava/lang/String;)V

    .line 116
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, p0}, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;->setViewList(Ljava/util/List;)V

    goto :goto_1

    :cond_3
    const-string p0, "view"

    .line 118
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 119
    new-instance p0, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme$ThemeView;

    invoke-direct {p0}, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme$ThemeView;-><init>()V

    const-string v4, "id"

    .line 120
    invoke-interface {v1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme$ThemeView;->setId(Ljava/lang/String;)V

    .line 121
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v4}, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme$ThemeView;->setAttrList(Ljava/util/List;)V

    if-eqz v3, :cond_5

    .line 123
    invoke-virtual {v3}, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;->getViewList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 126
    :cond_4
    new-instance p0, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme$ThemeView$ViewAttr;

    invoke-direct {p0}, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme$ThemeView$ViewAttr;-><init>()V

    .line 127
    invoke-virtual {p0, v5}, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme$ThemeView$ViewAttr;->setAttrName(Ljava/lang/String;)V

    const-string v5, "value"

    .line 128
    invoke-interface {v1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme$ThemeView$ViewAttr;->setAttrValue(Ljava/lang/String;)V

    if-eqz v3, :cond_5

    .line 130
    invoke-virtual {v3}, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;->getViewList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme;->getViewList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme$ThemeView;

    invoke-virtual {v4}, Lcom/xiaopeng/lib/themeswitch/bean/PageTheme$ThemeView;->getAttrList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_5
    :goto_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    :cond_6
    return-object v0
.end method
