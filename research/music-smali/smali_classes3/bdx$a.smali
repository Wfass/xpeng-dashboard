.class Lbdx$a;
.super Ljava/lang/Object;
.source "ReadingAuthModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbdx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lbdx;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lbdx;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbdx;-><init>(Lbdx$1;)V

    sput-object v0, Lbdx$a;->a:Lbdx;

    return-void
.end method

.method static synthetic a()Lbdx;
    .locals 1

    .line 22
    sget-object v0, Lbdx$a;->a:Lbdx;

    return-object v0
.end method
