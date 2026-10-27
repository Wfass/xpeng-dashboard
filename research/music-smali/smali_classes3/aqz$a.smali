.class Laqz$a;
.super Ljava/lang/Object;
.source "PerformanceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laqz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Laqz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Laqz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Laqz;-><init>(Laqz$1;)V

    sput-object v0, Laqz$a;->a:Laqz;

    return-void
.end method
