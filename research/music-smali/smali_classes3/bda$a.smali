.class Lbda$a;
.super Ljava/lang/Object;
.source "NetRadioOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbda;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbda;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Lbda;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbda;-><init>(Lbda$1;)V

    sput-object v0, Lbda$a;->a:Lbda;

    return-void
.end method
