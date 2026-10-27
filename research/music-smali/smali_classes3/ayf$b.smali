.class Layf$b;
.super Ljava/lang/Object;
.source "TimerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Layf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/Runnable;

.field b:J

.field final synthetic c:Layf;


# direct methods
.method private constructor <init>(Layf;)V
    .locals 0

    .line 93
    iput-object p1, p0, Layf$b;->c:Layf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Layf;Layf$1;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Layf$b;-><init>(Layf;)V

    return-void
.end method
