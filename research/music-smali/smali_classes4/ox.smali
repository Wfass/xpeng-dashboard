.class public Lox;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static a:Lcom/airbnb/lottie/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Low;

    invoke-direct {v0}, Low;-><init>()V

    sput-object v0, Lox;->a:Lcom/airbnb/lottie/i;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 18
    sget-object v0, Lox;->a:Lcom/airbnb/lottie/i;

    invoke-interface {v0, p0}, Lcom/airbnb/lottie/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 30
    sget-object v0, Lox;->a:Lcom/airbnb/lottie/i;

    invoke-interface {v0, p0, p1}, Lcom/airbnb/lottie/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .line 26
    sget-object v0, Lox;->a:Lcom/airbnb/lottie/i;

    invoke-interface {v0, p0}, Lcom/airbnb/lottie/i;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 34
    sget-object v0, Lox;->a:Lcom/airbnb/lottie/i;

    invoke-interface {v0, p0, p1}, Lcom/airbnb/lottie/i;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
