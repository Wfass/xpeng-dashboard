.class public Lcom/xiaopeng/a/b;
.super Ljava/lang/Object;
.source "XMLDataStorage.java"


# static fields
.field private static ZA:Lcom/xiaopeng/a/b;


# instance fields
.field private ZB:Ljavax/xml/parsers/DocumentBuilder;

.field private ZC:Lorg/w3c/dom/Document;

.field private ZD:Ljavax/xml/xpath/XPath;

.field private ZE:Z

.field private ZF:Ljava/util/concurrent/ConcurrentHashMap;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/a/b;->ZA:Lcom/xiaopeng/a/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/a/b;->ZE:Z

    .line 177
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/a/b;->ZF:Ljava/util/concurrent/ConcurrentHashMap;

    .line 53
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 54
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringComments(Z)V

    .line 55
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringElementContentWhitespace(Z)V

    .line 57
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/a/b;->ZB:Ljavax/xml/parsers/DocumentBuilder;

    .line 58
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/a/b;->ZD:Ljavax/xml/xpath/XPath;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    invoke-static {v0}, Lcom/xiaopeng/a/c;->d(Ljava/lang/Exception;)V

    .line 62
    :goto_0
    return-void
.end method

.method private a(Lorg/w3c/dom/Document;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Document;
    .locals 0

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/a/b;->b(Lorg/w3c/dom/Document;Lorg/w3c/dom/Document;)V

    .line 137
    return-object p1
.end method

.method private a(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .locals 9

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

    invoke-static {v2, v3, v4}, Lcom/xiaopeng/a/c;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0, p2}, Lcom/xiaopeng/a/b;->a(Lorg/w3c/dom/Element;)[Ljava/lang/String;

    move-result-object v2

    .line 264
    if-eqz v2, :cond_2

    .line 265
    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 266
    const-string v6, "id"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 267
    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 269
    if-eqz v6, :cond_0

    .line 270
    invoke-interface {p2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 272
    :cond_0
    const-string v5, "XMLDataStorage"

    const-string v6, "redefinitionById"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Element \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\" does not exist in base document."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/xiaopeng/a/c;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 281
    :cond_2
    invoke-interface {p2}, Lorg/w3c/dom/Element;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 282
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    .line 284
    :goto_2
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 285
    invoke-interface {p2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 286
    invoke-interface {p2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/a/b;->a(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    .line 284
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 290
    :cond_4
    return-void
.end method

.method private b(Lorg/w3c/dom/Document;Lorg/w3c/dom/Document;)V
    .locals 0

    .line 253
    invoke-interface {p2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/a/b;->a(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    .line 254
    return-void
.end method

.method private l(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .line 102
    const-string p1, "/system/etc/"

    .line 103
    nop

    .line 106
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 107
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "base_xiaopeng_xmlconfig.xml"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 108
    :try_start_2
    const-string p1, "XMLDataStorage"

    const-string v0, "parseXmlFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseXmlFile Is Started xml :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/a/c;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/xiaopeng/a/b;->ZB:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {p1, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1

    .line 110
    const-string p2, "XMLDataStorage"

    const-string v0, "parseXmlFile"

    const-string v3, "Decode base file: base_xiaopeng_xmlconfig.xml"

    invoke-static {p2, v0, v3}, Lcom/xiaopeng/a/c;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object p2, p0, Lcom/xiaopeng/a/b;->ZB:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {p2, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p2

    .line 113
    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/a/b;->a(Lorg/w3c/dom/Document;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Document;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/a/b;->ZC:Lorg/w3c/dom/Document;

    .line 114
    const-string p1, "XMLDataStorage"

    const-string p2, "parseXmlFile"

    const-string v0, "parseXmlFile Is Completed"

    invoke-static {p1, p2, v0}, Lcom/xiaopeng/a/c;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaopeng/a/b;->ZE:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    nop

    .line 122
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 124
    nop

    .line 125
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    .line 120
    :catchall_0
    move-exception p1

    goto :goto_6

    .line 116
    :catch_0
    move-exception p1

    goto :goto_0

    .line 120
    :catchall_1
    move-exception p1

    move-object v2, v0

    goto :goto_6

    .line 116
    :catch_1
    move-exception p1

    move-object v2, v0

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 120
    :catchall_2
    move-exception p1

    move-object v1, v0

    move-object v2, v1

    goto :goto_6

    .line 116
    :catch_2
    move-exception p1

    move-object v2, v0

    .line 117
    :goto_1
    const/4 p2, 0x0

    :try_start_4
    iput-boolean p2, p0, Lcom/xiaopeng/a/b;->ZE:Z

    .line 118
    invoke-static {p1}, Lcom/xiaopeng/a/c;->d(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 121
    if-eqz v0, :cond_0

    .line 122
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_2

    .line 127
    :catch_3
    move-exception p1

    goto :goto_3

    .line 124
    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    .line 125
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    .line 127
    :goto_3
    nop

    .line 128
    invoke-static {p1}, Lcom/xiaopeng/a/c;->d(Ljava/lang/Exception;)V

    .line 130
    goto :goto_5

    .line 129
    :cond_1
    :goto_4
    nop

    .line 132
    :goto_5
    iget-boolean p1, p0, Lcom/xiaopeng/a/b;->ZE:Z

    return p1

    .line 120
    :catchall_3
    move-exception p1

    move-object v1, v0

    .line 121
    :goto_6
    if-eqz v1, :cond_2

    .line 122
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_7

    .line 127
    :catch_4
    move-exception p2

    goto :goto_8

    .line 124
    :cond_2
    :goto_7
    if-eqz v2, :cond_3

    .line 125
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_9

    .line 127
    :goto_8
    nop

    .line 128
    invoke-static {p2}, Lcom/xiaopeng/a/c;->d(Ljava/lang/Exception;)V

    nop

    .line 129
    :cond_3
    :goto_9
    throw p1
.end method

.method public static declared-synchronized qg()Lcom/xiaopeng/a/b;
    .locals 2

    const-class v0, Lcom/xiaopeng/a/b;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/xiaopeng/a/b;->ZA:Lcom/xiaopeng/a/b;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/xiaopeng/a/b;

    invoke-direct {v1}, Lcom/xiaopeng/a/b;-><init>()V

    sput-object v1, Lcom/xiaopeng/a/b;->ZA:Lcom/xiaopeng/a/b;

    .line 48
    :cond_0
    sget-object v1, Lcom/xiaopeng/a/b;->ZA:Lcom/xiaopeng/a/b;
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


# virtual methods
.method public a(Lorg/w3c/dom/Element;)[Ljava/lang/String;
    .locals 3

    .line 208
    nop

    .line 210
    invoke-interface {p1}, Lorg/w3c/dom/Element;->hasAttributes()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    .line 212
    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 214
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 215
    invoke-interface {p1, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public ah(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 181
    nop

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/xiaopeng/a/b;->ZF:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 184
    if-nez v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/xiaopeng/a/b;->ZC:Lorg/w3c/dom/Document;

    invoke-interface {v1, p1}, Lorg/w3c/dom/Document;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    iget-object p1, p0, Lcom/xiaopeng/a/b;->ZF:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    nop

    .line 189
    :cond_0
    return-object v1
.end method

.method public az(Landroid/content/Context;)Z
    .locals 6

    .line 65
    iput-object p1, p0, Lcom/xiaopeng/a/b;->mContext:Landroid/content/Context;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 68
    const-string v1, "com.xiaopeng.factory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const-string v0, "FactoryTest"

    sput-object v0, Lcom/xiaopeng/a/c;->TAG:Ljava/lang/String;

    goto :goto_0

    .line 70
    :cond_0
    const-string v1, "com.xiaopeng.devtools"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    const-string v0, "DevTools"

    sput-object v0, Lcom/xiaopeng/a/c;->TAG:Ljava/lang/String;

    goto :goto_0

    .line 72
    :cond_1
    const-string v1, "com.xiaopeng.cardiagnosis"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 73
    const-string v0, "CarDiagnosis"

    sput-object v0, Lcom/xiaopeng/a/c;->TAG:Ljava/lang/String;

    .line 79
    :goto_0
    const-class v0, Lcom/xiaopeng/a/b;

    monitor-enter v0

    .line 80
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/a/b;->qg()Lcom/xiaopeng/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/a/b;->qh()Z

    move-result v1

    if-nez v1, :cond_3

    .line 81
    const-string v1, "ro.xpeng.xml.model"

    const-string v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_xiaopeng_xmlconfig.xml"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 85
    const-string v2, "XMLDataStorage"

    const-string v3, "parseXML"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "modelXML="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/xiaopeng/a/c;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/xiaopeng/a/b;->qg()Lcom/xiaopeng/a/b;

    move-result-object v2

    invoke-direct {v2, p1, v1}, Lcom/xiaopeng/a/b;->l(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 88
    const-string v2, "XMLDataStorage"

    const-string v3, "parseXML"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "model file not found : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/a/c;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/xiaopeng/a/b;->qg()Lcom/xiaopeng/a/b;

    move-result-object v1

    const-string v2, "base_xiaopeng_xmlconfig.xml"

    invoke-direct {v1, p1, v2}, Lcom/xiaopeng/a/b;->l(Landroid/content/Context;Ljava/lang/String;)Z

    .line 91
    const-string p1, "XMLDataStorage"

    const-string v1, "parseXML"

    const-string v2, "Default file loaded => base_xiaopeng_xmlconfig.xml"

    invoke-static {p1, v1, v2}, Lcom/xiaopeng/a/c;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_2
    const-string p1, "XMLDataStorage"

    const-string v1, "parsingXML"

    const-string v2, "data parsing completed."

    invoke-static {p1, v1, v2}, Lcom/xiaopeng/a/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    goto :goto_1

    .line 95
    :cond_3
    const-string p1, "XMLDataStorage"

    const-string v1, "parsingXML"

    const-string v2, "data parsing was completed."

    invoke-static {p1, v1, v2}, Lcom/xiaopeng/a/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :goto_1
    monitor-exit v0

    .line 98
    const/4 p1, 0x1

    return p1

    .line 97
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 75
    :cond_4
    const-string p1, "XMLDataStorage"

    const-string v0, "parsingXML"

    const-string v1, "UnKnown PackageName"

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/a/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const/4 p1, 0x0

    return p1
.end method

.method public qh()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcom/xiaopeng/a/b;->ZE:Z

    return v0
.end method
