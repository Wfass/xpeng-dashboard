.class public Lorg/chromium/net/impl/m;
.super Lorg/chromium/net/s;
.source "RequestFinishedInfoImpl.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lorg/chromium/net/s$b;

.field private final d:I

.field private final e:Lorg/chromium/net/x;

.field private final f:Lorg/chromium/net/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;Lorg/chromium/net/s$b;ILorg/chromium/net/x;Lorg/chromium/net/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/chromium/net/s$b;",
            "I",
            "Lorg/chromium/net/x;",
            "Lorg/chromium/net/e;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lorg/chromium/net/s;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/chromium/net/impl/m;->a:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lorg/chromium/net/impl/m;->b:Ljava/util/Collection;

    .line 44
    iput-object p3, p0, Lorg/chromium/net/impl/m;->c:Lorg/chromium/net/s$b;

    .line 45
    iput p4, p0, Lorg/chromium/net/impl/m;->d:I

    .line 46
    iput-object p5, p0, Lorg/chromium/net/impl/m;->e:Lorg/chromium/net/x;

    .line 47
    iput-object p6, p0, Lorg/chromium/net/impl/m;->f:Lorg/chromium/net/e;

    return-void
.end method
