.class Lcom/nineoldandroids/util/ReflectiveProperty;
.super Lcom/nineoldandroids/util/Property;
.source "ReflectiveProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/nineoldandroids/util/Property<",
        "TT;TV;>;"
    }
.end annotation


# static fields
.field private static final PREFIX_GET:Ljava/lang/String; = "get"

.field private static final PREFIX_IS:Ljava/lang/String; = "is"

.field private static final PREFIX_SET:Ljava/lang/String; = "set"


# instance fields
.field private mField:Ljava/lang/reflect/Field;

.field private mGetter:Ljava/lang/reflect/Method;

.field private mSetter:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 12
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TV;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 47
    .local p0, "this":Lcom/nineoldandroids/util/ReflectiveProperty;, "Lcom/nineoldandroids/util/ReflectiveProperty<TT;TV;>;"
    .local p1, "propertyHolder":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-direct {p0, p2, p3}, Lcom/nineoldandroids/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    .line 49
    .local v1, "firstLetter":C
    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "theRest":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, "capitalizedName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 53
    .local v5, "getterName":Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_0
    move-object v7, v6

    check-cast v7, [Ljava/lang/Class;

    invoke-virtual {p1, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Lcom/nineoldandroids/util/ReflectiveProperty;->mGetter:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_0

    .line 54
    :catch_0
    move-exception v7

    .line 59
    .local v7, "e":Ljava/lang/NoSuchMethodException;
    :try_start_1
    move-object v8, v6

    check-cast v8, [Ljava/lang/Class;

    invoke-virtual {p1, v5, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    iput-object v8, p0, Lcom/nineoldandroids/util/ReflectiveProperty;->mGetter:Ljava/lang/reflect/Method;

    .line 60
    iget-object v8, p0, Lcom/nineoldandroids/util/ReflectiveProperty;->mGetter:Ljava/lang/reflect/Method;

    invoke-virtual {v8, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    goto :goto_0

    .line 61
    :catch_1
    move-exception v8

    .line 63
    .local v8, "e2":Ljava/lang/NoSuchMethodException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "is"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 65
    :try_start_2
    move-object v9, v6

    check-cast v9, [Ljava/lang/Class;

    invoke-virtual {p1, v5, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    iput-object v9, p0, Lcom/nineoldandroids/util/ReflectiveProperty;->mGetter:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    .line 89
    goto :goto_0

    .line 66
    :catch_2
    move-exception v9

    .line 71
    .local v9, "e3":Ljava/lang/NoSuchMethodException;
    :try_start_3
    check-cast v6, [Ljava/lang/Class;

    invoke-virtual {p1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcom/nineoldandroids/util/ReflectiveProperty;->mGetter:Ljava/lang/reflect/Method;

    .line 72
    iget-object v6, p0, Lcom/nineoldandroids/util/ReflectiveProperty;->mGetter:Ljava/lang/reflect/Method;

    invoke-virtual {v6, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_4

    .line 88
    nop

    .line 92
    .end local v7    # "e":Ljava/lang/NoSuchMethodException;
    .end local v8    # "e2":Ljava/lang/NoSuchMethodException;
    .end local v9    # "e3":Ljava/lang/NoSuchMethodException;
    :goto_0
    iget-object v6, p0, Lcom/nineoldandroids/util/ReflectiveProperty;->mGetter:Ljava/lang/reflect/Method;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    .line 94
    .local v6, "getterType":Ljava/lang/Class;
    invoke-direct {p0, p2, v6}, Lcom/nineoldandroids/util/ReflectiveProperty;->typesMatch(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 98
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 102
    .local v7, "setterName":Ljava/lang/String;
    :try_start_4
    new-array v8, v2, [Ljava/lang/Class;

    aput-object v6, v8, v0

    invoke-virtual {p1, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/nineoldandroids/util/ReflectiveProperty;->mSetter:Ljava/lang/reflect/Method;

    .line 103
    iget-object v0, p0, Lcom/nineoldandroids/util/ReflectiveProperty;->mSetter:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3

    .line 106
    goto :goto_1

    .line 104
    :catch_3
    move-exception v0

    .line 107
    :goto_1
    return-void

    .line 95
    .end local v7    # "setterName":Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/nineoldandroids/util/NoSuchPropertyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Underlying type ("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ") "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "does not match Property type ("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/nineoldandroids/util/NoSuchPropertyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    .end local v6    # "getterType":Ljava/lang/Class;
    .local v7, "e":Ljava/lang/NoSuchMethodException;
    .restart local v8    # "e2":Ljava/lang/NoSuchMethodException;
    .restart local v9    # "e3":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v0

    .line 76
    .local v0, "e4":Ljava/lang/NoSuchMethodException;
    :try_start_5
    invoke-virtual {p1, p3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Lcom/nineoldandroids/util/ReflectiveProperty;->mField:Ljava/lang/reflect/Field;

    .line 77
    iget-object v2, p0, Lcom/nineoldandroids/util/ReflectiveProperty;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 78
    .local v2, "fieldType":Ljava/lang/Class;
    invoke-direct {p0, p2, v2}, Lcom/nineoldandroids/util/ReflectiveProperty;->typesMatch(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 82
    return-void

    .line 79
    :cond_1
    new-instance v6, Lcom/nineoldandroids/util/NoSuchPropertyException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Underlying type ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ") "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "does not match Property type ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Lcom/nineoldandroids/util/NoSuchPropertyException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_5

    .line 83
    .end local v2    # "fieldType":Ljava/lang/Class;
    :catch_5
    move-exception v2

    .line 85
    .local v2, "e5":Ljava/lang/NoSuchFieldException;
    new-instance v6, Lcom/nineoldandroids/util/NoSuchPropertyException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No accessor method or field found for property with name "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Lcom/nineoldandroids/util/NoSuchPropertyException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private typesMatch(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 3
    .param p2, "getterType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TV;>;",
            "Ljava/lang/Class;",
            ")Z"
        }
    .end annotation

    .line 117
    .local p0, "this":Lcom/nineoldandroids/util/ReflectiveProperty;, "Lcom/nineoldandroids/util/ReflectiveProperty<TT;TV;>;"
    .local p1, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    const/4 v0, 0x1

    if-eq p2, p1, :cond_a

    .line 118
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 119
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_0

    const-class v1, Ljava/lang/Float;

    if-eq p1, v1, :cond_7

    :cond_0
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_1

    const-class v1, Ljava/lang/Integer;

    if-eq p1, v1, :cond_7

    :cond_1
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_2

    const-class v1, Ljava/lang/Boolean;

    if-eq p1, v1, :cond_7

    :cond_2
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_3

    const-class v1, Ljava/lang/Long;

    if-eq p1, v1, :cond_7

    :cond_3
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_4

    const-class v1, Ljava/lang/Double;

    if-eq p1, v1, :cond_7

    :cond_4
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_5

    const-class v1, Ljava/lang/Short;

    if-eq p1, v1, :cond_7

    :cond_5
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_6

    const-class v1, Ljava/lang/Byte;

    if-eq p1, v1, :cond_7

    :cond_6
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_8

    const-class v1, Ljava/lang/Character;

    if-ne p1, v1, :cond_8

    :cond_7
    goto :goto_0

    :cond_8
    move v0, v2

    :goto_0
    return v0

    .line 128
    :cond_9
    return v2

    .line 130
    :cond_a
    return v0
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TV;"
        }
    .end annotation

    .line 156
    .local p0, "this":Lcom/nineoldandroids/util/ReflectiveProperty;, "Lcom/nineoldandroids/util/ReflectiveProperty<TT;TV;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/nineoldandroids/util/ReflectiveProperty;->mGetter:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/nineoldandroids/util/ReflectiveProperty;->mGetter:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 159
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 164
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_0
    iget-object v0, p0, Lcom/nineoldandroids/util/ReflectiveProperty;->mField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 166
    :try_start_1
    iget-object v0, p0, Lcom/nineoldandroids/util/ReflectiveProperty;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v0

    .line 167
    :catch_2
    move-exception v0

    .line 168
    .restart local v0    # "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 172
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public isReadOnly()Z
    .locals 1

    .line 180
    .local p0, "this":Lcom/nineoldandroids/util/ReflectiveProperty;, "Lcom/nineoldandroids/util/ReflectiveProperty<TT;TV;>;"
    iget-object v0, p0, Lcom/nineoldandroids/util/ReflectiveProperty;->mSetter:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nineoldandroids/util/ReflectiveProperty;->mField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;)V"
        }
    .end annotation

    .line 135
    .local p0, "this":Lcom/nineoldandroids/util/ReflectiveProperty;, "Lcom/nineoldandroids/util/ReflectiveProperty<TT;TV;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/nineoldandroids/util/ReflectiveProperty;->mSetter:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/nineoldandroids/util/ReflectiveProperty;->mSetter:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 138
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 143
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_0
    iget-object v0, p0, Lcom/nineoldandroids/util/ReflectiveProperty;->mField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 145
    :try_start_1
    iget-object v0, p0, Lcom/nineoldandroids/util/ReflectiveProperty;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    .line 148
    nop

    .line 152
    :goto_0
    return-void

    .line 146
    :catch_2
    move-exception v0

    .line 147
    .restart local v0    # "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 150
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nineoldandroids/util/ReflectiveProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is read-only"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
