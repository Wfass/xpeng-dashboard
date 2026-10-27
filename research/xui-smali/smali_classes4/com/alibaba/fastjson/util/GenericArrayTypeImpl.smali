.class public Lcom/alibaba/fastjson/util/GenericArrayTypeImpl;
.super Ljava/lang/Object;
.source "GenericArrayTypeImpl.java"

# interfaces
.implements Ljava/lang/reflect/GenericArrayType;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final genericComponentType:Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 6
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 0
    .param p1, "genericComponentType"    # Ljava/lang/reflect/Type;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    nop

    .line 11
    iput-object p1, p0, Lcom/alibaba/fastjson/util/GenericArrayTypeImpl;->genericComponentType:Ljava/lang/reflect/Type;

    .line 12
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 34
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_0

    .line 35
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 36
    .local v0, "that":Ljava/lang/reflect/GenericArrayType;
    iget-object v1, p0, Lcom/alibaba/fastjson/util/GenericArrayTypeImpl;->genericComponentType:Ljava/lang/reflect/Type;

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 38
    .end local v0    # "that":Ljava/lang/reflect/GenericArrayType;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getGenericComponentType()Ljava/lang/reflect/Type;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/alibaba/fastjson/util/GenericArrayTypeImpl;->genericComponentType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/alibaba/fastjson/util/GenericArrayTypeImpl;->genericComponentType:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 21
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/GenericArrayTypeImpl;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 22
    .local v0, "genericComponentType":Ljava/lang/reflect/Type;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .local v1, "builder":Ljava/lang/StringBuilder;
    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 24
    move-object v2, v0

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    :goto_0
    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
