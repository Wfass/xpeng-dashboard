.class public Lcom/alibaba/fastjson2/util/MultiType;
.super Ljava/lang/Object;
.source "MultiType.java"

# interfaces
.implements Ljava/lang/reflect/Type;


# instance fields
.field private final types:[Ljava/lang/reflect/Type;


# direct methods
.method public varargs constructor <init>([Ljava/lang/reflect/Type;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/alibaba/fastjson2/util/MultiType;->types:[Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public getType(I)Ljava/lang/reflect/Type;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/alibaba/fastjson2/util/MultiType;->types:[Ljava/lang/reflect/Type;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/alibaba/fastjson2/util/MultiType;->types:[Ljava/lang/reflect/Type;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/alibaba/fastjson2/util/MultiType;->types:[Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/alibaba/fastjson2/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
