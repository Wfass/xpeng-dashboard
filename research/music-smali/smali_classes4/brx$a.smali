.class Lbrx$a;
.super Ljava/lang/Object;
.source "ReportFromStackUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbrx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lbrx;

    invoke-direct {v0}, Lbrx;-><init>()V

    sput-object v0, Lbrx$a;->a:Lbrx;

    return-void
.end method
