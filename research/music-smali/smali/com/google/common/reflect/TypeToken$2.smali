.class Lcom/google/common/reflect/TypeToken$2;
.super Lcom/google/common/reflect/h;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/reflect/TypeToken;->f()Lcom/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/ImmutableSet$a;

.field final synthetic b:Lcom/google/common/reflect/TypeToken;


# direct methods
.method constructor <init>(Lcom/google/common/reflect/TypeToken;Lcom/google/common/collect/ImmutableSet$a;)V
    .locals 0

    .line 1091
    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$2;->b:Lcom/google/common/reflect/TypeToken;

    iput-object p2, p0, Lcom/google/common/reflect/TypeToken$2;->a:Lcom/google/common/collect/ImmutableSet$a;

    invoke-direct {p0}, Lcom/google/common/reflect/h;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1109
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$2;->a:Lcom/google/common/collect/ImmutableSet$a;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet$a;->c(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$a;

    return-void
.end method

.method a(Ljava/lang/reflect/GenericArrayType;)V
    .locals 1

    .line 1114
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$2;->a:Lcom/google/common/collect/ImmutableSet$a;

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->a(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/reflect/TypeToken;->b()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/reflect/i;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet$a;->c(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$a;

    return-void
.end method

.method a(Ljava/lang/reflect/ParameterizedType;)V
    .locals 1

    .line 1104
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$2;->a:Lcom/google/common/collect/ImmutableSet$a;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet$a;->c(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$a;

    return-void
.end method

.method a(Ljava/lang/reflect/TypeVariable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)V"
        }
    .end annotation

    .line 1094
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeToken$2;->a([Ljava/lang/reflect/Type;)V

    return-void
.end method

.method a(Ljava/lang/reflect/WildcardType;)V
    .locals 0

    .line 1099
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeToken$2;->a([Ljava/lang/reflect/Type;)V

    return-void
.end method
