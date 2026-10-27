.class Lbdz$a;
.super Ljava/lang/Object;
.source "SyncModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbdz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbdz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lbdz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbdz;-><init>(Lbdz$1;)V

    sput-object v0, Lbdz$a;->a:Lbdz;

    return-void
.end method
