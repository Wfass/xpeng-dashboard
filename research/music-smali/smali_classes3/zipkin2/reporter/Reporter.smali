.class public interface abstract Lzipkin2/reporter/Reporter;
.super Ljava/lang/Object;
.source "Reporter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CONSOLE:Lzipkin2/reporter/Reporter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzipkin2/reporter/Reporter<",
            "Lzipkin2/Span;",
            ">;"
        }
    .end annotation
.end field

.field public static final NOOP:Lzipkin2/reporter/Reporter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzipkin2/reporter/Reporter<",
            "Lzipkin2/Span;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lzipkin2/reporter/Reporter$1;

    invoke-direct {v0}, Lzipkin2/reporter/Reporter$1;-><init>()V

    sput-object v0, Lzipkin2/reporter/Reporter;->NOOP:Lzipkin2/reporter/Reporter;

    .line 35
    new-instance v0, Lzipkin2/reporter/Reporter$2;

    invoke-direct {v0}, Lzipkin2/reporter/Reporter$2;-><init>()V

    sput-object v0, Lzipkin2/reporter/Reporter;->CONSOLE:Lzipkin2/reporter/Reporter;

    return-void
.end method


# virtual methods
.method public abstract report(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation
.end method
