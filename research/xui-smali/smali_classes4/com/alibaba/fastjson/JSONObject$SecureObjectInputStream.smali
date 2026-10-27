.class Lcom/alibaba/fastjson/JSONObject$SecureObjectInputStream;
.super Ljava/io/ObjectInputStream;
.source "JSONObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SecureObjectInputStream"
.end annotation


# static fields
.field static fields:[Ljava/lang/reflect/Field;

.field static volatile fields_error:Z


# direct methods
.method public constructor <init>(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 551
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 553
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    sget-object v1, Lcom/alibaba/fastjson/JSONObject$SecureObjectInputStream;->fields:[Ljava/lang/reflect/Field;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 554
    sget-object v1, Lcom/alibaba/fastjson/JSONObject$SecureObjectInputStream;->fields:[Ljava/lang/reflect/Field;

    aget-object v1, v1, v0

    .line 555
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 556
    .local v2, "value":Ljava/lang/Object;
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "value":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 560
    .end local v0    # "i":I
    :cond_0
    goto :goto_1

    .line 558
    :catch_0
    move-exception v0

    .line 559
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alibaba/fastjson/JSONObject$SecureObjectInputStream;->fields_error:Z

    .line 561
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :goto_1
    return-void
.end method

.method static ensureFields()V
    .locals 7

    .line 529
    sget-object v0, Lcom/alibaba/fastjson/JSONObject$SecureObjectInputStream;->fields:[Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/alibaba/fastjson/JSONObject$SecureObjectInputStream;->fields_error:Z

    if-nez v0, :cond_1

    .line 531
    const/4 v0, 0x1

    :try_start_0
    const-class v1, Ljava/io/ObjectInputStream;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 532
    .local v1, "declaredFields":[Ljava/lang/reflect/Field;
    const-string v2, "bin"

    const-string v3, "passHandle"

    const-string v4, "handles"

    const-string v5, "curContext"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    .line 533
    .local v2, "fieldnames":[Ljava/lang/String;
    array-length v3, v2

    new-array v3, v3, [Ljava/lang/reflect/Field;

    .line 534
    .local v3, "array":[Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_0

    .line 535
    const-class v5, Ljava/io/ObjectInputStream;

    aget-object v6, v2, v4

    .line 536
    invoke-static {v5, v6, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 540
    .local v5, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 541
    aput-object v5, v3, v4

    .line 534
    .end local v5    # "field":Ljava/lang/reflect/Field;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 543
    .end local v4    # "i":I
    :cond_0
    sput-object v3, Lcom/alibaba/fastjson/JSONObject$SecureObjectInputStream;->fields:[Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    .end local v1    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v2    # "fieldnames":[Ljava/lang/String;
    .end local v3    # "array":[Ljava/lang/reflect/Field;
    goto :goto_1

    .line 544
    :catch_0
    move-exception v1

    .line 545
    .local v1, "error":Ljava/lang/Throwable;
    sput-boolean v0, Lcom/alibaba/fastjson/JSONObject$SecureObjectInputStream;->fields_error:Z

    .line 548
    .end local v1    # "error":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method protected readStreamHeader()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    .line 591
    return-void
.end method

.method protected resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 5
    .param p1, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 565
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    .line 567
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 568
    .local v1, "index":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 569
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 571
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x3b

    if-ne v2, v4, :cond_1

    .line 572
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 574
    :cond_1
    sget-object v2, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    const/4 v3, 0x0

    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->SupportAutoType:Lcom/alibaba/fastjson/parser/Feature;

    iget v4, v4, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    invoke-virtual {v2, v0, v3, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    .line 576
    .end local v1    # "index":I
    :cond_2
    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method

.method protected resolveProxyClass([Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .param p1, "interfaces"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 581
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 583
    .local v2, "interfacename":Ljava/lang/String;
    sget-object v3, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    .line 581
    .end local v2    # "interfacename":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 585
    :cond_0
    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveProxyClass([Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
