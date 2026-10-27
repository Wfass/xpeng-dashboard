.class public final synthetic Lorg/chromium/base/-$$Lambda$MemoryPressureListener$xx8fgnQa2QUHD0FuB5KaKRJdglw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcea;


# static fields
.field public static final synthetic INSTANCE:Lorg/chromium/base/-$$Lambda$MemoryPressureListener$xx8fgnQa2QUHD0FuB5KaKRJdglw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/base/-$$Lambda$MemoryPressureListener$xx8fgnQa2QUHD0FuB5KaKRJdglw;

    invoke-direct {v0}, Lorg/chromium/base/-$$Lambda$MemoryPressureListener$xx8fgnQa2QUHD0FuB5KaKRJdglw;-><init>()V

    sput-object v0, Lorg/chromium/base/-$$Lambda$MemoryPressureListener$xx8fgnQa2QUHD0FuB5KaKRJdglw;->INSTANCE:Lorg/chromium/base/-$$Lambda$MemoryPressureListener$xx8fgnQa2QUHD0FuB5KaKRJdglw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPressure(I)V
    .locals 0

    invoke-static {p1}, Lorg/chromium/base/MemoryPressureListener;->lambda$xx8fgnQa2QUHD0FuB5KaKRJdglw(I)V

    return-void
.end method
