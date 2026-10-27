.class public Lcom/xiaopeng/xmlconfig/XMLDataStorage;
.super Ljava/lang/Object;
.source "XMLDataStorage.java"


# static fields
.field public static final CLASS_NAME:Ljava/lang/String; = "XMLDataStorage"

.field private static final DEFAULT_XML:Ljava/lang/String; = "base_xiaopeng_xmlconfig.xml"

.field private static final SUFFIX_XML_FILE:Ljava/lang/String; = "_xiaopeng_xmlconfig.xml"

.field private static mInstance:Lcom/xiaopeng/xmlconfig/XMLDataStorage;


# instance fields
.field private mAttrCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDOMParser:Ljavax/xml/parsers/DocumentBuilder;

.field private mDocument:Lorg/w3c/dom/Document;

.field private mWasCompletedParsing:Z

.field private mXPath:Ljavax/xml/xpath/XPath;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->mInstance:Lcom/xiaopeng/xmlconfig/XMLDataStorage;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->mWasCompletedParsing:Z

    .line 177
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->mAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 53
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 54
    .local v0, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringComments(Z)V

    .line 55
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringElementContentWhitespace(Z)V

    .line 57
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->mDOMParser:Ljavax/xml/parsers/DocumentBuilder;

    .line 58
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->mXPath:Ljavax/xml/xpath/XPath;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v0    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/XmlUtil;->log_e(Ljava/lang/Exception;)V

    .line 62
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_0
    return-void
.end method

.method private cloneNode(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)Lorg/w3c/dom/Node;
    .locals 7
    .param p1, "document"    # Lorg/w3c/dom/Document;
    .param p2, "cloneTarget"    # Lorg/w3c/dom/Element;

    .line 298
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 300
    .local v0, "newNode":Lorg/w3c/dom/Element;
    invoke-interface {p2}, Lorg/w3c/dom/Element;->hasAttributes()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 301
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->getAttributeNameSet(Lorg/w3c/dom/Element;)[Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "attributes":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 304
    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    .line 305
    .local v5, "attr":Ljava/lang/String;
    invoke-interface {p2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .end local v5    # "attr":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 310
    .end local v1    # "attributes":[Ljava/lang/String;
    :cond_0
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 312
    .local v1, "list":Lorg/w3c/dom/NodeList;
    nop

    .local v2, "i":I
    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 313
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 314
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-direct {p0, p1, v3}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->cloneNode(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 312
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 318
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method public static declared-synchronized instance()Lcom/xiaopeng/xmlconfig/XMLDataStorage;
    .locals 2

    const-class v0, Lcom/xiaopeng/xmlconfig/XMLDataStorage;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->mInstance:Lcom/xiaopeng/xmlconfig/XMLDataStorage;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/xiaopeng/xmlconfig/XMLDataStorage;

    invoke-direct {v1}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;-><init>()V

    sput-object v1, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->mInstance:Lcom/xiaopeng/xmlconfig/XMLDataStorage;

    .line 48
    :cond_0
    sget-object v1, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->mInstance:Lcom/xiaopeng/xmlconfig/XMLDataStorage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 44
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private makeElementArray(Lorg/w3c/dom/NodeList;)[Lorg/w3c/dom/Element;
    .locals 3
    .param p1, "nodeList"    # Lorg/w3c/dom/NodeList;

    .line 243
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    new-array v0, v0, [Lorg/w3c/dom/Element;

    .line 245
    .local v0, "elementSet":[Lorg/w3c/dom/Element;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 246
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    aput-object v2, v0, v1

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private parseXmlFile(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xml"    # Ljava/lang/String;

    .line 102
    const-string v0, "/system/etc/"

    .line 103
    .local v0, "etcPath":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "inputstream":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 106
    .local v2, "baseInputstream":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    .line 107
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "base_xiaopeng_xmlconfig.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    .line 108
    const-string v3, "XMLDataStorage"

    const-string v4, "parseXmlFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseXmlFile Is Started xml :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/xiaopeng/xmlconfig/XmlUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v3, p0, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->mDOMParser:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v3, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 110
    .local v3, "document":Lorg/w3c/dom/Document;
    const-string v4, "XMLDataStorage"

    const-string v5, "parseXmlFile"

    const-string v6, "Decode base file: base_xiaopeng_xmlconfig.xml"

    invoke-static {v4, v5, v6}, Lcom/xiaopeng/xmlconfig/XmlUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v4, p0, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->mDOMParser:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v4, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 113
    .local v4, "baseDocument":Lorg/w3c/dom/Document;
    invoke-direct {p0, v4, v3}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->redefinitionXml(Lorg/w3c/dom/Document;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Document;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->mDocument:Lorg/w3c/dom/Document;

    .line 114
    const-string v5, "XMLDataStorage"

    const-string v6, "parseXmlFile"

    const-string v7, "parseXmlFile Is Completed"

    invoke-static {v5, v6, v7}, Lcom/xiaopeng/xmlconfig/XmlUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->mWasCompletedParsing:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .end local v3    # "document":Lorg/w3c/dom/Document;
    .end local v4    # "baseDocument":Lorg/w3c/dom/Document;
    nop

    .line 122
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 127
    :catch_0
    move-exception v3

    goto :goto_1

    .line 124
    :goto_0
    nop

    .line 125
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 127
    :goto_1
    nop

    .line 128
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v3}, Lcom/xiaopeng/xmlconfig/XmlUtil;->log_e(Ljava/lang/Exception;)V

    .line 130
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 129
    :cond_0
    :goto_2
    goto :goto_3

    .line 120
    :catchall_0
    move-exception v3

    goto :goto_4

    .line 116
    :catch_1
    move-exception v3

    .line 117
    .local v3, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    :try_start_2
    iput-boolean v4, p0, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->mWasCompletedParsing:Z

    .line 118
    invoke-static {v3}, Lcom/xiaopeng/xmlconfig/XmlUtil;->log_e(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_1

    .line 122
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 124
    :cond_1
    if-eqz v2, :cond_0

    .line 125
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 132
    :goto_3
    iget-boolean v3, p0, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->mWasCompletedParsing:Z

    return v3

    .line 120
    :goto_4
    nop

    .line 121
    if-eqz v1, :cond_2

    .line 122
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_5

    .line 127
    :catch_2
    move-exception v4

    goto :goto_6

    .line 124
    :cond_2
    :goto_5
    if-eqz v2, :cond_3

    .line 125
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    .line 127
    :goto_6
    nop

    .line 128
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v4}, Lcom/xiaopeng/xmlconfig/XmlUtil;->log_e(Ljava/lang/Exception;)V

    .end local v4    # "e":Ljava/io/IOException;
    nop

    .line 129
    :cond_3
    :goto_7
    throw v3
.end method

.method private redefinitionById(Lorg/w3c/dom/Document;Lorg/w3c/dom/Document;)V
    .locals 1
    .param p1, "baseDocument"    # Lorg/w3c/dom/Document;
    .param p2, "subDocument"    # Lorg/w3c/dom/Document;

    .line 253
    invoke-interface {p2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->redefinitionById(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    .line 254
    return-void
.end method

.method private redefinitionById(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .locals 11
    .param p1, "baseDocument"    # Lorg/w3c/dom/Document;
    .param p2, "redefNode"    # Lorg/w3c/dom/Element;

    .line 257
    invoke-interface {p2}, Lorg/w3c/dom/Element;->hasAttributes()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 258
    const-string v0, "id"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 261
    const-string v2, "XMLDataStorage"

    const-string v3, "redefinitionById"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/xiaopeng/xmlconfig/XmlUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->getAttributeNameSet(Lorg/w3c/dom/Element;)[Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, "attributes":[Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 265
    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 266
    .local v5, "attr":Ljava/lang/String;
    const-string v6, "id"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 267
    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 269
    .local v6, "element":Lorg/w3c/dom/Element;
    if-eqz v6, :cond_0

    .line 270
    invoke-interface {p2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 272
    :cond_0
    const-string v7, "XMLDataStorage"

    const-string v8, "redefinitionById"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Element \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\" does not exist in base document."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/xiaopeng/xmlconfig/XmlUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .end local v5    # "attr":Ljava/lang/String;
    .end local v6    # "element":Lorg/w3c/dom/Element;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 281
    .end local v0    # "id":Ljava/lang/String;
    .end local v2    # "attributes":[Ljava/lang/String;
    :cond_2
    invoke-interface {p2}, Lorg/w3c/dom/Element;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 282
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 284
    .local v0, "childNodes":Lorg/w3c/dom/NodeList;
    nop

    .local v1, "i":I
    :goto_2
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 285
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 286
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-direct {p0, p1, v2}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->redefinitionById(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    .line 284
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 290
    .end local v0    # "childNodes":Lorg/w3c/dom/NodeList;
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method private redefinitionXml(Lorg/w3c/dom/Document;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Document;
    .locals 0
    .param p1, "base"    # Lorg/w3c/dom/Document;
    .param p2, "sub"    # Lorg/w3c/dom/Document;

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->redefinitionById(Lorg/w3c/dom/Document;Lorg/w3c/dom/Document;)V

    .line 137
    return-object p1
.end method

.method private swapNode(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    .locals 2
    .param p1, "targetDocument"    # Lorg/w3c/dom/Document;
    .param p2, "baseNode"    # Lorg/w3c/dom/Node;
    .param p3, "subNode"    # Lorg/w3c/dom/Node;

    .line 293
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    move-object v1, p3

    check-cast v1, Lorg/w3c/dom/Element;

    .line 294
    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->cloneNode(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/w3c/dom/Node;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 295
    return-void
.end method

.method private xpath(Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 1
    .param p1, "expression"    # Ljava/lang/String;
    .param p2, "returnType"    # Ljavax/xml/namespace/QName;

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->mDocument:Lorg/w3c/dom/Document;

    invoke-direct {p0, v0, p1, p2}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->xpath(Lorg/w3c/dom/Document;Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private xpath(Lorg/w3c/dom/Document;Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 2
    .param p1, "document"    # Lorg/w3c/dom/Document;
    .param p2, "expression"    # Ljava/lang/String;
    .param p3, "returnType"    # Ljavax/xml/namespace/QName;

    .line 231
    const/4 v0, 0x0

    .line 234
    .local v0, "result":Ljava/lang/Object;
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->mXPath:Ljavax/xml/xpath/XPath;

    invoke-interface {v1, p2}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 237
    goto :goto_0

    .line 235
    :catch_0
    move-exception v1

    .line 236
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 239
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getAttributeNameSet(Lorg/w3c/dom/Element;)[Ljava/lang/String;
    .locals 4
    .param p1, "element"    # Lorg/w3c/dom/Element;

    .line 208
    const/4 v0, 0x0

    .line 210
    .local v0, "attributeSet":[Ljava/lang/String;
    invoke-interface {p1}, Lorg/w3c/dom/Element;->hasAttributes()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 212
    .local v1, "map":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 214
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 215
    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 214
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 219
    .end local v1    # "map":Lorg/w3c/dom/NamedNodeMap;
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method public getAttributeValueByAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "finaAttr"    # Ljava/lang/String;
    .param p2, "findAttrValue"    # Ljava/lang/String;
    .param p3, "resultAttr"    # Ljava/lang/String;

    .line 198
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->getElementByAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 200
    .local v0, "element":Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    .line 201
    invoke-interface {v0, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 204
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getAttributeValueById(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "resultAttr"    # Ljava/lang/String;

    .line 181
    const-string v0, "$"

    .line 182
    .local v0, "DELIMITER":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "cacheId":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->mAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 184
    .local v2, "attr":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 185
    iget-object v3, p0, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->mDocument:Lorg/w3c/dom/Document;

    invoke-interface {v3, p1}, Lorg/w3c/dom/Document;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v3, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, "value":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->mAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    move-object v2, v3

    .line 189
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public getAttributeValueByTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "resultAttr"    # Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->mDocument:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChildElementSet(Ljava/lang/String;)[Lorg/w3c/dom/Element;
    .locals 2
    .param p1, "parentNodeName"    # Ljava/lang/String;

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->xpath(Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/NodeList;

    .line 170
    .local v0, "nodeList":Lorg/w3c/dom/NodeList;
    if-eqz v0, :cond_0

    .line 171
    invoke-direct {p0, v0}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->makeElementArray(Lorg/w3c/dom/NodeList;)[Lorg/w3c/dom/Element;

    move-result-object v1

    return-object v1

    .line 173
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDocument()Lorg/w3c/dom/Document;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->mDocument:Lorg/w3c/dom/Document;

    return-object v0
.end method

.method public getElementByAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 2
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "attributeValue"    # Ljava/lang/String;

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "//*[@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\']"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->xpath(Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    return-object v0
.end method

.method public getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->mDocument:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public getElementByName(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 2
    .param p1, "nodeName"    # Ljava/lang/String;

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->xpath(Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    return-object v0
.end method

.method public getElementSetByName(Ljava/lang/String;)[Lorg/w3c/dom/Element;
    .locals 2
    .param p1, "nodeName"    # Ljava/lang/String;

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->xpath(Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/NodeList;

    .line 160
    .local v0, "nodeList":Lorg/w3c/dom/NodeList;
    if-eqz v0, :cond_0

    .line 161
    invoke-direct {p0, v0}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->makeElementArray(Lorg/w3c/dom/NodeList;)[Lorg/w3c/dom/Element;

    move-result-object v1

    return-object v1

    .line 163
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public parseXML(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    iput-object p1, p0, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->mContext:Landroid/content/Context;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "com.xiaopeng.factory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const-string v1, "FactoryTest"

    sput-object v1, Lcom/xiaopeng/xmlconfig/XmlUtil;->TAG:Ljava/lang/String;

    goto :goto_0

    .line 70
    :cond_0
    const-string v1, "com.xiaopeng.devtools"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    const-string v1, "DevTools"

    sput-object v1, Lcom/xiaopeng/xmlconfig/XmlUtil;->TAG:Ljava/lang/String;

    goto :goto_0

    .line 72
    :cond_1
    const-string v1, "com.xiaopeng.cardiagnosis"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 73
    const-string v1, "CarDiagnosis"

    sput-object v1, Lcom/xiaopeng/xmlconfig/XmlUtil;->TAG:Ljava/lang/String;

    .line 79
    :goto_0
    const-class v1, Lcom/xiaopeng/xmlconfig/XMLDataStorage;

    monitor-enter v1

    .line 80
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->instance()Lcom/xiaopeng/xmlconfig/XMLDataStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->wasCompletedParsing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 81
    const-string v2, "ro.xpeng.xml.model"

    const-string v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "modelXML":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_xiaopeng_xmlconfig.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 85
    const-string v3, "XMLDataStorage"

    const-string v4, "parseXML"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "modelXML="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/xiaopeng/xmlconfig/XmlUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->instance()Lcom/xiaopeng/xmlconfig/XMLDataStorage;

    move-result-object v3

    invoke-direct {v3, p1, v2}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->parseXmlFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 88
    const-string v3, "XMLDataStorage"

    const-string v4, "parseXML"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "model file not found : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/xiaopeng/xmlconfig/XmlUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->instance()Lcom/xiaopeng/xmlconfig/XMLDataStorage;

    move-result-object v3

    const-string v4, "base_xiaopeng_xmlconfig.xml"

    invoke-direct {v3, p1, v4}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->parseXmlFile(Landroid/content/Context;Ljava/lang/String;)Z

    .line 91
    const-string v3, "XMLDataStorage"

    const-string v4, "parseXML"

    const-string v5, "Default file loaded => base_xiaopeng_xmlconfig.xml"

    invoke-static {v3, v4, v5}, Lcom/xiaopeng/xmlconfig/XmlUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_2
    const-string v3, "XMLDataStorage"

    const-string v4, "parsingXML"

    const-string v5, "data parsing completed."

    invoke-static {v3, v4, v5}, Lcom/xiaopeng/xmlconfig/XmlUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .end local v2    # "modelXML":Ljava/lang/String;
    goto :goto_1

    .line 95
    :cond_3
    const-string v2, "XMLDataStorage"

    const-string v3, "parsingXML"

    const-string v4, "data parsing was completed."

    invoke-static {v2, v3, v4}, Lcom/xiaopeng/xmlconfig/XmlUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :goto_1
    monitor-exit v1

    .line 98
    const/4 v1, 0x1

    return v1

    .line 97
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 75
    :cond_4
    const-string v1, "XMLDataStorage"

    const-string v2, "parsingXML"

    const-string v3, "UnKnown PackageName"

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/xmlconfig/XmlUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const/4 v1, 0x0

    return v1
.end method

.method public wasCompletedParsing()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->mWasCompletedParsing:Z

    return v0
.end method
