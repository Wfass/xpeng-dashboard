.class Lbjq$a;
.super Ljava/lang/Object;
.source "ConMainModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbjq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lbjq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lbjq;

    invoke-direct {v0}, Lbjq;-><init>()V

    sput-object v0, Lbjq$a;->a:Lbjq;

    return-void
.end method

.method static synthetic a()Lbjq;
    .locals 1

    .line 31
    sget-object v0, Lbjq$a;->a:Lbjq;

    return-object v0
.end method
