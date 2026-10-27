.class Lcom/xiaopeng/xmlconfig/Support$Values;
.super Ljava/lang/Object;
.source "Support.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xmlconfig/Support;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Values"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .line 526
    invoke-static {p0, p1}, Lcom/xiaopeng/xmlconfig/Support$Values;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .line 526
    invoke-static {p0, p1}, Lcom/xiaopeng/xmlconfig/Support$Values;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .line 526
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/xmlconfig/Support$Values;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;)B
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .line 526
    invoke-static {p0, p1}, Lcom/xiaopeng/xmlconfig/Support$Values;->getByte(Ljava/lang/String;Ljava/lang/String;)B

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .line 526
    invoke-static {p0, p1}, Lcom/xiaopeng/xmlconfig/Support$Values;->getInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;)F
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .line 526
    invoke-static {p0, p1}, Lcom/xiaopeng/xmlconfig/Support$Values;->getFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/lang/String;)D
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .line 526
    invoke-static {p0, p1}, Lcom/xiaopeng/xmlconfig/Support$Values;->getDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$700(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .line 526
    invoke-static {p0, p1}, Lcom/xiaopeng/xmlconfig/Support$Values;->getLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "resultField"    # Ljava/lang/String;

    .line 528
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/xmlconfig/Support$Values;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getBoolean(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "resultField"    # Ljava/lang/String;
    .param p2, "logLevel"    # I

    .line 532
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/xiaopeng/xmlconfig/Support$Values;->getBoolean(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method private static getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 5
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "resultField"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 536
    move v0, p2

    .line 539
    .local v0, "value":Z
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->instance()Lcom/xiaopeng/xmlconfig/XMLDataStorage;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->getAttributeValueById(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    .line 541
    const-string v1, "Support"

    const-string v2, "Values.getBoolean"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/xmlconfig/XmlUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    goto :goto_0

    .line 542
    :catch_0
    move-exception v1

    .line 543
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/xiaopeng/xmlconfig/XmlUtil;->log_e(Ljava/lang/Exception;)V

    .line 546
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method private static getBoolean(Ljava/lang/String;Ljava/lang/String;ZI)Z
    .locals 5
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "resultField"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "logLevel"    # I

    .line 550
    move v0, p2

    .line 553
    .local v0, "value":Z
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->instance()Lcom/xiaopeng/xmlconfig/XMLDataStorage;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->getAttributeValueById(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    .line 555
    const-string v1, "Support"

    const-string v2, "Values.getBoolean"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/xmlconfig/XmlUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    goto :goto_0

    .line 556
    :catch_0
    move-exception v1

    .line 557
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/xiaopeng/xmlconfig/XmlUtil;->log_e(Ljava/lang/Exception;)V

    .line 560
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method private static getByte(Ljava/lang/String;Ljava/lang/String;)B
    .locals 5
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "resultField"    # Ljava/lang/String;

    .line 564
    const/4 v0, 0x0

    .line 567
    .local v0, "value":B
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->instance()Lcom/xiaopeng/xmlconfig/XMLDataStorage;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->getAttributeValueById(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    move v0, v1

    .line 569
    const-string v1, "Support"

    const-string v2, "Values.getByte"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/xmlconfig/XmlUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    goto :goto_0

    .line 570
    :catch_0
    move-exception v1

    .line 571
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/xiaopeng/xmlconfig/XmlUtil;->log_e(Ljava/lang/Exception;)V

    .line 574
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method private static getDouble(Ljava/lang/String;Ljava/lang/String;)D
    .locals 6
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "resultField"    # Ljava/lang/String;

    .line 661
    const-wide/16 v0, 0x0

    .line 664
    .local v0, "value":D
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->instance()Lcom/xiaopeng/xmlconfig/XMLDataStorage;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->getAttributeValueById(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    move-wide v0, v2

    .line 666
    const-string v2, "Support"

    const-string v3, "Values.getDouble"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/xiaopeng/xmlconfig/XmlUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    goto :goto_0

    .line 667
    :catch_0
    move-exception v2

    .line 668
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/xiaopeng/xmlconfig/XmlUtil;->log_e(Ljava/lang/Exception;)V

    .line 671
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-wide v0
.end method

.method private static getFloat(Ljava/lang/String;Ljava/lang/String;)F
    .locals 5
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "resultField"    # Ljava/lang/String;

    .line 647
    const/4 v0, 0x0

    .line 650
    .local v0, "value":F
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->instance()Lcom/xiaopeng/xmlconfig/XMLDataStorage;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->getAttributeValueById(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    move v0, v1

    .line 652
    const-string v1, "Support"

    const-string v2, "Values.getFloat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/xmlconfig/XmlUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    goto :goto_0

    .line 653
    :catch_0
    move-exception v1

    .line 654
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/xiaopeng/xmlconfig/XmlUtil;->log_e(Ljava/lang/Exception;)V

    .line 657
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method private static getInt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "resultField"    # Ljava/lang/String;

    .line 619
    const/4 v0, 0x0

    .line 622
    .local v0, "value":I
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->instance()Lcom/xiaopeng/xmlconfig/XMLDataStorage;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->getAttributeValueById(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v0, v1

    .line 624
    const-string v1, "Support"

    const-string v2, "Values.getInt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/xmlconfig/XmlUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    goto :goto_0

    .line 625
    :catch_0
    move-exception v1

    .line 626
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/xiaopeng/xmlconfig/XmlUtil;->log_e(Ljava/lang/Exception;)V

    .line 629
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method private static getLong(Ljava/lang/String;Ljava/lang/String;)J
    .locals 6
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "resultField"    # Ljava/lang/String;

    .line 633
    const-wide/16 v0, 0x0

    .line 636
    .local v0, "value":J
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->instance()Lcom/xiaopeng/xmlconfig/XMLDataStorage;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->getAttributeValueById(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-wide v0, v2

    .line 638
    const-string v2, "Support"

    const-string v3, "Values.getFloat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/xiaopeng/xmlconfig/XmlUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    goto :goto_0

    .line 639
    :catch_0
    move-exception v2

    .line 640
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/xiaopeng/xmlconfig/XmlUtil;->log_e(Ljava/lang/Exception;)V

    .line 643
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-wide v0
.end method

.method private static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "resultField"    # Ljava/lang/String;

    .line 598
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/xmlconfig/Support$Values;->getString(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "resultField"    # Ljava/lang/String;
    .param p2, "logLevel"    # I

    .line 602
    const-string v0, "Unknown"

    .line 605
    .local v0, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->instance()Lcom/xiaopeng/xmlconfig/XMLDataStorage;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->getAttributeValueById(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 606
    const-string v1, "Support"

    const-string v2, "Values.getString"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/xmlconfig/XmlUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    goto :goto_0

    .line 607
    :catch_0
    move-exception v1

    .line 608
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/xiaopeng/xmlconfig/XmlUtil;->log_e(Ljava/lang/Exception;)V

    .line 611
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    if-nez v0, :cond_0

    .line 612
    const-string v0, "Unknown"

    .line 615
    :cond_0
    return-object v0
.end method

.method private static getString(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "resultField"    # Ljava/lang/String;
    .param p2, "isLog"    # Z

    .line 578
    const-string v0, "Unknown"

    .line 581
    .local v0, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->instance()Lcom/xiaopeng/xmlconfig/XMLDataStorage;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/xiaopeng/xmlconfig/XMLDataStorage;->getAttributeValueById(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 583
    if-eqz p2, :cond_0

    .line 584
    const-string v1, "Support"

    const-string v2, "Values.getString"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/xmlconfig/XmlUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    :cond_0
    goto :goto_0

    .line 586
    :catch_0
    move-exception v1

    .line 587
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/xiaopeng/xmlconfig/XmlUtil;->log_e(Ljava/lang/Exception;)V

    .line 590
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    if-nez v0, :cond_1

    .line 591
    const-string v0, "Unknown"

    .line 594
    :cond_1
    return-object v0
.end method
