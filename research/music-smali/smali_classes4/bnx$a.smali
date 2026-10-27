.class Lbnx$a;
.super Ljava/lang/Object;
.source "SearchPageModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbnx;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lbnx;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbnx;-><init>(Lbnx$1;)V

    sput-object v0, Lbnx$a;->a:Lbnx;

    return-void
.end method
