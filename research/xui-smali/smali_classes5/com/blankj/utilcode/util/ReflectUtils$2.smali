.class Lcom/blankj/utilcode/util/ReflectUtils$2;
.super Ljava/lang/Object;
.source "ReflectUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/ReflectUtils;->sortMethods(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blankj/utilcode/util/ReflectUtils;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/ReflectUtils;)V
    .locals 0
    .param p1, "this$0"    # Lcom/blankj/utilcode/util/ReflectUtils;

    .line 366
    iput-object p1, p0, Lcom/blankj/utilcode/util/ReflectUtils$2;->this$0:Lcom/blankj/utilcode/util/ReflectUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 366
    check-cast p1, Ljava/lang/reflect/Method;

    check-cast p2, Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1, p2}, Lcom/blankj/utilcode/util/ReflectUtils$2;->compare(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)I
    .locals 7
    .param p1, "o1"    # Ljava/lang/reflect/Method;
    .param p2, "o2"    # Ljava/lang/reflect/Method;

    .line 369
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 370
    .local v0, "types1":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 371
    .local v1, "types2":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v2, v0

    .line 372
    .local v2, "len":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 373
    aget-object v5, v0, v4

    aget-object v6, v1, v4

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 374
    iget-object v3, p0, Lcom/blankj/utilcode/util/ReflectUtils$2;->this$0:Lcom/blankj/utilcode/util/ReflectUtils;

    aget-object v5, v0, v4

    invoke-static {v3, v5}, Lcom/blankj/utilcode/util/ReflectUtils;->access$000(Lcom/blankj/utilcode/util/ReflectUtils;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    iget-object v5, p0, Lcom/blankj/utilcode/util/ReflectUtils$2;->this$0:Lcom/blankj/utilcode/util/ReflectUtils;

    aget-object v6, v1, v4

    invoke-static {v5, v6}, Lcom/blankj/utilcode/util/ReflectUtils;->access$000(Lcom/blankj/utilcode/util/ReflectUtils;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 375
    const/4 v3, 0x1

    return v3

    .line 377
    :cond_0
    const/4 v3, -0x1

    return v3

    .line 372
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 381
    .end local v4    # "i":I
    :cond_2
    return v3
.end method
