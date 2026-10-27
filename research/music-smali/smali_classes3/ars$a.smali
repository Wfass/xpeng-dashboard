.class Lars$a;
.super Ljava/lang/Object;
.source "ReissueMergeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lars;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lars;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lars;-><init>(Lars$1;)V

    sput-object v0, Lars$a;->a:Lars;

    return-void
.end method
