.class Lbmo$a;
.super Ljava/lang/Object;
.source "ReadHistoryOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbmo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbmo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lbmo;

    invoke-direct {v0}, Lbmo;-><init>()V

    sput-object v0, Lbmo$a;->a:Lbmo;

    return-void
.end method
