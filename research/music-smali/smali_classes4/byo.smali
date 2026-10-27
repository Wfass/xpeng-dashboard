.class public final Lbyo;
.super Ljava/lang/Object;
.source "DrawerFactory.kt"


# annotations
.annotation runtime Lkotlin/j;
.end annotation


# static fields
.field public static final a:Lbyo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lbyo;

    invoke-direct {v0}, Lbyo;-><init>()V

    sput-object v0, Lbyo;->a:Lbyo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbyu;)Lbyq;
    .locals 2

    const-string v0, "indicatorOptions"

    invoke-static {p1, v0}, Lccf;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lbyu;->b()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 33
    new-instance v0, Lbym;

    invoke-direct {v0, p1}, Lbym;-><init>(Lbyu;)V

    check-cast v0, Lbyq;

    goto :goto_0

    .line 32
    :cond_0
    new-instance v0, Lbys;

    invoke-direct {v0, p1}, Lbys;-><init>(Lbyu;)V

    check-cast v0, Lbyq;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lbyn;

    invoke-direct {v0, p1}, Lbyn;-><init>(Lbyu;)V

    check-cast v0, Lbyq;

    :goto_0
    return-object v0
.end method
