.class Lbke$a;
.super Ljava/lang/Object;
.source "NrPlayOpt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbke;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lbke;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbke;-><init>(Lbke$1;)V

    sput-object v0, Lbke$a;->a:Lbke;

    return-void
.end method
