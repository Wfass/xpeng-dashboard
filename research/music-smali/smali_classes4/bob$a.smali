.class Lbob$a;
.super Ljava/lang/Object;
.source "SearchHistoryOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbob;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lbob;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbob;-><init>(Lbob$1;)V

    sput-object v0, Lbob$a;->a:Lbob;

    return-void
.end method
