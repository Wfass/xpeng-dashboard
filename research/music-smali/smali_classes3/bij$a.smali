.class Lbij$a;
.super Ljava/lang/Object;
.source "MsPlayOpt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbij;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbij;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lbij;

    invoke-direct {v0}, Lbij;-><init>()V

    sput-object v0, Lbij$a;->a:Lbij;

    return-void
.end method
