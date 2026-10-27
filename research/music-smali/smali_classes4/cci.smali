.class public Lcci;
.super Ljava/lang/Object;
.source "Reflection.java"


# static fields
.field private static final a:Lccj;

.field private static final b:[Lccv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "kotlin.reflect.jvm.internal.ReflectionFactoryImpl"

    .line 26
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccj;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    if-eqz v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Lccj;

    invoke-direct {v0}, Lccj;-><init>()V

    :goto_0
    sput-object v0, Lcci;->a:Lccj;

    const/4 v0, 0x0

    .line 39
    new-array v0, v0, [Lccv;

    sput-object v0, Lcci;->b:[Lccv;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lccv;
    .locals 1

    .line 59
    sget-object v0, Lcci;->a:Lccj;

    invoke-virtual {v0, p0}, Lccj;->a(Ljava/lang/Class;)Lccv;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lccd;)Ljava/lang/String;
    .locals 1

    .line 83
    sget-object v0, Lcci;->a:Lccj;

    invoke-virtual {v0, p0}, Lccj;->a(Lccd;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lccg;)Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Lcci;->a:Lccj;

    invoke-virtual {v0, p0}, Lccj;->a(Lccg;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
