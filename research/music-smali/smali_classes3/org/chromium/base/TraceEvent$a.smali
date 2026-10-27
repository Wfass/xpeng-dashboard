.class Lorg/chromium/base/TraceEvent$a;
.super Ljava/lang/Object;
.source "TraceEvent.java"

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/TraceEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Z

.field private static final b:I


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lorg/chromium/base/TraceEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/chromium/base/TraceEvent$a;->a:Z

    const/16 v0, 0x12

    .line 37
    sput v0, Lorg/chromium/base/TraceEvent$a;->b:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/base/TraceEvent$1;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/chromium/base/TraceEvent$a;-><init>()V

    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Looper.dispatch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/chromium/base/TraceEvent$a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/chromium/base/TraceEvent$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 93
    sget v0, Lorg/chromium/base/TraceEvent$a;->b:I

    const/16 v1, 0x28

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x29

    .line 94
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    :goto_0
    if-eq v2, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 95
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 100
    sget v0, Lorg/chromium/base/TraceEvent$a;->b:I

    const/16 v1, 0x7d

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x3a

    .line 101
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    :goto_0
    if-ne v2, v1, :cond_1

    .line 103
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :cond_1
    if-eq v0, v1, :cond_2

    add-int/lit8 v0, v0, 0x2

    .line 105
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    const-string p0, ""

    :goto_1
    return-object p0
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 2

    .line 53
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->b()Z

    move-result v0

    .line 54
    invoke-static {}, Lorg/chromium/base/TraceEvent;->b()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_2

    .line 55
    :cond_0
    invoke-static {p1}, Lorg/chromium/base/TraceEvent$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/base/TraceEvent$a;->c:Ljava/lang/String;

    .line 56
    invoke-static {}, Lorg/chromium/base/TraceEvent;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 57
    iget-object p1, p0, Lorg/chromium/base/TraceEvent$a;->c:Ljava/lang/String;

    invoke-static {p1}, Lorg/chromium/base/TraceEvent;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_1
    iget-object p1, p0, Lorg/chromium/base/TraceEvent$a;->c:Ljava/lang/String;

    invoke-static {p1}, Lorg/chromium/base/EarlyTraceEvent;->a(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 1

    .line 65
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->b()Z

    move-result p1

    .line 66
    invoke-static {}, Lorg/chromium/base/TraceEvent;->b()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    iget-object p1, p0, Lorg/chromium/base/TraceEvent$a;->c:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 67
    invoke-static {}, Lorg/chromium/base/TraceEvent;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 68
    iget-object p1, p0, Lorg/chromium/base/TraceEvent$a;->c:Ljava/lang/String;

    invoke-static {p1}, Lorg/chromium/base/TraceEvent;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_1
    iget-object p1, p0, Lorg/chromium/base/TraceEvent$a;->c:Ljava/lang/String;

    invoke-static {p1}, Lorg/chromium/base/EarlyTraceEvent;->b(Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lorg/chromium/base/TraceEvent$a;->c:Ljava/lang/String;

    return-void
.end method

.method public println(Ljava/lang/String;)V
    .locals 1

    const-string v0, ">"

    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0, p1}, Lorg/chromium/base/TraceEvent$a;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 45
    :cond_0
    sget-boolean v0, Lorg/chromium/base/TraceEvent$a;->a:Z

    if-nez v0, :cond_2

    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 46
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lorg/chromium/base/TraceEvent$a;->b(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
