.class public Laav;
.super Ljava/lang/Object;
.source "MoneySupport.java"


# static fields
.field static a:Ljava/lang/Class;

.field static b:Ljava/lang/Class;

.field static c:Ljava/lang/Class;

.field static d:Ljava/lang/Class;

.field static e:Ljava/lang/Class;

.field static f:Ljava/lang/Class;

.field static g:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static h:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static i:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static j:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field static k:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static l:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation
.end field

.field static m:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 205
    sget-object v0, Laav;->e:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "javax.money.NumberValue"

    .line 206
    invoke-static {v0}, Labo;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Laav;->e:Ljava/lang/Class;

    .line 209
    :cond_0
    sget-object v0, Laav;->f:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "javax.money.CurrencyUnit"

    .line 210
    invoke-static {v0}, Labo;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Laav;->f:Ljava/lang/Class;

    .line 213
    :cond_1
    sget-object v0, Laav;->a:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "javax.money.Monetary"

    .line 214
    invoke-static {v0}, Labo;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Laav;->a:Ljava/lang/Class;

    .line 217
    :cond_2
    sget-object v0, Laav;->b:Ljava/lang/Class;

    if-nez v0, :cond_3

    const-string v0, "javax.money.MonetaryAmount"

    .line 218
    invoke-static {v0}, Labo;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Laav;->b:Ljava/lang/Class;

    .line 221
    :cond_3
    sget-object v0, Laav;->c:Ljava/lang/Class;

    if-nez v0, :cond_4

    const-string v0, "javax.money.MonetaryAmountFactory"

    .line 222
    invoke-static {v0}, Labo;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Laav;->c:Ljava/lang/Class;

    .line 225
    :cond_4
    sget-object v0, Laav;->h:Ljava/util/function/Supplier;

    if-nez v0, :cond_5

    .line 226
    sget-object v0, Laav;->a:Ljava/lang/Class;

    invoke-static {v0}, Labf;->b(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    .line 228
    :try_start_0
    sget-object v0, Laav;->a:Ljava/lang/Class;

    const-string v2, "getDefaultAmountFactory"

    sget-object v3, Laav;->c:Ljava/lang/Class;

    .line 231
    invoke-static {v3}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v3

    .line 228
    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v5

    const-string v2, "get"

    .line 234
    sget-object v3, Labo;->l:Ljava/lang/invoke/MethodType;

    sget-object v4, Labo;->v:Ljava/lang/invoke/MethodType;

    sget-object v0, Laav;->c:Ljava/lang/Class;

    .line 240
    invoke-static {v0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    .line 234
    invoke-static/range {v1 .. v6}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 243
    invoke-polymorphic {v0}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/Supplier;

    move-result-object v0

    sput-object v0, Laav;->h:Ljava/util/function/Supplier;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 245
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string v0, "method not found : javax.money.Monetary.getDefaultAmountFactory"

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 249
    :cond_5
    :goto_0
    sget-object v0, Laav;->i:Ljava/util/function/BiFunction;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "method not found : javax.money.NumberValue.numberValue"

    if-nez v0, :cond_6

    .line 250
    sget-object v0, Laav;->c:Ljava/lang/Class;

    invoke-static {v0}, Labf;->b(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v4

    .line 252
    :try_start_1
    sget-object v0, Laav;->c:Ljava/lang/Class;

    const-string v5, "setCurrency"

    sget-object v6, Laav;->c:Ljava/lang/Class;

    sget-object v7, Laav;->f:Ljava/lang/Class;

    .line 255
    invoke-static {v6, v7}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    .line 252
    invoke-virtual {v4, v0, v5, v6}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v8

    const-string v5, "apply"

    .line 258
    sget-object v6, Labo;->s:Ljava/lang/invoke/MethodType;

    sget-object v7, Labo;->C:Ljava/lang/invoke/MethodType;

    sget-object v0, Laav;->c:Ljava/lang/Class;

    sget-object v9, Laav;->c:Ljava/lang/Class;

    new-array v10, v2, [Ljava/lang/Class;

    sget-object v11, Laav;->f:Ljava/lang/Class;

    aput-object v11, v10, v1

    .line 264
    invoke-static {v0, v9, v10}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v9

    .line 258
    invoke-static/range {v4 .. v9}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 267
    invoke-polymorphic {v0}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/BiFunction;

    move-result-object v0

    sput-object v0, Laav;->i:Ljava/util/function/BiFunction;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 269
    new-instance p1, Lcom/alibaba/fastjson2/c;

    invoke-direct {p1, v3, p0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 273
    :cond_6
    :goto_1
    sget-object v0, Laav;->j:Ljava/util/function/BiFunction;

    if-nez v0, :cond_7

    .line 274
    sget-object v0, Laav;->c:Ljava/lang/Class;

    invoke-static {v0}, Labf;->b(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v4

    .line 276
    :try_start_2
    sget-object v0, Laav;->c:Ljava/lang/Class;

    const-string v5, "setNumber"

    sget-object v6, Laav;->c:Ljava/lang/Class;

    const-class v7, Ljava/lang/Number;

    .line 279
    invoke-static {v6, v7}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    .line 276
    invoke-virtual {v4, v0, v5, v6}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v8

    const-string v5, "apply"

    .line 282
    sget-object v6, Labo;->s:Ljava/lang/invoke/MethodType;

    sget-object v7, Labo;->C:Ljava/lang/invoke/MethodType;

    sget-object v0, Laav;->c:Ljava/lang/Class;

    sget-object v9, Laav;->c:Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Class;

    const-class v10, Ljava/lang/Number;

    aput-object v10, v2, v1

    .line 288
    invoke-static {v0, v9, v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v9

    .line 282
    invoke-static/range {v4 .. v9}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 291
    invoke-polymorphic {v0}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/BiFunction;

    move-result-object v0

    sput-object v0, Laav;->j:Ljava/util/function/BiFunction;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 293
    new-instance p1, Lcom/alibaba/fastjson2/c;

    invoke-direct {p1, v3, p0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 297
    :cond_7
    :goto_2
    sget-object v0, Laav;->g:Ljava/util/function/Function;

    if-nez v0, :cond_8

    .line 298
    sget-object v0, Laav;->c:Ljava/lang/Class;

    invoke-static {v0}, Labf;->b(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v4

    .line 300
    :try_start_3
    sget-object v0, Laav;->c:Ljava/lang/Class;

    const-string v1, "create"

    sget-object v2, Laav;->b:Ljava/lang/Class;

    .line 303
    invoke-static {v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    .line 300
    invoke-virtual {v4, v0, v1, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v8

    const-string v5, "apply"

    .line 306
    sget-object v6, Labo;->m:Ljava/lang/invoke/MethodType;

    sget-object v7, Labo;->w:Ljava/lang/invoke/MethodType;

    sget-object v0, Laav;->b:Ljava/lang/Class;

    sget-object v1, Laav;->c:Ljava/lang/Class;

    .line 312
    invoke-static {v0, v1}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v9

    .line 306
    invoke-static/range {v4 .. v9}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 315
    invoke-polymorphic {v0}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/Function;

    move-result-object v0

    sput-object v0, Laav;->g:Ljava/util/function/Function;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 317
    new-instance p1, Lcom/alibaba/fastjson2/c;

    invoke-direct {p1, v3, p0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 321
    :cond_8
    :goto_3
    sget-object v0, Laav;->h:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz p0, :cond_9

    .line 324
    sget-object v1, Laav;->i:Ljava/util/function/BiFunction;

    invoke-interface {v1, v0, p0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    if-eqz p1, :cond_a

    .line 328
    sget-object p0, Laav;->j:Ljava/util/function/BiFunction;

    invoke-interface {p0, v0, p1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :cond_a
    sget-object p0, Laav;->g:Ljava/util/function/Function;

    invoke-interface {p0, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic a(Ljava/util/function/BiFunction;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 64
    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, p1, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic a(Ljava/util/function/BiFunction;Ljava/lang/Object;)Ljava/math/BigDecimal;
    .locals 1

    .line 196
    const-class v0, Ljava/math/BigDecimal;

    invoke-interface {p0, p1, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/math/BigDecimal;

    return-object p0
.end method

.method public static a()Lwk;
    .locals 10

    .line 37
    sget-object v0, Laav;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "javax.money.Monetary"

    .line 38
    invoke-static {v0}, Labo;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Laav;->a:Ljava/lang/Class;

    .line 41
    :cond_0
    sget-object v0, Laav;->f:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "javax.money.CurrencyUnit"

    .line 42
    invoke-static {v0}, Labo;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Laav;->f:Ljava/lang/Class;

    .line 45
    :cond_1
    sget-object v0, Laav;->k:Ljava/util/function/Function;

    if-nez v0, :cond_2

    .line 46
    sget-object v0, Laav;->a:Ljava/lang/Class;

    invoke-static {v0}, Labf;->b(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    .line 48
    :try_start_0
    sget-object v0, Laav;->a:Ljava/lang/Class;

    const-string v2, "getCurrency"

    sget-object v3, Laav;->f:Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 51
    invoke-static {v3, v4, v6}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v3

    .line 48
    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    const-string v2, "apply"

    .line 54
    sget-object v3, Labo;->s:Ljava/lang/invoke/MethodType;

    sget-object v4, Labo;->C:Ljava/lang/invoke/MethodType;

    sget-object v6, Laav;->f:Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/Class;

    const-class v9, [Ljava/lang/String;

    aput-object v9, v5, v8

    .line 60
    invoke-static {v6, v7, v5}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    move-object v5, v0

    .line 54
    invoke-static/range {v1 .. v6}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 63
    invoke-polymorphic {v0}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/BiFunction;

    move-result-object v0

    .line 64
    new-instance v1, L-$$Lambda$aav$fb9mQ2gFc92Oc4MLxLWw9T6WfzI;

    invoke-direct {v1, v0}, L-$$Lambda$aav$fb9mQ2gFc92Oc4MLxLWw9T6WfzI;-><init>(Ljava/util/function/BiFunction;)V

    sput-object v1, Laav;->k:Ljava/util/function/Function;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 66
    new-instance v1, Lcom/alibaba/fastjson2/c;

    const-string v2, "method not found : javax.money.Monetary.getCurrency"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 70
    :cond_2
    :goto_0
    sget-object v0, Laav;->f:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    sget-object v2, Laav;->k:Ljava/util/function/Function;

    invoke-static {v0, v1, v2}, Lzp;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/function/Function;)Lzp;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lwk;
    .locals 30

    .line 74
    sget-object v0, Laav;->e:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "javax.money.NumberValue"

    .line 75
    invoke-static {v0}, Labo;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Laav;->e:Ljava/lang/Class;

    .line 78
    :cond_0
    sget-object v0, Laav;->f:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "javax.money.CurrencyUnit"

    .line 79
    invoke-static {v0}, Labo;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Laav;->f:Ljava/lang/Class;

    .line 83
    :cond_1
    :try_start_0
    const-class v0, Laav;

    const-string v1, "a"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/Object;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "currency"

    const-string v3, "number"

    .line 84
    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v15

    .line 85
    sget-object v1, Lxa;->b:Lxa;

    invoke-virtual {v1, v0, v15}, Lxa;->a(Ljava/lang/reflect/Method;[Ljava/lang/String;)Ljava/util/function/Function;

    move-result-object v13

    .line 87
    sget-object v16, Lxa;->b:Lxa;

    const-class v17, Laav;

    const-class v18, Laav;

    const-string v19, "currency"

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    sget-object v24, Laav;->f:Ljava/lang/Class;

    sget-object v25, Laav;->f:Ljava/lang/Class;

    const-string v26, "currency"

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-virtual/range {v16 .. v29}, Lxa;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Parameter;Laai;)Lsu;

    move-result-object v0

    .line 90
    sget-object v16, Lxa;->b:Lxa;

    const-class v17, Laav;

    const-class v18, Laav;

    const-string v19, "number"

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    sget-object v24, Laav;->d:Ljava/lang/Class;

    sget-object v25, Laav;->d:Ljava/lang/Class;

    const-string v26, "number"

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-virtual/range {v16 .. v29}, Lxa;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Parameter;Laai;)Lsu;

    move-result-object v1

    .line 94
    new-array v2, v2, [Lsu;

    aput-object v0, v2, v5

    aput-object v1, v2, v6

    .line 95
    new-instance v0, Lzv;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v7, v0

    move-object/from16 v16, v2

    invoke-direct/range {v7 .. v19}, Lzv;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/function/Function;Ljava/util/List;[Ljava/lang/String;[Lsu;[Lsu;[Ljava/lang/Class;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 109
    new-instance v1, Lcom/alibaba/fastjson2/c;

    const-string v2, "createMonetaryAmountReader error"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static c()Lwk;
    .locals 5

    .line 116
    sget-object v0, Laav;->d:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.javamoney.moneta.spi.DefaultNumberValue"

    .line 117
    invoke-static {v0}, Labo;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Laav;->d:Ljava/lang/Class;

    .line 120
    :cond_0
    sget-object v0, Laav;->m:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 122
    :try_start_0
    sget-object v0, Laav;->d:Ljava/lang/Class;

    const-string v1, "of"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Number;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Laav;->m:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 124
    new-instance v1, Lcom/alibaba/fastjson2/c;

    const-string v2, "method not found : org.javamoney.moneta.spi.DefaultNumberValue.of"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 128
    :cond_1
    :goto_0
    sget-object v0, Laav;->e:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "javax.money.NumberValue"

    .line 129
    invoke-static {v0}, Labo;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Laav;->e:Ljava/lang/Class;

    .line 132
    :cond_2
    sget-object v0, Laav;->e:Ljava/lang/Class;

    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Laav;->m:Ljava/lang/reflect/Method;

    invoke-static {v0, v1, v2}, Lzp;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;)Lzp;

    move-result-object v0

    return-object v0
.end method

.method public static d()Laem;
    .locals 11

    .line 136
    sget-object v0, Laav;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "javax.money.Monetary"

    .line 137
    invoke-static {v0}, Labo;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Laav;->a:Ljava/lang/Class;

    .line 140
    :cond_0
    sget-object v0, Laav;->b:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "javax.money.MonetaryAmount"

    .line 141
    invoke-static {v0}, Labo;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Laav;->b:Ljava/lang/Class;

    .line 144
    :cond_1
    sget-object v0, Laav;->e:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "javax.money.NumberValue"

    .line 145
    invoke-static {v0}, Labo;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Laav;->e:Ljava/lang/Class;

    .line 148
    :cond_2
    sget-object v0, Laav;->f:Ljava/lang/Class;

    if-nez v0, :cond_3

    const-string v0, "javax.money.CurrencyUnit"

    .line 149
    invoke-static {v0}, Labo;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Laav;->f:Ljava/lang/Class;

    .line 154
    :cond_3
    :try_start_0
    sget-object v0, Laav;->b:Ljava/lang/Class;

    const-string v1, "getCurrency"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 155
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 154
    invoke-static {v0}, Laat;->e(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 163
    :try_start_1
    sget-object v1, Laav;->b:Ljava/lang/Class;

    const-string v3, "getNumber"

    new-array v4, v2, [Ljava/lang/Class;

    .line 164
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 163
    invoke-static {v1}, Laat;->e(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 170
    sget-object v3, Lafe;->a:Lafe;

    sget-object v4, Laav;->f:Ljava/lang/Class;

    const-string v5, "currency"

    invoke-virtual {v3, v5, v4, v4, v0}, Lafe;->a(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/function/Function;)Labq;

    move-result-object v0

    .line 177
    sget-object v3, Lafe;->a:Lafe;

    sget-object v4, Laav;->e:Ljava/lang/Class;

    const-string v5, "number"

    invoke-virtual {v3, v5, v4, v4, v1}, Lafe;->a(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/function/Function;)Labq;

    move-result-object v1

    .line 183
    new-instance v10, Laez;

    sget-object v4, Laav;->b:Ljava/lang/Class;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Labq;

    aput-object v0, v3, v2

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Laez;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v10

    :catch_0
    move-exception v0

    .line 167
    new-instance v1, Lcom/alibaba/fastjson2/c;

    const-string v2, "method not found : javax.money.Monetary.getNumber"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 158
    new-instance v1, Lcom/alibaba/fastjson2/c;

    const-string v2, "method not found : javax.money.Monetary.getCurrency"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static e()Laem;
    .locals 5

    .line 187
    sget-object v0, Laav;->e:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "javax.money.NumberValue"

    .line 188
    invoke-static {v0}, Labo;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Laav;->e:Ljava/lang/Class;

    .line 191
    :cond_0
    sget-object v0, Laav;->l:Ljava/util/function/Function;

    if-nez v0, :cond_1

    .line 193
    :try_start_0
    sget-object v0, Laav;->e:Ljava/lang/Class;

    const-string v1, "numberValue"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 194
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 193
    invoke-static {v0}, Laat;->d(Ljava/lang/reflect/Method;)Ljava/util/function/BiFunction;

    move-result-object v0

    .line 196
    new-instance v1, L-$$Lambda$aav$YaOf6nPaStj_CFoSv2_yi-ku3IQ;

    invoke-direct {v1, v0}, L-$$Lambda$aav$YaOf6nPaStj_CFoSv2_yi-ku3IQ;-><init>(Ljava/util/function/BiFunction;)V

    sput-object v1, Laav;->l:Ljava/util/function/Function;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 198
    new-instance v1, Lcom/alibaba/fastjson2/c;

    const-string v2, "method not found : javax.money.NumberValue.numberValue"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 201
    :cond_1
    :goto_0
    sget-object v0, Laav;->l:Ljava/util/function/Function;

    invoke-static {v0}, Lahr;->h(Ljava/util/function/Function;)Laem;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$YaOf6nPaStj_CFoSv2_yi-ku3IQ(Ljava/util/function/BiFunction;Ljava/lang/Object;)Ljava/math/BigDecimal;
    .locals 0

    invoke-static {p0, p1}, Laav;->a(Ljava/util/function/BiFunction;Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$fb9mQ2gFc92Oc4MLxLWw9T6WfzI(Ljava/util/function/BiFunction;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Laav;->a(Ljava/util/function/BiFunction;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
