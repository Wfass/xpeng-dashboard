.class Lbam$a;
.super Ljava/lang/Object;
.source "NeteaseLoginUidCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbam;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lbam;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbam;-><init>(Lbam$1;)V

    sput-object v0, Lbam$a;->a:Lbam;

    return-void
.end method
