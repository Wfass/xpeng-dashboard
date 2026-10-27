.class Lbec$a;
.super Ljava/lang/Object;
.source "UserHttpModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lbec;

    invoke-direct {v0}, Lbec;-><init>()V

    sput-object v0, Lbec$a;->a:Lbec;

    return-void
.end method
