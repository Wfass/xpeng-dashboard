.class Lbss$a;
.super Ljava/lang/Object;
.source "KugouUserVipModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbss;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbss;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lbss;

    invoke-direct {v0}, Lbss;-><init>()V

    sput-object v0, Lbss$a;->a:Lbss;

    return-void
.end method
