.class Laxy$c;
.super Ljava/lang/Object;
.source "DataFetchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field static final a:Laxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Laxy;

    invoke-direct {v0}, Laxy;-><init>()V

    sput-object v0, Laxy$c;->a:Laxy;

    return-void
.end method
