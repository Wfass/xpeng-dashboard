.class Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/man/crashreporter/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a$a;
    }
.end annotation


# instance fields
.field private final a:[Ljava/lang/StackTraceElement;

.field private final r:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;[Ljava/lang/StackTraceElement;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a;->r:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a;->a:[Ljava/lang/StackTraceElement;

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$1;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a;-><init>(Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a;->r:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a;)[Ljava/lang/StackTraceElement;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/alibaba/sdk/android/man/crashreporter/a/b/a$a;->a:[Ljava/lang/StackTraceElement;

    return-object p0
.end method
