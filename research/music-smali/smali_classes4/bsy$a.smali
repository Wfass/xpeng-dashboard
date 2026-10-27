.class Lbsy$a;
.super Ljava/lang/Object;
.source "UserVipModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbsy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lbsy;

    invoke-direct {v0}, Lbsy;-><init>()V

    sput-object v0, Lbsy$a;->a:Lbsy;

    return-void
.end method
