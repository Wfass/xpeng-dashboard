.class Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a$a;
.super Ljava/lang/Throwable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a;


# direct methods
.method private constructor <init>(Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a;Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a$a;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a$a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a;

    .line 22
    invoke-static {p1}, Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a;Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a$a;Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$1;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a$a;-><init>(Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a;Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a$a;)V

    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a$a;->a:Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a;

    invoke-static {v0}, Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a;->a(Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a$a;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 28
    return-object p0
.end method
