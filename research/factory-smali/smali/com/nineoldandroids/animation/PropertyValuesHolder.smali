.class public Lcom/nineoldandroids/animation/PropertyValuesHolder;
.super Ljava/lang/Object;
.source "PropertyValuesHolder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;,
        Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;
    }
.end annotation


# static fields
.field private static DOUBLE_VARIANTS:[Ljava/lang/Class;

.field private static FLOAT_VARIANTS:[Ljava/lang/Class;

.field private static INTEGER_VARIANTS:[Ljava/lang/Class;

.field private static final sFloatEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

.field private static final sGetterPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sIntEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

.field private static final sSetterPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimatedValue:Ljava/lang/Object;

.field private mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

.field private mGetter:Ljava/lang/reflect/Method;

.field mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;

.field protected mProperty:Lcom/nineoldandroids/util/Property;

.field final mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field mPropertyName:Ljava/lang/String;

.field mSetter:Ljava/lang/reflect/Method;

.field final mTmpValueArray:[Ljava/lang/Object;

.field mValueType:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 80
    new-instance v0, Lcom/nineoldandroids/animation/IntEvaluator;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/IntEvaluator;-><init>()V

    sput-object v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->sIntEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    .line 81
    new-instance v0, Lcom/nineoldandroids/animation/FloatEvaluator;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/FloatEvaluator;-><init>()V

    sput-object v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->sFloatEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    .line 90
    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Float;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-class v2, Ljava/lang/Double;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-class v2, Ljava/lang/Integer;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sput-object v1, Lcom/nineoldandroids/animation/PropertyValuesHolder;->FLOAT_VARIANTS:[Ljava/lang/Class;

    .line 92
    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v6

    const-class v2, Ljava/lang/Float;

    aput-object v2, v1, v7

    const-class v2, Ljava/lang/Double;

    aput-object v2, v1, v8

    sput-object v1, Lcom/nineoldandroids/animation/PropertyValuesHolder;->INTEGER_VARIANTS:[Ljava/lang/Class;

    .line 94
    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Double;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Float;

    aput-object v1, v0, v7

    const-class v1, Ljava/lang/Integer;

    aput-object v1, v0, v8

    sput-object v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->DOUBLE_VARIANTS:[Ljava/lang/Class;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->sSetterPropertyMap:Ljava/util/HashMap;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->sGetterPropertyMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lcom/nineoldandroids/util/Property;)V
    .locals 1
    .param p1, "property"    # Lcom/nineoldandroids/util/Property;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    .line 65
    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    .line 76
    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;

    .line 107
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 110
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    .line 140
    iput-object p1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lcom/nineoldandroids/util/Property;

    .line 141
    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {p1}, Lcom/nineoldandroids/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    .line 144
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/nineoldandroids/util/Property;Lcom/nineoldandroids/animation/PropertyValuesHolder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nineoldandroids/util/Property;
    .param p2, "x1"    # Lcom/nineoldandroids/animation/PropertyValuesHolder$1;

    .line 36
    invoke-direct {p0, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;-><init>(Lcom/nineoldandroids/util/Property;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    .line 65
    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    .line 76
    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;

    .line 107
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 110
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    .line 132
    iput-object p1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    .line 133
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/nineoldandroids/animation/PropertyValuesHolder$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/nineoldandroids/animation/PropertyValuesHolder$1;

    .line 36
    invoke-direct {p0, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 744
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 748
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 749
    .local v0, "firstLetter":C
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 750
    .local v1, "theRest":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 746
    .end local v0    # "firstLetter":C
    .end local v1    # "theRest":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p0
.end method

.method private getPropertyFunction(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 12
    .param p1, "targetClass"    # Ljava/lang/Class;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "valueType"    # Ljava/lang/Class;

    .line 381
    const/4 v0, 0x0

    .line 382
    .local v0, "returnVal":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, "methodName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 384
    .local v2, "args":[Ljava/lang/Class;
    const/4 v3, 0x1

    if-nez p3, :cond_0

    .line 386
    :try_start_0
    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 398
    :goto_0
    goto/16 :goto_4

    .line 387
    :catch_0
    move-exception v4

    .line 392
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    :try_start_1
    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v0, v5

    .line 393
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 397
    goto :goto_0

    .line 394
    :catch_1
    move-exception v3

    .line 395
    .local v3, "e2":Ljava/lang/NoSuchMethodException;
    const-string v5, "PropertyValuesHolder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t find no-arg method for property "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e2":Ljava/lang/NoSuchMethodException;
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 400
    :cond_0
    new-array v2, v3, [Ljava/lang/Class;

    .line 402
    iget-object v4, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v5, Ljava/lang/Float;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 403
    sget-object v4, Lcom/nineoldandroids/animation/PropertyValuesHolder;->FLOAT_VARIANTS:[Ljava/lang/Class;

    .local v4, "typeVariants":[Ljava/lang/Class;
    :goto_1
    goto :goto_2

    .line 404
    .end local v4    # "typeVariants":[Ljava/lang/Class;
    :cond_1
    iget-object v4, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v6, Ljava/lang/Integer;

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 405
    sget-object v4, Lcom/nineoldandroids/animation/PropertyValuesHolder;->INTEGER_VARIANTS:[Ljava/lang/Class;

    goto :goto_1

    .line 406
    :cond_2
    iget-object v4, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v6, Ljava/lang/Double;

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 407
    sget-object v4, Lcom/nineoldandroids/animation/PropertyValuesHolder;->DOUBLE_VARIANTS:[Ljava/lang/Class;

    goto :goto_1

    .line 409
    :cond_3
    new-array v4, v3, [Ljava/lang/Class;

    .line 410
    .restart local v4    # "typeVariants":[Ljava/lang/Class;
    iget-object v6, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    aput-object v6, v4, v5

    .line 412
    :goto_2
    move-object v6, v4

    .local v6, "arr$":[Ljava/lang/Class;
    array-length v7, v6

    .local v7, "len$":I
    move-object v8, v0

    move v0, v5

    .local v0, "i$":I
    .local v8, "returnVal":Ljava/lang/reflect/Method;
    :goto_3
    if-ge v0, v7, :cond_4

    aget-object v9, v6, v0

    .line 413
    .local v9, "typeVariant":Ljava/lang/Class;
    aput-object v9, v2, v5

    .line 415
    :try_start_2
    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    move-object v8, v10

    .line 417
    iput-object v9, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    .line 418
    return-object v8

    .line 419
    :catch_2
    move-exception v10

    .line 424
    .local v10, "e":Ljava/lang/NoSuchMethodException;
    :try_start_3
    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    move-object v8, v11

    .line 425
    invoke-virtual {v8, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 427
    iput-object v9, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3

    .line 428
    return-object v8

    .line 429
    :catch_3
    move-exception v11

    .line 412
    .end local v9    # "typeVariant":Ljava/lang/Class;
    .end local v10    # "e":Ljava/lang/NoSuchMethodException;
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 435
    .end local v0    # "i$":I
    .end local v6    # "arr$":[Ljava/lang/Class;
    .end local v7    # "len$":I
    :cond_4
    const-string v0, "PropertyValuesHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t find setter/getter for property "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " with value type "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    .end local v4    # "typeVariants":[Ljava/lang/Class;
    move-object v0, v8

    .end local v8    # "returnVal":Ljava/lang/reflect/Method;
    .local v0, "returnVal":Ljava/lang/reflect/Method;
    :goto_4
    return-object v0
.end method

.method public static varargs ofFloat(Lcom/nineoldandroids/util/Property;[F)Lcom/nineoldandroids/animation/PropertyValuesHolder;
    .locals 1
    .param p1, "values"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nineoldandroids/util/Property<",
            "*",
            "Ljava/lang/Float;",
            ">;[F)",
            "Lcom/nineoldandroids/animation/PropertyValuesHolder;"
        }
    .end annotation

    .line 187
    .local p0, "property":Lcom/nineoldandroids/util/Property;, "Lcom/nineoldandroids/util/Property<*Ljava/lang/Float;>;"
    new-instance v0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Lcom/nineoldandroids/util/Property;[F)V

    return-object v0
.end method

.method public static varargs ofFloat(Ljava/lang/String;[F)Lcom/nineoldandroids/animation/PropertyValuesHolder;
    .locals 1
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "values"    # [F

    .line 176
    new-instance v0, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Ljava/lang/String;[F)V

    return-object v0
.end method

.method public static varargs ofInt(Lcom/nineoldandroids/util/Property;[I)Lcom/nineoldandroids/animation/PropertyValuesHolder;
    .locals 1
    .param p1, "values"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nineoldandroids/util/Property<",
            "*",
            "Ljava/lang/Integer;",
            ">;[I)",
            "Lcom/nineoldandroids/animation/PropertyValuesHolder;"
        }
    .end annotation

    .line 165
    .local p0, "property":Lcom/nineoldandroids/util/Property;, "Lcom/nineoldandroids/util/Property<*Ljava/lang/Integer;>;"
    new-instance v0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Lcom/nineoldandroids/util/Property;[I)V

    return-object v0
.end method

.method public static varargs ofInt(Ljava/lang/String;[I)Lcom/nineoldandroids/animation/PropertyValuesHolder;
    .locals 1
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "values"    # [I

    .line 154
    new-instance v0, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Ljava/lang/String;[I)V

    return-object v0
.end method

.method public static varargs ofKeyframe(Lcom/nineoldandroids/util/Property;[Lcom/nineoldandroids/animation/Keyframe;)Lcom/nineoldandroids/animation/PropertyValuesHolder;
    .locals 3
    .param p0, "property"    # Lcom/nineoldandroids/util/Property;
    .param p1, "values"    # [Lcom/nineoldandroids/animation/Keyframe;

    .line 281
    invoke-static {p1}, Lcom/nineoldandroids/animation/KeyframeSet;->ofKeyframe([Lcom/nineoldandroids/animation/Keyframe;)Lcom/nineoldandroids/animation/KeyframeSet;

    move-result-object v0

    .line 282
    .local v0, "keyframeSet":Lcom/nineoldandroids/animation/KeyframeSet;
    instance-of v1, v0, Lcom/nineoldandroids/animation/IntKeyframeSet;

    if-eqz v1, :cond_0

    .line 283
    new-instance v1, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    move-object v2, v0

    check-cast v2, Lcom/nineoldandroids/animation/IntKeyframeSet;

    invoke-direct {v1, p0, v2}, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Lcom/nineoldandroids/util/Property;Lcom/nineoldandroids/animation/IntKeyframeSet;)V

    return-object v1

    .line 284
    :cond_0
    instance-of v1, v0, Lcom/nineoldandroids/animation/FloatKeyframeSet;

    if-eqz v1, :cond_1

    .line 285
    new-instance v1, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    move-object v2, v0

    check-cast v2, Lcom/nineoldandroids/animation/FloatKeyframeSet;

    invoke-direct {v1, p0, v2}, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Lcom/nineoldandroids/util/Property;Lcom/nineoldandroids/animation/FloatKeyframeSet;)V

    return-object v1

    .line 288
    :cond_1
    new-instance v1, Lcom/nineoldandroids/animation/PropertyValuesHolder;

    invoke-direct {v1, p0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;-><init>(Lcom/nineoldandroids/util/Property;)V

    .line 289
    .local v1, "pvh":Lcom/nineoldandroids/animation/PropertyValuesHolder;
    iput-object v0, v1, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;

    .line 290
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Lcom/nineoldandroids/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v1, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 291
    return-object v1
.end method

.method public static varargs ofKeyframe(Ljava/lang/String;[Lcom/nineoldandroids/animation/Keyframe;)Lcom/nineoldandroids/animation/PropertyValuesHolder;
    .locals 3
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "values"    # [Lcom/nineoldandroids/animation/Keyframe;

    .line 250
    invoke-static {p1}, Lcom/nineoldandroids/animation/KeyframeSet;->ofKeyframe([Lcom/nineoldandroids/animation/Keyframe;)Lcom/nineoldandroids/animation/KeyframeSet;

    move-result-object v0

    .line 251
    .local v0, "keyframeSet":Lcom/nineoldandroids/animation/KeyframeSet;
    instance-of v1, v0, Lcom/nineoldandroids/animation/IntKeyframeSet;

    if-eqz v1, :cond_0

    .line 252
    new-instance v1, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    move-object v2, v0

    check-cast v2, Lcom/nineoldandroids/animation/IntKeyframeSet;

    invoke-direct {v1, p0, v2}, Lcom/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Ljava/lang/String;Lcom/nineoldandroids/animation/IntKeyframeSet;)V

    return-object v1

    .line 253
    :cond_0
    instance-of v1, v0, Lcom/nineoldandroids/animation/FloatKeyframeSet;

    if-eqz v1, :cond_1

    .line 254
    new-instance v1, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    move-object v2, v0

    check-cast v2, Lcom/nineoldandroids/animation/FloatKeyframeSet;

    invoke-direct {v1, p0, v2}, Lcom/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Ljava/lang/String;Lcom/nineoldandroids/animation/FloatKeyframeSet;)V

    return-object v1

    .line 257
    :cond_1
    new-instance v1, Lcom/nineoldandroids/animation/PropertyValuesHolder;

    invoke-direct {v1, p0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    .line 258
    .local v1, "pvh":Lcom/nineoldandroids/animation/PropertyValuesHolder;
    iput-object v0, v1, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;

    .line 259
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Lcom/nineoldandroids/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v1, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 260
    return-object v1
.end method

.method public static varargs ofObject(Lcom/nineoldandroids/util/Property;Lcom/nineoldandroids/animation/TypeEvaluator;[Ljava/lang/Object;)Lcom/nineoldandroids/animation/PropertyValuesHolder;
    .locals 1
    .param p0, "property"    # Lcom/nineoldandroids/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nineoldandroids/util/Property;",
            "Lcom/nineoldandroids/animation/TypeEvaluator<",
            "TV;>;[TV;)",
            "Lcom/nineoldandroids/animation/PropertyValuesHolder;"
        }
    .end annotation

    .line 224
    .local p1, "evaluator":Lcom/nineoldandroids/animation/TypeEvaluator;, "Lcom/nineoldandroids/animation/TypeEvaluator<TV;>;"
    .local p2, "values":[Ljava/lang/Object;, "[TV;"
    new-instance v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;

    invoke-direct {v0, p0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;-><init>(Lcom/nineoldandroids/util/Property;)V

    .line 225
    .local v0, "pvh":Lcom/nineoldandroids/animation/PropertyValuesHolder;
    invoke-virtual {v0, p2}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    .line 226
    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->setEvaluator(Lcom/nineoldandroids/animation/TypeEvaluator;)V

    .line 227
    return-object v0
.end method

.method public static varargs ofObject(Ljava/lang/String;Lcom/nineoldandroids/animation/TypeEvaluator;[Ljava/lang/Object;)Lcom/nineoldandroids/animation/PropertyValuesHolder;
    .locals 1
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "evaluator"    # Lcom/nineoldandroids/animation/TypeEvaluator;
    .param p2, "values"    # [Ljava/lang/Object;

    .line 204
    new-instance v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;

    invoke-direct {v0, p0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, "pvh":Lcom/nineoldandroids/animation/PropertyValuesHolder;
    invoke-virtual {v0, p2}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    .line 206
    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->setEvaluator(Lcom/nineoldandroids/animation/TypeEvaluator;)V

    .line 207
    return-object v0
.end method

.method private setupGetter(Ljava/lang/Class;)V
    .locals 3
    .param p1, "targetClass"    # Ljava/lang/Class;

    .line 493
    sget-object v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->sGetterPropertyMap:Ljava/util/HashMap;

    const-string v1, "get"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->setupSetterOrGetter(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    .line 494
    return-void
.end method

.method private setupSetterOrGetter(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .param p1, "targetClass"    # Ljava/lang/Class;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "valueType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 457
    .local p2, "propertyMapMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;>;"
    const/4 v0, 0x0

    .line 462
    .local v0, "setterOrGetter":Ljava/lang/reflect/Method;
    :try_start_0
    iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 463
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 464
    .local v1, "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    if-eqz v1, :cond_0

    .line 465
    iget-object v2, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    move-object v0, v2

    .line 467
    :cond_0
    if-nez v0, :cond_2

    .line 468
    invoke-direct {p0, p1, p3, p4}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->getPropertyFunction(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v0, v2

    .line 469
    if-nez v1, :cond_1

    .line 470
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v1, v2

    .line 471
    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    :cond_1
    iget-object v2, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    .end local v1    # "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :cond_2
    iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 477
    nop

    .line 478
    return-object v0

    .line 476
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1
.end method

.method private setupValue(Ljava/lang/Object;Lcom/nineoldandroids/animation/Keyframe;)V
    .locals 3
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "kf"    # Lcom/nineoldandroids/animation/Keyframe;

    .line 551
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lcom/nineoldandroids/util/Property;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lcom/nineoldandroids/util/Property;

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/nineoldandroids/animation/Keyframe;->setValue(Ljava/lang/Object;)V

    .line 555
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 556
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 557
    .local v0, "targetClass":Ljava/lang/Class;
    invoke-direct {p0, v0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->setupGetter(Ljava/lang/Class;)V

    .line 559
    .end local v0    # "targetClass":Ljava/lang/Class;
    :cond_1
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/nineoldandroids/animation/Keyframe;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 562
    :catch_0
    move-exception v0

    .line 563
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_1

    .line 560
    :catch_1
    move-exception v0

    .line 561
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_0
    nop

    .line 565
    :goto_1
    return-void
.end method


# virtual methods
.method calculateValue(F)V
    .locals 1
    .param p1, "fraction"    # F

    .line 670
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/KeyframeSet;->getValue(F)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mAnimatedValue:Ljava/lang/Object;

    .line 671
    return-void
.end method

.method public clone()Lcom/nineoldandroids/animation/PropertyValuesHolder;
    .locals 2

    .line 594
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;

    .line 595
    .local v0, "newPVH":Lcom/nineoldandroids/animation/PropertyValuesHolder;
    iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    iput-object v1, v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    .line 596
    iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lcom/nineoldandroids/util/Property;

    iput-object v1, v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lcom/nineoldandroids/util/Property;

    .line 597
    iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;

    invoke-virtual {v1}, Lcom/nineoldandroids/animation/KeyframeSet;->clone()Lcom/nineoldandroids/animation/KeyframeSet;

    move-result-object v1

    iput-object v1, v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;

    .line 598
    iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    iput-object v1, v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    return-object v0

    .line 600
    .end local v0    # "newPVH":Lcom/nineoldandroids/animation/PropertyValuesHolder;
    :catch_0
    move-exception v0

    .line 602
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->clone()Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method getAnimatedValue()Ljava/lang/Object;
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mAnimatedValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .line 713
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    return-object v0
.end method

.method init()V
    .locals 2

    .line 634
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    if-nez v0, :cond_2

    .line 637
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->sIntEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->sFloatEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    .line 641
    :cond_2
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    if-eqz v0, :cond_3

    .line 644
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;

    iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/KeyframeSet;->setEvaluator(Lcom/nineoldandroids/animation/TypeEvaluator;)V

    .line 646
    :cond_3
    return-void
.end method

.method setAnimatedValue(Ljava/lang/Object;)V
    .locals 3
    .param p1, "target"    # Ljava/lang/Object;

    .line 614
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lcom/nineoldandroids/util/Property;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lcom/nineoldandroids/util/Property;

    invoke-virtual {p0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/nineoldandroids/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 619
    :try_start_0
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 620
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 623
    :catch_0
    move-exception v0

    .line 624
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_1

    .line 621
    :catch_1
    move-exception v0

    .line 622
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_0
    nop

    .line 627
    :cond_1
    :goto_1
    return-void
.end method

.method public setEvaluator(Lcom/nineoldandroids/animation/TypeEvaluator;)V
    .locals 1
    .param p1, "evaluator"    # Lcom/nineoldandroids/animation/TypeEvaluator;

    .line 659
    iput-object p1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    .line 660
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/KeyframeSet;->setEvaluator(Lcom/nineoldandroids/animation/TypeEvaluator;)V

    .line 661
    return-void
.end method

.method public varargs setFloatValues([F)V
    .locals 1
    .param p1, "values"    # [F

    .line 327
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 328
    invoke-static {p1}, Lcom/nineoldandroids/animation/KeyframeSet;->ofFloat([F)Lcom/nineoldandroids/animation/KeyframeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;

    .line 329
    return-void
.end method

.method public varargs setIntValues([I)V
    .locals 1
    .param p1, "values"    # [I

    .line 309
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 310
    invoke-static {p1}, Lcom/nineoldandroids/animation/KeyframeSet;->ofInt([I)Lcom/nineoldandroids/animation/KeyframeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;

    .line 311
    return-void
.end method

.method public varargs setKeyframes([Lcom/nineoldandroids/animation/Keyframe;)V
    .locals 4
    .param p1, "values"    # [Lcom/nineoldandroids/animation/Keyframe;

    .line 337
    array-length v0, p1

    .line 338
    .local v0, "numKeyframes":I
    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Lcom/nineoldandroids/animation/Keyframe;

    .line 339
    .local v1, "keyframes":[Lcom/nineoldandroids/animation/Keyframe;
    const/4 v2, 0x0

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lcom/nineoldandroids/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 340
    nop

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 341
    aget-object v3, p1, v2

    aput-object v3, v1, v2

    .line 340
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 343
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Lcom/nineoldandroids/animation/KeyframeSet;

    invoke-direct {v2, v1}, Lcom/nineoldandroids/animation/KeyframeSet;-><init>([Lcom/nineoldandroids/animation/Keyframe;)V

    iput-object v2, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;

    .line 344
    return-void
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .locals 1
    .param p1, "values"    # [Ljava/lang/Object;

    .line 360
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 361
    invoke-static {p1}, Lcom/nineoldandroids/animation/KeyframeSet;->ofObject([Ljava/lang/Object;)Lcom/nineoldandroids/animation/KeyframeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;

    .line 362
    return-void
.end method

.method public setProperty(Lcom/nineoldandroids/util/Property;)V
    .locals 0
    .param p1, "property"    # Lcom/nineoldandroids/util/Property;

    .line 701
    iput-object p1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lcom/nineoldandroids/util/Property;

    .line 702
    return-void
.end method

.method public setPropertyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 689
    iput-object p1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    .line 690
    return-void
.end method

.method setupEndValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;

    .line 588
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;

    iget-object v0, v0, Lcom/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;

    iget-object v1, v1, Lcom/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Keyframe;

    invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->setupValue(Ljava/lang/Object;Lcom/nineoldandroids/animation/Keyframe;)V

    .line 589
    return-void
.end method

.method setupSetter(Ljava/lang/Class;)V
    .locals 3
    .param p1, "targetClass"    # Ljava/lang/Class;

    .line 486
    sget-object v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->sSetterPropertyMap:Ljava/util/HashMap;

    const-string v1, "set"

    iget-object v2, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->setupSetterOrGetter(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    .line 487
    return-void
.end method

.method setupSetterAndGetter(Ljava/lang/Object;)V
    .locals 6
    .param p1, "target"    # Ljava/lang/Object;

    .line 507
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lcom/nineoldandroids/util/Property;

    if-eqz v0, :cond_2

    .line 510
    :try_start_0
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lcom/nineoldandroids/util/Property;

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 511
    .local v0, "testValue":Ljava/lang/Object;
    iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;

    iget-object v1, v1, Lcom/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nineoldandroids/animation/Keyframe;

    .line 512
    .local v2, "kf":Lcom/nineoldandroids/animation/Keyframe;
    invoke-virtual {v2}, Lcom/nineoldandroids/animation/Keyframe;->hasValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 513
    iget-object v3, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lcom/nineoldandroids/util/Property;

    invoke-virtual {v3, p1}, Lcom/nineoldandroids/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/animation/Keyframe;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "kf":Lcom/nineoldandroids/animation/Keyframe;
    goto :goto_0

    .line 516
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void

    .line 517
    .end local v0    # "testValue":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 518
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v1, "PropertyValuesHolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such property ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lcom/nineoldandroids/util/Property;

    invoke-virtual {v3}, Lcom/nineoldandroids/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") on target object "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Trying reflection instead"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lcom/nineoldandroids/util/Property;

    .line 523
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 524
    .local v0, "targetClass":Ljava/lang/Class;
    iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    if-nez v1, :cond_3

    .line 525
    invoke-virtual {p0, v0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->setupSetter(Ljava/lang/Class;)V

    .line 527
    :cond_3
    iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;

    iget-object v1, v1, Lcom/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nineoldandroids/animation/Keyframe;

    .line 528
    .restart local v2    # "kf":Lcom/nineoldandroids/animation/Keyframe;
    invoke-virtual {v2}, Lcom/nineoldandroids/animation/Keyframe;->hasValue()Z

    move-result v3

    if-nez v3, :cond_5

    .line 529
    iget-object v3, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    if-nez v3, :cond_4

    .line 530
    invoke-direct {p0, v0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->setupGetter(Ljava/lang/Class;)V

    .line 533
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/animation/Keyframe;->setValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 536
    :catch_1
    move-exception v3

    .line 537
    .local v3, "e":Ljava/lang/IllegalAccessException;
    const-string v4, "PropertyValuesHolder"

    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "kf":Lcom/nineoldandroids/animation/Keyframe;
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_2

    .line 534
    .restart local v2    # "kf":Lcom/nineoldandroids/animation/Keyframe;
    :catch_2
    move-exception v3

    .line 535
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "PropertyValuesHolder"

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    .end local v2    # "kf":Lcom/nineoldandroids/animation/Keyframe;
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_5
    :goto_2
    goto :goto_1

    .line 541
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_6
    return-void
.end method

.method setupStartValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;

    .line 576
    iget-object v0, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;

    iget-object v0, v0, Lcom/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Keyframe;

    invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->setupValue(Ljava/lang/Object;Lcom/nineoldandroids/animation/Keyframe;)V

    .line 577
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/nineoldandroids/animation/KeyframeSet;

    invoke-virtual {v1}, Lcom/nineoldandroids/animation/KeyframeSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
