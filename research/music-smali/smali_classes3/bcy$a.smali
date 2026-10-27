.class Lbcy$a;
.super Ljava/lang/Object;
.source "NetRadioHistoryOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbcy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbcy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lbcy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbcy;-><init>(Lbcy$1;)V

    sput-object v0, Lbcy$a;->a:Lbcy;

    return-void
.end method
