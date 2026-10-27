.class Lbea$a;
.super Ljava/lang/Object;
.source "UidOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbea;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lbea;

    invoke-direct {v0}, Lbea;-><init>()V

    sput-object v0, Lbea$a;->a:Lbea;

    return-void
.end method
