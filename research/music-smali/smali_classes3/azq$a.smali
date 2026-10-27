.class Lazq$a;
.super Ljava/lang/Object;
.source "KugouLoginUidCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lazq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lazq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lazq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lazq;-><init>(Lazq$1;)V

    sput-object v0, Lazq$a;->a:Lazq;

    return-void
.end method
