.class final Lorg/chromium/base/TraceEvent$c;
.super Ljava/lang/Object;
.source "TraceEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/TraceEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field private static final a:Lorg/chromium/base/TraceEvent$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 226
    invoke-static {}, Lorg/chromium/base/CommandLine;->a()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string v1, "enable-idle-tracing"

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 227
    new-instance v0, Lorg/chromium/base/TraceEvent$b;

    invoke-direct {v0, v1}, Lorg/chromium/base/TraceEvent$b;-><init>(Lorg/chromium/base/TraceEvent$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/chromium/base/TraceEvent$a;

    invoke-direct {v0, v1}, Lorg/chromium/base/TraceEvent$a;-><init>(Lorg/chromium/base/TraceEvent$1;)V

    :goto_0
    sput-object v0, Lorg/chromium/base/TraceEvent$c;->a:Lorg/chromium/base/TraceEvent$a;

    return-void
.end method

.method static synthetic a()Lorg/chromium/base/TraceEvent$a;
    .locals 1

    .line 224
    sget-object v0, Lorg/chromium/base/TraceEvent$c;->a:Lorg/chromium/base/TraceEvent$a;

    return-object v0
.end method
