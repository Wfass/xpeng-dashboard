.class Laqx$a;
.super Ljava/lang/Object;
.source "InflateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laqx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Laqx;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Laqx;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Laqx;-><init>(Laqx$1;)V

    sput-object v0, Laqx$a;->a:Laqx;

    return-void
.end method
