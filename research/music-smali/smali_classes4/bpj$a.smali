.class Lbpj$a;
.super Ljava/lang/Object;
.source "PageArriveManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbpj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbpj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    new-instance v0, Lbpj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbpj;-><init>(Lbpj$1;)V

    sput-object v0, Lbpj$a;->a:Lbpj;

    return-void
.end method
